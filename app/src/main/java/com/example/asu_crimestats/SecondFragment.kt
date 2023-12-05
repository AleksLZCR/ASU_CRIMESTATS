package com.example.asu_crimestats

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import com.example.asu_crimestats.database.DatabaseHelper
import com.example.asu_crimestats.databinding.FragmentSecondBinding
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * A simple [Fragment] subclass as the second destination in the navigation.
 */
class SecondFragment : Fragment() {

    private var _binding: FragmentSecondBinding? = null

    // This property is only valid between onCreateView and
    // onDestroyView.
    private val binding get() = _binding!!

    // Reference to the report_view Text
    private lateinit var reportView     : TextView

    // References to the edit text fields
    private lateinit var street_text    : EditText
    private lateinit var building_text  : EditText
    private lateinit var time_text      : EditText

    // References to the buttons
    private lateinit var b_find_crimes_by_street    : Button
    private lateinit var b_find_crimes_by_building  : Button
    private lateinit var b_find_crimes_by_time      : Button

    private var queryString=""
    override fun onCreateView(
            inflater: LayoutInflater, container: ViewGroup?,
            savedInstanceState: Bundle?
    ): View {
        _binding = FragmentSecondBinding.inflate(inflater, container, false)
        return binding.root
    }

    // Do Stuff Here:
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        // Initialize report view reference
        reportView = view.findViewById(R.id.report_view)

        // Initialize edit text fields
        street_text     = view.findViewById(R.id.edt_streetName)
        building_text   = view.findViewById(R.id.edt_buildingName)
        time_text       = view.findViewById(R.id.edt_time)

        // Initialize buttons
        b_find_crimes_by_street     = view.findViewById(R.id.b_find_crimes_by_street)
        b_find_crimes_by_building   = view.findViewById(R.id.b_find_crimes_by_building)
        b_find_crimes_by_time       = view.findViewById(R.id.b_find_crimes_by_time)

        queryString=""
        // Add actions to the buttons:
        b_find_crimes_by_street.setOnClickListener{
            // Get text from appropriate text field
            val streetString = street_text.text.toString()

            // When button is clicked, change the text view
            updateReportTextView("Querying DB for reports on street: $streetString")
            queryString =
                "SELECT c.*, s.Street_name AS StreetName FROM CaseFile c JOIN Street s ON c.Street_id = s.Street_id WHERE s.Street_Name = '$streetString';"
            runQuery(queryString)
        }

        b_find_crimes_by_building.setOnClickListener{
            // Get text from appropriate text field
            val buildingString = building_text.text.toString()

            // When button is clicked, change the text view
            updateReportTextView("Querying DB for reports on building: $buildingString")
            queryString =
                "SELECT * FROM CaseFile JOIN Location ON CaseFile.Location_id = Location.Location_id JOIN CrimeType ON CaseFile.CrimeType_id = CrimeType.CrimeType_id JOIN Status ON CaseFile.Status_id = Status.Status_id JOIN Street ON CaseFile.Street_id = Street.Street_id WHERE Location.Location_Name LIKE '%$buildingString%';"
            runQuery(queryString)
        }

        b_find_crimes_by_time.setOnClickListener{
            // Get text from appropriate text field
            val timeString = time_text.text.toString()
            // When button is clicked, change the text view
            updateReportTextView("Querying DB for reports at time: $timeString")
            queryString = "SELECT * FROM CaseFile WHERE Time_Occurred = '$timeString';"
            runQuery(queryString)


        }
    }
    private fun runQuery(queryText: String){
        CoroutineScope(Dispatchers.IO).launch {
            val connection = DatabaseHelper.getConnection()
            try {
                val statement = connection.createStatement()
                val resultSet = statement.executeQuery(queryText)

                val crimesList = mutableListOf<String>() // Placeholder for crime data

                while (resultSet.next()) {
                    // Extract data from each row
                    val number = resultSet.getString("Number")
                    val dateReported = resultSet.getDate("Date_Reported")
                    val timeReported = resultSet.getTimestamp("Time_Reported")
                    // ...extract other fields as needed

                    val crimeDetails = "Report Number: $number, Date: $dateReported, Time: $timeReported\n"
                    crimesList.add(crimeDetails)
                }
                if(crimesList.isEmpty()){
                    crimesList.add("No Results")
                }
                // Update UI with this data
                withContext(Dispatchers.Main) {
                        updateReportTextView(crimesList.toString())
                }
            } catch (e: Exception) {
                e.printStackTrace()
                // Handle errors appropriately
            } finally {
                connection?.close()
            }
        }
    }
    private fun updateReportTextView(newText: String){
        reportView.text = newText
    }
    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}