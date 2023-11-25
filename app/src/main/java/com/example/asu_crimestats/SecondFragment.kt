package com.example.asu_crimestats

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import com.example.asu_crimestats.databinding.FragmentSecondBinding

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

        // Add actions to the buttons:
        b_find_crimes_by_street.setOnClickListener{
            // Get text from appropriate text field
            val streetString = street_text.text.toString()

            // When button is clicked, change the text view
            updateReportTextView("Querying DB for reports on street: $streetString")
        }

        b_find_crimes_by_building.setOnClickListener{
            // Get text from appropriate text field
            val buildingString = building_text.text.toString()

            // When button is clicked, change the text view
            updateReportTextView("Querying DB for reports on building: $buildingString")
        }

        b_find_crimes_by_time.setOnClickListener{
            // Get text from appropriate text field
            val timeString = time_text.text.toString()

            // When button is clicked, change the text view
            updateReportTextView("Querying DB for reports at time: $timeString")
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