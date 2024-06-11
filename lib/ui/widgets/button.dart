import 'package:evoting/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? ontap;

  const CustomFilledButton({super.key,
    required this.title,
    this.ontap,
    this.width = double.infinity,
    this.height = 40,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: darkBLue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
        onPressed: ontap, 
        child: Text(title, style: whiteMedium.copyWith(
          fontSize: 12
        ),)
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? ontap;

  const CustomOutlineButton({super.key,
    required this.title,
    this.ontap,
    this.width = double.infinity,
    this.height = 40,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          side: BorderSide(color: darkBLue)
        ),
        onPressed: ontap, 
        child: Text(title, style: darkBlueMedium.copyWith(
          fontSize: 12
        ),)
      ),
    );
  }
}

