import 'package:estheva_doctor/screens/doctor_tabs/cancelled.dart';
import 'package:estheva_doctor/screens/doctor_tabs/completed.dart';
import 'package:estheva_doctor/screens/doctor_tabs/upcomming.dart';
import 'package:estheva_doctor/screens/service_tab/service_cancelled.dart';
import 'package:estheva_doctor/screens/service_tab/service_complete.dart';
import 'package:estheva_doctor/screens/service_tab/service_upcoming.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:estheva_doctor/uitls/colors.dart';

class ServiceAppointmentPage extends StatefulWidget {
  final Map<String, dynamic> userData;
  const ServiceAppointmentPage({super.key, required this.userData});

  @override
  State<ServiceAppointmentPage> createState() => _ServiceAppointmentPageState();
}

class _ServiceAppointmentPageState extends State<ServiceAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            "Service Appointments",
            style: GoogleFonts.poppins(color: appColor),
          ),
          bottom: TabBar(
            indicatorColor: mainColor,
            labelColor: mainColor,
            labelStyle: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
            unselectedLabelColor: textColor,
            unselectedLabelStyle: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
            tabs: <Widget>[
              Tab(
                text: "Booked",
              ),
              Tab(
                text: "Completed",
              ),
              Tab(
                text: "Cancelled",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ServiceUpcoming(
              userData: widget.userData,
            ),
            ServiceComplete(
              userData: widget.userData,
            ),
            ServiceCancelled(
              userData: widget.userData,
            )
          ],
        ),
      ),
    );
  }
}
