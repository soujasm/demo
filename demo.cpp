// write a program to create a simple calculator:
#include <iostream>
using namespace std;
class calculator{
    public:
   
    int add(int a, int b){
        return a + b ;
    }
    int sub(int a, int b){
        return a - b ;
    }
    int mul(int a, int b){
        return a * b;
    }
    int div(int a, int b){
        if (b == 0){
            cout << "Division by 0 isn't possible" << endl;
            return 0;
        }
        return a / b;
    }
};
int main(){
    calculator c;
    int a ;
    int b ; char op; 
    cout << "Enter the two numbers: \n";
    cin >> a >> b;
    cout << "Enter the Operator(+,-,*,/): \nEnter any other to exit\n";
    cin >> op;
    
    switch (op){
        case '+':
        cout<<c.add(a,b)<<endl;
        break;
        case '-':
        cout<<c.sub(a,b)<<endl;
        break;
        case '*':
        cout<<c.mul(a,b)<<endl;
        break;
        case '/':
        cout<<c.div(a,b)<<endl;
        break;
        default:
        cout<<"Invalid Operator"<<endl;
        break;

    } 
    return 0;

}


//To find the greatest number among the three numbers
#include <iostream>
using namespace std;
class greatestnum{
    public:
    int findgreat(int a, int b, int c){
        if (a > b && a >c ){
            return  a;
        }
        else if (b > a && b > c ){
            return b ;
        }
        else{
            return c ;
        }

    }
};
int main(){
    greatestnum g;
    int a,b,c;
    cout << "Enter the three numbers: \n";
    cin >> a >> b >> c;
    cout << "The Greatest Number is : " << g.findgreat(a,b,c) << endl;
    return 0;
}


//	Write a program to find if the number is even or odd.
#include <iostream>
using namespace std;
int main(){
    int a;
    cout<<"Enter a number: ";
    cin>>a;
    if(a%2==0){
        cout<<"The Number is Even"<<endl;
    }else{
        cout<<"The Number is Odd"<<endl;
    }
}

//iv.	Factorial number given with the class
#include <iostream>
using namespace std;
class f{
    public:
    int fact(int a){
        int fact = 1;
        for(int i=1; i<=a; i++){
            fact *= i;
        }
        return fact;
    }
};
int main(){
    f f;
    int a;
    cout<<"Enter a number: ";
    cin>>a;
    cout<<"Factorial of "<<a<<" is "<<f.fact(a);
    return 0;
}




    //v.	Write a program to find if the number is palindrome or not.
    #include <iostream>
    using namespace std;
    class pd{
        public:
        int palin(int a){
            int reversed=0, remainder;
            int original = a;// Stored the Original Number Given By the User
            while (a > 0){
                remainder = a % 10; //to find the last digit
                reversed = reversed * 10 + remainder;// creating reaverse number
                a /= 10;//remove the last digit
            }
            if (original == reversed){
                return 1;
            } else {
                return 0;
            }

        }

    };
    int main(){
        pd pd;
        int a;
        cout<<"Enter a number: ";
        cin >> a;
        if(pd.palin(a)){
            cout<<"The number is palindrome."<<endl;
        }else{
            cout<<"The number is not palindrome."<<endl;
        }
    }


    //vi.	Write a program to implement unary (-) operator overloading.
#include <iostream>
using namespace std;
class u{
    public:
    int a;
    void getdata(){
        cout<<"Enter a number: ";
        cin>>a;
    }
    void operator -(){
        a = -a;
    }
    void display(){
        cout<<"The number is: "<<a<<endl;
    }
};

int main(){
    u u;
    u.getdata();
    -u;
    u.display();
    return 0;
    
    
}

//vii.	Write a program to implement binary(++) operator overloading 
#include <iostream>
using namespace std;
class b{
    public:
    int a;
    void getdata(){
        cout<<"Enter a number: ";
        cin>>a;
    }
    void operator ++(){
        a += 1;
    }
    void display(){
        cout<<"The number is: "<<a<<endl;
    }
};
int main(){
    b b;
    b.getdata();
    ++b;
    b.display();
    return 0;

}

//viii.	Implement the concept of method overloading.
#include <iostream>
using namespace std;
class ol{
    public:
    void add(int a, int b){
        cout<<"The sum of two numbers is: "<<a+b<<endl;
    }
    void add(int a, int b, int c){
        cout<<"The sum of three numbers is: "<<a+b+c<<endl;
    }
    void add(float a, float b){
        cout<<"The sum of two float numbers is: "<<a+b<<endl;
    }
    void add(double a, double b){
        cout<<"The sum of two double numbers is: "<<a+b<<endl;
    }
};
int main(){
    ol o;
    o.add(5,10);
    o.add(5,10,15);
    o.add(5.5,10.5);
    o.add(5.5,10.5);
    return 0;
}

// ix.	Implement the concept of virtual functions
#include <iostream>
using namespace std;
class base{
    public:
    virtual void display(){
        cout<<"This is the base class"<<endl;
    }
};
class derived: public base{
    public:
    void display(){
        cout<<"This is the derived class"<<endl;
    }
};  
int main(){
    derived d;
    base *bptr;
    bptr = &d;
    bptr -> display();
   
    return 0;

}

// 
#include <iostream>
using namespace std;
class base{
    public:
    virtual void display(){
        cout<<"This is the base class"<<endl;
    }
};
class derived: public base{
    public:
    void display(){
        cout<<"This is the derived class"<<endl;
    }
};  
int main(){
    base *bptr;
    bptr = &d;
    bptr -> display();
   
    return 0;

}

// x.	Write a c++ program to demonstrate single inheritance
#include <iostream>
using namespace std;
class base{
    public:
    void display1(){
        cout<<"This is the base class"<<endl;
    }
};
class drive: public base{
    public:
    void display(){
        cout<<"This is the derived class"<<endl;
    }
};
int main(){
    drive d;
    d.display1();
    return 0;
}
