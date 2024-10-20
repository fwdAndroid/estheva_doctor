import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estheva_doctor/uitls/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallPage extends StatefulWidget {
  final Map<String, dynamic> userData;
  const CallPage({super.key, required this.userData});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Medical Consultation",
          style: GoogleFonts.poppins(
              fontSize: 18, color: white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("users")
                      .snapshots(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (!snapshot.hasData || snapshot.data == null) {
                      return Center(child: Text('No data available'));
                    }
                    var snap = snapshot.data;
                    return ListView.builder(
                      scrollDirection:
                          Axis.vertical, // Keep the scroll direction vertical

                      itemCount: snap
                          .docs.length, // Replace with your dynamic list length
                      itemBuilder: (context, index) {
                        var doctorData = snap.docs[index].data();
                        return ListTile(
                          title: Text(
                            doctorData['fullName'],
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: black,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            doctorData['email'],
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: black,
                                fontWeight: FontWeight.w500),
                          ),
                        );
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
