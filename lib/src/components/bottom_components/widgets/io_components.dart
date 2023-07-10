import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:io_extended_photo_booth/core/utils.dart';

class IoComponents extends StatelessWidget {
  final String speakerDescription;
  final String speakerName;
  const IoComponents({
    super.key,
    required this.speakerDescription,
    required this.speakerName,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = PlatformUtils.isMobile;
    return Expanded(
      flex: 9,
      child: Padding(
        padding: EdgeInsets.only(
          right: isMobile ? size.width * 0.02 : size.width * 0.02,
          top: isMobile ? size.height * 0.06 : size.height * 0.08,
          bottom: isMobile ? size.height * 0.06 : size.height * 0.08,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    width: size.width * 0.2,
                  ),
                  Container(
                    width: size.width * 0.05,
                    height: 1.0,
                    color: Colors.black,
                  ),
                  Container(
                    width: size.width * 0.03,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.05,
                    height: 1.0,
                    color: Colors.black,
                  ),
                  Container(
                    width: size.width * 0.14,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.green,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.16,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.orange,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.092,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.09,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.17,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.green,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.21,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.orange,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    width: size.width * 0.25,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width * 0.03),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            speakerName,
                            maxFontSize: 30.0,
                            minFontSize: 10.0,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          AutoSizeText(
                            speakerDescription,
                            maxFontSize: 18.0,
                            minFontSize: 8.0,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.09,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          width: size.width * 0.053,
                          height: 1.0,
                          color: Colors.black,
                        ),
                        Container(
                          width: size.width * 0.03,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * 0.054,
                          height: 1.0,
                          color: Colors.black,
                        ),
                        Container(
                          width: size.width * 0.24,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            shape: BoxShape.rectangle,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
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
