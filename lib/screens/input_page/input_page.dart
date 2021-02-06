import 'package:flutter/material.dart';
import 'package:vectorize/colors.dart';
import 'package:vectorize/components/background.dart';
import 'package:vectorize/components/custom_page_route.dart';
import 'package:vectorize/components/glass_card.dart';
import 'package:vectorize/screens/input_page/components/text_input.dart';
import 'package:vectorize/screens/answer_page/answer_page.dart';

enum OperatorType { addition, subtraction, cross, dot, angle, modulus }

class InputPage extends StatefulWidget {
  final OperatorType operatorType;

  const InputPage({Key? key, required this.operatorType}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final List<String> operatorStringList = <String>[
    'Addition',
    'Subtraction',
    'Cross Product',
    'Dot Product',
    'Angle',
    'Modulus'
  ];
  double x1 = 0;
  double x2 = 0;
  double y1 = 0;
  double y2 = 0;
  double z1 = 0;
  double z2 = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isTwoVector = widget.operatorType != OperatorType.modulus;

    return Background(
      child: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: size.width * 0.05),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: GlassCard(
                  height: 80,
                  width: 80,
                  child: Center(
                    child: Transform.translate(
                      offset: const Offset(8, 0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 40,
                        color: CustomColors.fontColor,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              GlassCard(
                height: 80,
                width: size.width * 0.82 - 80,
                child: Center(
                  child: Text(
                    'Input Vector',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 34),
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.05),
            ],
          ),
          const SizedBox(height: 30),
          GlassCard(
            height: 100,
            width: size.width * 0.9,
            child: Row(
              children: [
                const SizedBox(width: 30),
                SizedBox(
                  height: 70,
                  width: 50,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextInput(
                        text: 'x',
                        onChanged: (value) => x1 = double.parse(value),
                      ),
                    ),
                  ),
                ),
                const Text(
                  'î',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 32),
                ),
                const Spacer(),
                SizedBox(
                  height: 70,
                  width: 50,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextInput(
                        text: 'y',
                        onChanged: (value) => y1 = double.parse(value),
                      ),
                    ),
                  ),
                ),
                const Text(
                  'ĵ',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 32),
                ),
                const Spacer(),
                SizedBox(
                  height: 70,
                  width: 50,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextInput(
                        text: 'z',
                        onChanged: (value) => z1 = double.parse(value),
                      ),
                    ),
                  ),
                ),
                const Text(
                  'k̂',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 32),
                ),
                const SizedBox(width: 30),
              ],
            ),
          ),
          const SizedBox(height: 30),
          GlassCard(
            height: 80,
            width: size.width * 0.9,
            child: Center(
              child: Text(
                operatorStringList[widget.operatorType.index],
                style: const TextStyle(fontFamily: 'Roboto', fontSize: 34),
              ),
            ),
          ),
          const SizedBox(height: 30),
          if (isTwoVector)
            GlassCard(
              height: 100,
              width: size.width * 0.9,
              child: Row(
                children: [
                  const SizedBox(width: 30),
                  SizedBox(
                    height: 70,
                    width: 50,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextInput(
                          text: 'x',
                          onChanged: (value) => x2 = double.parse(value),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'î',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 32),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 70,
                    width: 50,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextInput(
                          text: 'y',
                          onChanged: (value) => y2 = double.parse(value),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'ĵ',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 32),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 70,
                    width: 50,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextInput(
                          text: 'z',
                          onChanged: (value) => z2 = double.parse(value),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'k̂',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 32),
                  ),
                  const SizedBox(width: 30),
                ],
              ),
            ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              CustomPageRoute(
                SolutionPage(
                  operatorType: widget.operatorType,
                  vector1: <double>[x1, y1, z1],
                  vector2: <double>[x2, y2, z2],
                ),
              ),
            ),
            child: GlassCard(
              height: 120,
              width: size.width * 0.9,
              child: const Center(
                child: Text(
                  'Submit',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 36),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
