import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorAppUi());
}

class CalculatorAppUi extends StatelessWidget {
  const CalculatorAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.routeName,
      routes: {HomeView.routeName: (context) => const HomeView()},
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App UI'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          // شاشة العرض (Display Screen)
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(24),
              color: Colors.black12,
              child: const Text(
                '0',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // أزرار الآلة الحاسبة (Keypad Layout)
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildButton('7', Colors.grey.shade200),
                        _buildButton('8', Colors.grey.shade200),
                        _buildButton('9', Colors.grey.shade200),
                        _buildButton('/', Colors.orange.shade300),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildButton('4', Colors.grey.shade200),
                        _buildButton('5', Colors.grey.shade200),
                        _buildButton('6', Colors.grey.shade200),
                        _buildButton('*', Colors.orange.shade300),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildButton('1', Colors.grey.shade200),
                        _buildButton('2', Colors.grey.shade200),
                        _buildButton('3', Colors.grey.shade200),
                        _buildButton('-', Colors.orange.shade300),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildButton('0', Colors.grey.shade200),
                        _buildButton('C', Colors.red.shade200),
                        _buildButton('=', Colors.green.shade300),
                        _buildButton('+', Colors.orange.shade300),
                      ],
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

  // مساعد لبناء الأزرار بشكل متناسق
  Widget _buildButton(String text, Color color) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.black87,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {}, // لا توجد وظيفة مطلوبة، مجرد واجهة
          child: Text(
            text,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
