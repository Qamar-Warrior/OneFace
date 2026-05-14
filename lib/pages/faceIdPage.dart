import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              _OutlinedCyanButton(
                label: "O'tkazib yuborish",
                onTap: () => Navigator.maybePop(context),
              ),
              const SizedBox(height: 12),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: _FilledCyanButton(
                  label:
                      'Skanerlash'
                      'ni '
                      'boshlash',
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OutlinedCyanButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _OutlinedCyanButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 52,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFF29B6F6),
          side: const BorderSide(color: Color(0xFF29B6F6), width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class _FilledCyanButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _FilledCyanButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 52,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF29B6F6),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
