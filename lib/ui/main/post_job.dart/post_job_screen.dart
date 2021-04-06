import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../responsive/responsive.dart';
import 'components/post_job_mobile.dart';

class PostJobScreen extends StatefulWidget {
  @override
  _PostJobScreenState createState() => _PostJobScreenState();
}

class _PostJobScreenState extends State<PostJobScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: PostJobMobileComponent(),
      tablet: Container(),
      desktop: Container(),
    );
  }
}
