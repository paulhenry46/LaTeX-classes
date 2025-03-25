# LaTeX-classes
LaTeX classes I use for maths posts

## Setup

1. Install the fonts in the fonts folder
2. Place the contents of the package folder in :
    - `~/texmf/tex/latex/` if you use UNIX systems with texlive
    - `localtexmf/tex/latex/` if you're using miktex on Windows. You can create this directory wherever you want but don't forget to go to the miktex console and add localtexmf as a new root and refresh file name data base.
3. Enjoy

> [!WARNING]  
> You need to use XeLaTeX to work with the classes. Compiling with LaTeX will throw errors.

## Usage

See basic example in the example folder.

The logo on the title page is optional and must be activated with "logo" option. You must place your logo in images/logo.png. 

## Bonus

In the `utils` folder you'll find the .cwl file you need to import into your favorite editor to benefit from the autocomplete feature linked to these packages. If you're using Kile on linux, place it in the `/home/username/.local/share/kile/complete/tex/` folder or import it (settings > Kile settings > Complete > Add).