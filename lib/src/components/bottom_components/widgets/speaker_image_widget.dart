import 'package:flutter/material.dart';
import 'package:io_extended_photo_booth/core/utils.dart';

class SpeakerImageWidget extends StatelessWidget {
  final String speakerProfile;
  const SpeakerImageWidget({
    super.key,
    required this.speakerProfile,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = PlatformUtils.isMobile;
    return Expanded(
      flex: 3,
      child: Padding(
        padding: EdgeInsets.only(
          left: isMobile ? size.width * 0.03 : size.width * 0.02,
          top: isMobile ? size.height * 0.06 : size.height * 0.08,
          bottom: isMobile ? size.height * 0.06 : size.height * 0.08,
        ),
        child: Container(
          height: size.height,
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              speakerProfile,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
