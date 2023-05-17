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
    serverAddr.sin_addr.s_addr = inet_addr("127.0.0.1"); // ������IP��ַ
	string message = "Hello, server!";
	while(1){
		Sleep(1000);
		//cout<<"��������Ϣ";
		//cin>>message;
		// ��������
		int bytesSent = sendto(sockfd, message.c_str(), message.length(), 0, (sockaddr*)&serverAddr, sizeof(serverAddr));
	    if (bytesSent == SOCKET_ERROR) {
	        std::cerr << "����ʧ��" << std::endl;
	        closesocket(sockfd);
	        WSACleanup();
	        return 1;
	    }
	    
		// ��������
	    char buffer[1024];
	    sockaddr_in clientAddr{};
	    int clientAddrLen = sizeof(clientAddr);
	    int bytesRead = recvfrom(sockfd, buffer, sizeof(buffer), 0, (sockaddr*)&clientAddr, &clientAddrLen);
	    if (bytesRead == SOCKET_ERROR) {
	        std::cerr << "����ʧ��" << std::endl;
	        closesocket(sockfd);
	        WSACleanup();
	        return 1;
	    }
	    
	    // ��ӡ���յ�������
    	cout << "�������ظ�: " << string(buffer, bytesRead) << endl;
	}
    
    // �ر��׽���
    closesocket(sockfd);
    WSACleanup();

    return 0;
}
