
void main() {
  // 1. Viết chương trình kiểm tra số dương, âm hoặc bằng 0.
  int a = 0;
  if (a >= 1) {
    print("Số dương");
  } else if (a < 0) {
    print("Số Âm");
  } else {
    print("Số bằng 0");
  }
  // 2. Nhập `score` (0–100) → in loại A/B/C/D.
  int score = 43;
  if (score >= 90) {
    print("Hạng A");
  } else if (score >= 75) {
    print("Hạng B");
  } else if (score >= 50) {
    print("Hạng C");
  } else {
    print("Hạng D");
  }
  // 3. Nhập `day` (“thu2”, “thu3”, …) → dùng switch để in ra lịch học.
  String day = "thu2";
  switch (day) {
    case "thu2":
      print("Nay học Hội nhập và quản trị phần mềm doanh nghiệp.");
      break;

    case "thu3":
      print("Nay học Lập Trình Mobile");
      break;

    case "thu4":
      print("Nay học Khởi nghiệp và đổi mới sáng tạo");
      break;

    case "thu5":
      print("Nay Học Dữ liệu lớn, Khai phá dữ liệu");
      break;

    default:
      print("Nay không học gì");
  }
  // 4. Nhập tên món ăn → dùng switch để in giá tiền.
  String Menu = "Com ga";

  switch (Menu) {
    case "Com ga":
      print("$Menu giá 30k.");
      break;

    case "pho":
      print("$Menu giá 35k.");
      break;

    case "banh mi":
      print("$Menu giá 15k.");
      break;

    default:
      print("Quán không bán món này!!");
  }
  // 5. Viết chương trình kiểm tra năm nay bạn đủ 18 tuổi hay chưa (if/else + ternary).
  // Cách if/else
  int born = 2005;
  int year = 2025;
  if (year - born >= 18)
  {
    print("Đủ tuổi");
  }
  else
  {
    print("Chưa đủ");
  }
  //Cách ternary
  String result = (year - born >= 18) ? "Đủ tuổi" : "Chưa đủ";
  print(result);
}
