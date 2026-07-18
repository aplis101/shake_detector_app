# shake_detector_app

Tugas deteksi guncangan dengan Accelerometer.

Aplikasi Flutter yang mendeteksi guncangan perangkat menggunakan accelerometer sensor dan menampilkan nilai-nilai akselerasi real-time.

## Features

- ✅ Real-time accelerometer data visualization
- ✅ Shake detection dengan threshold yang dapat disesuaikan
- ✅ Shake counter untuk menghitung jumlah guncangan
- ✅ UI modern dengan Material Design 3
- ✅ Kompatibel dengan Android dan iOS

## Requirements

- Flutter SDK >= 3.0.0
- Dart SDK >= 3.0.0
- Android SDK 21+ (untuk Android)
- iOS 11.0+ (untuk iOS)

## Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/aplis101/shake_detector_app.git
cd shake_detector_app
```

### 2. Install dependencies
```bash
flutter pub get
```

### 3. Run the app
```bash
# Untuk Android
flutter run

# Atau khusus iOS
flutter run -d ios
```

## Project Structure

```
shake_detector_app/
├── lib/
│   └── main.dart              # App entry point & UI
├── android/
│   └── app/
│       ├── build.gradle       # Android build config
│       └── src/main/
│           └── AndroidManifest.xml
├── ios/
│   └── Runner/
│       └── Info.plist         # iOS permissions
├── pubspec.yaml               # Dependencies
└── analysis_options.yaml      # Dart linting rules
```

## Usage

Jalankan aplikasi dan pegang device. Aplikasi akan:

1. **Menampilkan nilai akselerasi** pada X, Y, Z axis secara real-time
2. **Mendeteksi guncangan** ketika magnitude akselerasi melebihi threshold (30.0)
3. **Menghitung total guncangan** yang terdeteksi
4. **Reset counter** dengan tombol Reset

### Threshold Configuration

Untuk mengubah sensitivitas deteksi guncangan, edit nilai `shakeThreshold` di `lib/main.dart`:

```dart
final double shakeThreshold = 30.0;  // Ubah nilai ini
```

- Nilai lebih rendah = lebih sensitif terhadap guncangan
- Nilai lebih tinggi = memerlukan guncangan yang lebih kuat

## Dependencies

- **flutter**: UI framework
- **sensors_plus**: Akses ke sensor accelerometer device

## Permissions

### Android
- `android.permission.BODY_SENSORS` - Akses ke sensor body
- `android.permission.BODY_SENSORS_BACKGROUND` - Background sensor access

### iOS
- Motion sensor access (NSMotionUsageDescription)

## Testing on Real Device

Aplikasi ini dirancang untuk berjalan di device fisik (tidak akurat di emulator).

### Android
```bash
flutter run
```

### iOS
```bash
flutter run -d ios
```

## Troubleshooting

### App tidak mendeteksi guncangan
- Pastikan device memiliki accelerometer sensor
- Verifikasi permissions telah diberikan
- Cek threshold value - mungkin terlalu tinggi

### Permission error
- Android: Berikan permissions di Settings > Apps > shake_detector_app > Permissions
- iOS: Berikan akses di Settings > Privacy > Motion & Fitness

## Version

- Version: 1.0.0+1
- Flutter SDK: >=3.0.0 <4.0.0

## License

This project is licensed under the MIT License.
