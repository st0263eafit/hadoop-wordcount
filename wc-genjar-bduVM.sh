HADOOP_LIBJARS=/usr/iop/current/hadoop-mapreduce-client/hadoop-mapreduce-client-core-2.7.1-IBM-8.jar:$HADOOP_HOME/hadoop-common-2.7.1-IBM-8.jar

mkdir wordcount_classes

javac -classpath $HADOOP_LIBJARS -d wordcount_classes WordCount.java
jar -cvf wc.jar -C wordcount_classes/ .

rm -rf wordcount_classes
