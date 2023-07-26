# notify for new endpoints
# integrate analyze

# main
while true; do
    subfinder
    webanalyze
    
    # every 12 hours
    sleep 43200
done

subfinder() {
	subfinder -silent -dL domains.txt -all | anew subdomains.txt | notify;
}

webanalyze {
	#webanalyze

}