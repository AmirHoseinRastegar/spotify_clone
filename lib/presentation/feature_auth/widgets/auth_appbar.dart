import 'package:flutter/material.dart';
import 'package:spotify_clone/common/widgets/extensions/is_dark_theme.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  const AuthAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: AppBar(
        centerTitle: true,
        title: title??  const Text(''),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: context.isDarkMode
                  ? Colors.white.withOpacity(0.03)
                  : Colors.black.withOpacity(0.04),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 15,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
