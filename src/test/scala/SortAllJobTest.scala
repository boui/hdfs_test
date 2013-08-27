package com.snowplowanalytics.hadoop.scalding

import org.specs2.mutable.Specification
import java.util.Random
import com.twitter.scalding._

class SortAllJobTest extends Specification with TupleConversions {
  "A WordCount job" should {
    val m = new Random
    JobTest("job.SortAllJob").
      arg("input", "inputFile").
      arg("output", "outputFile").
      source(TextLine("inputFile"), (0 to 100).map(i=>m.nextInt(3)-1).map{i=>(i.toString->i.toString)}.toList).
      sink[String](Tsv("outputFile")){ outputBuffer =>
      for (line<-outputBuffer){
        println(line)
      }
    }.
      run.
      finish
  }
}