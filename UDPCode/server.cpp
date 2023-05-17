#include <iostream>
#include <Winsock2.h>
using namespace std;
int main() {
    // ��ʼ��Winsock��
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        std::cerr << "�޷���ʼ��Winsock��" << std::endl;
        return 1;
    }

    // �����׽���
    SOCKET sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sockfd == INVALID_SOCKET) {
        std::cerr << "�޷������׽���" << std::endl;
        WSACleanup();
        return 1;
    }

    // ��������ַ
    sockaddr_in serverAddr{};
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_port = htons(12345); // �������˿ں�
    serverAddr.sin_addr.s_addr = htonl(INADDR_ANY); // ������������ӿ�

    // �󶨵�ַ
    if (bind(sockfd, (sockaddr*)&serverAddr, sizeof(serverAddr)) == SOCKET_ERROR) {
        std::cerr << "��ʧ��" << std::endl;
        closesocket(sockfd);
        WSACleanup();
        return 1;
    }
	long long time=0;
    // ���պͷ�������
    while (true) {
    	time++;
        char buffer[1024];
        sockaddr_in clientAddr{};
        int clientAddrLen = sizeof(clientAddr);

        // ��������
        int bytesRead = recvfrom(sockfd, buffer, sizeof(buffer), 0, (sockaddr*)&clientAddr, &clientAddrLen);
        if (bytesRead == SOCKET_ERROR) {
            std::cerr << "����ʧ��" << std::endl;
            closesocket(sockfd);
            WSACleanup();
            return 1;
        }

        // ��ӡ���յ�������
        std::cout << "���յ����Կͻ��˵���Ϣ: " << std::string(buffer, bytesRead) << std::endl;
		
        // ��������
        std::string response = "Hello, client!";
        string time_s=to_string(time);
        response+=time_s;
        int bytesSent = sendto(sockfd, response.c_str(), response.length(), 0, (sockaddr*)&clientAddr, clientAddrLen);
        if (bytesSent == SOCKET_ERROR) {
            std::cerr << "����ʧ��" << std::endl;
            closesocket(sockfd);
            WSACleanup();
            return 1;
        }
    }

    // �ر��׽���
    closesocket(sockfd);
    WSACleanup();

    return 0;
}

