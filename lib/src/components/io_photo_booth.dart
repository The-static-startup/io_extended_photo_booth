import 'package:flutter/material.dart';
import 'package:io_extended_photo_booth/core/utils.dart';
import 'package:io_extended_photo_booth/src/components/bottom_components/bottom_components.dart';
import 'package:io_extended_photo_booth/src/components/top_components/top_components.dart';

class IOPhotoBooth extends StatelessWidget {
  const IOPhotoBooth({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = PlatformUtils.isMobile;
    final totalHeight = isMobile ? size.height * 0.35 : size.height * 0.8;
    return Container(
      height: totalHeight,
      width: size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopComponents(
            communityName: "Flutter Nashik",
            eventDate: "July 14 2023",
            eventLocation: "Winjit Technologies Pvt Ltd Nashik",
          ),
          BottomComponents(
            speakerName: 'Nishi Ajmera',
            speakerDescription: 'Publicis Sapient, Senior Associate',
            speakerProfile:
                "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
          ),
        ],
      ),
    );
  }
}
