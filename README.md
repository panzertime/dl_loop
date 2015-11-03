# perl_tools
tools i've made in perl


These are some little tools I made in perl.

*dl_loop:* 
usage: dl_loop.pl URL file
repeatedly downloads a URL to a destination until the download completes.  if download fails, the largest stub is kept (as file.stub), and download restarts.  useful for sketchy connections.
