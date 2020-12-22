DEST!=perl -V:installsitelib | sed "s:^.*='\([^']*\)'.*$:\1:"

install: ${DEST} ${DEST}/DbiIni.pm

test try:
	perl ./try.pl

${DEST}:
	sudo mkdir -p ${DEST}

${DEST}/DbiIni.pm: DbiIni.pm
	sudo install -b -m 444 ${.OODATE} ${DEST}
