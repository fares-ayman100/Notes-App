import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    this.onPressed,
    this.isLoading = false,
  });
  final Color color;
  final bool isLoading;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        width: double.infinity,
        height: 60,
        child: TextButton(
          onPressed: onPressed,
          child:
              isLoading
                  ? CircularProgressIndicator(color: Colors.black)
                  : Text(
                    'Add ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
        ),
      ),
    );
  }
}
