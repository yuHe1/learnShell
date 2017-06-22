#!/bin/bash
GF_ZIP='d'
GF_HUDSON_ROOT=$( curl  "http://gf-hudson.us.oracle.com/hudson/job/gf-master-continous-check/api/xml?xpath=//lastStableBuild/url/text()" )

echo "GF_HUDSON_ROOT= $GF_HUDSON_ROOT  "

 if [ -z $GF_SVN_ROOT]; then
     GF_SVN_ROOT=$GF_HUDSON_ROOT
 fi      
 echo "GF_SVN_ROOT $GF_SVN_ROOT  "
  #fallback to defaults if needed
  echo "( -d $GF_SVN_ROOT )" 
  if [[ ( -d $GF_SVN_ROOT ) ]] ; then
         $GF_ZIP=$GF_SVN_ROOT/artifact/bundles/glassfish.zip
         echo "setting GF_ZIP to $GF_ZIP"
     else
         echo "false"
   fi
echo $GZ_ZIP
