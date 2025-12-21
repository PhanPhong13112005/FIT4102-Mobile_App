import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _nameController = TextEditingController(text: 'Nguyễn Văn A');
  final _emailController = TextEditingController(text: 'example@email.com');
  final _phoneController = TextEditingController(text: '0987654321');
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _birthDateController = TextEditingController();

  String _gender = 'Nam';
  bool _agree = false;
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _birthDateController.text = '${picked.day}/${picked.month}/${picked.year}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng Ký Tài Khoản', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Tạo tài khoản để bắt đầu trải nghiệm', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Họ & tên'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: 'SĐT điện thoại'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Mật khẩu', hintText: 'Ít nhất 6 ký tự'),
              obscureText: true,
            ),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(labelText: 'Xác nhận mật khẩu', hintText: 'Nhập lại mật khẩu'),
              obscureText: true,
            ),
            TextField(
              controller: _birthDateController,
              decoration: InputDecoration(
                labelText: 'Ngày sinh',
                hintText: 'dd/mm/yyyy',
                suffixIcon: Icon(Icons.calendar_today),
              ),
              readOnly: true,
              onTap: () => _selectDate(context),
            ),
            SizedBox(height: 20),
            Text('Giới tính'),
            RadioListTile(
              value: 'Nam',
              groupValue: _gender,
              title: Text('Nam'),
              onChanged: (value) => setState(() => _gender = value!),
            ),
            RadioListTile(
              value: 'Nữ',
              groupValue: _gender,
              title: Text('Nữ'),
              onChanged: (value) => setState(() => _gender = value!),
            ),
            RadioListTile(
              value: 'Khác',
              groupValue: _gender,
              title: Text('Khác'),
              onChanged: (value) => setState(() => _gender = value!),
            ),
            CheckboxListTile(
              value: _agree,
              title: Text('Tôi đồng ý với điều khoản sử dụng'),
              onChanged: (value) => setState(() => _agree = value!),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            ElevatedButton(
              onPressed: _agree ? () {
                // Add registration logic here
                print('Registered');
              } : null,
              child: Text('Đăng Ký', style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}