import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  num preNum = 0, postNum = 0, result = 0;
  String operator = '';
  bool hasPreNum = false;
  bool hasOperator = false;
  bool hasPostNum = false;

  void onClickHistory() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$preNum',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 56,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 140),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    hasPostNum ? '$result' : '',
                    style: const TextStyle(color: Colors.white54, fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: onClickHistory,
                        icon: const Icon(
                          Icons.history_rounded,
                          color: Colors.white54,
                        ),
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: onClickHistory,
                        icon: const Icon(
                          Icons.straighten_rounded,
                          color: Colors.white54,
                        ),
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: onClickHistory,
                        icon: const Icon(
                          Icons.calculate_outlined,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: onClickHistory,
                        icon: const Icon(
                          Icons.backspace_outlined,
                          color: Colors.green,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: 'C',
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '()',
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '%',
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '/',
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '7',
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '8',
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '9',
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: 'X',
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '4',
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '5',
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '6',
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: 'ㅡ',
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '1',
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '2',
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '3',
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '+',
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '+/-',
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '0',
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '.',
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    padding: const EdgeInsets.all(9),
                    child: TextButton(
                      onPressed: onClickHistory,
                      child: const ButtonCalc(
                        text: '=',
                      ),
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
}

class ButtonCalc extends StatelessWidget {
  final String text;
  final Color color;

  const ButtonCalc({
    super.key,
    required this.text,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 26,
        color: color,
      ),
    );
  }
}
