// 1. Tạo biến `name`, `age`, `isStudent` và in ra màn hình.  // 1. Tạo biến `name`, `age`, `isStudent` và in ra màn hình.  
void main()
{
String name ="LP";
int age = 20;
String isStudent = "Năm 3";
print(name);
print(age);
print(isStudent);


// 2. Tạo biến height (double) và year (int).
double height = 1.69;
int year = 2025;
print(height);
print(year);

// 3.Khai báo một biến var hobby = "sports" và in kiểu dữ liệu của nó.
var hobby = "sports";
print(hobby.runtimeType);
// 4. Sử dụng dynamic để lưu số → chuỗi → bool.
dynamic x = 10;
x = "chuoi";
x = true;
print(x);


// 5.Sử dụng String interpolation để in câu: "Tôi tên là ..., năm nay ... tuổi."

print("Tôi tên là $name,Năm nay $age tuổi.");
}