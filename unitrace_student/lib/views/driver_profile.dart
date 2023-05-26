import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:unitrace_student/controllers/details_controller.dart';
import 'package:unitrace_student/views/student_profile.dart';

import '../utils/constants.dart';
import '../utils/text_themes.dart';
import '../widgets/map/maputils/profile_address_tile.dart';
import '../widgets/map/maputils/profile_info_tile.dart';
import '../widgets/map/maputils/profile_name_img.dart';

class DriverProfile extends StatefulWidget {
  const DriverProfile({super.key});

  @override
  State<DriverProfile> createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
  DetailController _detailController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Color.fromARGB(255, 46, 46, 46),
        ),
        backgroundColor: redBg,
        elevation: 0,
        title: Text('Driver Profile',
        style: MyTextTheme.notosans.copyWith(
          fontSize: 20,
          color: Color.fromARGB(255, 46, 46, 46),
        ),
        ),
      ),

      body: Column(
        children: [
          
          ProfileNameImg(
            name: _detailController.driver[0].name,
            email: _detailController.driver[0].email,
          ),          
          SizedBox(height: Get.height*0.03,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfileInfoTile(
                headingField: "Bus",
                body: _detailController.driver[0].bus,
              ),
              ProfileInfoTile(
                headingField: "Emp ID",
                body: _detailController.driver[0].empId,
              ),               
            ],
          ),
          SizedBox(height: Get.height*0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             ProfileInfoTile(
                headingField: "Mobile No",
                body: _detailController.driver[0].mobileNo,
              ),
              ProfileInfoTile(
                headingField: "DOB",
                body: _detailController.driver[0].dob,
              ),
                          
            ],
          ),
          SizedBox(height: Get.height*0.03,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfileInfoTile(
                headingField: "Blood Type",
                body: _detailController.driver[0].bloodType,
              ), 
              ProfileInfoTile(
                headingField: "Medical Condition",
                body: _detailController.driver[0].medicalCondition,
              ),              
            ],
          ),
          SizedBox(height: Get.height*0.03,),

          ProfileAddressTile(
            address: _detailController.driver[0].address,
          ),
          
        ],
      ),
    );
  }
}