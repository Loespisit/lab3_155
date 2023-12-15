import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _loginFormkey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 179, 238, 235),
      appBar: AppBar(
          title: Text("⊡ เข้าสู่ระบบ/Login ⊡"),
          backgroundColor: Color.fromARGB(255, 222, 165, 236)),
      body: Form(
        key: _loginFormkey,
        child: Column(
          children: [
            SizedBox(height: 50),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "กรอกชื่อด้วยจ้า";
                }
                return null;
              },
              controller: _usernameCtrl,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "ชื่อผู้ใช้จ้า",
                prefixIcon: Icon(Icons.account_circle),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 71, 168, 6)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 71, 168, 6)),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "✔กรอกรหัสผ่านจ้า";
                }
                return null;
              },
              controller: _passwordCtrl,
              obscureText: true,
              obscuringCharacter: "☻",
              decoration: InputDecoration(
                labelText: "✔รหัสผ่านจ้า",
                prefixIcon: Icon(Icons.admin_panel_settings_rounded),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 71, 168, 6)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 71, 168, 6)),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  print("onPressed");
                  if (_loginFormkey.currentState!.validate()) {
                    print("Successful");
                  }
                },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
