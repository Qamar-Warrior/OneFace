import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oneface/pages/faceRecognitionPage.dart';
import '../classes/filledCyanButton.dart';
import '../classes/outlinedCyanButton.dart';
import '../classes/screenSizer.dart';
import '../const.dart';

class FaceIdErrorPage extends StatelessWidget {
  const FaceIdErrorPage({super.key});
  final String faceIdSvg =
      '''<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24">
  <path d="M0 0h24v24H0z" fill="none" />
  <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 8V6a2 2 0 0 1 2-2h2M4 16v2a2 2 0 0 0 2 2h2m8-16h2a2 2 0 0 1 2 2v2m-4 12h2a2 2 0 0 0 2-2v-2M9 10h.01M15 10h.01M9.5 15.05a3.5 3.5 0 0 1 5 0" />
</svg>
''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.h(12)),
              GestureDetector(
                onTap: () => Navigator.maybePop(context),
                child: Icon(
                  Icons.arrow_back,
                  color: kArrowColor,
                  size: SizeConfig.w(24),
                ),
              ),
              SizedBox(height: SizeConfig.h(150)),

              Center(
                child: Column(
                  children: [
                    SvgPicture.string(
                      faceIdSvg,
                      width: SizeConfig.w(150),
                      height: SizeConfig.h(150),
                      colorFilter: ColorFilter.mode(
                        Colors.red,
                        BlendMode.srcIn,
                      ),
                    ),

                    SizedBox(height: SizeConfig.h(12)),
                    Text(
                      "Yuz tasviri aniqlanmadi. Iltimos qayta \n urinib ko"
                      "\'ring !",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: SizeConfig.w(14),
                        height: SizeConfig.h(1.55),
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 1),
              OutlinedCyanButton(
                label: "O'tkazib yuborish",
                onTap: () => Navigator.maybePop(context),
              ),
              const SizedBox(height: 12),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: FilledCyanButton(
                  label: 'Qayta skanerlash',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FaceRecognitionPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
