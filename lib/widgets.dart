import 'package:flutter/material.dart';
import 'package:move_daily/style.dart';

class BigTextField extends StatelessWidget {
  final Color color;
  final String label;
  final String hint;
  final double borderRadius;
  final TextInputType inputType;
  final bool hideText;
  final Widget? icon;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const BigTextField(
      {super.key,
      this.color = AppColors.secondaryBg,
      required this.label,
      this.hint = '',
      this.borderRadius = 8,
      required this.inputType,
      this.hideText = false,
      this.icon,
      required this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
      child: TextFormField(
        controller: controller,
        // focusNode: _model.fullNameFocusNode,
        obscureText: hideText,
        // cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: label,
          floatingLabelStyle: AppTextStyles.label,
          hintText: hint,
          errorStyle: AppTextStyles.error,
          filled: true,
          suffixIcon: icon,
          fillColor: AppColors.secondaryBg,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.secondaryBg,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0x00000000),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffff0000),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0x00000000),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        style: AppTextStyles.mediumBold,
        keyboardType: inputType,
        validator: validator,
      ),
    );
  }
}

class BigButton extends StatelessWidget {
  final double width, height, elevation, borderRadius;
  final String label;
  final Color color;
  final TextStyle textStyle;
  final Function()? handlePress;

  const BigButton(
      {super.key,
      required this.label,
      this.width = 200,
      this.height = 50,
      this.elevation = 3,
      this.borderRadius = 8,
      this.color = AppColors.brand,
      this.textStyle = AppTextStyles.whiteBold,
      required this.handlePress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: handlePress,
          style: ElevatedButton.styleFrom(
              elevation: elevation,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
              backgroundColor: color),
          child: Text(
            label,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}

class OrLine extends StatelessWidget {
  const OrLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.fromSTEB(50, 20, 50, 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              // color: ,
              thickness: 1.5,
            ),
          ),
          Text(
            ' OR ',
            style: TextStyle(color: AppColors.divider),
          ),
          Expanded(
              child: Divider(
            thickness: 1.5,
          ))
        ],
      ),
    );
  }
}
