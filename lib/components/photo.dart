import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  Photo({Key? key, this.photo, this.color, this.onTap}) : super(key: key);
  final String? photo;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor.withOpacity(0.25),
      child: InkWell(onTap: onTap, child: Image.asset(photo!, fit:BoxFit.contain)),
    );
  }
}
