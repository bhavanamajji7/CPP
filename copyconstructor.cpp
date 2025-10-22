#include<iostream>
using namespace std;
class bhavana{
	
	public:
		int a;
	bhavana(int x):a(x)
	{
	}
	bhavana(bhavana&obj):a(obj.a)
	{
	}

};
int main()
{
	bhavana obj1(10);
	bhavana obj2=obj1;
	cout<<obj2.a;
	}
