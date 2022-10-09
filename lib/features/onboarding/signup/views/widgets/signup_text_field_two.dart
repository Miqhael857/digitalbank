import 'package:digbank/core/app_colors.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignupTextFieldTwo extends StatefulWidget {
  final TextEditingController? ctrl;
  final String hintText;
  final Color hintcolor;
  final TextInputType keyboardType;
  final double fontSize;
  final Alignment alignment;
  final ValueChanged<String?>? onSaved;
  final String? Function(String?)? validator;
  const SignupTextFieldTwo({
    Key? key,
    this.hintcolor = Colors.black,
    required this.hintText,
    this.fontSize = 16,
    this.onSaved,
    this.validator,
    this.alignment = Alignment.center,
    this.keyboardType = TextInputType.name,
    TextEditingController? controller,
    this.ctrl,
  }) : super(key: key);

  @override
  State<SignupTextFieldTwo> createState() => _SignupTextFieldTwoState();
}

class _SignupTextFieldTwoState extends State<SignupTextFieldTwo> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 17, 0, 0),
          child: GestureDetector(
            onTap: () async {
              final code = await countryPicker.showPicker(context: context);
              setState(() {
                countryCode = code;
              });
            },
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: countryCode != null ? countryCode!.flagImage : null,
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: greenColor,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 15, 0, 0),
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: greenColor.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            countryCode?.dialCode ?? '+234',
            style: TextStyle(
              color: lightGreyColor.withOpacity(0.6),
              fontSize: 18,
            ),
          ),
        ),
        const Gap(8),
        Expanded(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 31, 0),
            alignment: widget.alignment,
            child: TextFormField(
              controller: widget.ctrl,
              keyboardType: widget.keyboardType,
              onSaved: widget.onSaved,
              validator: widget.validator,
              maxLines: 1,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: greenColor),
                ),
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  fontSize: widget.fontSize,
                  color: widget.hintcolor,
                ),
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
