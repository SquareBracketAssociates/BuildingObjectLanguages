(TeX-add-style-hook
 "chapter.latex"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("root/support/latex/sbabook/sbabook" "10pt" "twoside" "english")))
   (TeX-run-style-hooks
    "latex2e"
    "root/support/latex/sbabook/sbabook"
    "root/support/latex/sbabook/sbabook10"
    "import"))
 :latex)

