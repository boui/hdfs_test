package job

import com.twitter.scalding._

class SortAllJob(args : Args) extends Job(args) {
  TextLine( args("input") )
    .groupAll{ _.sortBy('line) }
    .project('line)
    .write( Tsv( args("output")))
}



