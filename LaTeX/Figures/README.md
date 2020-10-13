# Figures for the paper can be generated using either the HARK toolkit and ipython, 
or using Wolfram Mathematica.

## Python and HARK

The figures produced by the python code are in the `Code/Python/Figures` directory

To generate the figures:
See [Econ-ARK/HARK](https://hark.readthedocs.io/en/latest/readme.html#Installing-HARK) for instructions for installing the 
toolkit. Once it is installed, change to the Code/Python directory and generate the figures using either of these methods:

1. Using ipython
   * From a command line, execute `ipython BufferStockTheory.py`
1. Open `BufferStockTheory.ipynb` using a [Jupyter Notebook](https://jupyter.org)

## Wolfram Mathematica

The figures produced by the Mathematica code are at Code/Mathematica/Results/BufferStockTheory/Figures

The Mathematica code that generates the results is at Code/Mathematica/Results/BufferStockTheory

If you have Wolfram Mathematica installed:

1. You can open and execute the `doAll.nb` notebook
1. You can generate the figures in 'batch mode' from the command line:
   `WolframKernel -noprompt < doAll.m`

If you do not have access to Wolfram Mathematica, you can view `doAll.nb` and the generated figures
using the free Wolfram Player.
