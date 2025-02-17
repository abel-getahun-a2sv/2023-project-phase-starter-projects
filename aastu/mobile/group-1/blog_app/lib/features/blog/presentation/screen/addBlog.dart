import 'package:flutter/material.dart';
import 'package:blog_app/features/blog/presentation/widgets/CustomSnackbar.dart';

import '../widgets/inputForm.dart';

class AddBlog extends StatelessWidget {
  const AddBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(40, 40, 40, 20),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 36,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffEAEBF0),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                      ),
                    ),
                  ),
                  const Text(
                    "New article",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppins"),
                  ),
                  Container()
                  // Spacer(),
                ],
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: InputForm()),
              
            ],
          ),
        ),
      ),
    ));
  }
}
