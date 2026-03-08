import 'package:flutter/material.dart';

class CustomTextFiel extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isScret;

 const CustomTextFiel({super.key, required this.icon, required this.label, this.isScret = false});

  @override
  State<CustomTextFiel> createState() => _CustomTextFielState();
}

class _CustomTextFielState extends State<CustomTextFiel> {

bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isScret
              ? IconButton(
                  onPressed: () {
                    setState(() {
                    isObscure = !isObscure;
                    });
                  },
                  icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                )
              : null,
          labelText: widget.label,
          isDense: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
        ),
      ),
    );
  }
}
