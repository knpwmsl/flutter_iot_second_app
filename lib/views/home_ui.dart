// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_iot_second_app/views/signin_ui.dart';
import 'package:flutter_iot_second_app/views/signup_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 80.0),
            Text(
              'สวัสดีชาวโลก IoTSAU',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            Text(
              'Southeast Asia University',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800],
              ),
            ),
            Text(
              'Created by 6619410008 - Kanyapat W.',
              style: GoogleFonts.itim(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ปุ่ม LOGIN
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SigninUi(),
                      ),
                    );
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size(150.0, 50.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                // ปุ่ม SIGN UP (แก้ไขส่วนที่ Error)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupUi(),
                      ),
                    );
                  },
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150.0, 50.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
