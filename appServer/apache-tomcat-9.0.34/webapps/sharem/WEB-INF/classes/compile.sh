#!/bin/bash

javac -classpath /usr/local/apache*tomcat*/lib/servlet-api.jar -encoding utf-8 -d ../classes -sourcepath . $1

