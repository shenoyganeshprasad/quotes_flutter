import 'quotes.dart';
import 'dart:math';

class QuotesList {
  List<Quotes> _quotes = [
    Quotes('In any moment of decision, the best thing you can do is the right thing, the next best thing is the wrong thing, and the worst thing you can do is nothing.','Theodore Roosevelt'),
    Quotes('If a man does his best, what else is there?', 'George S. Patton'),
    Quotes('Do right. Do your best. Treat others as you want to be treated.', 'Lou Holtz'),
    Quotes('I\'m selfish, impatient, and a little insecure. I make mistakes, I\'m out of control, and at times hard to handle. But if you can\'t handle me at my worst, then you sure as hell don\'t deserve me at my best.', 'Marilyn Monroe'),
  ];

  int quotesNumber = 0;

  void nextQuote() {
    var rng = Random();
    var len = _quotes.length;
    quotesNumber = rng.nextInt(len);
  }

  String getNextQuote() {
    return _quotes[quotesNumber].quotes;
  }

  String getNextQuoteAuthor() {
    return _quotes[quotesNumber].author;
  }
}
