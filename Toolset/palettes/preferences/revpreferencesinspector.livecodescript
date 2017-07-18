script "revPreferencesInspector"
on preOpenStack
   # Set the inspector behaviour
   dispatch "setAsBehavior" to revIDEInspectorBehavior() with the long id of me
end preOpenStack

on openStack
   set the inspectorData of me to revIDEPreferencesInfo()
end openStack

# Sent by an editor when a property value is being changed
on editorValueChanged pProperty, pValue, pLockUpdates
   revIDESetPreference pProperty, pValue
end editorValueChanged

# Sent by the IDE when a property has changed
on revIDEPropertyChanged
   # Get values for properties in given group
   
   # Set values for all editors
   
   # Layout
end revIDEPropertyChanged

getProp displayData
  -- return revIDEPropertiesOfSection(sSelectedObjects, inspectorSectionGetName())
end displayData

getProp viewColumns [pSection]
   return 1
end viewColumns

getProp showSubSections [pSection]
   return false
end showSubSections

function inspectorSectionIcon pSection
   return revIDEPropertySectionNameToIconName(pSection)
end inspectorSectionIcon

# Add to header actions/preferences
on inspectorAddActions
end inspectorAddActions

getProp showMultiPropLabels
   return false
end showMultiPropLabels
