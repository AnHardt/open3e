host='192.168.1.73'
user='mqtt'
password='MqttSesam'
device_name='Vitovalor PT2 F19T'
idenifier='Sn 7782093007643208'

# Paste next line in between '' from MQTT 
did='open3e/680_274_OutsideTemperatureSensor/Actual'


################ Leistungen ##################################################

mosquitto_pub -t homeassistant/sensor/open3e/680_1190_ThermalPower/config -m '{
	"unique_id": "open3e_680_1190_ThermalPower",
	"name": "open3e_680_1190_ThermalPower",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_1190_ThermalPower",
	"device_class": "power",
	"unit_of_measurement": "kW",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_1190_ThermalPower"

mosquitto_pub -t homeassistant/sensor/open3e/680_1214_FuelCellElectricalPowerOutput/config -m '{
	"unique_id": "open3e_680_1214_FuelCellElectricalPowerOutput",
	"name": "open3e_680_1214_FuelCellElectricalPowerOutput",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_1214_FuelCellElectricalPowerOutput",
	"device_class": "power",
	"unit_of_measurement": "kW",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_1214_FuelCellElectricalPowerOutput"

mosquitto_pub -t homeassistant/sensor/open3e/680_1367_FuelCellThermalPower/config -m '{
	"unique_id": "open3e_680_1367_FuelCellThermalPower",
	"name": "open3e_680_1367_FuelCellThermalPower",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_1367_FuelCellThermalPower",
	"device_class": "power",
	"unit_of_measurement": "kW",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_1367_FuelCellThermalPower"


###########################Temperaturen#######################################

mosquitto_pub -t homeassistant/sensor/open3e/680_268_FlowTemperatureSensor_Actual/config -m '{
	"unique_id": "open3e_680_268_FlowTemperatureSensor_Actual",
	"name": "open3e_680_268_FlowTemperatureSensor_Actual",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_268_FlowTemperatureSensor/Actual",
	"device_class": "temperature",
	"unit_of_measurement": "°C",
	"value_template": "{{ value_json | float(0) }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_268_FlowTemperatureSensor/Actual"

mosquitto_pub -t homeassistant/sensor/open3e/680_271_DomesticHotWaterSensor_Actual/config -m '{
	"unique_id": "open3e_680_271_DomesticHotWaterSensor_Actual",
	"name": "open3e_680_271_DomesticHotWaterSensor_Actual",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_271_DomesticHotWaterSensor/Actual",
	"device_class": "temperature",
	"unit_of_measurement": "°C",
	"value_template": "{{ value_json | float(0) }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_271_DomesticHotWaterSensor/Actual"

mosquitto_pub -t homeassistant/sensor/open3e/680_274_OutsideTemperatureSensor_Actual/config -m '{
	"unique_id": "open3e_680_274_OutsideTemperatureSensor_Actual",
	"name": "open3e_680_274_OutsideTemperatureSensor_Actual",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_274_OutsideTemperatureSensor/Actual",
	"device_class": "temperature",
	"unit_of_measurement": "°C",
	"value_template": "{{ value_json | float(0) }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_274_OutsideTemperatureSensor/Actual"

mosquitto_pub -t homeassistant/sensor/open3e/680_277_BufferBottomTemperatureSenso_Actual/config -m '{
	"unique_id": "open3e_680_277_BufferBottomTemperatureSensor_Actual",
	"name": "open3e_680_277_BufferBottomTemperatureSensor_Actual",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_281_BufferTopTemperatureSensor/Actual",
	"device_class": "temperature",
	"unit_of_measurement": "°C",
	"value_template": "{{ value_json | float(0) }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_277_BufferBottomTemperatureSensor/Actual"

mosquitto_pub -t homeassistant/sensor/open3e/680_281_BufferTopTemperatureSensor_Actual/config -m '{
	"unique_id": "open3e_680_281_BufferTopTemperatureSensor_Actual",
	"name": "open3e_680_281_BufferTopTemperatureSensor_Actual",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_281_BufferTopTemperatureSensor/Actual",
	"device_class": "temperature",
	"unit_of_measurement": "°C",
	"value_template": "{{ value_json | float(0) }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_281_BufferTopTemperatureSensor/Actual"

mosquitto_pub -t homeassistant/sensor/open3e/680_283_HydraulicSeparatorReturnTemperatureSensor_Actual/config -m '{
	"unique_id": "open3e_680_283_HydraulicSeparatorReturnTemperatureSensor_Actual",
	"name": "open3e_680_283_HydraulicSeparatorReturnTemperatureSensor_Actual",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_283_HydraulicSeparatorReturnTemperatureSensor/Actual",
	"device_class": "temperature",
	"unit_of_measurement": "°C",
	"value_template": "{{ value_json | float(0) }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_283_HydraulicSeparatorReturnTemperatureSensor/Actual"

mosquitto_pub -t homeassistant/sensor/open3e/680_284_MixerOneCircuitFlowTemperatureSensor_Actual/config -m '{
	"unique_id": "open3e_680_284_MixerOneCircuitFlowTemperatureSensor_Actual",
	"name": "open3e_680_284_MixerOneCircuitFlowTemperatureSensor_Actual",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_284_MixerOneCircuitFlowTemperatureSensor/Actual",
	"device_class": "temperature",
	"unit_of_measurement": "°C",
	"value_template": "{{ value_json | float(0) }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_284_MixerOneCircuitFlowTemperatureSensor/Actual"

mosquitto_pub -t homeassistant/sensor/open3e/680_360_DomesticHotWaterOutletSensor_Actual/config -m '{
	"unique_id": "open3e_680_360_DomesticHotWaterOutletSensor_Actual",
	"name": "open3e_680_360_DomesticHotWaterOutletSensor_Actual",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_360_DomesticHotWaterOutletSensor/Actual",
	"device_class": "temperature",
	"unit_of_measurement": "°C",
	"value_template": "{{ value_json | float(0) }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_360_DomesticHotWaterOutletSensor/Actual"

mosquitto_pub -t homeassistant/sensor/open3e/680_987_MixerOneCircuitFlowTemperatureTargetSetpoint/config -m '{
	"unique_id": "open3e_680_987_MixerOneCircuitFlowTemperatureTargetSetpoint",
	"name": "open3e_680_987_MixerOneCircuitFlowTemperatureTargetSetpoint",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_987_MixerOneCircuitFlowTemperatureTargetSetpoint",
	"device_class": "temperature",
	"unit_of_measurement": "°C",
	"value_template": "{{ value_json | float(0) }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_987_MixerOneCircuitFlowTemperatureTargetSetpoint"

mosquitto_pub -t homeassistant/sensor/open3e/680_1435_FuelCellFlowTemperatureSensor_Actual/config -m '{
	"unique_id": "open3e_680_1435_FuelCellFlowTemperatureSensor_Actual",
	"name": "open3e_680_1435_FuelCellFlowTemperatureSensor_Actual",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_1435_FuelCellFlowTemperatureSensor/Actual",
	"device_class": "temperature",
	"unit_of_measurement": "°C",
	"value_template": "{{ value_json | float(0) }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_1435_FuelCellFlowTemperatureSensor/Actual"


mosquitto_pub -t homeassistant/sensor/open3e/680_1436_FuelCellReturnTemperatureSensor_Actual/config -m '{
	"unique_id": "open3e_680_1436_FuelCellReturnTemperatureSensor_Actual",
	"name": "open3e_680_1436_FuelCellReturnTemperatureSensor_Actual",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_1436_FuelCellReturnTemperatureSensor/Actual",
	"device_class": "temperature",
	"unit_of_measurement": "°C",
	"value_template": "{{ value_json | float(0) }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_1436_FuelCellReturnTemperatureSensor/Actual"

mosquitto_pub -t homeassistant/sensor/open3e/680_1363_FuelCellTargetOperationMode_ID/config -m '{
	"unique_id": "open3e_680_1363_FuelCellTargetOperationMode_ID",
	"name": "open3e_680_1363_FuelCellTargetOperationMode_ID",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_1363_FuelCellTargetOperationMode/ID",
	"value_template": "{{ value_json }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Config for open3e/680_1363_FuelCellTargetOperationMode/ID"

#################################################################################

mosquitto_pub -t homeassistant/select/open3e/680_1363_FuelCellTargetOperationMode/config -m '{
	"unique_id": "open3e_680_1363_FuelCellTargetOperationMode",
	"name": "open3e_680_1363_FuelCellTargetOperationMode",
	"device": {
		"name": "PT2",
		"identifiers": ["Sn 7782093007643208"],
		"manufacturer": "Viessmann",
		"model": "Vitovalor PT2 F19T"
	},
	"state_topic": "open3e/680_1363_FuelCellTargetOperationMode",
	"value_template": "{{ value_json.ID}}",
    "command_topic": "open3e/cmnd",
	"command_template": >
        {% set values = { '0':'00', '1':'01', '2':'02', '3':'03', '4':'04'} %}
        {% set cmd = {'mode': 'write-raw', 'data':[[1363, values[value]]]} %}
        {{ cmd | to_json }}
    "options":
      - "Off"
      - "Maintenance"
      - "Energy manager OFF"
      - "Ecological"
      - "Economical"
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Select Config for open3e/680_1363_FuelCellTargetOperationMode"
