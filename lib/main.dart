import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShakeDetectorScreen(),
    );
  }
}

class ShakeDetectorScreen extends StatefulWidget {
  const ShakeDetectorScreen({super.key});
  @override
  State<ShakeDetectorScreen> createState() => _ShakeDetectorScreenState();
}

class _ShakeDetectorScreenState extends State<ShakeDetectorScreen> {
  // لون الشاشة الافتراضي 
  // Warna default layar
  Color _bgColor = Colors.green; 

  @override
  void initState() {
    super.initState();
    
    // الاستماع لمستشعر التسارع 
    // Mendengarkan data dari Accelerometer
    accelerometerEvents.listen((AccelerometerEvent event) {
      
      // استخدام القيمة المطلقة (abs) لاكتشاف الاهتزاز بقوة في أي اتجاه (X أو Y)
      // Menggunakan nilai absolut untuk mendeteksi guncangan kuat di sumbu X atau Y
      if (event.x.abs() > 15 || event.y.abs() > 15) {
        setState(() {
          // تغيير اللون للأحمر عند الاهتزاز 
          // Ubah layar menjadi merah saat diguncang
          _bgColor = Colors.red; 
        });
      } else {
        setState(() {
          // العودة للأخضر في حالة السكون 
          // Kembali ke hijau saat perangkat diam
          _bgColor = Colors.green; 
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      body: const Center(
        child: Text(
          'Goyangkan HP Anda!\n(قم بهز الهاتف!)',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
