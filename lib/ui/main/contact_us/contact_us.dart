import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';

class ContactUsScreen extends StatefulWidget {
  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  GoogleMapController mapController;
  Location _location = Location();

  static const LatLng _initialcameraposition =
      const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    _location.onLocationChanged.listen((l) {
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude, l.longitude), zoom: 15),
        ),
      );
    });
  }

  MapType _currentMapType = MapType.normal;
  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

// final Set<Marker> _markers = {};
  String _selectedItem = '';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: 50.h,
          // ),
          Container(
            height: 150.h,
            width: 370.w,
            color: Color(0xffF8F8F8),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 50.h),
              child: Text(
                "Contact Us",
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
          SizedBox(height: 50.h),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Container(
              height: height * 0.6,
              width: width,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _initialcameraposition,
                  zoom: 11.0,
                ),
                myLocationEnabled: true,
                mapType: _currentMapType,
                myLocationButtonEnabled: true,
                zoomGesturesEnabled: true,
                indoorViewEnabled: true,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 50.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[350],
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0.5,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Your Name "),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 50.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[350],
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0.5,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Your E-Mail"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 50.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[350],
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0.5,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Subject"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                TextField(
                  autofocus: false,
                  maxLines: 10,
                  decoration: InputDecoration(
                    hintText: "Message",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[350]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                // ButtonTheme(
                //   height: 50,
                //   // ignore: deprecated_member_use
                //   child: RaisedButton(
                //     color: Color(0xff198EDC),
                //     onPressed: () {
                //       print('Pressed');
                //     },
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(5.0),
                //     ),
                //     child: Text(
                //       "Send Message",
                //       style: TextStyle(color: Colors.white),
                //     ),
                //   ),
                // ),
                PrimaryButton(
                  height: 50.h,
                  width: 150.w,
                  text: ("Pressed"),
                  onPressed: (){

                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 180.h,
                  width: 370.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[350],
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Text(
                          "Get In Touch ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Divider(),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          "For any queries related to \n lookingforjob.co contact us ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 280.h,
                  width: 370.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[350],
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Text(
                          "Contact Information",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Divider(),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.location_pin,
                                  size: 30,
                                  color: Color(0xff198EDC),
                                ),
                              ),
                              TextSpan(
                                text:
                                    "  C Scheme, Jaipur , Rahasthan \n        302001 ",
                                style: TextStyle(
                                    fontSize: 18.nsp, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.phone,
                                  size: 30,
                                  color: Color(0xff198EDC),
                                ),
                              ),
                              TextSpan(
                                text: "  +91  8302221403",
                                style: TextStyle(
                                    fontSize: 18.nsp, color: Color(0xff198EDC)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.mail_outline,
                                  size: 30,
                                  color: Color(0xff198EDC),
                                ),
                              ),
                              TextSpan(
                                text: "  info@lookingforjob.co",
                                style: TextStyle(
                                    fontSize: 18.nsp, color: Color(0xff198EDC)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:50.h ,)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
