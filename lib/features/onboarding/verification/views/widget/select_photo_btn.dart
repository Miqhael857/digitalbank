import 'dart:io';

import 'package:digbank/features/onboarding/verification/views/verification_id_one_page.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class SelectPhoto extends StatefulWidget {
  final String text;
  final BorderRadius borderRadius;
  final EdgeInsets margin;
  final Color textColor;
  final Color color;
  final double fontSize;
  const SelectPhoto(
      {Key? key,
      required this.text,
      required this.margin,
      required this.borderRadius,
      required this.color,
      required this.textColor,
      required this.fontSize})
      : super(key: key);

  @override
  State<SelectPhoto> createState() => _SelectPhotoState();
}

class _SelectPhotoState extends State<SelectPhoto> {
  File? _image;
  Future<void> takeImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);

      setState(() {
        _image = imageTemporary;
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (c) => VerificationIdOnePage(image: _image!),
        ),
      );
    } on Platform catch (e) {
      'Failed to pick image: $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      margin: widget.margin,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: widget.borderRadius,
          ),
        ),
        onPressed: () {
          takeImage(ImageSource.camera);
        },
        child: AppTextWidget(
          alignment: Alignment.center,
          text: widget.text,
          color: widget.textColor,
          fontSize: widget.fontSize,
        ),
      ),
    );
  }
}
