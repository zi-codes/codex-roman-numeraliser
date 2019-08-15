# Codex Romaniser

![image](/Screenshot.png)

A ruby script that will convert any number, up to 1 million, into a Roman Numeral. Written as a side project in my first month of learning to code at Makers Academy.

## Setup
#### Prerequisites
- Ruby
- Irb (or repl of your choice)

#### Mac
In terminal:
```sh
$ git clone https://github.com/zi-codes/codex-roman-numeraliser.git
$ cd codex-roman-numeraliser
$ irb
```
In irb (or repl of your choice)
```sh
> require_relative 'lib/roman_numerals.rb'
> Romaniser.new.romanise(YOUR_NUMBER_HERE)
```
#### To run test suite
In terminal (requires Bundler):
```sh
$ bundle install rspec
$ rspec
```


## Author's Notes
I have gone with the convention of representing 1000 with the letter 'M', even in numbers above 10 000. Some online sources will represent 'M' as '-I', in accordance with the '-X' convention for the number 10 000.

## Codex Z
This repository is part of the "Codex Z" series of my more abstract and puzzly projects. See the rest of them at https://github.com/users/zi-codes/projects/1
