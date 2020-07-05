// spark-shell -i count-rows.scala 

import com.datastax.spark.connector._
import org.apache.spark.sql.cassandra._
import org.apache.spark.rdd.RDD

val formatter = java.text.NumberFormat.getIntegerInstance

sc.setLogLevel("ERROR")
val rdd = sc.cassandraTable("cloud1", "links1")
val total = formatter.format(rdd.count)


println("+-----------------------------------+")
println("| Total: " + total)
println("+-----------------------------------+")

sys.exit

