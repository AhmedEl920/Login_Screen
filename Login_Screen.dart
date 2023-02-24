import 'package:flutter/material.dart';

void main() {
  runApp(LoginScreen());
}

class Register extends StatelessWidget {
  String? labelText;
  String? hintText;
  IconData? prefixIcon;
  IconData? suffixIcon;
  TextInputType? textInputType;
  bool? obscureText;
  Register(
      {this.labelText,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.textInputType,
      this.obscureText});
  @override
  Widget build(BuildContext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 7),
      child: TextField(
        obscureText: obscureText!,
        keyboardType: textInputType,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple, width: 3),
          ),
          labelText: labelText,
          filled: true,
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.purple,
          ),
          suffixIcon: Icon(
            suffixIcon,
        
            color: Colors.purple,
          ),
          border: const OutlineInputBorder(),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 20.0,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}

class TsClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(size.width / 4 - 20, size.height - 70,
        size.width / 2, size.height - 30);
    path.quadraticBezierTo(3 / 4 * size.width + 35, size.height + 20,
        size.width, size.height - 40);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipPath(
                clipper: TsClip1(),
                child: Container(
                  padding: EdgeInsets.only(bottom: 38),
                  alignment: Alignment.center,
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  width: double.infinity,
                  height: 150,
                  color: Colors.purple,
                ),
              ),
              Register(
                obscureText: false,
                labelText: "Email",
                hintText: "Email",
                textInputType: TextInputType.emailAddress,
                prefixIcon: Icons.mail_outline,
              ),
              Register(
                obscureText: false,
                labelText: "Name",
                hintText: "Name",
                prefixIcon: Icons.mail_outline,
                textInputType: TextInputType.name,
              ),
              Register(
                obscureText: false,
                labelText: "Phone Number",
                hintText: "Phone Number",
                textInputType: TextInputType.number,
                prefixIcon: Icons.phone,
              ),
              Register(
                obscureText: true,
                labelText: "Password",
                hintText: "Password",
                textInputType: TextInputType.visiblePassword,
                prefixIcon: Icons.lock,
                suffixIcon: Icons.visibility_off,
              ),
              Register(
                obscureText: true,
                labelText: "Comfirm Password",
                hintText: "Comfirm Password",
                textInputType: TextInputType.visiblePassword,
                prefixIcon: Icons.vpn_key,
                suffixIcon: Icons.visibility_off,
              ),
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 7),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(345, 60),
                    backgroundColor: Colors.purple,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                margin: const EdgeInsets.symmetric(vertical: 10),
                // color: Colors.purple,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.purple,
                      width: 3.0,
                    ),
                    minimumSize: const Size(345, 60),
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
