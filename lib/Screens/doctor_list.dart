import 'package:flutter/material.dart';

import '../models/Doctor.dart';
import 'appointment.dart';
import 'doctor_details.dart';




class DoctorsList extends StatelessWidget {
   DoctorsList({super.key});

  final List<Doctor> doctors = [
    Doctor(
        id: "1",
        fullName: "Dr. Ahmed El Mansouri",
        contact: "+212 62333332",
        speciality: "Cardiologue",
        photoUrl: "assets/images/doctor_ahmed.jpg",
        description: "Dr. Ahmed El Mansouri est un cardiologue marocain réputé avec plus de 20 ans d'expérience dans le traitement des maladies cardiovasculaires."
    ),
    Doctor(
      id: "2",
      fullName: "Dr. Fatima Benjelloun",
      contact: "+212 623444444",
      speciality: "Dermatologue",
      photoUrl: "assets/images/doctor_fatima.jpg",
      description: "Dr. Fatima Benjelloun est une dermatologue expérimentée, spécialisée dans les maladies de la peau et la dermatologie esthétique."
    ),
    Doctor(
        id: "3",
        fullName: "Dr. Youssef El Amrani",
        contact: "+212 662321111",
        speciality: "Pédiatre",
        photoUrl: "assets/images/doctor_youssef.jpg",
        description: "Dr. Youssef El Amrani est un pédiatre passionné avec une expertise dans les soins des nouveau-nés et des enfants de tous âges."
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Médecins disponibles'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Medical App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.medical_services),
              title: const Text('Liste des médecins'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Prendre rendez-vous'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AppointmentPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            elevation: 2,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(doctors[index].photoUrl),//
                radius: 30,
              ),
              title: Text(
                doctors[index].fullName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(doctors[index].speciality),
                  Text(doctors[index].contact),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorDetails(doctor: doctors[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}