import 'package:flutter/material.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';
import 'package:newsapp/app/modules/about/views/widget/contact_widget.dart';
import 'package:newsapp/app/modules/about/views/widget/course_widget.dart';
import 'package:newsapp/app/modules/about/views/widget/portofolio_widget.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'About Me',
                style: poppinsBold.copyWith(
                  fontSize: 30,
                  color: blackColor.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 80,
                height: 80,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  border: Border.all(
                    color: lightBlueColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Image.asset(
                  'assets/images/avatar.png',
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text('Ahmad Rafly Pradana', style: poppinsMedium),
              SizedBox(
                height: 6,
              ),
              Text(
                'Mobile Developer | Front End Developer | Fullstack Developer',
                style: poppinsRegular.copyWith(
                  fontSize: 14,
                  color: grayColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              PortofolioWidget(),
              SizedBox(
                height: 25,
              ),
              ContactWidget(),
              SizedBox(
                height: 25,
              ),
              CourseWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
