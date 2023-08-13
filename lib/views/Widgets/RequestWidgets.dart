import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/views/screens/BottomNavBarScreen.dart';
import 'package:nursery/views/screens/HomeScreen/HomeScreen.dart';
import 'package:nursery/views/screens/HomeScreen/TakeBringScreens/TakeScreen.dart';
import 'package:sizer/sizer.dart';

class RequestWidgets extends StatelessWidget {
   RequestWidgets({Key? key,required this.index}) : super(key: key);
   int index ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() {
        if (index==0){
           Navigator.push(context, MaterialPageRoute(builder: (context) =>BottomNavBarScreen() ,));
        
        } else if (index==1){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen() ,));
        }else if (index==2){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen() ,));
        }else if (index==3){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen() ,));

        }else if (index==4 || index ==5){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>TakeBringChildScreen(TakeOrBring: HomeScreenTXT[index]) ,));

        }
      }, 
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(100)),
          boxShadow: [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 0.0),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(2.0.h),
          child: Column(
            children: [
              Image.asset(HomeScreenImg[index], height: 4.h),
              Spacer(),
              Text(
                HomeScreenTXT[index],
                style: GoogleFonts.poppins(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w600
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}