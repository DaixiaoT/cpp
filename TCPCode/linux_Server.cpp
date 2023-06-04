#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>

#define PORT 7777

int main(int argc, char const *argv[]){
	int recv_len = 0;
	int server_fd, valread;
	int send_len = 0;
	struct sockaddr_in address;
	int addrlen = sizeof(address);
	char send_buf[100];
	char recv_buf[100];
	char *hello = "hello from server\n";
	//创建套接字
	if((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0){
		perror("socket failed");
		exit(EXIT_FAILURE);
	}
	//指定绑定的IP地址和端口号
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = INADDR_ANY;
	address.sin_port = htons(PORT);
	;

	//绑定套接字到指定地址和端口号
	if(bind(server_fd,(struct sockaddr *)&address, sizeof(address)) < 0){
		perror("bind failed");
		exit(EXIT_FAILURE);
	}
	//监听套接字
	if(listen(server_fd, 3) < 0){
		perror("listen failed");
		exit(EXIT_FAILURE);
	}else{
		printf("listen success!\n");
	}
	printf("listening,loading...\n");

	
	//接收客户端连接请求并发送欢迎信息
	if((recv_len = accept(server_fd, (struct sockaddr *)&address, (socklen_t*)&addrlen)) < 0){
		perror("accept failed");
		exit(EXIT_FAILURE);
	}
	printf("connect success \n");
	while(1){
		valread = read(recv_len,recv_buf,100);
		if(valread < 0){
			printf("receive failed.\n");
			break;
		}else{
			if(recv_buf[0] == 'b' && recv_buf[1] == 'y' && recv_buf[2] == 'e' && recv_buf[3] == '\0'){
				printf("close the server, byebye~\n");
				break;
			}
			printf("client message:%s\n",recv_buf);
		}
		printf("please enter the reply:");
		scanf("%s",send_buf);
		send_len = send(recv_len,send_buf,100,0);
		if(send_len < 0){
			printf("send failed.\n");
			break;
		}
	}
	

	return 0;
}
