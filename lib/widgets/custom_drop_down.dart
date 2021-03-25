import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';

class CustomDropdown<T> extends StatefulWidget {
  CustomDropdown({
    Key key,
    @required this.items,
    @required this.onChanged,
    this.onInit,
    this.padding = const EdgeInsets.only(top: 0.0),
    this.height = 45,
    this.center = false,
    this.itemText,
  }) : super(key: key);

  /// list item
  List<T> items;

  /// onChanged
  void Function(T value) onChanged;

  /// onInit
  void Function(T value) onInit;

  ///padding
  EdgeInsetsGeometry padding;

  /// container height
  double height;

  /// center
  bool center;

  String Function(String text) itemText;

  @override
  _CustomDropdownState<T> createState() => _CustomDropdownState();
}

class _CustomDropdownState<T> extends State<CustomDropdown<T>> {
  /// current selected value
  T _selectedValue;

  @override
  void initState() {
    super.initState();
    _initValue();
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  /// set default selected value when init
  _initValue() {
    _selectedValue = widget.items[0];
    if (widget.onInit != null) widget.onInit(_selectedValue);
  }

  _buildBody() {
    Color borderLine = Color(0xffc0c0c0);
    return Padding(
      padding: widget.padding,
      child: Row(
        mainAxisAlignment: (widget.center)
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            height: widget.height,
            padding: EdgeInsets.only(left: 10.0),
            decoration: ShapeDecoration(
              color: primaryDarkColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 0.8, style: BorderStyle.solid, color: borderLine),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
            child: new DropdownButtonHideUnderline(
              child: new DropdownButton<T>(
                iconDisabledColor: Colors.white,
                iconEnabledColor: Colors.grey,
                value: _selectedValue,
                onChanged: (T newValue) {
                  setState(() {
                    _selectedValue = newValue;
                    widget.onChanged(newValue);
                  });
                },
                items: widget.items.map((T f) {
                  return new DropdownMenuItem<T>(
                    value: f,
                    child: new Text(
                      (widget.itemText != null)
                          ? widget.itemText(f.toString())
                          : f.toString(),
                      style: new TextStyle(color: Colors.grey),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}