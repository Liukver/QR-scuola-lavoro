start: 
	@docker run \
	    --rm \
	    -d \
	    --name server \
	    -p 8080:80 \
	    -v "$$(pwd)":/data \
	    -v "$$(pwd)"/nginx.conf:/etc/nginx/nginx.conf\
	    nginx 

stop:
	@docker kill server
