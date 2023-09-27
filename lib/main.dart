import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red, // Warna latar belakang
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20.0), // Jarak atas
                  AnimatedOpacity(
                    duration: Duration(seconds: 1),
                    opacity: 1, // Ubah menjadi 1 saat ingin muncul
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network(
                          'https://1.bp.blogspot.com/-rGzybmEYVHM/XyMB2ITDpcI/AAAAAAAAC9k/MzGR0c6iF_ES8VgiLbuDa7r9jWVdoPWSQCLcBGAsYHQ/s1600/download%2BLOGO%2BUniversitas%2BTeknokrat%2BPNG.png',
                          height: 100.0,
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'Inputkan Username Dan Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  AnimatedOpacity(
                    duration: Duration(seconds: 1),
                    opacity: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  AnimatedOpacity(
                    duration: Duration(seconds: 1),
                    opacity: 1,
                    child: PasswordTextField(), // Menggunakan widget kustom PasswordTextField
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      // Tambahkan aksi yang sesuai ketika teks "Lupa password" diklik
                    },
                    child: AnimatedOpacity(
                      duration: Duration(seconds: 1),
                      opacity: 1,
                      child: Text(
                        'Lupa password? Klik disini',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  AnimatedOpacity(
                    duration: Duration(seconds: 1),
                    opacity: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        // Tambahkan aksi yang sesuai ketika tombol login diklik
                      },
                      child: Text('Login'),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  AnimatedOpacity(
                    duration: Duration(seconds: 1),
                    opacity: 1,
                    child: Text(
                      'Developed by Tifal Dwiyansyah (21312071)',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !_passwordVisible, // Mengatur visibilitas password
      decoration: InputDecoration(
        hintText: 'Password',
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        // Menambahkan ikon mata kucing pada input password
        suffixIcon: GestureDetector(
          onTap: () {
            // Mengubah visibilitas password ketika ikon mata kucing diklik
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          child: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}