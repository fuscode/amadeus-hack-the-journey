import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 70),
      child: Container(
        color: Colors.white.withOpacity(widget.opacity),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenSize.width / 4,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Color(0xFF077bd7),
                        fontSize: 26,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(width: screenSize.width / 15),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Homer',
                            style: TextStyle(
                                color: _isHovering[0]
                                    ? Color(0xFF077bd7)
                                    : Color(0xFF077bd7),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Color(0xFF077bd7),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 15),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'About us',
                            style: TextStyle(
                                color: _isHovering[1]
                                    ? Color(0xFF077bd7)
                                    : Color(0xFF077bd7),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Color(0xFF077bd7),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 15),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[2] = true
                              : _isHovering[2] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Our partners',
                            style: TextStyle(
                                color: _isHovering[2]
                                    ? Color(0xFF077bd7)
                                    : Color(0xFF077bd7),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[2],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Color(0xFF077bd7),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 15),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[3] = true
                              : _isHovering[3] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'FAQ',
                            style: TextStyle(
                                color: _isHovering[3]
                                    ? Color(0xFF077bd7)
                                    : Color(0xFF077bd7),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[3],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Color(0xFF077bd7),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
