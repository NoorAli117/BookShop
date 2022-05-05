import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:velocity_x/velocity_x.dart';

Widget myTextField(
    {required String name,
    String? hintText,
    String? labelText,
    FocusNode? focusNode,
    bool? validator = false,
    String? initialValue,
    TextInputType? inputType,
    Widget? prefixIcon,
    dynamic initval}) {
  // var stringVal = '';
  // if (Get.arguments == null) {
  //   initialValue = '';
  // } else {
  //   if (initialValue != null) {
  //     var split = initialValue.split("\.");
  //     if (split.length > 1) {
  //       if (Get.arguments[split[0]] != null) {
  //         stringVal = (Get.arguments[split[0]][split[1]] ?? '');
  //       } else {
  //         stringVal = '';
  //       }
  //     } else {
  //       stringVal = (Get.arguments[split[0]] != null
  //           ? Get.arguments[split[0]].toString()
  //           : '');
  //     }
  //   }
  // }

  return FormBuilderTextField(
    name: name,
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.white),
    keyboardType: inputType ?? TextInputType.text,
// initialValue: initval ?? stringVal,
    validator: (name) => name!.isEmpty && validator! ? '$name is Empty' : null,
    decoration: InputDecoration(
        filled: true,
        fillColor: Colors.deepPurple,
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            )),
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        labelText: labelText),
  ).p4();
}

Widget myDropDown(
    {required String name,
    String? hintText,
    List<String>? items,
    String? labelText,
    Widget? prefixIcon,
    void Function(String?)? onChanged,
    bool? validator = false,
    String? initialValue}) {
  return FormBuilderDropdown(
    name: name,
    onChanged: onChanged,
    initialValue: initialValue,
    dropdownColor: Colors.deepPurple,
    style: TextStyle(color: Colors.white),
    validator: (value) =>
        (value == null) && validator! ? '$name is Empty' : null,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.deepPurple,
      border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          )),
      prefixIcon: prefixIcon,
      hintStyle: TextStyle(color: Colors.white),
      hintText: hintText,
      labelText: labelText,
    ),
    items: items!
        .map((e) => DropdownMenuItem<String>(
            value: e,
            child: Text(
              '$e',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            )))
        .toList(),
  ).p4();
}

Widget submitButton({
  VoidCallback? onSubmit,
  String? btnName,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
      minimumSize: const Size(200, 40), //////// HERE
    ),
    onPressed: onSubmit,
    child: Text(btnName ?? 'Submit'),
  ).centered().pOnly(top: 20);
}
