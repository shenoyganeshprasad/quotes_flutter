import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quotesList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  QuotesList quotesList = QuotesList();

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
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: GestureDetector(
            onTap: () {
              getNewQuote();
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  quotesList.getNextQuote(),
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 1.5,
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
