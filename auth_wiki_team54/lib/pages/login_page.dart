// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auth_wiki_team54/pages/landing_page.dart';
import 'package:auth_wiki_team54/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 249, 254, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(children: [
              SizedBox(
                height: 34.5,
              ),
              //Row Logo and Text
              Row(
                children: [
                  Image.asset('assets/icons/auth-wiki-logo.png'),
                  SizedBox(width: 10),

                  // Auth-Wiki
                  Text(
                    'Auth-Wiki',
                    style: GoogleFonts.sora(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: logoTextPurple),
                  ),
                ],
              ),

              // Image

              Image.asset('assets/images/world-first-image.png'),

              // Log in to your account
              Text(
                'Log in to your account',
                style: GoogleFonts.sora(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: textTurple),
              ),
              SizedBox(height: 22),

              // username text field
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: textPurplePrimary500),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                  width: 340,
                  height: 34,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      // the border below create a new outline
                      border: Border.all(color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      //controller: _emailController,
                      decoration: InputDecoration(
                          hintText: 'Username', border: InputBorder.none),
                    ),
                  )),
              SizedBox(height: 24),
              // Password field
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: textPurplePrimary500),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                  width: 340,
                  height: 34,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      // the border below create a new outline
                      border: Border.all(color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      //controller: _emailController,
                      decoration: InputDecoration(
                          hintText: 'Password', border: InputBorder.none),
                    ),
                  )),
              SizedBox(height: 31.5),

              // Login button with Thumb print
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LandingPage(),
                          ));
                    },
                    child: Container(
                      width: 254,
                      height: 55,
                      decoration: BoxDecoration(
                        color: buttonBlue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text('Sign In',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(width: 19),
                  // Thumb print
                  Image.asset('assets/images/thumb-print.png')
                ],
              ),
              SizedBox(height: 35.5),

              // Don't Have an account?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account yet? ',
                    style: GoogleFonts.sora(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  //  GestureDetector(
                  //onTap: widget.showRegisterPage,
                  //child:
                  Text('Register',
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: textPurplePrimary500,
                      )),
                  // ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
