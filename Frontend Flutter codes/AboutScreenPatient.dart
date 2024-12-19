import 'package:flutter/material.dart';

class AboutScreenPatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFC5EDFE),
      body: Stack(
        children: [
          // Back button
          Positioned(
            top: 50,
            left: 15,
            child: IconButton(
              icon: Image.asset('assets/backarrow.png',
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain),
              iconSize: windowWidth * 0.07, // Reduced size for back button
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          // Inner container
          Center(
            child: Container(
              width: windowWidth * 0.9,
              height: windowHeight * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 2),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(
                horizontal: windowWidth * 0.05,
                vertical: windowHeight * 0.05,
              ), // Responsive padding
              margin: EdgeInsets.only(top: windowHeight * 0.1),
              child: Column(
                children: [
                  // Heading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Info.png',
                        width: windowWidth * 0.13,
                        height: windowWidth * 0.12,
                      ),
                      SizedBox(width: windowWidth * 0.03),
                      Text(
                        'About Us',
                        style: TextStyle(
                          fontSize: windowWidth * 0.06,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // Horizontal line
                  Divider(
                    color: Colors.black,
                    thickness: 2,
                    height: windowHeight * 0.04, // Responsive spacing
                  ),
                  // Text container
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: windowWidth * 0.05),
                        child: Text(
                          'Equilibrease is designed to bridge the gap between healthcare providers and patients by offering a seamless and personalized digital healthcare experience.\n\n'
                              '1. Mission: To analyze the efficacy of home maneuvers for treating vertigo and facilitate the follow-up of vertigo patients.\n\n'
                              '2. Vision: To become the leading platform for holistic patient management and care, empowering both patients and doctors through technology.\n\n'
                              '3. Core Values:\n'
                              '   - Compassion: Putting patients first in all we do.\n'
                              '   - Innovation: Continuously enhancing our platform with cutting-edge technology.\n'
                              '   - Accessibility: Ensuring healthcare is available anytime, anywhere.\n'
                              '   - Integrity: Building trust through transparent and ethical practices.\n\n'
                              '4. Key Features:\n'
                              '   - Patient-Centric Design: User-friendly interface tailored for patient needs.\n'
                              '   - Doctor Collaboration: Tools to enhance communication and data sharing.\n'
                              '   - Interactive Dashboards: Manage health records, feedback, and progress efficiently.\n'
                              '   - Language Support: Multilingual features for better accessibility.\n'
                              '   - Feedback Mechanism: Easy-to-use feedback submission and tracking system.\n\n'
                              '5. Technological Edge:\n'
                              '   - AI-driven insights for personalized healthcare recommendations.\n'
                              '   - Secure cloud-based infrastructure for seamless data synchronization.\n\n'
                              'Equilibrease is committed to enhancing the quality of life by making healthcare more efficient, transparent, and patient-focused.',
                          style: TextStyle(
                            fontSize: windowWidth * 0.04,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}