import Open3Ecodecs
from Open3Ecodecs import *

dataIdentifiers = {
    "name": "HMUMASTER",
    "dids" :
    {
        256 : None,
        257 : None,
        258 : None,
        259 : None,
        260 : None,
        261 : None,
        262 : None,
        263 : None,
        264 : None,
        265 : None,
        266 : None,
        268 : None,
        271 : None,
        272 : None,
        273 : None,
        274 : None,
        275 : None,
        277 : None,
        278 : None,
        279 : None,
        281 : None,
        282 : None,
        283 : None,
        284 : None,
        286 : None,
        288 : None,
        290 : None,
        318 : None,
        331 : None,
        334 : None,
        335 : None,
        336 : None,
        337 : None,
        360 : None,
        364 : None,
        365 : None,
        373 : None,
        377 : None,
        381 : None,
        382 : None,
        386 : None,
        392 : None,
        396 : None,
        401 : None,
        402 : None,
        403 : None,
        404 : None,
        417 : None,
        424 : None,
        426 : None,
        428 : None,
        430 : None,
        475 : None,
        476 : None,
        477 : None,
        478 : None,
        491 : None,
        497 : RawCodec(3, "DomesticHotWaterCirculationPumpMode"),
        500 : None,
        503 : None,
        504 : RawCodec(10, "DomesticHotWaterSetpointMetaData"),
        505 : None,
        506 : None,
        507 : None,
        508 : None,
        510 : None,
        513 : None,
        514 : None,
        515 : None,
        516 : None,
        517 : None,
        518 : None,
        519 : None,
        520 : None,
        521 : None,
        522 : None,
        524 : None,
        525 : None,
        526 : None,
        527 : None,
        528 : None,
        531 : None,
        534 : None,
        535 : None,
        537 : None,
        538 : None,
        544 : None,
        545 : None,
        548 : None,
        565 : None,
        567 : None,
        568 : None,
        569 : None,
        570 : None,
        572 : None,
        573 : None,
        576 : None,
        580 : None,
        581 : None,
        593 : None,
        596 : None,
        597 : None,
        600 : None,
        602 : None,
        603 : None,
        604 : None,
        607 : None,
        616 : None,
        618 : None,
        619 : None,
        623 : RawCodec(165, "ServiceEngineer"),
        625 : RawCodec(22, "ObjectDetails"),
        627 : None,
        628 : None,
        629 : None,
        630 : None,
        645 : None,
        646 : None,
        647 : None,
        648 : None,
        649 : None,
        650 : None,
        651 : None,
        652 : None,
        653 : None,
        654 : None,
        691 : None,
        692 : None,
        693 : None,
        694 : None,
        695 : None,
        696 : None,
        697 : None,
        726 : None,
        727 : None,
        728 : None,
        729 : None,
        730 : None,
        731 : None,
        732 : None,
        761 : None,
        762 : None,
        763 : None,
        764 : None,
        765 : None,
        766 : None,
        767 : None,
        768 : None,
        769 : None,
        770 : None,
        771 : None,
        772 : None,
        773 : None,
        774 : None,
        775 : None,
        776 : None,
        777 : None,
        778 : None,
        779 : None,
        780 : None,
        781 : None,
        782 : None,
        783 : None,
        784 : None,
        785 : None,
        786 : None,
        787 : None,
        788 : None,
        873 : None,
        874 : O3EInt16(2, "LegionellaProtectionTargetTemperatureSetpoint"),
        875 : None,
        876 : None,
        877 : None,
        878 : None,
        880 : None,
        881 : None,
        882 : None,
        883 : None,
        896 : None,
        897 : None,
        900 : None,
        901 : None,
        902 : None,
        903 : None,
        906 : None,
        908 : None,
        912 : None,
        915 : None,
        918 : None,
        921 : None,
        924 : None,
        925 : None,
        927 : None,
        928 : None,
        929 : None,
        930 : None,
        931 : None,
        933 : None,
        934 : None,
        935 : None,
        936 : None,
        950 : None,
        951 : None,
        952 : None,
        953 : None,
        954 : None,
        960 : None,
        961 : RawCodec(1, "SecurityAlgorithmNumber"),
        962 : None,
        964 : None,
        987 : None,
        988 : None,
        989 : None,
        990 : None,
        1004 : None,
        1006 : RawCodec(3, "TargetQuickMode"),
        1007 : RawCodec(3, "CurrentQuickMode"),
        1008 : RawCodec(3, "MixerOneCircuitTargetQuickMode"),
        1009 : RawCodec(3, "MixerTwoCircuitTargetQuickMode"),
        1010 : RawCodec(3, "MixerThreeCircuitTargetQuickMode"),
        1011 : RawCodec(3, "MixerFourCircuitTargetQuickMode"),
        1024 : RawCodec(3, "MixerOneCircuitCurrentQuickMode"),
        1025 : RawCodec(3, "MixerTwoCircuitCurrentQuickMode"),
        1026 : RawCodec(3, "MixerThreeCircuitCurrentQuickMode"),
        1027 : RawCodec(3, "MixerFourCircuitCurrentQuickMode"),
        1042 : None,
        1043 : None,
        1044 : None,
        1084 : None,
        1085 : None,
        1087 : None,
        1093 : None,
        1096 : None,
        1097 : O3EComplexType(16, "ElectricityPrice", [O3EInt16(4, "ExportPrice", scale=100), O3EInt16(4, "Unknown"), O3EInt16(4, "InportPrice", scale=100), O3EInt16(2, "Unknown"), ]), # cent/kWh
        1098 : None,
        1100 : None,
        1101 : None,
        1102 : None,
        1103 : None,
        1104 : None,
        1105 : None,
        1125 : None,
        1126 : None,
        1127 : None,
        1128 : None,
        1136 : None,
        1138 : None,
        1139 : None,
        1165 : None,
        1166 : None,
        1167 : None,
        1172 : None,
        1175 : None,
        1176 : None,
        1177 : None,
        1178 : None,
        1190 : None,
        1191 : None,
        1192 : None,
        1193 : None,
        1194 : None,
        1195 : None,
        1210 : None,
        1211 : None,
        1214 : None,
        1215 : None,
        1216 : None,
        1217 : None,
        1218 : None,
        1220 : None,
        1221 : None,
        1222 : None,
        1223 : None,
        1224 : None,
        1226 : None,
        1227 : None,
        1228 : None,
        1229 : None,
        1230 : None,
        1231 : None,
        1232 : None,
        1233 : None,
        1234 : None,
        1235 : None,
        1236 : None,
        1237 : None,
        1238 : None,
        1239 : None,
        1263 : None,
        1264 : None,
        1265 : None,
        1266 : None,
        1286 : None,
        1287 : None,
        1288 : None,
        1289 : None,
        1290 : None,
        1294 : None,
        1311 : None,
        1313 : None,
        1314 : None,
        1315 : None,
        1316 : None,
        1333 : None,
        1335 : None,
        1336 : None,
        1337 : None,
        1339 : None,
        1340 : None,
        1341 : None,
        1342 : None,
        1343 : None,
        1344 : None,
        1345 : None,
        1346 : None,
        1347 : None,
        1348 : None,
        1349 : None,
        1350 : None,
        1351 : None,
        1352 : None,
        1353 : None,
        1354 : None,
        1355 : None,
        1356 : None,
        1357 : None,
        1358 : None,
        1359 : None,
        1360 : None,
        1361 : None,
        1362 : None,
        1363 : None,
        1364 : None,
        1367 : None,
        1371 : None,
        1372 : None,
        1373 : None,
        1383 : None,
        1384 : None,
        1385 : None,
        1389 : None,
        1390 : None,
        1391 : None,
        1392 : None,
        1393 : None,
        1394 : None,
        1395 : None,
        1396 : None,
        1397 : None,
        1398 : None,
        1411 : None,
        1415 : None,
        1416 : None,
        1417 : None,
        1418 : None,
        1431 : None,
        1432 : None,
        1434 : None,
        1435 : None,
        1436 : None,
        1467 : None,
        1468 : None,
        1469 : None,
        1470 : None,
        1471 : None,
        1472 : None,
        1473 : None,
        1492 : None,
        1493 : None,
        1494 : None,
        1503 : None,
        1504 : None,
        1505 : None,
        1529 : None,
        1533 : None,
        1535 : None,
        1537 : None,
        1538 : None,
        1539 : None,
        1540 : None,
        1541 : None,
        1549 : None,
        1550 : None,
        1554 : None,
        1555 : None,
        1556 : None,
        1557 : None,
        1558 : None,
        1573 : None,
        1585 : None,
        1593 : None,
        1594 : None,
        1595 : None,
        1596 : None,
        1598 : None,
        1599 : None,
        1600 : None,
        1601 : None,
        1604 : None,
        1605 : None,
        1606 : None,
        1608 : None,
        1609 : None,
        1610 : None,
        1611 : None,
        1612 : None,
        1613 : None,
        1614 : None,
        1627 : None,
        1628 : None,
        1629 : None,
        1630 : None,
        1643 : None,
        1644 : None,
        1645 : None,
        1646 : None,
        1659 : None,
        1660 : None,
        1661 : None,
        1662 : None,
        1663 : None,
        1667 : None,
        1668 : None,
        1669 : None,
        1670 : None,
    }
}
