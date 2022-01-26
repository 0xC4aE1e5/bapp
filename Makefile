all:
	(echo '#!/usr/bin/env ruby' && cat bapp.rb) > bapp
	chmod +x bapp

install: all
	cp bapp /usr/local/bin/bapp