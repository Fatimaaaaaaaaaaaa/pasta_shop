import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  final String email;
  final String password;
  const ProfilePage(this.username,this.email,this.password, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Profile',
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 25.0, color: Colors.white60,)),

      ),
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Username: $username',
                style: GoogleFonts.alexandria(
                  fontSize: 20.0, color: Colors.white70,)
            ),
            const SizedBox(height:20.0),
            Text('Email: $email',
                style: GoogleFonts.alexandria(
                  fontSize: 20.0, color: Colors.white70,)
            ),
            const SizedBox(height:20.0),
          ],
        ),
      ),
    );
  }
}
