import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 void MysnackBar(BuildContext context, String message, Color color) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: GoogleFonts.poppins(color: Colors.white),
        ),
        backgroundColor: color,
      ),
    );
