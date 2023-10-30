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
  List<String> calculate = [];
  num result = 0;

  void onClickVoid() {}

  void onClickClear() {
    calculate.clear();
    result = 0;
    setState(() {});
  }

  void onClickNum(numClicked) {
    if (calculate.length % 2 == 0) {
      calculate.add(numClicked.toString());
    } else {
      calculate[calculate.length - 1] =
          '${calculate[calculate.length - 1]}' '${numClicked.toString()}';
    }
    if (calculate.length >= 3) {
      for (int i = 0; i < calculate.length; i++) {
        if (i % 2 == 0) {
          if (i == 0) {
            result = num.parse(calculate[i]);
          } else {
            switch (calculate[i - 1]) {
              case '+':
                result += num.parse(calculate[i]);
                break;
              case '-':
                result -= num.parse(calculate[i]);
                break;
              case 'X':
                result *= num.parse(calculate[i]);
                break;
              case '/':
                result /= num.parse(calculate[i]);
                break;
              default:
                break;
            }
          }
        }
      }
    }
    setState(() {});
  }

  void onClickOperator(operatorClicked) {
    if (calculate.length % 2 != 0) {
      calculate.add(operatorClicked);
    } else {
      calculate[calculate.length - 1] = operatorClicked;
    }
    setState(() {});
  }

  void onClickEqual() {
    calculate.clear();
    calculate.add(result.toString());
    result = 0;
    setState(() {});
  }

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
                  if (calculate.isEmpty)
                    const Text(
                      '',
                      style: TextStyle(
                        fontSize: 56,
                      ),
                    ),
                  for (var el in calculate)
                    Text(
                      el,
                      style: TextStyle(
                        color:
                            '+-X/'.contains(el) ? Colors.green : Colors.white,
                        fontSize: 56,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 140),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (calculate.length < 3)
                    const Text(
                      '',
                      style: TextStyle(color: Colors.white54, fontSize: 24),
                    ),
                  if (calculate.length >= 3)
                    Text(
                      '$result',
                      style:
                          const TextStyle(color: Colors.white54, fontSize: 24),
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
                        onPressed: onClickVoid,
                        icon: const Icon(
                          Icons.history_rounded,
                          color: Colors.white54,
                        ),
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: onClickVoid,
                        icon: const Icon(
                          Icons.straighten_rounded,
                          color: Colors.white54,
                        ),
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: onClickVoid,
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
                        onPressed: onClickVoid,
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
                      onPressed: onClickClear,
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
                      onPressed: onClickVoid,
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
                      onPressed: onClickVoid,
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
                      onPressed: () => onClickOperator('/'),
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
                      onPressed: () => onClickNum(7),
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
                      onPressed: () => onClickNum(8),
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
                      onPressed: () => onClickNum(9),
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
                      onPressed: () => onClickOperator('X'),
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
                      onPressed: () => onClickNum(4),
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
                      onPressed: () => onClickNum(5),
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
                      onPressed: () => onClickNum(6),
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
                      onPressed: () => onClickOperator('-'),
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
                      onPressed: () => onClickNum(1),
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
                      onPressed: () => onClickNum(2),
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
                      onPressed: () => onClickNum(3),
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
                      onPressed: () => onClickOperator('+'),
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
                      onPressed: onClickVoid,
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
                      onPressed: () => onClickNum(0),
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
                      onPressed: onClickVoid,
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
                      onPressed: onClickEqual,
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
