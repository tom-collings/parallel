#!/bin/bash
rm -rf ./jobs
mkdir ./jobs
for i in OddServiceTest EvenServiceTest
do
  cat job-tmpl.yml | sed "s/\$ITEM/$i/" > ./jobs/job-temp.yml
  ASLOWER=`echo $i | awk '{print tolower($0)}'`
  cat ./jobs/job-temp.yml | sed "s/\$TO_LOWER_CASE/$ASLOWER/" > ./jobs/job-$i.yml
done
rm -rf ./jobs/job-temp.yml