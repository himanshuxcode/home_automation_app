import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFB7E0FF),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 180,
              ),
              //Top Text
              Text(
                "Otp Verification",
                style: GoogleFonts.specialElite(
                  fontSize: 36,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding:const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child:  CustomTextField(
                  hintText: 'Phone Number',
                  controller: TextEditingController(),
                  isPrefix: true,
                  prefixIcon: Icons.phone,
                  maxLength: 10,
                  textInputType: TextInputType.phone,
                  validator: (val){
                    if(val.length != 10){
                      return "Invalid Phone Number";
                    }
                  },
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStateProperty.all(
                        const Size(double.maxFinite, 50)),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                    backgroundColor:
                    WidgetStateProperty.all(const Color(0xFF1E3E62)),
                    foregroundColor:
                    WidgetStateProperty.all(const Color(0xFFFFFFFF)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Didn't receive otp? "),
                  TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                        WidgetStateProperty.all(const Color(0xFF1E3E62)),
                        padding: WidgetStateProperty.all(EdgeInsets.zero),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact),
                    onPressed: () {

                    },
                    child: const Text("Resend"),
                  ),
                ],
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}