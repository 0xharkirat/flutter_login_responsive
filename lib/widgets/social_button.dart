import 'package:flutter/material.dart';
import 'package:flutter_login_responsive/pallete.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {

  final String iconPath;
  final String label;
  final double horizontalPadding;
  const SocialButton({Key? key, required this.iconPath, required this.label, this.horizontalPadding = 100}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: (){},
      icon: SvgPicture.asset(iconPath, width: 25, color: Pallete.whiteColor,),
      label: Text(label, style: const TextStyle(
        fontSize: 17,
        color: Pallete.whiteColor,
      ),),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 30),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 3,
            color: Pallete.borderColor,
          ),
          borderRadius: BorderRadius.circular(10),

        )
      ),
    );
  }
}
