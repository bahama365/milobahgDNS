# Docker image recursive and authoritative DNS 

Docker image for a recursive and authoritative DNS server, running bind. Edit named.conf and rebuild to yuor requried spec, then run with the following command:

docker run --rm -d -p 53:53/udp -v $PWD/named:/etc/named --name dns milobahg/dns:latest

If you need to update your DNS entries, simply edit the .db files kill/run the container again. No need to update the serial number on your .db files.
