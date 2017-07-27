## Shellplyr

Take arrays (like text) and do aggregative queries on them.

#### `groupbysum`

Groups data by a particular column and then sums all values by a second column.

```
groupbysum <# of column to groupby> <# of column to sum>
```

```
$ echo "1 a\n2 b\n2 b\n1 c\n2 c\n3 d" | groupbysum 2 1 | sort -n -k2 -r
b 4
d 3
c 3
a 1
```
