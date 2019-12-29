import 'quotes.dart';
import 'dart:math';

class QuotesList {
  List<Quotes> _quotes = [
    Quotes('In any moment of decision, the best thing you can do is the right thing, the next best thing is the wrong thing, and the worst thing you can do is nothing.','Theodore Roosevelt'),
    Quotes('If a man does his best, what else is there?', 'George S. Patton'),
    Quotes('Do right. Do your best. Treat others as you want to be treated.', 'Lou Holtz'),
    Quotes('Well done is better than well said.', 'Benjamin Franklin'),
    Quotes('With the new day comes new strength and new thoughts.', 'Eleanor Roosevelt'),
    Quotes('Look up at the stars and not down at your feet. Try to make sense of what you see, and wonder about what makes the universe exist. Be curious.', 'Stephen Hawking'),
    Quotes('Life is 10% what happens to you and 90% how you react to it.', 'Charles R. Swindoll'),
    Quotes('Good, better, best. Never let it rest. \'Til your good is better and your better is best.', 'St. Jerome'),
    Quotes('I\'m selfish, impatient, and a little insecure. I make mistakes, I\'m out of control, and at times hard to handle. But if you can\'t handle me at my worst, then you sure as hell don\'t deserve me at my best.', 'Marilyn Monroe'),
    Quotes('The will to win, the desire to succeed, the urge to reach your full potential... these are the keys that will unlock the door to personal excellence.', 'Confucius'),
    Quotes('Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence.', 'Helen Keller'),
    Quotes('The secret of getting ahead is getting started.', 'Mark Twain')
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
