import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/feature_auth/pages/signup_signin.dart';
import 'package:spotify_clone/presentation/feature_choose_mode/blocs/choose_mode_cubit.dart';

import '../../../common/widgets/button/basic_elevated_button.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/assets/app_vectors.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.chooseModeBG),
                    fit: BoxFit.fill),
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.15),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo),
                  ),
                  const Spacer(),
                  const Text(
                    'Choose Mode',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          BlocBuilder<ThemeCubit, ThemeMode>(
                            builder: (context, state) {
                              return GestureDetector(
                                onTap: () {
                                  state == ThemeMode.dark
                                      ? BlocProvider.of<ThemeCubit>(context)
                                          .changeTheme(ThemeMode.light)
                                      : BlocProvider.of<ThemeCubit>(context)
                                          .changeTheme(ThemeMode.dark);
                                },
                                child: ClipOval(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 10, sigmaY: 10),
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff30393C)
                                              .withOpacity(0.5),
                                          shape: BoxShape.circle),
                                      child:SvgPicture.asset(
                                              AppVectors.moon,
                                              fit: BoxFit.none,
                                            ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Dark Mode',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: AppColors.grey),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          BlocBuilder<ThemeCubit, ThemeMode>(
                            builder: (context, state) {
                              return GestureDetector(
                                onTap: () {
                                  state == ThemeMode.dark
                                      ? BlocProvider.of<ThemeCubit>(context)
                                          .changeTheme(ThemeMode.light)
                                      : BlocProvider.of<ThemeCubit>(context)
                                          .changeTheme(ThemeMode.dark);
                                },
                                child: ClipOval(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 10, sigmaY: 10),
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff30393C)
                                              .withOpacity(0.5),
                                          shape: BoxShape.circle),
                                      child: SvgPicture.asset(
                                        AppVectors.sun,
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Light Mode',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: AppColors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  AppElevatedButton(
                    width: 10000,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:  (context) => const SignUpSignIn(),));
                    },
                    title: 'Continue',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
