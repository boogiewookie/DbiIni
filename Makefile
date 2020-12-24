DEST!=perl -V:installsitelib | sed "s/^.*='\([^']*\)';/\1/"

install: ${DEST} ${DEST}/DbiIni.pm /home/dunc/bin/psqlini

test try:
	perl ./try.pl

${DEST}:
	sudo mkdir -p ${DEST}

${DEST}/DbiIni.pm: DbiIni.pm
	sudo install -b -m 444 DbiIni.pm ${DEST}

/home/dunc/bin/psqlini: psqlini
	install -b -m 554 psqlini /home/dunc/bin
