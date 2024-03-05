#!/bin/sh
filename=/tmp/webpage.pdf
wkhtmltopdf $@ $filename
xdg-open $filename
