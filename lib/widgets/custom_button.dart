import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.isLoading});

  final void Function()? onTap ;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child:  isLoading
        ? const SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(color: Colors.black,),
        ) : 
        const Center(
          child: Text('Add', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),),
        ),
      ),
    );
  }
}