// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class Drop_Down extends StatefulWidget {
  Drop_Down({
    super.key,
    required this.selectedValue,
    required this.genderItems,
    this.width,
  });

  dynamic selectedValue;
  // String title;
  List genderItems;
  double? width;

  @override
  State<Drop_Down> createState() => _Drop_DownState();
}

class _Drop_DownState extends State<Drop_Down> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: const Row(
            children: [],
          ),
          items: widget.genderItems
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ))
              .toList(),
          value: widget.selectedValue,
          onChanged: (value) {
            setState(() {
              widget.selectedValue = value;
            });
          },
          buttonStyleData: ButtonStyleData(
            height: 50,
            width: widget.width ?? 160,
            padding: const EdgeInsets.only(left: 14, right: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.black26,
              ),
              color: Colors.white,
            ),
            elevation: 2,
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(Icons.keyboard_arrow_down),
            iconSize: 22,
            iconEnabledColor: Colors.black,
            iconDisabledColor: Colors.grey,
          ),
          underline: Container(),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
            ),
            offset: const Offset(-20, 0),
            scrollbarTheme: ScrollbarThemeData(
              radius: const Radius.circular(40),
              thickness: MaterialStateProperty.all(6),
              thumbVisibility: MaterialStateProperty.all(true),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
            padding: EdgeInsets.only(left: 14, right: 14),
          ),
        ),
      ),
    );
  }
}

// ========================================================================================================
class Custom_Drop2 extends StatefulWidget {
  const Custom_Drop2({
    super.key,
    selectedValue,
    required this.hintText,
  });
  final String? hintText;
  @override
  State<Custom_Drop2> createState() => Custom_Drop2State();
}

class Custom_Drop2State extends State<Custom_Drop2> {
  String? selectedValue;

  dynamic v_1 = "akram";
  dynamic v_2 = "tamer";

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(value: v_1, child: Text(v_1)),
      DropdownMenuItem(value: v_2, child: Text(v_2)),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButtonFormField(
            decoration: InputDecoration(
              filled: true,
              hintText: widget.hintText,
              fillColor: Colors.transparent,
            ),
            dropdownColor: const Color.fromARGB(255, 245, 244, 244),
            value: selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: dropdownItems),
      ],
    ));
  }
}
