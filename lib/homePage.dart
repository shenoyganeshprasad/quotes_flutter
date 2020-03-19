import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quotesList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  QuotesList quotesList = QuotesList();
  bool isDark = false;
  @override
  void initState() {
    super.initState();
    getNewQuote();
  }

  void getNewQuote() {
    setState(() {
      quotesList.nextQuote();
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return GestureDetector(
      onTap: () {
        getNewQuote();
      },
      child: Scaffold(
        backgroundColor: isDark ? Colors.black : Colors.white,
        appBar: AppBar(
          backgroundColor: isDark ? Colors.black : Colors.white,
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
                icon: isDark
                    ? Icon(Icons.brightness_medium)
                    : Icon(
                        Icons.brightness_3,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                onPressed: () {
                  setState(() {
                    isDark = !isDark;
                  });
                })
          ],
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  quotesList.getNextQuote(),
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 1.5,
                      color: isDark ? Colors.white : Colors.black,
                    ),
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10.0),
                Text(
                  '- ${quotesList.getNextQuoteAuthor()}',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 1.5,
                      fontStyle: FontStyle.italic,
                      color: isDark ? Colors.white : Colors.black,
                    ),
                  ),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
