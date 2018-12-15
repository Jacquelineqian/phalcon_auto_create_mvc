#!/bin/bash
#文件名: cecho.sh
pascal=$1
single=$2
dulplication=$3


cd temp
mkdir ${pascal}
cd ${pascal}


cp ../../sample/controller ./${pascal}Controller
sed -i '' 's/%P/'${pascal}'/g' ./${pascal}Controller
sed -i '' 's/%S/'${single}'/g' ./${pascal}Controller
sed -i '' 's/%D/'${dulplication}'/g' ./${pascal}Controller
mv ./${pascal}Controller ./${pascal}Controller.php

cp ../../sample/model ./${pascal}
sed -i '' 's/%P/'${pascal}'/g' ./${pascal}
mv ./${pascal} ./${pascal}.php

cp ../../sample/table ./table
sed -i '' 's/%D/'${dulplication}'/g' ./table
sed -i '' 's/%S/'${single}'/g' ./table
sed -i '' 's/%P/'${pascal}'/g' ./table

cp -r ../../sample/view ./${dulplication}
cd ./${dulplication}
sed -i '' 's/%P/'${pascal}'/g' index.volt
sed -i '' 's/%S/'${single}'/g' index.volt
sed -i '' 's/%D/'${dulplication}'/g' index.volt
sed -i '' 's/%P/'${pascal}'/g' form.volt
sed -i '' 's/%S/'${single}'/g' form.volt
sed -i '' 's/%D/'${dulplication}'/g' form.volt
sed -i '' 's/%D/'${dulplication}'/g' edit.volt
sed -i '' 's/%D/'${dulplication}'/g' new.volt



