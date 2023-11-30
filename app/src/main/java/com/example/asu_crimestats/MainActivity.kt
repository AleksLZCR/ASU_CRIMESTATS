package com.example.asu_crimestats

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.navigation.findNavController
import androidx.navigation.ui.AppBarConfiguration
import androidx.navigation.ui.navigateUp
import androidx.navigation.ui.setupActionBarWithNavController
import android.view.Menu
import android.view.MenuItem
import com.example.asu_crimestats.database.DatabaseHelper
import com.example.asu_crimestats.databinding.ActivityMainBinding
import com.google.android.material.snackbar.Snackbar
import kotlinx.coroutines.*

class MainActivity : AppCompatActivity() {

    private lateinit var appBarConfiguration: AppBarConfiguration
    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)
        setSupportActionBar(binding.toolbar)

        val navController = findNavController(R.id.nav_host_fragment_content_main)
        appBarConfiguration = AppBarConfiguration(navController.graph)
        setupActionBarWithNavController(navController, appBarConfiguration)

        binding.fab.setOnClickListener { view ->
            fetchRecentCrimes()
            Snackbar.make(view, "Fetching recent crimes", Snackbar.LENGTH_LONG)
                .setAction("Action", null).show()
        }
    }

    private fun fetchRecentCrimes() {
        CoroutineScope(Dispatchers.IO).launch {
            val connection = DatabaseHelper.getConnection()
            try {
                val statement = connection.createStatement()
                val resultSet = statement.executeQuery("SELECT * FROM CaseFile ORDER BY Date_Reported DESC LIMIT 10")

                val crimesList = mutableListOf<String>() // Placeholder for crime data

                while (resultSet.next()) {
                    // Extract data from each row
                    val number = resultSet.getString("Number")
                    val dateReported = resultSet.getDate("Date_Reported")
                    val timeReported = resultSet.getTimestamp("Time_Reported")
                    // ...extract other fields as needed

                    val crimeDetails = "Report Number: $number, Date: $dateReported, Time: $timeReported"
                    crimesList.add(crimeDetails)
                }

                // Update UI with this data
                withContext(Dispatchers.Main) {
                    updateUI(crimesList)
                }
            } catch (e: Exception) {
                e.printStackTrace()
                // Handle errors appropriately
            } finally {
                connection?.close()
            }
        }
    }

    private fun updateUI(crimes: List<String>) {
        // Update your UI here with the fetched data
        // For example, display the crimes in a RecyclerView or ListView
        // As this is a simple example, we'll just log the data
        crimes.forEach { crime ->
            println(crime) // Replace with actual UI update logic
        }
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        // Inflate the menu; this adds items to the action bar if it is present.
        menuInflater.inflate(R.menu.menu_main, menu)
        return true
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        return when (item.itemId) {
            R.id.action_settings -> true
            else -> super.onOptionsItemSelected(item)
        }
    }

    override fun onSupportNavigateUp(): Boolean {
        val navController = findNavController(R.id.nav_host_fragment_content_main)
        return navController.navigateUp(appBarConfiguration)
                || super.onSupportNavigateUp()
    }
}