class Quote {
  final String text;
  final String author;
  final String source;
  final String? url;
  final String? date;

  Quote({
    required this.text,
    required this.author,
    required this.source,
    this.url,
    this.date,
  });
}

final List<Quote> famousQuotes = [
  Quote(
    text: "The only thing we have to fear is fear itself.",
    author: "Franklin D. Roosevelt",
    source: "First Inaugural Address",
    date: "March 4, 1933",
  ),
  Quote(
    text:
        "I have a dream that my four little children will one day live in a nation where they will not be judged by the color of their skin but by the content of their character.",
    author: "Martin Luther King Jr.",
    source: "'I Have a Dream' speech",
    date: "August 28, 1963",
  ),
  Quote(
    text:
        "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.",
    author: "Ralph Waldo Emerson",
    source: "'Self-Reliance' (essay)",
    date: "1841",
  ),
  Quote(
    text: "The only way to do great work is to love what you do.",
    author: "Steve Jobs",
    source: "Stanford Commencement Address",
    date: "June 12, 2005",
  ),
  Quote(
    text: "That's one small step for man, one giant leap for mankind.",
    author: "Neil Armstrong",
    source: "Upon stepping onto the Moon",
    date: "July 20, 1969",
  ),
  Quote(
    text:
        "It is a truth universally acknowledged, that a single man in possession of a good fortune, must be in want of a wife.",
    author: "Jane Austen",
    source: "Pride and Prejudice (novel)",
    date: "1813",
  ),
  Quote(
    text: "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
    author: "Albert Einstein",
    source: "Often attributed to him, though its exact origin is debated.",
    date: "Circa mid-20th century",
  ),
  Quote(
    text: "Ask not what your country can do for you—ask what you can do for your country.",
    author: "John F. Kennedy",
    source: "Inaugural Address",
    date: "January 20, 1961",
  ),
  Quote(
    text: "The future belongs to those who believe in the beauty of their dreams.",
    author: "Eleanor Roosevelt",
    source: "My Day (syndicated newspaper column)",
    date: "1930s-1960s (exact date of this specific quote varies)",
  ),
  Quote(
    text: "All the world's a stage, and all the men and women merely players.",
    author: "William Shakespeare",
    source: "As You Like It (play), Act II, Scene VII",
    date: "Circa 1599-1600",
  ),
];
