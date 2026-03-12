import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFiel extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isScret;
  final List<TextInputFormatter>? inputFormatters;

 const CustomTextFiel({super.key,
  required this.icon,
  required this.label, 
  this.isScret = false,
  this.inputFormatters,
   });

  @override
  State<CustomTextFiel> createState() => _CustomTextFielState();
}

class _CustomTextFielState extends State<CustomTextFiel> {

bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        inputFormatters:widget.inputFormatters,
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
          isDense:false,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
        ),
      ),
    );
  }
}
