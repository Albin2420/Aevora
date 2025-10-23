import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/login_widget.dart';




class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
             decoration: const BoxDecoration(
               gradient: RadialGradient(
                 center: Alignment.topCenter,
                 radius: 0.8,
                 colors: [
                   Color(0xFF500656),
                   Colors.black,
                 ],
                 stops: [0.1, 1.0],
               ),
             ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 280,
              child: Stack(
                children: [
                  Positioned(
                      top: 80,
                      left: 52,
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/3dSetimage.png"),
                          ),
                        ),
                      ),
                  ),
                  Positioned(
                    top: 110,
                    right: 50,
                    child: Container(
                      width: 120,
                      height: 128,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/3dimage.png"),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 180,
                    child: Text(
                      "Hello,\nWelcome",
                      style: GoogleFonts.zenDots(
                        color: Colors.white,
                        fontSize: 34,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                // width: 355,
                width: double.infinity,
                height: 316,
                color: Colors.transparent,
                // color: Colors.red,
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Username",
                          style: GoogleFonts.zenDots(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      controller: TextEditingController(text: "Amana123"),
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter username",
                        hintStyle: const TextStyle(color: Colors.white70),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Color(0xFFA72EE5), width: 2),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 28,),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Password",
                          style: GoogleFonts.zenDots(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      controller: TextEditingController(text: "Amana123"),
                      obscureText: true,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter password",
                        hintStyle: const TextStyle(color: Colors.white70),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Color(0xFFA72EE5), width: 2),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forget Password?",
                          style: GoogleFonts.zenDots(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40,),
                    LoginWidget(data: 'Login'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

