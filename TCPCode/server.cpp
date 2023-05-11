#include<iostream>
#include<winsock.h>
#pragma comment(lib,"ws2_32.lib")
using namespace std;
int main(){
	int send_len = 0;
	int recv_len = 0;
	int len = 0;
	//���巢�ͻ������ͽ��ջ�����
	char send_buf[100];
	char recv_buf[100];
	//���������׽��֣����������׽���
	SOCKET s_server;
	SOCKET s_accept; 
	//����˵�ַ�ͻ��˵�ַ
	SOCKADDR_IN server_addr;
	SOCKADDR_IN accept_addr;
	//��
	WORD w_req = MAKEWORD(2,2);//�汾��
	WSADATA wsadata;//�ṹ�壺�õ��汾���汾У��
	int err;
	err = WSAStartup(w_req, &wsadata);//�鿴�Ƿ�򿪳ɹ� 
	if(err != 0){
		cout << "��ʧ��" << endl;
		WSACleanup(); 
	}else{
		cout << "�򿪳ɹ���" << endl;
	} 
	//���汾��
	if(LOBYTE(wsadata.wVersion) != 2 || HIBYTE(wsadata.wHighVersion != 2)){
		cout << "�汾�Ų�����" <<endl;
		WSACleanup(); 
	}
	else{
		cout<< "�汾��ȷ" << endl; 
	} 
	//������˵�ַ��Ϣ
	
	//���������Ϣ
	server_addr.sin_family=AF_INET;//��ʾʹ��IPv4��ַ�� 
	server_addr.sin_addr.S_un.S_addr= htonl(INADDR_ANY);//��ʾ����������ʹ����������ӿ��ϵ�IP��ַ�� 
	server_addr.sin_port=htons(7777);//���Ƿ����������Ķ˿ںţ�'htons'�������˿ںŴ������ֽ���ת��Ϊ�����ֽ���(����ֽ���) 
	
	//�����׽��� 
	s_server = socket(AF_INET, SOCK_STREAM, 0);
	if(bind(s_server,(SOCKADDR*)&server_addr, sizeof(SOCKADDR)) == SOCKET_ERROR) {
		cout << "bind ʧ�ܣ�" << endl;
		WSACleanup();
	}
	else{
		cout << "bind �ɹ���" << endl;
	}
	
	//����
	if( listen ( s_server, SOMAXCONN) < 0 ){
		cout << "���ü���״̬ʧ�ܣ�" <<endl;
		WSACleanup();
	}else{
		cout << "���ü���״̬�ɹ���" <<endl;
	}
	
	cout << "��������ڼ������ӣ����Ժ�..." << endl;
	
	//������������
	
	len = sizeof(SOCKADDR);
	s_accept=accept(s_server,(SOCKADDR*)&accept_addr, &len);
	if (s_accept == SOCKET_ERROR){
		cout << "����ʧ�ܣ�" <<endl;
		WSACleanup();
		return 0;
	}
	cout << "���ӽ�����׼����������" << endl; 
	
	// ��������
	while(1){
		recv_len= recv(s_accept, recv_buf, 100, 0);
		if(recv_len < 0){
			cout << "����ʧ�ܣ�" <<endl;
			break; 
		}else{
			if(recv_buf[0] == 'b' && recv_buf[1] == 'y' && recv_buf[2] == 'e' && recv_buf[3]=='\0'){
				cout << "�رտͻ��ˣ�byebye~" <<endl;
				break; 
			}
			cout << "�ͻ�����Ϣ��" << recv_buf << endl;
		}
		cout<<"������ظ���Ϣ��";
		cin >> send_buf;
		send_len = send( s_accept, send_buf, 100, 0);
		if(send_len < 0){
			cout << "����ʧ��!" << endl;
			break;
		} 
		
	} 
	//�ر��׽���
	closesocket(s_server);
	closesocket(s_accept);
	//�ͷ�DLL��Դ
	WSACleanup();
	return 0; 
	
} 
