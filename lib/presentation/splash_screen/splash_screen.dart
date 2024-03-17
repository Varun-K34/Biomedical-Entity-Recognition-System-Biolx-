import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:varun_s_application27/presentation/home_screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use Future.delayed to navigate after a specific duration
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the HomeScreen after 3 seconds (adjust the duration as needed)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 610,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/Slogo.png'),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 162,
            width: double.infinity,
            child: Text(
              "Biolx",
              textAlign: TextAlign.center,
              style: GoogleFonts.merriweather(
                  textStyle:
                      TextStyle(color: const Color(0xff8ECFFD), fontSize: 61)),
            ),
          )
        ],
      ),
    );
  }
}
