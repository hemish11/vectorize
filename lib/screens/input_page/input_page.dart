import 'package:flutter/material.dart';
import 'package:vectorize/colors.dart';
import 'package:vectorize/components/background.dart';
import 'package:vectorize/components/glass_card.dart';
import 'package:vectorize/screens/input_page/components/text_input.dart';
import 'package:vectorize/screens/solution_page/solution_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                      offset: Offset(8, 0),
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
                        onChanged: print,
                      ),
                    ),
                  ),
                ),
                Text(
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
                        onChanged: print,
                      ),
                    ),
                  ),
                ),
                Text(
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
                        onChanged: print,
                      ),
                    ),
                  ),
                ),
                Text(
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
                'Addition',
                style: TextStyle(fontFamily: 'Roboto', fontSize: 34),
              ),
            ),
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
                        onChanged: print,
                      ),
                    ),
                  ),
                ),
                Text(
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
                        onChanged: print,
                      ),
                    ),
                  ),
                ),
                Text(
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
                        onChanged: print,
                      ),
                    ),
                  ),
                ),
                Text(
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
              MaterialPageRoute(
                builder: (context) => SolutionPage(),
              ),
            ),
            child: GlassCard(
              height: 120,
              width: size.width * 0.9,
              child: Center(
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
