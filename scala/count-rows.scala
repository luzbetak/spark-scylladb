// spark-shell -i count-rows.scala 

import com.datastax.spark.connector._
import org.apache.spark.sql.cassandra._
import org.apache.spark.rdd.RDD
val rdd = sc.cassandraTable("cloud1", "links1")
println(rdd.count)
sys.exit

