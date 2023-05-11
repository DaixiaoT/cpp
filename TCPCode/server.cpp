#include<iostream>
#include<socket.h>
#pragma comment(lib,"ws2_32.lib")
using namespace std;
int main(){
	int send_len = 0;
	int recv_len = 0;
	int len = 0;
	//¶¨Òå·¢ËÍ»º³åÇøºÍ½ÓÊÕ»º³åÇø
	char send_buf[100];
	char recv_buf[100];
	//¶¨Òå·þÎñ¶ËÌ×½Ó×Ö£¬½ÓÊÕÇëÇóÌ×½Ó×Ö
	SOCKET s_server;
	SOCKET s_accept; 
	//·þÎñ¶ËµØÖ·¿Í»§¶ËµØÖ·
	SOCKADDR_IN server_addr;
	SOCKADDR_IN accept_addr;
	//´ò¿ª
	WORD w_req = MAKEWORD(2,2);//°æ±¾ºÅ
	WSADATA wsadata;//½á¹¹Ìå£ºÄÃµ½°æ±¾£¬°æ±¾Ð£Ñé
	int err;
	err = WSAStartup(w_req, &wsadata);//²é¿´ÊÇ·ñ´ò¿ª³É¹¦ 
	if(err != 0){
		cout << "´ò¿ªÊ§°Ü" << endl;
		WSACleanup(); 
	}else{
		cout << "´ò¿ª³É¹¦£¡" << endl;
	} 
	//¼ì²â°æ±¾ºÅ
	if(LOBYTE(wsadata.wVersion) != 2 || HIBYTE(wsadata.wHighVersion != 2)){
		cout << "°æ±¾ºÅ²»·û£¡" <<endl;
		WSACleanup(); 
	}
	else{
		cout<< "°æ±¾ÕýÈ·" << endl; 
	} 
	//Ìî³ä·þÎñ¶ËµØÖ·ÐÅÏ¢
	
<<<<<<< HEAD
	//���������Ϣ
	server_addr.sin_family=AF_INET;//��ʾʹ��IPv4��ַ�� 
	server_addr.sin_addr.S_un.S_addr= htonl(INADDR_ANY);//��ʾ����������ʹ����������ӿ��ϵ�IP��ַ�� 
	server_addr.sin_port=htons(7777);//���Ƿ����������Ķ˿ںţ�'htons'�������˿ںŴ������ֽ���ת��Ϊ�����ֽ���(����ֽ���) 
=======
	//Ìî³ä·þÎñ¶ËÐÅÏ¢
	server_addr.sin_family=AF_INET;
	server_addr.sin_addr.S_un.S_addr= htonl(INADDR_ANY);
	server_addr.sin_port=htons(7777);
>>>>>>> 383122d9854c63f76108d5b0be9e1f8e4b6bf9e8
	
	//´´½¨Ì×½Ó×Ö 
	s_server = socket(AF_INET, SOCK_STREAM, 0);
	if(bind(s_server,(SOCKADDR*)&server_addr, sizeof(SOCKADDR)) == SOCKET_ERROR) {
		cout << "bind Ê§°Ü£¡" << endl;
		WSACleanup();
	}
	else{
		cout << "bind ³É¹¦£¡" << endl;
	}
	
	//¼àÌý
	if( listen ( s_server, SOMAXCONN) < 0 ){
		cout << "ÉèÖÃ¼àÌý×´Ì¬Ê§°Ü£¡" <<endl;
		WSACleanup();
	}else{
		cout << "ÉèÖÃ¼àÌý×´Ì¬³É¹¦£¡" <<endl;
	}
	
	cout << "·þÎñ¶ËÕýÔÚ¼àÌýÁ¬½Ó£¬ÇëÉÔºó..." << endl;
	
	//½ÓÊÕÁ¬½ÓÇëÇó
	
	len = sizeof(SOCKADDR);
	s_accept=accept(s_server,(SOCKADDR*)&accept_addr, &len);
	if (s_accept == SOCKET_ERROR){
		cout << "Á¬½ÓÊ§°Ü£¡" <<endl;
		WSACleanup();
		return 0;
	}
	cout << "Á¬½Ó½¨Á¢£¬×¼±¸½ÓÊÕÊý¾Ý" << endl; 
	
	// ½ÓÊÕÊý¾Ý
	while(1){
		recv_len= recv(s_accept, recv_buf, 100, 0);
		if(recv_len < 0){
			cout << "½ÓÊÕÊ§°Ü£¡" <<endl;
			break; 
		}else{
			if(recv_buf[0] == 'b' && recv_buf[1] == 'y' && recv_buf[2] == 'e' && recv_buf[3]=='\0'){
				cout << "¹Ø±Õ¿Í»§¶Ë£¬byebye~" <<endl;
				break; 
			}
			cout << "¿Í»§¶ËÐÅÏ¢£º" << recv_buf << endl;
		}
		cout<<"ÇëÊäÈë»Ø¸´ÐÅÏ¢£º";
		cin >> send_buf;
		send_len = send( s_accept, send_buf, 100, 0);
		if(send_len < 0){
			cout << "·¢ËÍÊ§°Ü!" << endl;
			break;
		} 
		
	} 
	//¹Ø±ÕÌ×½Ó×Ö
	closesocket(s_server);
	closesocket(s_accept);
	//ÊÍ·ÅDLL×ÊÔ´
	WSACleanup();
	return 0; 
	
} 
