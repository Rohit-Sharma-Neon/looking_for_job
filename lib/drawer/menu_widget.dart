import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';

class MenuWidget extends StatelessWidget {
  final GlobalKey<SliderMenuContainerState> drawerKey;

  const MenuWidget({Key key, @required this.drawerKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryDarkColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Color(0xff262626),
            alignment: Alignment.center,
            width: double.infinity,
            height: 40.h,
            child: Text(
              menu,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey.shade700,
          ),
          drawerItem(drawerKey),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            child: ListTile(
              tileColor: lightPrimaryAppColor,
              contentPadding: EdgeInsets.only(left: 15.w,top: 0,bottom: 0),
              // dense: true,
              onTap: () => drawerKey.currentState.closeDrawer(),
              title: Text(
                postAJob,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget drawerItem(GlobalKey<SliderMenuContainerState> drawerKey) {
  return ListView.separated(
    padding: EdgeInsets.zero,
    shrinkWrap: true,
    itemCount: DrawerList.drawerData.length,
    itemBuilder: (context, index) {
      return ListTile(
        contentPadding: EdgeInsets.only(left: 15.w),
        // dense: true,
        onTap: () => drawerKey.currentState.closeDrawer(),
        title: Text(
          DrawerList.drawerData[index],
          style: TextStyle(color: Colors.white),
        ),
      );
    },
    separatorBuilder: (context, index) {
      return Divider(
        height: 0,
        color: Colors.grey.shade600,
      );
    },
  );
}

class DrawerList {
  static List<String> drawerData = [
    browseJobs,
    companies,
    login,
    register,
  ];
}
