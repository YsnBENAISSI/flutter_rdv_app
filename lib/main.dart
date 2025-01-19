import 'package:flutter/material.dart';
import 'screens/doctor_list.dart';
import 'screens/doctor_details.dart';
import 'screens/appointment.dart';
import 'models/doctor.dart';

void main() {
  runApp(const MedicalApp());
}

class MedicalApp extends StatelessWidget {
  const MedicalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Appointments',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home:  DoctorsList(),
    );
  }
}