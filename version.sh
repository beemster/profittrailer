#!/bin/bash

A="ProfitTrailer.jar" JAR=${A:-/opt/ProfitTrailer/ProfitTrailer.jar} unzip -p $JAR META-INF/MANIFEST.MF|grep Implementation-Version
