import 'package:flutter/material.dart';
import 'package:vectorize/components/background.dart';
import 'package:vectorize/components/glass_card.dart';
import 'package:vectorize/screens/input_page/input_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      showGlass: true,
      child: Column(
        children: [
          SizedBox(height: 50),
          GlassCard(
            height: 100,
            width: size.width * 0.9,
            child: Center(
              child: Text(
                'Select Operator',
                style: TextStyle(fontFamily: 'Roboto', fontSize: 34),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: size.width * 0.05),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputPage(),
                  ),
                ),
                child: GlassCard(
                  height: size.width * 0.4,
                  width: size.width * 0.4,
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              GlassCard(
                height: size.width * 0.4,
                width: size.width * 0.4,
                child: Center(
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.05),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: size.width * 0.05),
              GlassCard(
                height: size.width * 0.4,
                width: size.width * 0.4,
                child: Center(
                  child: Text(
                    '⨯',
                    style: TextStyle(fontSize: 80, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const Spacer(),
              GlassCard(
                height: size.width * 0.4,
                width: size.width * 0.4,
                child: Center(
                  child: Text(
                    '⋅',
                    style: TextStyle(fontSize: 70, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.05),
            ],
          ),
          const SizedBox(height: 30),
          Expanded(
            child: GlassCard(
              height: size.width * 0.4,
              width: size.width * 0.9,
              child: Center(
                child: Text(
                  '∠ betⁿ 2 Vectors',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: GlassCard(
              height: size.width * 0.4,
              width: size.width * 0.9,
              child: Center(
                child: Text(
                  '| | of Vector',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
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
