import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oneface/pages/faceRecognitionPage.dart';
import '../classes/filledCyanButton.dart';
import '../classes/outlinedCyanButton.dart';
import '../classes/screenSizer.dart';
import '../const.dart';

class FaceAcceptencePage extends StatelessWidget {
  const FaceAcceptencePage({super.key});
  final String faceIdSvg =
      '''<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16">
	<path d="M0 0h16v16H0z" fill="none" />
	<g fill="currentColor">
		<path d="M12.5 16a3.5 3.5 0 1 0 0-7a3.5 3.5 0 0 0 0 7m1.679-4.493l-1.335 2.226a.75.75 0 0 1-1.174.144l-.774-.773a.5.5 0 0 1 .708-.708l.547.548l1.17-1.951a.5.5 0 1 1 .858.514M11 5a3 3 0 1 1-6 0a3 3 0 0 1 6 0" />
		<path d="M2 13c0 1 1 1 1 1h5.256A4.5 4.5 0 0 1 8 12.5a4.5 4.5 0 0 1 1.544-3.393Q8.844 9.002 8 9c-5 0-6 3-6 4" />
	</g>
</svg>

''';
  @override
  Widget build(BuildContext context) {
    const Color neonGreen = Color(0xFF26FF3B);
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: SizeConfig.w(160),
                      height: SizeConfig.h(160),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        boxShadow: [
                          BoxShadow(
                            color: neonGreen.withValues(alpha: 0.35),
                            blurRadius: 90,
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      child: SvgPicture.string(
                        faceIdSvg,

                        colorFilter: ColorFilter.mode(
                          neonGreen,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),

                    SizedBox(height: SizeConfig.h(64)),
                  ],
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Text(
                    "Verifikatsiya-tizimga kirish holati,\n Muvaffaqiyatli yakunlandi !",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: SizeConfig.w(16),
                      fontWeight: FontWeight.w500,
                      color: neonGreen,
                      height: SizeConfig.h(1.4),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.only(bottom: 20),
                child: FilledCyanButton(
                  label: 'Ilovaga qaytish',
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
