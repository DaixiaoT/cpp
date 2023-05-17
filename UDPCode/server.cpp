#include <iostream>
#include <Winsock2.h>
using namespace std;
int main() {
    // 初始化Winsock库
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        std::cerr << "无法初始化Winsock库" << std::endl;
        return 1;
    }

    // 创建套接字
    SOCKET sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sockfd == INVALID_SOCKET) {
        std::cerr << "无法创建套接字" << std::endl;
        WSACleanup();
        return 1;
    }

    // 服务器地址
    sockaddr_in serverAddr{};
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_port = htons(12345); // 服务器端口号
    serverAddr.sin_addr.s_addr = htonl(INADDR_ANY); // 监听所有网络接口

    // 绑定地址
    if (bind(sockfd, (sockaddr*)&serverAddr, sizeof(serverAddr)) == SOCKET_ERROR) {
        std::cerr << "绑定失败" << std::endl;
        closesocket(sockfd);
        WSACleanup();
        return 1;
    }
	long long time=0;
    // 接收和发送数据
    while (true) {
    	time++;
        char buffer[1024];
        sockaddr_in clientAddr{};
        int clientAddrLen = sizeof(clientAddr);

        // 接收数据
        int bytesRead = recvfrom(sockfd, buffer, sizeof(buffer), 0, (sockaddr*)&clientAddr, &clientAddrLen);
        if (bytesRead == SOCKET_ERROR) {
            std::cerr << "接收失败" << std::endl;
            closesocket(sockfd);
            WSACleanup();
            return 1;
        }

        // 打印接收到的数据
        std::cout << "接收到来自客户端的消息: " << std::string(buffer, bytesRead) << std::endl;
		
        // 发送数据
        std::string response = "Hello, client!";
        string time_s=to_string(time);
        response+=time_s;
        int bytesSent = sendto(sockfd, response.c_str(), response.length(), 0, (sockaddr*)&clientAddr, clientAddrLen);
        if (bytesSent == SOCKET_ERROR) {
            std::cerr << "发送失败" << std::endl;
            closesocket(sockfd);
            WSACleanup();
            return 1;
        }
    }

    // 关闭套接字
    closesocket(sockfd);
    WSACleanup();

    return 0;
}

