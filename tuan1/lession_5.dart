

void main ()
{
// 1. In các số từ 1 đến 20.  
for (int i = 1; i<=20; i++)
{
  print(i);
}
// 2. In các số chẵn từ 2 đến 20.  
for (int i = 2; i<=20; i++)
{
  if (i%2==0)
  {
    print(i);
  }
}
// 3. Tính tổng từ 1 đến 100 (dùng for).  
int sum = 0;
for (int i = 1; i<=100; i++)
{
  sum += i;
}
print("Tổng: $sum");

// 4. Duyệt List `["a", "b", "c"]` bằng for-in.  
List <String> names= ["a", "b", "c"];
for (var name in names) {
  print(name);
}
// 5. In bảng cửu chương số 5. 
int tich = 0; 
for (int i = 1; i<=10 ; i++)
{
  tich = i*5;
  print("$i x 5 = $tich");

}

// 6. Dùng while để đếm ngược từ 10 về 1.  
int count = 1;
while (count > 0)
{
  print("Đếm ngược: $count");
  count --;
}
// 7. Dùng do-while để in “Hello” ít nhất 1 lần.  
do
{
  print("hello");
}
while (count <0);
// 8. Dùng continue để bỏ qua số 7 từ 1 đến 10.
for (int i = 1; i <= 10; i++) {
  if (i == 7) continue;
  print(i);
}
}