from pyspark import SparkContext
import sys

sc = SparkContext("local", "Simple WC")

inputdir = sys.argv[1]
outputdir = sys.argv[2]

text_file = sc.textFile(inputdir)
counts = text_file.flatMap(lambda line: line.split(" ")) \
             .map(lambda word: (word, 1)) \
             .reduceByKey(lambda a, b: a + b)
counts.saveAsTextFile(outputdir)
