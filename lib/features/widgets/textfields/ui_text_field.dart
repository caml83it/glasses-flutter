part of 'textfields.dart';

class UITextField extends StatelessWidget {
  const UITextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: UISizes.font.sp14,
        color: UIColors.text,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: UIColors.focusBorder,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(UISizes.square.r12),
          borderSide: BorderSide(color: UIColors.enableBorder, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(UISizes.square.r12),
          borderSide: BorderSide(color: UIColors.focusBorder, width: 1.0),
        ),
        filled: true,
        fillColor: UIColors.white,
        hintText: context.pleaseEntering,
        hintStyle: TextStyle(
          fontSize: UISizes.font.sp14,
          color: UIColors.hint,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
