import 'package:extended_math/extended_math.dart';
import 'package:flutter/material.dart';
import 'package:vectorize/colors.dart';
import 'package:vectorize/components/background.dart';
import 'package:vectorize/components/glass_card.dart';
import 'package:vectorize/screens/input_page/input_page.dart';

class SolutionPage extends StatefulWidget {
  final OperatorType operatorType;
  final Vector vector1;
  final Vector vector2;

  const SolutionPage({Key key, @required this.operatorType, @required this.vector1, @required this.vector2})
      : super(key: key);

  @override
  _SolutionPageState createState() => _SolutionPageState();
}

class _SolutionPageState extends State<SolutionPage> {
  String inputString = '';
  String answerString = '';
  Vector answerVector = Vector([0, 0, 0]);

  double roundDouble(double value, int places) {
    double mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  @override
  void initState() {
    switch (widget.operatorType) {
      case OperatorType.addition:
        answerVector = widget.vector1 + widget.vector2;

        String x1 = '(${widget.vector1.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î';
        String y1 = '(${widget.vector1.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ';
        String z1 = '(${widget.vector1.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';

        String x2 = '(${widget.vector2.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î';
        String y2 = '(${widget.vector2.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ';
        String z2 = '(${widget.vector2.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';

        inputString = '($x1 + $y1 + $z1)\n+\n($x2 + $y2 + $z2)';
        answerString =
            '(${answerVector.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î + (${answerVector.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ + (${answerVector.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';
        break;
      case OperatorType.subtraction:
        answerVector = widget.vector1 - widget.vector2;

        String x1 = '(${widget.vector1.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î';
        String y1 = '(${widget.vector1.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ';
        String z1 = '(${widget.vector1.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';

        String x2 = '(${widget.vector2.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î';
        String y2 = '(${widget.vector2.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ';
        String z2 = '(${widget.vector2.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';

        inputString = '($x1 + $y1 + $z1)\n-\n($x2 + $y2 + $z2)';
        answerString =
            '(${answerVector.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î + (${answerVector.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ + (${answerVector.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';
        break;
      case OperatorType.cross:
        answerVector = widget.vector1.cross(widget.vector2);

        String x1 = '(${widget.vector1.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î';
        String y1 = '(${widget.vector1.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ';
        String z1 = '(${widget.vector1.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';

        String x2 = '(${widget.vector2.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î';
        String y2 = '(${widget.vector2.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ';
        String z2 = '(${widget.vector2.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';

        inputString = '($x1 + $y1 + $z1)\n⨯\n($x2 + $y2 + $z2)';
        answerString =
            '(${answerVector.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î + (${answerVector.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ + (${answerVector.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';
        break;
      case OperatorType.dot:
        answerString = widget.vector1.dot(widget.vector2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "");

        String x1 = '(${widget.vector1.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î';
        String y1 = '(${widget.vector1.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ';
        String z1 = '(${widget.vector1.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';

        String x2 = '(${widget.vector2.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î';
        String y2 = '(${widget.vector2.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ';
        String z2 = '(${widget.vector2.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';

        inputString = '($x1 + $y1 + $z1)\n⋅\n($x2 + $y2 + $z2)';
        break;
      case OperatorType.angle:
        answerString = widget.vector1
                .angleBetween(widget.vector2, degrees: true)
                .toStringAsFixed(10)
                .replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "") +
            '°';

        String x1 = '(${widget.vector1.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î';
        String y1 = '(${widget.vector1.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ';
        String z1 = '(${widget.vector1.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';

        String x2 = '(${widget.vector2.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î';
        String y2 = '(${widget.vector2.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ';
        String z2 = '(${widget.vector2.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';

        inputString = 'Angle between\n$x1 + $y1 + $z1\nand\n$x2 + $y2 + $z2';
        break;
      case OperatorType.modulus:
        double xSquared = pow(widget.vector1.itemAt(1).toDouble(), 2);
        double ySquared = pow(widget.vector1.itemAt(2).toDouble(), 2);
        double zSquared = pow(widget.vector1.itemAt(3).toDouble(), 2);

        answerString =
            roundDouble(sqrt(xSquared + ySquared + zSquared), 10).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "");

        String x1 = '(${widget.vector1.itemAt(1).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})î';
        String y1 = '(${widget.vector1.itemAt(2).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})ĵ';
        String z1 = '(${widget.vector1.itemAt(3).toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")})k̂';

        inputString = '|$x1 + $y1 + $z1|';
        break;
    }

    super.initState();
  }

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
            width: size.width * 0.9,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  inputString,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          GlassCard(
            height: 120,
            width: size.width * 0.9,
            child: Center(
              child: Text(
                '= $answerString',
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
