import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/widgets/button/basic_elevated_button.dart';
import 'package:spotify_clone/common/widgets/extensions/is_dark_theme.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/presentation/feature_auth/widgets/auth_appbar.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      child: Scaffold(
        appBar: AuthAppBar(
          title: SvgPicture.asset(
            AppVectors.logo,
            height: 40,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
            child: Column(
              children: [
                const Text(
                  'Register',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                const SizedBox(height: 50,),
            
                customTextFiled(context, 'Full Name'),
                const SizedBox(
                  height: 20,
                ),
                customTextFiled(context, 'Email Address'),
                const SizedBox(
                  height: 20,
                ),
                customTextFiled(context, 'Password'),
                const SizedBox(height: 20,),
                AppElevatedButton(onPressed: (){}, title: 'Register',width: 1000,)
            
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customTextFiled(BuildContext context, String title) {
    return TextField(
      decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(
              color: context.isDarkMode
                  ? const Color(0xff383838)
                  : const Color(0xffa7a7a7),
              fontWeight: FontWeight.w500),
          filled: true,
          fillColor: Colors.transparent,
          contentPadding: const EdgeInsets.all(30),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}
