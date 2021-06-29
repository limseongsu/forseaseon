import 'package:flutter/material.dart';

class MainToolBar extends StatefulWidget {
  MainToolBar(this.dropList, this.dropSelect);

  final List<String> dropList;

  String dropSelect;

  @override
  _MainToolBarState createState() => _MainToolBarState();
}

class _MainToolBarState extends State<MainToolBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 8,
        ),
        DropdownButton(
          value: widget.dropSelect,
          items: widget.dropList.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value, style: TextStyle(fontSize: 12),),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              widget.dropSelect = value.toString();
            });
          },
        ),
      ],
    );
  }
}