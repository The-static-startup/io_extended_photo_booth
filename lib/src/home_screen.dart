import 'package:flutter/material.dart';
import 'package:io_extended_photo_booth/src/components/io_photo_booth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: IOPhotoBooth(),
      ),
    );
  }
}
