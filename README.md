# Word Puzzle Solver

## The Problem

This comes from an NPR Morning Edition Sunday puzzle by Will Shortz.

> Take the word EASY: Its first three letters - E, A and S - are the fifth,
> first, and nineteenth letters, respectively, in the alphabet. If you add
> 5 + 1 + 19, you get 25, which is the value of the alphabetical position of
> Y, the last letter of EASY. Can you think of a common five-letter word that works in the opposite way -
> in which the value of the alphabetical positions of its last four letters add
> up to the value of the alphabetical position of its first letter?

## Running The Program

To run this program, you can use the command line or the benchmark.

To run from the command line, you can use ```mix run``` and take the default
arguments. By default, the program tests 5 letter words and uses /usr/share/dict/words.

```
  $ mix run -e 'WordPuzzle.Cli.run'
```

The command line also takes two optional parameters, the first is the length
of word to test and an alternate word list. You can specify one or both optional
parameters.

```
  $ mix run -e 'WordPuzzle.Cli.run(6, "other_word_list")'
```

To run the code using command line defaults and with the benchmarking data
included:

```
  $ mix bench
```

Note: to run the benchmarks, you will need to ```mix deps.get``` to get the
module dependencies in place for the benchmark library.


