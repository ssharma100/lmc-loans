dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "console"
    password = "test123"
    dbCreate = "false"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://localhost:3306/test"
        }
    }
    test {
        dataSource {
            dbCreate = ""
            url = "jdbc:mysql://localhost:3306/test"
        }
    }
    production {
        dataSource {
            url = "jdbc:mysql://localhost:3306/custdatalmc"
            username = "console"
            password = "test123"
        }
    }
}
