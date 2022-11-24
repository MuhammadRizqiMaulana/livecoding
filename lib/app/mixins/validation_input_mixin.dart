part of app_mixins;

mixin ValidatorMixin {

  String? isValidUsername(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Tidak boleh kosong";
    } else if (value.indexOf(' ') >= 1) {
      return "Tdak boleh ada spasi";
    } 
    return null;
  }

  String? isValidPhoneNumber(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Tidak boleh kosong";
    } else if (value.indexOf(' ') >= 1) {
      return "Tdak boleh ada spasi";
    } 
    return null;
  }

  String? isValidPassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Tidak boleh kosong";
    }
    return null;
  }

}
