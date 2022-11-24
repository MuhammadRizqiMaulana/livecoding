part of register_phone;

class PhoneNumberTextField extends GetWidget<RegisterPhoneController> {
  const PhoneNumberTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Phone Number',
          maxLines: 1,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: spacing/2),
        Obx(()=>TextField(
          controller: controller.phoneNumber,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            prefix: Text(
              '+62|',
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
            isDense: true,
            contentPadding: const EdgeInsets.all(spacing/2),
            hintText: '',
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
