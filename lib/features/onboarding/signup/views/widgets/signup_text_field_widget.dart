import 'package:digbank/core/app_colors.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignupTextFieldWidget extends StatefulWidget {
  final TextEditingController? ctrl;
  final String hintText;
  final EdgeInsets margin;
  final Color hintcolor;
  final TextInputType keyboardType;
  final double fontSize;
  final Alignment alignment;
  final ValueChanged<String?>? onSaved;
  final String? Function(String?)? validator;
  const SignupTextFieldWidget({
    Key? key,
    this.hintcolor = Colors.black,
    required this.hintText,
    this.fontSize = 16,
    this.onSaved,
    this.validator,
    this.ctrl,
    required this.margin,
    this.alignment = Alignment.center,
    this.keyboardType = TextInputType.name,
    TextEditingController? controller,
  }) : super(key: key);

  @override
  State<SignupTextFieldWidget> createState() => _SignupTextFieldWidgetState();
}

class _SignupTextFieldWidgetState extends State<SignupTextFieldWidget> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      alignment: widget.alignment,
      child: TextFormField(
        controller: widget.ctrl,
        keyboardType: widget.keyboardType,
        onSaved: widget.onSaved,
        validator: widget.validator,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          hintStyle: TextStyle(
            fontSize: widget.fontSize,
            color: widget.hintcolor,
          ),
          fillColor: Colors.white,
          prefixIcon: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () async {
                    final code =
                        await countryPicker.showPicker(context: context);
                    setState(() {
                      countryCode = code;
                    });
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 26,
                        height: 26,
                        child:
                            countryCode != null ? countryCode!.flagImage : null,
                      ),
                      const Gap(4),
                      const Center(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: greenColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(5),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    countryCode?.dialCode ?? '+234',
                    style: TextStyle(
                      color: lightGreyColor.withOpacity(0.6),
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
