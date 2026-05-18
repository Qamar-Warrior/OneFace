import 'package:flutter/material.dart';
import '../classes/screenSizer.dart';
import '../const.dart';

class FaceRecognitionPage extends StatelessWidget {
  const FaceRecognitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
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
                      width: SizeConfig.w(260),
                      height: SizeConfig.h(260),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.cyan, // The bright blue/cyan outer ring
                          width: SizeConfig.w(4),
                        ),
                      ),
                      child: Stack(
                        alignment: AlignmentGeometry.center,
                        children: [
                          Positioned(
                            top: 16,
                            child: Icon(
                              Icons.keyboard_double_arrow_up_rounded,
                              color: Colors.blueGrey, // Or a specific hex code
                              size: SizeConfig.w(42),
                            ),
                          ),
                          Icon(
                            Icons.face, // Best matching stock icon
                            size: SizeConfig.w(110),
                            color: Colors.blueGrey,
                          ),
                          Positioned(
                            bottom: 16,
                            child: Icon(
                              Icons.keyboard_double_arrow_down_rounded,
                              color: Colors.blueGrey,
                              size: SizeConfig.w(42),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.h(40)),
                    Text(
                      "99 %",
                      style: TextStyle(
                        fontSize: SizeConfig.w(24),
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: SizeConfig.h(24)),
                    Text(
                      "Yuz tasvirini aylana\nichiga to’g’rilang",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: SizeConfig.w(24),
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        height: SizeConfig.h(1.3),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Center(
//   child: Column(
//     children: [
//       SvgPicture.string(
//         faceRecSvg,
//         width: 150,
//         height: 150,
//         colorFilter: ColorFilter.mode(
//           Color(0xFF24D0FF),
//           BlendMode.srcIn,
//         ),
//       ),
//       SizedBox(height: SizeConfig.h(16)),
//       Text(
//         'Face ID',
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontSize: SizeConfig.w(24),
//           fontWeight: FontWeight.w600,
//           color: kRegistrationColor,
//         ),
//       ),
//       SizedBox(height: SizeConfig.h(12)),
//     ],
//   ),
// ),
