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
    serverAddr.sin_addr.s_addr = inet_addr("127.0.0.1"); // 服务器IP地址
	string message = "Hello, server!";
	while(1){
		Sleep(1000);
		//cout<<"请输入信息";
		//cin>>message;
		// 发送数据
		int bytesSent = sendto(sockfd, message.c_str(), message.length(), 0, (sockaddr*)&serverAddr, sizeof(serverAddr));
	    if (bytesSent == SOCKET_ERROR) {
	        std::cerr << "发送失败" << std::endl;
	        closesocket(sockfd);
	        WSACleanup();
	        return 1;
	    }
	    
		// 接收数据
	    char buffer[1024];
	    sockaddr_in clientAddr{};
	    int clientAddrLen = sizeof(clientAddr);
	    int bytesRead = recvfrom(sockfd, buffer, sizeof(buffer), 0, (sockaddr*)&clientAddr, &clientAddrLen);
	    if (bytesRead == SOCKET_ERROR) {
	        std::cerr << "接收失败" << std::endl;
	        closesocket(sockfd);
	        WSACleanup();
	        return 1;
	    }
	    
	    // 打印接收到的数据
    	cout << "服务器回复: " << string(buffer, bytesRead) << endl;
	}
    
    // 关闭套接字
    closesocket(sockfd);
    WSACleanup();

    return 0;
}
