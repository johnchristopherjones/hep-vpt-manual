document:
	xelatex Manual
	makeglossaries Manual
	makeglossaries Manual
	xelatex Manual
	xelatex Manual
clean:
	rm *.aux
	rm *.ist
	rm *.g*
	rm *.out
	rm *.lo*
tar:
	tar -cf vptmanual.tar --exclude vptmanual.tar ./*/ ./*.tex

flashput:
	rsync -Cavuzb --exclude '*.aux' --exclude '*.out' --exclude '*.g*' --exclude '*.ist' --exclude '*.lo*' --exclude '#*#' --exclude '_region_*' --exclude '.*' --exclude "~*" --exclude "vptmanual.tar" . /Volumes/VPTMANUAL/VPTManual
#!/bin/bash

