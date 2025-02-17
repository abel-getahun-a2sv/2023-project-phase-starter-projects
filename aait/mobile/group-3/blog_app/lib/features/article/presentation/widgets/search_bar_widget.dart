import 'package:blog_app/core/util/app_colors.dart'; // Importing app-specific colors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget  extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            width: 379.w,
            height: 70.5.h,
            padding:
                EdgeInsets.only(left: 15.w), // Left padding for the text field
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.iconGrey.withOpacity(0.1)),
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(
                  10.w), // Rounded corners of the container
              boxShadow: [
                BoxShadow(
                  color: AppColors.iconGrey.withOpacity(0.1), // Shadow color
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search articles...',
                hintStyle: TextStyle(
                  color: Theme.of(context)
                      .hintColor, // Extra light color for the hint text
                  fontSize: 15.sp,
                  fontWeight: FontWeight
                      .w300, // Extra light font weight for the hint text
                ),
                border:
                    InputBorder.none, // Remove border around the input field
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          // height and width of the button
          width: 52.w,
          height: 70.5.h,
          child: ElevatedButton(
            onPressed: () {
              // Perform search action here
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  vertical: 16.h, horizontal: 16.w), // Padding for the button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10.w), // Rounded corners of the button
              ),
            ),
            child: Icon(
              Icons.search, // Search icon
              color: AppColors.whiteColor, // Color of the search icon
              size: 35.h, // Size of the search icon
            ),
          ),
        ),
      ],
    );
  }
}



