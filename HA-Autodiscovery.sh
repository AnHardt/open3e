#!/bin/bash

#!/bin/bash

host='192.168.1.73'
user='mqtt'
password='MqttSesam'


DEVICE_CONFIG='{"name":"Heizung_680","identifiers":["Sn_7782093007643208","680"],"manufacturer":"Viessmann","model":"Vitovalor_PT2_F19T","via_device":"Open3E"}'
echo "###############"
echo ${DEVICE_CONFIG}
echo "###############"
O3E='open3e'
echo $O3E
echo "###############"
O3E_DEVICE='680'
echo $O3E_DEVICE
echo "###############"

echo "################ Leistungen ##################################################"

DID_SUB=''
echo $DID_SUB
DID_SUB_DIV=''
echo $DID_SUB_DIV
DID_UNIT='kW'
echo $DID_UNIT

DID_NUMBER='1190'
DID_NAME='ThermalPower'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",


DEVICE_CONFIG='{"name":"Heizung_680","identifiers":["Sn_7782093007643208","680"],"manufacturer":"Viessmann","model":"Vitovalor_PT2_F19T","via_device":"Open3E"}'
echo "###############"
echo ${DEVICE_CONFIG}
echo "###############"
O3E='open3e'
echo $O3E
echo "###############"
O3E_DEVICE='680'
echo $O3E_DEVICE
echo "###############"

echo "################ Leistungen ##################################################"

DID_SUB=''
echo $DID_SUB
DID_SUB_DIV=''
echo $DID_SUB_DIV
DID_UNIT='kW'
echo $DID_UNIT

DID_NUMBER='1190'
DID_NAME='ThermalPower'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "power",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='1214'
DID_NAME='FuelCellElectricalPowerOutput'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='1214'
DID_NAME='FuelCellElectricalPowerOutput'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "power",
	"unit_of_measurement": "'$DID_UNIT'",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB


DID_NUMBER='1367'
DID_NAME='FuelCellThermalPower'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB


DID_NUMBER='1367'
DID_NAME='FuelCellThermalPower'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "power",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB


echo "########################### Temperaturen #######################################"

DID_SUB='Actual'
echo $DID_SUB
DID_SUB_DIV='/'
echo $DID_SUB_DIV
DID_UNIT='°C'
echo $DID_UNIT

DID_NUMBER='268'
DID_NAME='FlowTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
echo "########################### Temperaturen #######################################"

DID_SUB='Actual'
echo $DID_SUB
DID_SUB_DIV='/'
echo $DID_SUB_DIV
DID_UNIT='°C'
echo $DID_UNIT

DID_NUMBER='268'
DID_NAME='FlowTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "temperature",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='271'
DID_NAME='DomesticHotWaterSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='271'
DID_NAME='DomesticHotWaterSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "temperature",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='274'
DID_NAME='OutsideTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='274'
DID_NAME='OutsideTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "temperature",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='277'
DID_NAME='BufferBottomTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='277'
DID_NAME='BufferBottomTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "temperature",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='281'
DID_NAME='BufferTopTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='281'
DID_NAME='BufferTopTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "temperature",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='283'
DID_NAME='HydraulicSeparatorReturnTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "temperature",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='284'
DID_NAME='MixerOneCircuitFlowTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='284'
DID_NAME='MixerOneCircuitFlowTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "temperature",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='360'
DID_NAME='DomesticHotWaterOutletSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "temperature",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='1435'
DID_NAME='FuelCellFlowTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "temperature",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

DID_NUMBER='1436'
DID_NAME='FuelCellReturnTemperatureSensor'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "temperature",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB


echo "############################ Binary Sensors #################################################"
#open3e/680_531_DomesticHotWaterOperationState/State
DID_SUB='State'
DID_SUB_DIV='/'
DID_UNIT=''
echo $DID_SUB
echo $DID_SUB_DIV
echo $DID_UNIT

DID_NUMBER='531'
DID_NAME='DomesticHotWaterOperationState'
sleep 1
mosquitto_pub -t 'homeassistant/binary_sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
	"name": "'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"payload_on": "1",
    "payload_off": "0",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Binary_Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB


echo "############################ Switch #################################################"
#open3e/680_531_DomesticHotWaterOperationState/Mode
DID_SUB='Mode'
DID_SUB_DIV='/'
DID_UNIT=''
echo $DID_SUB
echo $DID_SUB_DIV
echo $DID_UNIT

DID_NUMBER='531'
DID_NAME='DomesticHotWaterOperationState'
sleep 1
mosquitto_pub -t 'homeassistant/switch/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
	"name": "'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"payload_on":  "{\"mode\": \"write-raw\", \"data\":[['$DID_NUMBER', \"0101\" ]]}",
    "payload_off": "{\"mode\": \"write-raw\", \"data\":[['$DID_NUMBER', \"0000\" ]]}",
    "state_on": "1",
    "state_off": "0",
    "command_topic": "'$O3E'/cmnd",
	"optimistic": true,
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sweitch Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB


echo "############################ Nunbers #################################################"
DID_SUB=''
DID_SUB_DIV=''
DID_UNIT='°C'
echo $DID_SUB
echo $DID_SUB_DIV
echo $DID_UNIT

DID_NUMBER='987'
DID_NAME='MixerOneCircuitFlowTemperatureTargetSetpoint'
sleep 1
mosquitto_pub -t 'homeassistant/number/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "temperature",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
    "command_topic": "'$O3E'/cmnd",
    "command_template": "{% set cmd = {\"mode\": \"write-raw\", \"data\":[[1363, value ]]} %} {{ cmd | to_json }}",
    "min": 0,
    "max": 100,
    "step": 0.1,
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host

echo "Set MQTT Number Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

echo "############################ Modes ###################################################"
DID_SUB='ID'
DID_SUB_DIV='/'
DID_UNIT=''
echo $DID_SUB
echo $DID_SUB_DIV
echo $DID_UNIT

DID_NUMBER='1363'
DID_NAME='FuelCellTargetOperationMode'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"value_template": "{{ value_json | int }}",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Number Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

echo "############################### Selects ###############################################"
DID_SUB='Text'
DID_SUB_DIV='/'
DID_UNIT=''
echo $DID_SUB
echo $DID_SUB_DIV
echo $DID_UNIT

DID_NUMBER='1363'
DID_NAME='FuelCellTargetOperationMode'
sleep 1
mosquitto_pub -t 'homeassistant/select/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
    "unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
    "name": "'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
    "device": '${DEVICE_CONFIG}',
    "state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
    "command_topic": "'$O3E'/cmnd",
    "command_template": "{% set values = { \"Off\":\"00\", \"Maintenance\":\"01\", \"Energy manager OFF\":\"02\", \"Ecological\":\"03\", \"Economical\":\"04\"} %} {% set cmd = {\"mode\": \"write-raw\", \"data\":[[1363, values[value]]]} %} {{ cmd | to_json }}",
    "options": ["Off", "Maintenance", "Energy manager OFF", "Ecological", "Economical"],
    "qos": 0,
    "retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Select Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB
