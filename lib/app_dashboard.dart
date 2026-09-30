import 'package:flutter/material.dart';

import 'sendingfollower.dart';

class AppDashboard extends StatefulWidget {
  const AppDashboard({super.key});

  @override
  State<AppDashboard> createState() => _AppDashboardState();
}

class _AppDashboardState extends State<AppDashboard> {
  bool creditCard = false;
  bool onlineWallet = false;

  final String bannerImage =
      'assets/image/c4420a9e3377509b142df9b0817cf8387191edc4.png';

  final String profileImage =
      'assets/image/c4420a9e3377509b142df9b0817cf8387191edc4.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF25A297),
            borderRadius: BorderRadius.all(
              Radius.circular(28),
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TOP BAR
                SizedBox(
                  height: 93,
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 44,
                        top: 35,
                        child: Text(
                          '9:45',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      const Positioned(
                        top: 32,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Text(
                            'Mettiunlike',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        right: 29,
                        top: 37,
                        child: Row(
                          children: [
                            Container(
                              width: 18,
                              height: 13,
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 3,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  Container(
                                    width: 3,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  Container(
                                    width: 3,
                                    height: 11,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  Container(
                                    width: 3,
                                    height: 13,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 7),
                            const Icon(
                              Icons.wifi,
                              color: Colors.white,
                              size: 16,
                            ),
                            const SizedBox(width: 7),
                            Container(
                              width: 19,
                              height: 11,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.4,
                                ),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 13,
                                  height: 7,
                                  margin: const EdgeInsets.only(left: 1.5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(1.5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Positioned(
                        left: 44,
                        bottom: 4,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 28,
                            height: 28,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              size: 17,
                              color: Color(0xFF25A297),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // BANNER AND PROFILE IMAGE
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 136,
                      child: Image.asset(
                        bannerImage,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: const Color(0xFFF4AEB8),
                            child: const Center(
                              child: Icon(
                                Icons.image,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    Positioned(
                      left: 36,
                      bottom: -31,
                      child: Container(
                        width: 88,
                        height: 104,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          profileImage,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: const Color(0xFFF4AEB8),
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 40,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 75),

                // STATISTICS
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: _statItem(
                              title: 'Number of\nfollowers',
                              value: '1k+',
                            ),
                          ),
                          Expanded(
                            child: _statItem(
                              title: 'Number of\nmembers',
                              value: '10k+',
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 17),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: _statItem(
                              title: 'Number of\nlikes',
                              value: '36k+',
                            ),
                          ),
                          Expanded(
                            child: _statItem(
                              title: 'Average\nusers',
                              value: '728',
                              suffix: '/month',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 27),

                // PERFORMANCE GRAPH
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: double.infinity,
                    height: 133,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xFF2196F3),
                        width: 2,
                      ),
                    ),
                    child: CustomPaint(
                      painter: PerformanceGraphPainter(),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // MILESTONES
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Milestones',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'serif',
                        ),
                      ),

                      const SizedBox(height: 13),

                      Container(
                        width: double.infinity,
                        height: 16,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE3E3E3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            _milestone(
                              '1000 points',
                              const Color(0xFF53CFC4),
                              true,
                            ),
                            _milestone(
                              '5000 points',
                              const Color(0xFFD9EDE9),
                              false,
                            ),
                            _milestone(
                              '10000 points',
                              const Color(0xFFE7EEEE),
                              false,
                            ),
                            _milestone(
                              '30000 points',
                              const Color(0xFFE3E3E3),
                              false,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 65),

                // PAYMENT OPTIONS
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Payment options for members',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'serif',
                        ),
                      ),

                      const SizedBox(height: 5),

                      // CREDIT CARD / DEBIT CARD
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Credit card/ Debit card',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'serif',
                            ),
                          ),
                          _smallSwitch(
                            value: creditCard,
                            onChanged: (value) {
                              setState(() {
                                creditCard = value;
                              });
                            },
                          ),
                        ],
                      ),

                      const SizedBox(height: 3),

                      // ONLINE WALLET
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Online Wallet',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'serif',
                            ),
                          ),
                          _smallSwitch(
                            value: onlineWallet,
                            onChanged: (value) {
                              setState(() {
                                onlineWallet = value;
                              });
                            },
                          ),
                        ],
                      ),

                      const SizedBox(height: 18),

                      // BANKING DETAILS
                      GestureDetector(
                        onTap: () {
                          // Add your Banking Details navigation here.
                        },
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Banking Details',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'serif',
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Sendingfollower()),
                                );
                              },
                              icon: const Icon(
                                Icons.chevron_right,
                                color: Colors.white70,
                                size: 27,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // STAT ITEM
  Widget _statItem({
    required String title,
    required String value,
    String? suffix,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              height: 1.25,
              fontFamily: 'serif',
            ),
          ),
        ),
        const SizedBox(width: 5),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'serif',
                ),
              ),
              if (suffix != null)
                TextSpan(
                  text: suffix,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'serif',
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  // MILESTONE
  Widget _milestone(
    String text,
    Color color,
    bool selected,
  ) {
    return Expanded(
      child: Container(
        height: 16,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: selected
                ? const Color(0xFF218F86)
                : const Color(0xFF9A9A9A),
            fontSize: 6,
            fontFamily: 'serif',
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  // SMALL SWITCH
  Widget _smallSwitch({
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        width: 24,
        height: 13,
        padding: const EdgeInsets.all(1.5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 180),
          alignment:
              value ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: value
                  ? const Color(0xFF25A297)
                  : const Color(0xFFD0D0D0),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================================
// PERFORMANCE GRAPH
// ============================================================================

class PerformanceGraphPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width;
    final double height = size.height;

    // Background
    final Paint backgroundPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawRect(
      Rect.fromLTWH(0, 0, width, height),
      backgroundPaint,
    );

    // Graph dimensions
    const double leftPadding = 22;
    const double rightPadding = 7;
    const double topPadding = 12;
    const double bottomPadding = 20;

    final double graphWidth =
        width - leftPadding - rightPadding;

    final double graphHeight =
        height - topPadding - bottomPadding;

    // GRID
    final Paint gridPaint = Paint()
      ..color = const Color(0xFFE6E6E6)
      ..strokeWidth = 0.7;

    for (int i = 1; i <= 5; i++) {
      final double y =
          topPadding + (graphHeight / 5) * i;

      canvas.drawLine(
        Offset(leftPadding, y),
        Offset(width - rightPadding, y),
        gridPaint,
      );
    }

    // LEFT LABELS
    const TextStyle labelStyle = TextStyle(
      color: Color(0xFF999999),
      fontSize: 5,
    );

    const List<String> labels = [
      '100',
      '90',
      '80',
      '70',
      '60',
      '50',
    ];

    for (int i = 0; i < labels.length; i++) {
      final TextPainter painter = TextPainter(
        text: TextSpan(
          text: labels[i],
          style: labelStyle,
        ),
        textDirection: TextDirection.ltr,
      );

      painter.layout();

      final double y =
          topPadding + (graphHeight / 5) * i;

      painter.paint(
        canvas,
        Offset(3, y - 3),
      );
    }

    // GREEN GRAPH POINTS
    const List<Offset> greenOriginal = [
      Offset(27, 91),
      Offset(76, 68),
      Offset(128, 61),
      Offset(174, 53),
      Offset(219, 72),
      Offset(264, 16),
      Offset(295, 55),
      Offset(319, 9),
    ];

    // PINK GRAPH POINTS
    const List<Offset> pinkOriginal = [
      Offset(27, 31),
      Offset(63, 58),
      Offset(108, 67),
      Offset(143, 25),
      Offset(177, 67),
      Offset(219, 45),
      Offset(264, 67),
      Offset(319, 31),
    ];

    // SCALE POINTS
    Offset scalePoint(Offset point) {
      final double x =
          leftPadding +
          ((point.dx - 27) / (319 - 27)) * graphWidth;

      final double y =
          topPadding +
          (point.dy / 108) * graphHeight;

      return Offset(x, y);
    }

    final List<Offset> greenPoints =
        greenOriginal.map(scalePoint).toList();

    final List<Offset> pinkPoints =
        pinkOriginal.map(scalePoint).toList();

    // GREEN AREA
    final Path greenArea =
        _createSmoothPath(greenPoints);

    greenArea.lineTo(
      greenPoints.last.dx,
      height - bottomPadding,
    );

    greenArea.lineTo(
      greenPoints.first.dx,
      height - bottomPadding,
    );

    greenArea.close();

    final Paint greenFill = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0x5531A59B),
          Color(0x1025A297),
        ],
      ).createShader(
        Rect.fromLTWH(
          0,
          0,
          width,
          height,
        ),
      );

    canvas.drawPath(
      greenArea,
      greenFill,
    );

    // GREEN LINE
    final Path greenPath =
        _createSmoothPath(greenPoints);

    final Paint greenLine = Paint()
      ..color = const Color(0xFF138E86)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.4;

    canvas.drawPath(
      greenPath,
      greenLine,
    );

    // PINK AREA
    final Path pinkArea =
        _createSmoothPath(pinkPoints);

    pinkArea.lineTo(
      pinkPoints.last.dx,
      height - bottomPadding,
    );

    pinkArea.lineTo(
      pinkPoints.first.dx,
      height - bottomPadding,
    );

    pinkArea.close();

    final Paint pinkFill = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0x44FF6F78),
          Color(0x08FF6F78),
        ],
      ).createShader(
        Rect.fromLTWH(
          0,
          0,
          width,
          height,
        ),
      );

    canvas.drawPath(
      pinkArea,
      pinkFill,
    );

    // PINK LINE
    final Path pinkPath =
        _createSmoothPath(pinkPoints);

    final Paint pinkLine = Paint()
      ..color = const Color(0xFFFF666E)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.4;

    canvas.drawPath(
      pinkPath,
      pinkLine,
    );

    // GRAPH DOTS
    final Paint greenDot = Paint()
      ..color = const Color(0xFF15978E)
      ..style = PaintingStyle.fill;

    final Paint pinkDot = Paint()
      ..color = const Color(0xFFFF666E)
      ..style = PaintingStyle.fill;

    for (final Offset point in greenPoints) {
      canvas.drawCircle(
        point,
        2.3,
        greenDot,
      );

      canvas.drawCircle(
        point,
        3.5,
        Paint()
          ..color = const Color(0xFF15978E)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 0.8,
      );
    }

    for (final Offset point in pinkPoints) {
      canvas.drawCircle(
        point,
        2.3,
        pinkDot,
      );

      canvas.drawCircle(
        point,
        3.5,
        Paint()
          ..color = const Color(0xFFFF666E)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 0.8,
      );
    }

    // DATES
    const List<String> dates = [
      '01/01/2021',
      '02/01/2021',
      '03/01/2021',
      '04/01/2021',
      '05/01/2021',
      '06/01/2021',
      '07/01/2021',
      '08/01/2021',
    ];

    for (int i = 0; i < dates.length; i++) {
      final TextPainter painter = TextPainter(
        text: TextSpan(
          text: dates[i],
          style: const TextStyle(
            color: Color(0xFF999999),
            fontSize: 3.5,
          ),
        ),
        textDirection: TextDirection.ltr,
      );

      painter.layout();

      final double x =
          leftPadding +
          (i * (graphWidth / (dates.length - 1)));

      painter.paint(
        canvas,
        Offset(
          x - painter.width / 2,
          height - 8,
        ),
      );
    }
  }

  // SMOOTH PATH
  Path _createSmoothPath(List<Offset> points) {
    final Path path = Path();

    if (points.isEmpty) {
      return path;
    }

    path.moveTo(
      points.first.dx,
      points.first.dy,
    );

    for (int i = 0; i < points.length - 1; i++) {
      final Offset current = points[i];
      final Offset next = points[i + 1];

      final double controlX =
          (current.dx + next.dx) / 2;

      path.cubicTo(
        controlX,
        current.dy,
        controlX,
        next.dy,
        next.dx,
        next.dy,
      );
    }

    return path;
  }

  @override
  bool shouldRepaint(
    covariant CustomPainter oldDelegate,
  ) {
    return false;
  }
}