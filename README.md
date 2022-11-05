## Machine-Learning

To convert PyNb -> LaTeX -> PDF:

```sh
$ jupyter nbconvert --to latex labx-exercises.ipynb
$ xelatex labx-exercises.tex -quiet  
```
