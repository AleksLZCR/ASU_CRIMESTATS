package com.example.asu_crimestats.database

import java.sql.Connection
import java.sql.DriverManager

object DatabaseHelper {
    private const val url = "jdbc:postgresql://10.0.2.2:5432/postgres"
    private const val user = "postgres"
    private const val password = "postgres"

    fun getConnection(): Connection {
        return DriverManager.getConnection(url, user, password)
    }
}
