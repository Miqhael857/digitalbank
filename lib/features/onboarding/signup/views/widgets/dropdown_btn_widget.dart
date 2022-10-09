import 'package:digbank/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownBtnWidget extends StatefulWidget {
  const DropdownBtnWidget({Key? key}) : super(key: key);

  @override
  State<DropdownBtnWidget> createState() => _DropdownBtnWidgetState();
}

class _DropdownBtnWidgetState extends State<DropdownBtnWidget> {
  final items = ['Why we need your BVN'];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff8DCB85).withOpacity(0.6),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 19,
      ),
      margin: const EdgeInsets.only(right: 37),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          isExpanded: true,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: greenColor,
          ),
          items: items.map(buildMenuItem).toList(),
          onChanged: (value) => setState(() => this.value = value),
        ),
      ),
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(color: greenColor, fontSize: 14.sp),
      ),
    );
