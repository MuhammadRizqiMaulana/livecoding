part of register_phone;

class UsernameTextField extends GetWidget<RegisterPhoneController> {
  const UsernameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Username',
          maxLines: 1,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: spacing/2),
        Obx(()=>TextField(
          controller: controller.username,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(spacing/2),
            hintText: 'Username',
            errorText: controller.usernameError.value == '' ? null : controller.usernameError.value,
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
