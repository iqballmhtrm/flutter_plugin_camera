import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart'; // Tambahkan ini untuk menggunakan AutoSizeText

class RedTextWidget extends StatelessWidget {
  final String text; // Tambahkan variabel text

  // Ubah constructor agar menerima parameter text
  const RedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ubah return menjadi AutoSizeText
    return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
  
}
