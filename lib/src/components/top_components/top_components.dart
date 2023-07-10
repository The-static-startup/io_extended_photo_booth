import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:io_extended_photo_booth/core/constants.dart';
import 'package:io_extended_photo_booth/core/utils.dart';

class TopComponents extends StatelessWidget {
  final String ioImagePath;
  final String communityName;
  final String eventDate;
  final String eventLocation;
  const TopComponents({
    super.key,
    this.ioImagePath = Constants.ioLogo,
    required this.communityName,
    required this.eventDate,
    required this.eventLocation,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = PlatformUtils.isMobile;
    return Expanded(
      flex: 2,
      child: Container(
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: isMobile ? 4 : 5,
              child: Row(
                children: [
                  SvgPicture.asset(
                    ioImagePath,
                    height:
                        isMobile ? size.height * 0.028 : size.height * 0.054,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: isMobile ? 6.0 : size.width * 0.02),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'Extended',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: isMobile ? 14 : 30.0,
                        ),
                      ),
                      AutoSizeText(
                        communityName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        minFontSize: 10.0,
                        maxFontSize: 28.0,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: isMobile ? 14 : 28.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: isMobile ? 2 : 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: isMobile ? 15.0 : 20.0,
                      ),
                      SizedBox(width: isMobile ? 3.0 : size.width * 0.01),
                      SizedBox(
                        width: size.width * 0.24,
                        child: AutoSizeText(
                          eventDate,
                          maxLines: isMobile ? 1 : 2,
                          minFontSize: 8.0,
                          maxFontSize: 18.0,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: isMobile ? 10.0 : 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: isMobile ? 3.0 : size.height * 0.01),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: isMobile ? 15.0 : 20.0,
                      ),
                      SizedBox(width: isMobile ? 3.0 : size.width * 0.01),
                      SizedBox(
                        width: size.width * 0.24,
                        child: AutoSizeText(
                          eventLocation,
                          maxLines: isMobile ? 1 : 2,
                          minFontSize: 8.0,
                          maxFontSize: 18.0,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: isMobile ? 10.0 : 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
