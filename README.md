# Flutter_rdv_app

A modern Flutter application for managing medical appointments. This app allows users to browse doctors, view their details, and schedule appointments.

## Features

- **Doctors List:** Browse through a list of available doctors with their basic information
- **Doctor Details:** View detailed information about each doctor
- **Appointment Booking:** Schedule appointments with your chosen doctor
- **Image Upload:** Add optional photos to your appointment request
- **Modern UI:** Material Design 3 with a clean, professional interface
- **Responsive Design:** Works on both mobile and tablet devices

## Screenshots

(https://drive.google.com/file/d/12kxUnxj7GzjbqomO8S8usIHIDNNCJJQR/view?usp=drive_link)
(https://drive.google.com/file/d/11QpwPmfdnGKjYIlHXaLmIoyzCGc9Vf2Z/view?usp=drive_link)
(https://drive.google.com/file/d/1zDKpki9SdFtYlUDItx4kdBNbrATAPONZ/view?usp=drive_link)
(https://drive.google.com/file/d/1EbmsxV65Fuc2WLZBwYgb-UE-8iEbDj8K/view?usp=drive_link)
(https://drive.google.com/file/d/1nY48QEOUfBL0IFVsmHen3PhUYXYePIzv/view?usp=drive_link)

## Getting Started

### Prerequisites

- Flutter (latest version)
- Dart SDK
- Android Studio / Xcode for mobile deployment

### Installation

1. Clone the repository:
```bash
git clone https://github.com/YsnBENAISSI/flutter_rdv_app.git
cd flutter_rdv_app
```

2. Install dependencies:
```bash
flutter pub get
```

3. Add the required permissions:

For Android, add to `android/app/src/main/AndroidManifest.xml`:
```xml
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.CAMERA"/>
```

For iOS, add to `ios/Runner/Info.plist`:
```xml
<key>NSPhotoLibraryUsageDescription</key>
<string>This app requires access to the photo library to upload your profile picture.</string>
<key>NSCameraUsageDescription</key>
<string>This app requires access to the camera to take your profile picture.</string>
```

4. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart
├── models/
│   └── doctor.dart
└── screens/
    ├── doctors_list.dart
    ├── doctor_details.dart
    └── appointment.dart
```

## Dependencies

Add these to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  image_picker: ^1.0.7
```

## Configuration

1. Add your doctor images to the `assets/images/` directory
2. Update the `pubspec.yaml` to include the assets:

```yaml
flutter:
  assets:
    - assets/images/
```

## Features in Detail

### Doctors List
- Display of doctor's photo, name, specialty, and contact information
- Searchable list (coming soon)
- Filter by specialty (coming soon)

### Doctor Details
- Full doctor profile
- Experience and qualifications
- Available time slots (coming soon)
- Direct appointment booking

### Appointment Booking
- Required fields validation
- Date picker for scheduling
- Optional photo upload
- Additional notes section

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Upcoming Features

- [ ] User authentication
- [ ] Doctor search functionality
- [ ] Appointment management
- [ ] Push notifications
- [ ] Online consultation
- [ ] Payment integration
- [ ] Appointment history
- [ ] Doctor ratings and reviews



## Acknowledgments

- Flutter team for the amazing framework
- Material Design for the UI guidelines
- Contributors and maintainers

## Support

For support, email [your-email@example.com] or create an issue in the repository.
