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
	"device_class": "power",
	"unit_of_measurement": "'$DID_UNIT'",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

echo "################ Leistungen ##################################################"
#open3e/680_535_ObjectElectricalEnergyStatistical/Export
DID_SUB='Export'
echo $DID_SUB
DID_SUB_DIV='/'
echo $DID_SUB_DIV
DID_UNIT='kWh'
echo $DID_UNIT

DID_NUMBER='535'
DID_NAME='ObjectElectricalEnergyStatistical'
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
	"name": "'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "energy",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "total_increasing",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

#open3e/680_535_ObjectElectricalEnergyStatistical/Import
DID_SUB='Import'
echo $DID_SUB
DID_SUB_DIV='/'
echo $DID_SUB_DIV
DID_UNIT='kWh'
echo $DID_UNIT

DID_NUMBER='535'
DID_NAME='ObjectElectricalEnergyStatistical'
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
	"name": "'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "energy",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "total_increasing",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Sensor Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

#open3e/680_535_ObjectElectricalEnergyStatistical/Production
DID_SUB='Production'
echo $DID_SUB
DID_SUB_DIV='/'
echo $DID_SUB_DIV
DID_UNIT='kWh'
echo $DID_UNIT

DID_NUMBER='535'
DID_NAME='ObjectElectricalEnergyStatistical'
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
	"name": "'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"device_class": "energy",
	"unit_of_measurement": "'$DID_UNIT'",
	"value_template": "{{ value_json | float }}",
	"state_class": "total_increasing",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
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


echo "############################ Numbers #################################################"
############################################################################################
#  !!!ATENTION!!! Maybe you have to apply a (reverse) SCALE_Factor when writing
############################################################################################
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
    "command_template": "{% set cmd = {\"mode\": \"write-raw\", \"data\":[['$DID_NUMBER', value ]]} %} {{ cmd | to_json }}",
    "min": 0,
    "max": 100,
    "step": 0.1,
	"state_class": "measurement",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Number Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB


echo "############################ Text #################################################"
DID_SUB=''
DID_SUB_DIV=''
DID_UNIT=''
DID_LEN='40'
DID_POS='0'
ORIGINAL_TEXT="4865697a6b7265697320310000000000000000000000000000000000000000000000000000000000"
HEIZKOERPER="4865697a6b6f65727065720000000000000000000000000000000000000000000000000000000000"
echo $DID_SUB
echo $DID_SUB_DIV
echo $DID_UNIT
echo $DID_LEN
# Die sichere Variante zur Rückkehr: "command_template": "{% set cmd = {\"mode\": \"write-raw\", \"data\":[['$DID_NUMBER', \"'$ORIGINAL_VALUE'\" ]]} %}{{ cmd | to_json }}",

DID_NUMBER='627'
DID_NAME='CentralHeatingOneCircuitName'
sleep 1
mosquitto_pub -t 'homeassistant/text/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME$DID_SUB_DIV$DID_SUB'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
	"name": "'$DID_NUMBER'_'$DID_NAME'_'$DID_SUB'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME''$DID_SUB_DIV''$DID_SUB'",
	"value_template": "{{ value }}",
    "command_topic": "'$O3E'/cmnd","command_template": "{%set old=states(\"'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'\")%}{%set strg_utf=value.encode(\"utf_8\")%}{%set ns0=namespace(empty=\"\")%}{%for i in range(0,('$DID_LEN')|int*2)%}{%set ns0.empty=ns0.empty~\"0\"%}{%endfor%}{%set ns1 = namespace(strg=\"\")%}{%for i in range(0,strg_utf|length)%}{%set ns1.strg=ns1.strg~((\"%0x\")%(strg_utf[i]))%}{%endfor%}{% set payload = (ns1.strg~ns0.empty)[:('$DID_LEN'*2)]%}{% set cmd = {\"mode\": \"write-raw\",\"data\":[['$DID_NUMBER',old[:'$DID_POS']~payload~old['$DID_POS'+'$DID_LEN':]]]} %}{{cm|to_json}}",
    "min": 0,
    "max": '$DID_LEN',
	"mode": "text",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Text Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB


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
    "command_template": "{% set values = { \"Off\":\"00\", \"Maintenance\":\"01\", \"Energy manager OFF\":\"02\", \"Ecological\":\"03\", \"Economical\":\"04\"} %} {% set cmd = {\"mode\": \"write-raw\", \"'$DID_NUMBER'\":[[1363, values[value]]]} %} {{ cmd | to_json }}",
    "options": ["Off", "Maintenance", "Energy manager OFF", "Ecological", "Economical"],
    "qos": 0,
    "retain": true
}' -u $user -P $password -h $host
echo "Set MQTT Select Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

echo "############################ JSON/Raw ###################################################"
#open3e/680_544_GasConsumptionCentralHeating
DID_SUB=''
DID_SUB_DIV='/'
DID_UNIT=''
echo $DID_SUB
echo $DID_SUB_DIV
echo $DID_UNIT

DID_NUMBER='544'
DID_NAME='GasConsumptionCentralHeating'
sleep 1
mosquitto_pub -t 'homeassistant/sensor/'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'/config' -m '{
	"unique_id": "'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"name": "'$DID_NUMBER'_'$DID_NAME'",
    "device": '${DEVICE_CONFIG}',
	"state_topic": "'$O3E'/'$O3E_DEVICE'_'$DID_NUMBER'_'$DID_NAME'",
	"value_template": "{{ value }}",
	"qos": 0,
	"retain": true
}' -u $user -P $password -h $host
echo "Set MQTT JSON/Raw Config for "$O3E"/"$O3E_DEVICE"_"$DID_NUMBER"_"$DID_NAME""$DID_SUB_DIV""$DID_SUB

