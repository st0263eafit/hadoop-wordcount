HADOOP_COMMON_JAR=$HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-client-core-2.7.3.jar:$HADOOP_HOME/share/hadoop/common/hadoop-common-2.7.3.jar

mkdir wordcount_classes

javac -classpath $HADOOP_COMMON_JAR -d wordcount_classes WordCount.java
jar -cvf wc.jar -C wordcount_classes/ .

rm -rf wordcount_classes
