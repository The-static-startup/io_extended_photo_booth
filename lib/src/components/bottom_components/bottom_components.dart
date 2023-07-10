import 'package:flutter/material.dart';
import 'package:io_extended_photo_booth/src/components/bottom_components/widgets/io_components.dart';
import 'package:io_extended_photo_booth/src/components/bottom_components/widgets/speaker_image_widget.dart';

class BottomComponents extends StatelessWidget {
  final String speakerProfile;
  final String speakerDescription;
  final String speakerName;
  const BottomComponents({
    super.key,
    required this.speakerProfile,
    required this.speakerDescription,
    required this.speakerName,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      flex: 8,
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          children: [
            SpeakerImageWidget(speakerProfile: speakerProfile),
            IoComponents(
              speakerDescription: speakerDescription,
              speakerName: speakerName,
            ),
          ],
        ),
      ),
    );
  }
}
