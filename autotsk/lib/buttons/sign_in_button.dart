import 'package:flutter/material.dart';

import 'package:autotsk/animation/custom_rect_tween.dart';
import 'package:autotsk/routing/hero_dialog_route.dart';
import 'package:autotsk/screen_type/signin_page.dart';

class transitionButton extends StatelessWidget {
  const transitionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(HeroDialogRoute(builder: (context) {
            return Signin();
          }));
        },
        child: Hero(
          tag: _heroAddTodo,
          createRectTween: (begin, end) {
            return CustomRectTween(begin: begin, end: end);
          },
          child: Material(
            color: Colors.black,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          ),
        ),
      ),
    );
  }
}

/// Tag-value used for the add todo popup button.
const String _heroAddTodo = 'add-todo-hero';
