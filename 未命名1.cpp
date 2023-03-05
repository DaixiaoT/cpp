#include<stdio.h>
#include<vector>
#include<unordered_set>
#include<unordered_map> 
#define MAX 100000

using namespace std;

class A{
	public:
		A(int x){
			p=x;
		}
		int read()const;
	private:
		int p;		
};

int A::read()const{
	p = p+1;
	return p;
}
int main(){
	A a=5;
	printf("%d",a.read());
}
