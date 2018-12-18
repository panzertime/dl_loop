# dl_loop 

*dl_loop:* 

usage: dl_loop.pl URL file

repeatedly downloads a URL to a destination until the download completes.  if download fails, the largest stub is kept (as file.stub), and download restarts.  useful for sketchy connections.

I've used this to get files across the "great firewall," though I've no idea if it still works for that purpose.

