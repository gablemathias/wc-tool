# Code Challenge -> wc Tool 
## A Ruby version of WC (word, line, character and byte count of file)
Examples of inputs and corresponding output:
```bash
$ ccwc -c filename.txt
  342190 filename.txt
$ ccwc -c -w filename.txt
  342190 58164 filename.txt
$ ccwc filename.txt
  7145 58164 342190 filename.txt
$ cat filename.txt | ccwc -l -m
  7145 339292
```

#### Accepted Arguments
```
-c
  print the byte counts
-m
  print the character counts
-l
  print the newline counts
-w
  print the word counts
```

#### Future implementation:
* Read grouped arguments like: ccwc -clw / ccwc -cl  
* Read/Print more than one file


## Authors

- [@Gabriel Mathias](https://www.github.com/gablemathias)