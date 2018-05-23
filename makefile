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

FL:=find -maxdepth 0 -type d -not -path "./QR" -not -path "./.git" -printf "%P

qr:
	shell $(FL)
