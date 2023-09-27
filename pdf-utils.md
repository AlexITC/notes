# pdf utils

## merge pdfs
`pdftk 01.pdf 02.pdf 03.pdf cat output all.pdf`

## rotate pdf (page 1 only)
`pdftk planos.pdf rotate 1west output newplanos.pdf`

## take some pages from a pdf
`pdftk document.pdf cat 2-20 output out.pdf`

## split pdf pages by half
imagine a scanned book where each scanned page has two pages from the book
when input has 16 pages, output will have 32 pages
requires: `apt install mupdf-tools`

`mutool poster -x 2 input.pdf output.pdf`

## Markdown to pdf

`pandoc -o output.pdf input.md`

