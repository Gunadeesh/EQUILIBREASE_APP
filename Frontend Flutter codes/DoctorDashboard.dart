import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'config.dart'; // Ensure config.dart contains API URLs

class DoctorDashboard extends StatefulWidget {
  final String doctorID;
  const DoctorDashboard({Key? key, required this.doctorID}) : super(key: key);

  @override
  _DoctorDashboardState createState() => _DoctorDashboardState();
}

class _DoctorDashboardState extends State<DoctorDashboard> {
  List<dynamic> newUsers = [];
  List<dynamic> topComments = [];
  bool loading = true;
  int notificationCount = 0;
  String doctorName = '';

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    await Future.wait([
      fetchDoctorDetails(),
      fetchNewUsers(),
      fetchTopComments(),
      fetchNotificationCount(),
    ]);
    setState(() {
      loading = false;
    });
  }

  Future<void> fetchDoctorDetails() async {
    final url = Config.doctorDashboard(widget.doctorID);
    try {
      final response = await http.get(Uri.parse(url));
      final data = json.decode(response.body);
      if (data['success']) {
        setState(() {
          doctorName = data['doctor']['name'] ?? '';
        });
      }
    } catch (error) {
      print('Error fetching doctor details: $error');
    }
  }

  Future<void> fetchNewUsers() async {
    final url = Config.fetchNewUsers;
    try {
      final response = await http.get(Uri.parse(url));
      final data = json.decode(response.body);
      if (data['success']) {
        setState(() {
          newUsers = data['newUsers']?.take(2).toList() ?? [];
        });
      }
    } catch (error) {
      print('Error fetching new users: $error');
    }
  }

  Future<void> fetchTopComments() async {
    final url = Config.getPatientQueries;
    try {
      final response = await http.get(Uri.parse(url));
      final data = json.decode(response.body);
      if (data['success']) {
        final Set<String> uniquePatients = {};
        topComments = data['patients']?.where((comment) {
          if (!uniquePatients.contains(comment['patientId'])) {
            uniquePatients.add(comment['patientId']);
            return true;
          }
          return false;
        }).take(3).toList() ?? [];
      }
    } catch (error) {
      print('Error fetching top comments: $error');
    }
  }

  Future<void> fetchNotificationCount() async {
    final url = Config.getFeedbackCount;
    try {
      final response = await http.get(Uri.parse(url));
      final data = json.decode(response.body);
      if (data['success']) {
        setState(() {
          notificationCount = int.tryParse(data['count'].toString()) ?? 0;
        });
      }
    } catch (error) {
      print('Error fetching notification count: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      backgroundColor: const Color(0xFFC5EDFE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/Bulleted List.png'),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/doctorprofile.png'),
              radius: 25,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Text(
                'Welcome, Dr. $doctorName',
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Image.asset('assets/Add Reminder.png'),
                onPressed: () {
                  Navigator.pushNamed(context, '/PatientCommentsScreen');
                },
              ),
              if (notificationCount > 0)
                Positioned(
                  right: 19,
                  top: 29,
                  child: CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.red,
                    child: Text(
                      '$notificationCount',
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(
              'assets/dashboardimage.png',
              width: double.infinity,
              height: 190,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 7),
            _buildSection(
              title: 'Patient Comments:',
              children: topComments.map((comment) {
                return _buildCommentCard(comment ?? {});
              }).toList(),
              onViewAll: () {
                Navigator.pushNamed(context, '/AllPatientComment');
              },
            ),
            const SizedBox(height: 10),
            _buildSection(
              title: "Patient's Details:",
              children: newUsers.map((user) {
                return _buildUserCard(user ?? {});
              }).toList(),
              onViewAll: () {
                Navigator.pushNamed(context, '/AllPatientDetails');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required List<Widget> children,
    required VoidCallback onViewAll,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: const Color(0xFF458ADB).withOpacity(0.67),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          const SizedBox(height: 3),
          ...children,
          const SizedBox(height: 3),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: onViewAll,
              child: const Text(
                'View All →',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentCard(Map<String, dynamic> comment) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/AllPatientComment');
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(comment['image_path'] ?? ''),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Patient ID: ${comment['patientId'] ?? ''}', style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text('Name: ${comment['name'] ?? ''}'),
                        Text('Gender: ${comment['sex'] ?? ''}'),
                        Text('Query: ${comment['query'] ?? ''}'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserCard(Map<String, dynamic> user) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/PatientDetails', arguments: user.isNotEmpty ? {'patientId': user['patientId'] ?? ''} : {});
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(user['image_path'] ?? ''),
              ),
              const SizedBox(width: 19),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Patient ID: ${user['patientId'] ?? ''}', style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text('Name: ${user['name'] ?? ''}'),
                    Text('Gender: ${user['sex'] ?? ''}'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/PatientDetails', arguments: user.isNotEmpty ? {'patientId': user['patientId'] ?? ''} : {});
                },
                child: const Text('View'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
