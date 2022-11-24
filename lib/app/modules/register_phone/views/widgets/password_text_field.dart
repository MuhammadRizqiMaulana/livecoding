part of register_phone;

class PasswordTextField extends GetWidget<RegisterPhoneController> {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          maxLines: 1,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: spacing/2),
        Obx(()=>TextField(
          controller: controller.password,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          obscureText: controller.hiddenPassword.value, 
          obscuringCharacter: '*',
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () => controller.showPasswordTextField(),
              icon: controller.hiddenPassword.isTrue
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
            ),
            isDense: true,
            contentPadding: const EdgeInsets.all(spacing/2),
            hintText: 'Password',
            errorText: controller.passwordError.value == '' ? null : controller.passwordError.value,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius/2),
              borderSide: BorderSide(
                  color: colorFontPallets[2],
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius/2),
              borderSide: BorderSide(
                color: colorFontPallets[2],
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius/2),
              borderSide: const BorderSide(
                color:colorDanger,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius/2),
              borderSide: const BorderSide(
                color:colorDanger,
              ),
            ),
          ),
        )),
      ],
    );
  }
}
