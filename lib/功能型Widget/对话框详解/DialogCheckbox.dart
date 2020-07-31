import 'package:flutter/material.dart';

class DialogCheckbox extends StatefulWidget {

  final ValueChanged<bool> onchanged;
  final bool value;

  DialogCheckbox({Key key,this.value,@required this.onchanged}) : super(key: key);

  @override
  _DialogCheckboxState createState() => _DialogCheckboxState();

}

class _DialogCheckboxState extends State<DialogCheckbox> {

  bool value;

  @override
  void initState() {
    // TODO: implement initState
    value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: value,
        onChanged: (v) {
          widget.onchanged(v);
          setState(() {
            //更新自身选中状态
            value = v;
          });
        }
    );
  }
}
