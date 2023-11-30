package com.example.asu_crimestats.database

import java.sql.Connection
import java.sql.DriverManager

object DatabaseHelper {
    private const val url = "jdbc:postgresql://your-server-ip:5432/CrimeLogs_pg_dump.sql"
    private const val user = "postgres"
    private const val password = "postgres"

    fun getConnection(): Connection {
        return DriverManager.getConnection(url, user, password)
    }
}
