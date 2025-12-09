
void main()
{
// 1. Tính tổng, hiệu, tích, thương của hai số.   
int a = 10;
int b = 3;
print(a + b);
print(a - b);
print(a * b);
print(a / b);
// 2. Kiểm tra một số có lớn hơn 100 không.  
if (a>= 100)
{
  print("Lớn hơn 100");
}
else
{
  print("dưới 100");
}
// 3. Kiểm tra số đó có nằm trong khoảng 18–30 không (`&&`).  
if (a >= 18 && a <=30)
{
  print("Có trong khoảng 18–30");
}
else
{
  print("Không trong khoảng 18–30");
}
// 4. Gán biến `score = 50`, rồi tăng lên 10 bằng toán tử `+=`.  
int score = 50;
print(score+=10);
// 5. Dùng `??` để in tên người dùng, nếu null thì in “Ẩn danh”.
String? name;
print(name ?? "Ẩn danh");

}