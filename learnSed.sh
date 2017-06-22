wget -E - http://download.java.net/glassfish/5.0/nightly 
newfilename=$( echo $a |grep -o '<a href=['"'"'"][^"'"'"']*latest-glassfish.zip['"'"'"]' nightly.html )
echo $newfilename
rm nightly.html
