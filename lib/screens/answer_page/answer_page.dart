import 'package:flutter/material.dart';
import 'package:vectorize/colors.dart';
import 'package:vectorize/components/background.dart';
import 'package:vectorize/components/glass_card.dart';
import 'package:vectorize/screens/input_page/input_page.dart';

class SolutionPage extends StatefulWidget {
  final OperatorType operatorType;
  final List<double> vector1;
  final List<double> vector2;

  const SolutionPage({Key? key, required this.operatorType, required this.vector1, required this.vector2})
      : super(key: key);

  @override
  _SolutionPageState createState() => _SolutionPageState();
}

class _SolutionPageState extends State<SolutionPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      showGlass: true,
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
                    'Answer',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 30),
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.05),
            ],
          ),
          const SizedBox(height: 30),
          GlassCard(
            height: 150,
            width: size.width * 0.9,
            child: Center(
              child: Text(
                '3î + 2î + î\n+\n3î + 2î + î',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(height: 50),
          GlassCard(
            height: 120,
            width: size.width * 0.9,
            child: Center(
              child: Text(
                '= 5î + 2î + î',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.popUntil(context, (route) => route.isFirst),
            child: GlassCard(
              height: 100,
              width: size.width * 0.9,
              child: Center(
                child: Text(
                  'Done',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 34),
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
