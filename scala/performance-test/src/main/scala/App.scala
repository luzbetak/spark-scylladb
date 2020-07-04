/**
 * Querying Cassandra from Scala
 */

object App {

  def main(args: Array[String]) {

    var IP = "127.0.0.1"
    var loop = 3

    if (args.size > 1) {
      println("args: " + args(0))
      IP = args(0).toString
      loop = args(1).toInt
    }

    try {
      val cass = new ClassCassandra(IP)
      cass.putQueryInsert(loop)
      cass.disconnect("Method: getQueryResult")
    } catch {
      case e: Exception => println("exception caught: " + e);
    }

    //    try {
    //      ObjCassandra.putQueryInsert(loop).getQueryResult().disconnect("Method: getQueryResult")
    //    } catch {
    //      case e: Exception => println("exception caught: " + e);
    //    }
    //  }


  }
}
