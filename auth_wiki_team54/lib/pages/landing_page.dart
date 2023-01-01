// ignore_for_file: prefer_const_constructors

import 'package:auth_wiki_team54/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        
        backgroundColor: white,
        elevation: 0,
        leading: Image.asset('assets/icons/auth-wiki-logo.png'),
        actions: [
          Icon(
            Icons.menu,
            color: textTurple,
          )
        ],
      ),
      // backgroundColor: textTurple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: textTurple),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 0.0, bottom: 28.38),
                child: Column(
                  children: [
                    SizedBox(height: 26),
                    // Text
                    Text(
                      'A complete Authentication Codes Library',
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                          color: white),
                    ),
                    SizedBox(height: 44),

                    // Paragraph
                    Text(
                      'This gives and insight to a few ui designs but library and non-library designs that the designer can pick one or two cues for the whole concept to fit the design brief.',
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: white),
                    ),
                    SizedBox(height: 50),

                    // Email
                    Container(
                        width: 327,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            // the border below create a new outline
                            border: Border.all(color: Colors.white)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            //controller: _emailController,
                            decoration: InputDecoration(
                                hintText: 'Email', border: InputBorder.none),
                          ),
                        )),

                    // subscribe button
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 16, 12, 16),
                          child: Container(
                            width: 102,
                            height: 40,
                            decoration: BoxDecoration(
                              color: buttonBlue,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text('Subscribe',
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Counts
                    Column(
                      children: [
                        Text(
                          '70k+',
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: white),
                        ),
                        Text(
                          // Subscribers
                          'Monthly \n Subscribers',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.47,
                              color: white),
                        ),
                        SizedBox(height: 33),
                        Text(
                          '441k+',
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: white),
                        ),
                        Text(
                          // Subscribers
                          'Codes\nDownloaded',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.47,
                              color: white),
                        ),
                        SizedBox(height: 33),
                        Text(
                          '310k+',
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: white),
                        ),
                        Text(
                          // Subscribers
                          'Community \nMembers',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.47,
                              color: white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: white),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 0.0, bottom: 28.38),
                child: Column(
                  children: [
                    SizedBox(height: 26),
                    // Text
                    Text(
                      'What makes us Auth-wiki?',
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: textTurple),
                    ),
                    SizedBox(height: 33),

                    // Paragraph
                    Text(
                      'This gives and insight to a few ui designs but library and non-library designs that the designer can pick one or two cues for the whole concept to fit the design brief.',
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: textTurple),
                    ),
                    SizedBox(height: 50),

                    //Library stack
                    Stack(
                      children: [
                        Container(
                          width: 320,
                          height: 146,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(25.8824)),
                              border: Border.all(color: textTurple)),
                          child: Column(
                            children: [
                              SizedBox(height: 9.12),
                              Padding(
                                padding: const EdgeInsets.only(right: 27.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Library',
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: textPurplePrimary500),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'This gives and insight to a few ui\n designs but library and non-library \ndesigns. designs but library and non-\nlibrary designs.',
                                style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color.fromRGBO(0, 0, 0, 0.76)),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                        // Positioned(
                        //     top: -10,
                        //     child: Container(
                        //         decoration: BoxDecoration(
                        //             shape: BoxShape.circle,
                        //             color: Color.fromRGBO(245, 221, 247, 1)),
                        //         child: Padding(
                        //           padding: const EdgeInsets.all(15.0),
                        //           child:
                        //               Image.asset('assets/icons/library.png'),
                        //         )
                        //         )
                        //         )
                      ],
                    ),

                    SizedBox(height: 70),
                    Stack(
                      children: [
                        Container(
                          width: 320,
                          height: 146,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(25.8824)),
                              border: Border.all(color: textTurple)),
                          child: Column(
                            children: [
                              SizedBox(height: 9.12),
                              Padding(
                                padding: const EdgeInsets.only(right: 27.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Community',
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: textPurplePrimary500),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'This gives and insight to a few ui\n designs but library and non-library \ndesigns. designs but library and non-\nlibrary designs.',
                                style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color.fromRGBO(0, 0, 0, 0.76)),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                        // Positioned(
                        //     top: -10,
                        //     child: Container(
                        //         decoration: BoxDecoration(
                        //             shape: BoxShape.circle,
                        //             color: Color.fromRGBO(245, 221, 247, 1)),
                        //         child: Padding(
                        //           padding: const EdgeInsets.all(15.0),
                        //           child:
                        //               Image.asset('assets/icons/library.png'),
                        //         )
                        //         )
                        //         )
                      ],
                    ),
                    SizedBox(height: 70),
                    Stack(
                      children: [
                        Container(
                          width: 320,
                          height: 146,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(25.8824)),
                              border: Border.all(color: textTurple)),
                          child: Column(
                            children: [
                              SizedBox(height: 9.12),
                              Padding(
                                padding: const EdgeInsets.only(right: 27.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Download',
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: textPurplePrimary500),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'This gives and insight to a few ui\n designs but library and non-library \ndesigns. designs but library and non-\nlibrary designs.',
                                style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color.fromRGBO(0, 0, 0, 0.76)),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                        // Positioned(
                        //     top: -10,
                        //     child: Container(
                        //         decoration: BoxDecoration(
                        //             shape: BoxShape.circle,
                        //             color: Color.fromRGBO(245, 221, 247, 1)),
                        //         child: Padding(
                        //           padding: const EdgeInsets.all(15.0),
                        //           child:
                        //               Image.asset('assets/icons/library.png'),
                        //         )
                        //         )
                        //         )
                      ],
                    ),
                    SizedBox(height: 24),
                    // Get started button
                    Container(
                      width: 279,
                      height: 46,
                      decoration: BoxDecoration(
                        color: buttonBlue,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text('Get Started',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
