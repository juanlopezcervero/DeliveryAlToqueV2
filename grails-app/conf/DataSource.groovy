dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
//        dataSource {
//            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
//            url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
//        }
		dataSource {
			logSql = true
			driverClassName = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
			username = "deliveryaltoque@dxpfqlcpuj"
			password = "XYZxyz-123"
			dbCreate = "update"
			url = "jdbc:sqlserver://dxpfqlcpuj.database.windows.net:1433;database=deliveryaltoque_dbnew;user=deliveryaltoque@dxpfqlcpuj;password=XYZxyz-123;hostNameInCertificate=*.database.windows.net;loginTimeout=30;"
//			url = "jdbc:postgresql://localhost:5432/divelogs"
			pooled = true
			properties {
			   maxActive = -1
			   minEvictableIdleTimeMillis=1800000
			   timeBetweenEvictionRunsMillis=1800000
			   numTestsPerEvictionRun=3
			   testOnBorrow=true
			   testWhileIdle=true
			   testOnReturn=true
			   validationQuery="SELECT 1"
			}
		}
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    production {
        dataSource {
//            driverClassName = "org.postgresql.Driver"
//			username = "datoque"
//			password = "ontouch"
//            dbCreate = "update"
//            url = "jdbc:postgresql://ec2-23-20-22-207.compute-1.amazonaws.com:5432/deliveryaltoque"
////			url = "jdbc:postgresql://localhost:5432/divelogs"
//            pooled = true
//            properties {
//               maxActive = -1
//               minEvictableIdleTimeMillis=1800000
//               timeBetweenEvictionRunsMillis=1800000
//               numTestsPerEvictionRun=3
//               testOnBorrow=true
//               testWhileIdle=true
//               testOnReturn=true
//               validationQuery="SELECT 1"
//            }
			driverClassName = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
			username = "deliveryaltoque@dxpfqlcpuj"
			password = "XYZxyz-123"
			dbCreate = "update"
			url = "jdbc:sqlserver://dxpfqlcpuj.database.windows.net:1433;database=deliveryaltoque_dbnew;user=deliveryaltoque@dxpfqlcpuj;password=XYZxyz-123;hostNameInCertificate=*.database.windows.net;loginTimeout=30;"
//			url = "jdbc:postgresql://localhost:5432/divelogs"
			pooled = true
			properties {
			   maxActive = -1
			   minEvictableIdleTimeMillis=1800000
			   timeBetweenEvictionRunsMillis=1800000
			   numTestsPerEvictionRun=3
			   testOnBorrow=true
			   testWhileIdle=true
			   testOnReturn=true
			   validationQuery="SELECT 1"
			}
        }
    }
}
