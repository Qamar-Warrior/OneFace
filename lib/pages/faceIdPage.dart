import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oneface/pages/faceRecognitionPage.dart';
import '../classes/filledCyanButton.dart';
import '../classes/outlinedCyanButton.dart';
import '../classes/screenSizer.dart';
import '../const.dart';

class FaceIdPage extends StatelessWidget {
  const FaceIdPage({super.key});
  final String faceIdSvg =
      '''<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24">
	<path d="M0 0h24v24H0z" fill="none" />
	<path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M7 3H5a2 2 0 0 0-2 2v2m14-4h2a2 2 0 0 1 2 2v2m-5 1v2M8 8v2m1 6s1 1 3 1s3-1 3-1m-3-8v5h-1m-4 8H5a2 2 0 0 1-2-2v-2m14 4h2a2 2 0 0 0 2-2v-2" />
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
                      width: 150,
                      height: 150,
                      colorFilter: ColorFilter.mode(
                        Color(0xFF24D0FF),
                        BlendMode.srcIn,
                      ),
                    ),
                    SizedBox(height: SizeConfig.h(16)),
                    Text(
                      'Face ID',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: SizeConfig.w(24),
                        fontWeight: FontWeight.w600,
                        color: kRegistrationColor,
                      ),
                    ),
                    SizedBox(height: SizeConfig.h(12)),
                    const Text(
                      "Face ID dan  o'tish sizga Shaxsingizni tasdiqlash va ilovadan to'liq foydalanish huquqini beradi",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.55,
                        color: kRegistrationColor,
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
                  label:
                      'Skanerlash'
                      'ni '
                      'boshlash',
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
