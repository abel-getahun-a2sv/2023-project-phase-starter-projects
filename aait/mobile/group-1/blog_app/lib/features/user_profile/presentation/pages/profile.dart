// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:blog_app/features/user_profile/presentation/widgets/my_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/colors.dart';
import '../bloc/profile_bloc.dart';
import '../widgets/my_posts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    BlocProvider.of<ProfileBloc>(context).add(GetProfileInfo());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if ((state is! Loaded)) {
            return SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: ListView(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Profile',
                                style: TextStyle(
                                  color: kTextColorPrimary,
                                  fontSize: 24,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(
                                Icons.more_vert,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 40),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x0F5182FF),
                                  blurRadius: 15,
                                  offset: Offset(0, 10),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 30),
                              child: Column(children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 10, bottom: 30),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  "assets/images/profile.png"),
                                              width: 80,
                                            ),
                                            Container(
                                              width: 92,
                                              height: 92,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      width: 1,
                                                      color: kLightBlue),
                                                  borderRadius:
                                                      BorderRadius.circular(28),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 88,
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '@joviedan',
                                              style: TextStyle(
                                                color: kBlueBlack,
                                                fontSize: 18,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: -0.24,
                                              ),
                                            ),
                                            Text(
                                              'Jovi Daniel',
                                              style: TextStyle(
                                                color: kTextColorPrimary,
                                                fontSize: 18,
                                                fontStyle: FontStyle.italic,
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w100,
                                              ),
                                            ),
                                            Text(
                                              'UX Designer',
                                              style: TextStyle(
                                                color: Color(0xFF376AED),
                                                fontSize: 16,
                                                fontStyle: FontStyle.italic,
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w100,
                                                height: 1.25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ]),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 15),
                                      child: Text(
                                        "About me",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Text(
                                        "Madison Blackstone is a director of user experience design, with experience managing global teams.",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[700]),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 40),
                                  width: 231,
                                  height: 68,
                                  decoration: ShapeDecoration(
                                    color: kLightBlue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 77,
                                        height: 68,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF2151CD),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '52',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.10,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 63,
                                                child: Text(
                                                  'Post',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(
                                                            0.8700000047683716),
                                                    fontSize: 12,
                                                    fontFamily: 'Mulish',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.50,
                                                  ),
                                                ),
                                              )
                                            ]),
                                      ),
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '250',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w400,
                                                height: 1.10,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 63,
                                              child: Text(
                                                'Following',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(
                                                          0.8700000047683716),
                                                  fontSize: 12,
                                                  fontFamily: 'Mulish',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.50,
                                                ),
                                              ),
                                            )
                                          ]),
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '4.5k',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w400,
                                                height: 1.10,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 63,
                                              child: Text(
                                                'Followers',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(
                                                          0.8700000047683716),
                                                  fontSize: 12,
                                                  fontFamily: 'Mulish',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.50,
                                                ),
                                              ),
                                            )
                                          ]),
                                    ],
                                  ),
                                )
                              ]),
                            ))
                      ]),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 2,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(28),
                                    topRight: Radius.circular(28),
                                  ),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x115182FF),
                                    blurRadius: 32,
                                    offset: Offset(0, -25),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Column(children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(
                                      left: 40, right: 40, top: 30, bottom: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'My Posts',
                                        style: TextStyle(
                                          color: kTextColorPrimary,
                                          fontSize: 24,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Stack(children: [
                                              Icon(
                                                Icons.grid_view,
                                                color: Colors.blue[600],
                                                size: 30,
                                              )
                                            ]),
                                          ),
                                          Stack(children: [
                                            Icon(
                                              Icons.menu,
                                              color: Colors.blue[600],
                                              size: 30,
                                            )
                                          ])
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                MyPostsList(
                                  myPosts: [
                                    MyPost(
                                        title: "Big Data",
                                        subtitle:
                                            "Big Data is the brother of thick data.",
                                        likes: 4,
                                        isLiked: true,
                                        isSaved: false,
                                        postImageSrc:
                                            "assets/images/post_1.png"),
                                  ],
                                )
                              ]),
                            ),
                            Container(
                              width: 375,
                              height: 116,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.00, -1.00),
                                  end: Alignment(0, 1),
                                  colors: [
                                    Color(0x00F9FAFF),
                                    Color(0xFFFAFBFF)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
              ),
            );
          } else if (state is Error) {
            return Center(
              child: Text("Error"),
            );
          } else {
            return Center(
              child: Text("Loading"),
            );
          }
        },
      ),
    );
  }
}
