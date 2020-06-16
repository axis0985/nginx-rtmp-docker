dd if=/dev/zero of=/usr/local/nginx/html/large-file bs=1 count=0 seek=10G
/usr/local/nginx/sbin/nginx -g 'daemon off;'
