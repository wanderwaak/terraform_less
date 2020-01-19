#!/bin/bash
yum -y update
yum -y install httpd


myip = `curl http://169.254.169.254/latest/meta-data/local-ipv4`
cat <<EOF > /var/www/html/index.html
<html>
<h2>Build by test terrform <font collor="red"> v0.12</font></h2><br>
owner ${f_name} ${l_name}<br>

%{ for x in names ~}
Hello to ${x} from ${f_name}<br>
%{ endfor ~}

</html>

sudo service httpd start
chkconfig httpd on
