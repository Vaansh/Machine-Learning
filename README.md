## Machine Learning

To convert Jupyter Notebook &rarr; $\LaTeX$ &rarr; PDF:

```sh
$ jupyter nbconvert --to latex labx-exercises.ipynb
$ xelatex labx-exercises.tex -quiet
```
