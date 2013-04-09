package examples 
{
	import ds.sort.Heap;
	import ds.sort.Insertion;
	import ds.sort.Merge;
	import ds.sort.Quick;
	import ds.sort.Quick3way;
	import ds.sort.Selection;
	import ds.sort.Shell;
	import ds.sort.SortUtils;
	import flash.utils.getTimer;
	
	/**
	 *                                     
	 *    稳定：                             复杂度
     *
	 *    插入排序       Insertion            O(n ~ n^2)   		运行时间取决于输入元素的初始顺序，已经有序的数组会快很多
	 *    归并排序       Merge                O(n log n)
	 * 
	 *    不稳定：
	 * 
	 *    选择排序       Selection            O(n^2)             n^2级别的无用的排序，比冒泡快一点。。
	 *    希尔排序       Shell                O(n lgo n)?        插入排序进化版
	 *    快速排序       Quick                O(n log n)         最坏情况n^2/2次比较，但随机打乱数组可以预防这种情况
	 *    三向快速排序   Quickl3way           O(n) ~ O(n log n)  大量重复元素的数组，能将线性对数级别降低到线性级别
	 *    堆排序         Heap                 O(n log n)
	 *    Flash内置排序  BuildIn
	 */
	public class SortTest 
	{
		
	    public static function compare():void
		{
			//var array:Array = [] ;
			//for ( var i:int = 0 ; i < 2000 ; i++)
			//{
				//array.push(int(Math.random()*1000));
			//}
			//trace("public static var arr3:Array = [" , array , "];");
			//
			//var arr:Array = arr1.slice(0);
			//
			//var t:Number = getTimer();
			//Insertion.sort(arr2);
			//trace(getTimer() - t );
			//trace(SortUtils.isSorted(arr,SortUtils.ASC_COMPARE_FUNC));
			
			trace("           测试不稳定排序：");
			test_BuildIn();
            test_Quick();
			test_Quick3way();
			test_Shell();
			test_Heap();
			test_Selection();
			trace("           测试稳定排序：");
			test_Insertion();
			test_Merge();
		}
		
		public static function test_BuildIn():void
		{
			trace("BuildIn -----------------------------------------")
			var testArr1:Array = arr1.slice(0);
			var testArr2:Array = arr2.slice(0);
			
			var t:Number = getTimer();
			testArr1.sort(SortUtils.ASC_COMPARE_FUNC);
			trace("有序数组：", getTimer() - t, "ms");
			
			t = getTimer();
			testArr2.sort(SortUtils.ASC_COMPARE_FUNC);
			trace("无序数组：", getTimer() - t, "ms");
			
			if (!SortUtils.isSorted(testArr1, SortUtils.ASC_COMPARE_FUNC) || !SortUtils.isSorted(testArr2, SortUtils.ASC_COMPARE_FUNC) )
			  throw new Error("排序失败")
		}
		
		public static function test_Selection():void
		{
			trace("Selection -----------------------------------------")
			var testArr1:Array = arr1.slice(0);
			var testArr2:Array = arr2.slice(0);
			
			var t:Number = getTimer();
			Selection.sort(testArr1);
			trace("有序数组：", getTimer() - t, "ms");
			
			t = getTimer();
			Selection.sort(testArr2);
			trace("无序数组：", getTimer() - t, "ms");
			
			if (!SortUtils.isSorted(testArr1, SortUtils.ASC_COMPARE_FUNC) || !SortUtils.isSorted(testArr2, SortUtils.ASC_COMPARE_FUNC) )
			  throw new Error("排序失败")
		}
		
		
		public static function test_Shell():void
		{
			trace("Shell -----------------------------------------")
			var testArr1:Array = arr1.slice(0);
			var testArr2:Array = arr2.slice(0);
			
			var t:Number = getTimer();
			Shell.sort(testArr1 , SortUtils.ASC_COMPARE_FUNC);
			trace("有序数组：", getTimer() - t, "ms");
			
			t = getTimer();
			Shell.sort(testArr2,SortUtils.ASC_COMPARE_FUNC);
			trace("无序数组：", getTimer() - t, "ms");
			
			if (!SortUtils.isSorted(testArr1, SortUtils.ASC_COMPARE_FUNC) || !SortUtils.isSorted(testArr2, SortUtils.ASC_COMPARE_FUNC) )
			  throw new Error("排序失败")
		}

		public static function test_Quick():void
		{
			trace("Quick -----------------------------------------")
			var testArr1:Array = arr1.slice(0);
			var testArr2:Array = arr2.slice(0);
			
			var t:Number = getTimer();
			Quick.sort(testArr1 , SortUtils.ASC_COMPARE_FUNC);
			trace("有序数组：", getTimer() - t, "ms");
			
			t = getTimer();
			Quick.sort(testArr2,SortUtils.ASC_COMPARE_FUNC);
			trace("无序数组：", getTimer() - t, "ms");
			
			if (!SortUtils.isSorted(testArr1, SortUtils.ASC_COMPARE_FUNC) || !SortUtils.isSorted(testArr2, SortUtils.ASC_COMPARE_FUNC) )
			  throw new Error("排序失败")
		}
	
		public static function test_Quick3way():void
		{
			trace("Quick -----------------------------------------")
			var testArr1:Array = arr1.slice(0);
			var testArr2:Array = arr2.slice(0);
			
			var t:Number = getTimer();
			Quick3way.sort(testArr1 , SortUtils.ASC_COMPARE_FUNC);
			trace("有序数组：", getTimer() - t, "ms");
			
			t = getTimer();
			Quick3way.sort(testArr2,SortUtils.ASC_COMPARE_FUNC);
			trace("无序数组：", getTimer() - t, "ms");
			
			if (!SortUtils.isSorted(testArr1, SortUtils.ASC_COMPARE_FUNC) || !SortUtils.isSorted(testArr2, SortUtils.ASC_COMPARE_FUNC) )
			  throw new Error("排序失败")
		}		
		public static function test_Heap():void
		{
			trace("Heap -----------------------------------------")
			var testArr1:Array = arr1.slice(0);
			var testArr2:Array = arr2.slice(0);
			
			var t:Number = getTimer();
			Heap.sort(testArr1 , SortUtils.ASC_COMPARE_FUNC);
			trace("有序数组：", getTimer() - t, "ms");
			
			t = getTimer();
			Heap.sort(testArr2,SortUtils.ASC_COMPARE_FUNC);
			trace("无序数组：", getTimer() - t, "ms");
			
			if (!SortUtils.isSorted(testArr1, SortUtils.ASC_COMPARE_FUNC) || !SortUtils.isSorted(testArr2, SortUtils.ASC_COMPARE_FUNC) )
			  throw new Error("排序失败")
		}			
		
		
		
		public static function test_Insertion():void
		{
			trace("Insertion -----------------------------------------")
			var testArr1:Array = arr1.slice(0);
			var testArr2:Array = arr2.slice(0);
			
			var t:Number = getTimer();
			Insertion.sort(testArr1);
			trace("有序数组：", getTimer() - t, "ms");
			
			t = getTimer();
			Insertion.sort(testArr2);
			trace("无序数组：", getTimer() - t, "ms");
			
			if (!SortUtils.isSorted(testArr1, SortUtils.ASC_COMPARE_FUNC) || !SortUtils.isSorted(testArr2, SortUtils.ASC_COMPARE_FUNC) )
			  throw new Error("排序失败")
		}
		
		public static function test_Merge():void
		{
			trace("Merge -----------------------------------------")
			var testArr1:Array = arr1.slice(0);
			var testArr2:Array = arr2.slice(0);
			
			var t:Number = getTimer();
			Merge.sort(testArr1);
			trace("有序数组：", getTimer() - t, "ms");
			
			t = getTimer();
			Merge.sort(testArr2);
			trace("无序数组：", getTimer() - t, "ms");
			
			if (!SortUtils.isSorted(testArr1, SortUtils.ASC_COMPARE_FUNC) || !SortUtils.isSorted(testArr2, SortUtils.ASC_COMPARE_FUNC) )
			  throw new Error("排序失败")
		}
		//2000个元素
		//完全有序
		public static const arr1:Array = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999]
		//无序数组
		public static const arr2:Array = [ 143,191,199,537,840,867,690,827,176,734,899,999,514,160,684,560,23,370,198,827,89,776,924,443,329,418,412,606,625,376,750,762,619,543,269,485,548,355,635,694,510,928,236,944,303,683,495,29,340,754,486,814,439,826,447,366,708,315,617,759,822,561,732,859,871,176,330,492,61,311,468,727,554,323,260,71,271,340,273,716,105,431,214,814,401,528,387,484,390,82,61,79,388,146,471,179,961,354,813,461,740,100,748,313,793,679,727,563,117,472,170,54,159,596,605,910,398,225,391,566,149,778,67,338,688,218,334,172,530,252,454,771,64,971,150,655,896,469,35,598,345,401,116,636,226,139,118,875,613,933,953,710,29,617,686,156,412,831,743,943,648,144,757,58,97,768,514,812,745,776,413,357,808,713,634,339,433,843,109,370,373,490,930,996,209,906,305,503,100,897,41,227,482,943,786,86,600,750,925,791,930,793,916,658,977,94,59,795,780,181,306,449,443,847,711,936,99,373,368,718,537,237,157,804,671,62,822,837,147,747,723,671,194,39,133,210,735,402,506,924,241,16,785,193,802,219,420,759,729,448,472,996,970,56,607,506,436,198,760,240,483,169,320,224,538,308,575,700,453,668,247,127,544,258,364,86,765,94,261,490,810,698,573,580,751,367,324,161,831,892,723,384,306,84,763,295,325,111,344,856,214,326,512,96,904,239,595,5,31,36,596,38,185,489,679,916,288,710,855,194,478,637,529,328,809,103,529,898,334,48,190,305,924,265,34,146,516,403,675,939,949,425,326,988,476,622,816,881,733,141,108,300,685,847,50,248,343,508,352,194,350,539,21,696,824,853,456,357,833,55,714,707,306,96,782,850,911,217,838,404,210,769,762,493,274,277,821,896,514,598,88,60,694,881,518,178,758,794,621,395,415,355,359,874,860,191,385,723,416,676,668,636,485,126,358,690,969,274,713,747,39,250,652,43,80,635,989,757,684,189,73,178,260,908,732,606,769,1,930,443,718,72,22,981,919,665,93,882,983,916,922,456,456,570,459,483,125,833,915,63,107,150,103,978,5,885,482,452,593,672,852,411,855,241,743,85,923,930,886,448,440,393,740,64,578,941,902,389,252,999,366,97,916,492,209,647,168,602,110,472,428,172,973,933,704,13,502,323,435,45,724,382,888,16,648,700,637,655,541,309,108,697,388,898,116,655,460,128,398,202,926,62,724,885,440,59,743,425,34,410,381,404,451,314,205,416,295,867,151,766,569,160,830,875,652,38,652,362,439,836,680,540,699,317,445,314,703,972,597,967,142,754,516,16,279,526,243,924,797,827,274,98,491,981,324,83,744,253,113,605,801,987,329,822,756,381,301,976,771,571,512,983,716,157,571,658,686,748,629,104,812,211,677,248,265,182,61,934,389,122,463,527,835,90,912,832,398,931,781,404,456,583,934,341,57,535,845,373,676,163,768,121,619,155,839,477,431,893,126,429,135,24,425,499,486,140,479,145,343,158,119,545,164,268,699,220,950,365,725,368,826,770,384,868,449,109,794,840,951,470,507,174,555,360,270,585,639,895,52,118,38,843,180,837,23,682,552,869,380,624,883,842,718,81,929,437,10,57,708,266,662,207,71,12,36,617,432,420,371,662,868,465,878,411,375,615,314,966,380,141,568,442,167,216,131,48,304,445,56,9,344,351,55,646,160,93,771,119,406,160,362,116,202,321,958,31,855,837,335,279,895,634,704,618,821,959,772,678,265,951,630,976,130,251,645,916,908,396,367,542,758,205,686,18,616,765,517,100,338,967,644,212,422,867,858,859,595,254,984,52,945,531,29,76,389,18,624,543,973,621,726,927,627,483,732,782,119,286,445,229,68,720,996,928,137,415,969,424,65,250,348,377,955,589,781,167,405,195,890,456,223,777,797,187,673,693,68,938,394,699,989,123,533,744,676,628,384,901,427,55,0,758,985,447,203,539,418,5,272,366,347,629,382,157,728,245,295,79,383,38,580,41,184,457,141,265,318,154,738,279,730,81,723,774,467,943,33,857,239,958,308,961,3,493,590,706,590,564,822,986,730,20,490,187,354,950,549,251,465,663,344,327,686,224,390,667,176,513,538,712,108,260,620,14,739,271,879,709,696,734,522,895,663,507,717,941,832,302,825,534,787,356,329,3,772,682,358,237,760,893,762,687,213,585,300,420,651,826,29,281,433,281,985,118,649,373,911,927,327,357,907,326,133,81,408,125,364,685,444,174,505,69,903,579,312,7,951,812,570,742,76,46,452,533,456,979,259,419,528,589,759,980,918,718,775,651,718,915,590,362,268,82,780,728,635,386,182,325,294,793,217,896,555,132,271,175,404,385,302,145,598,778,228,949,742,342,351,581,480,557,588,758,91,867,324,662,743,453,316,409,978,228,149,901,660,323,771,548,97,91,502,752,631,718,885,811,483,437,350,3,84,302,131,389,519,630,755,823,867,145,131,655,90,514,93,923,315,454,563,26,519,746,300,137,583,626,370,389,684,679,207,299,762,187,32,194,528,516,70,894,576,21,619,902,103,34,307,709,62,83,698,936,499,798,218,741,121,792,707,438,776,613,60,299,254,37,657,926,266,602,124,174,910,604,882,820,392,111,624,588,364,808,848,310,698,360,508,621,618,496,331,86,68,134,16,465,63,187,417,653,471,590,99,985,314,361,501,145,287,7,109,845,869,575,887,543,498,821,136,43,225,797,839,59,365,794,903,494,196,105,254,3,297,668,195,470,212,693,783,226,84,885,586,255,907,722,518,699,561,219,805,71,969,263,456,778,793,597,248,387,212,20,852,529,712,107,161,322,799,884,850,538,799,794,189,233,550,322,418,608,843,68,826,116,102,942,259,544,580,841,959,599,50,289,605,253,81,680,22,233,563,91,770,588,460,147,565,903,899,388,196,781,88,550,792,644,502,663,154,337,956,269,373,352,848,939,314,80,388,762,518,559,432,997,747,175,955,461,881,865,263,365,496,846,789,823,634,423,6,858,62,39,55,836,204,950,74,9,138,951,353,453,704,396,227,367,315,115,969,291,393,237,191,506,123,317,900,843,736,503,316,798,288,469,398,376,125,964,380,335,525,179,61,586,823,692,491,807,906,754,467,117,260,720,592,306,682,510,563,866,137,760,996,752,910,506,69,17,276,543,495,348,917,578,713,78,332,472,303,399,67,734,73,785,420,283,339,404,839,187,362,239,811,527,810,678,315,289,714,355,704,921,330,814,801,606,21,463,481,95,267,409,351,163,28,44,58,350,401,349,949,491,724,122,515,575,191,295,955,39,97,375,733,195,835,374,960,673,348,11,249,884,852,954,797,766,942,55,992,899,251,726,697,602,708,169,843,521,20,587,629,936,284,179,450,443,107,459,98,39,158,977,445,734,911,671,704,511,36,131,764,863,616,535,276,986,11,23,363,100,387,924,648,613,794,390,616,480,327,994,816,42,966,685,454,286,270,963,584,547,114,335,257,143,938,595,849,934,817,224,321,653,310,372,166,193,444,806,941,838,796,126,49,730,901,790,264,699,825,593,12,985,120,327,499,395,715,935,861,810,318,567,795,782,910,138,100,111,545,994,517,370,262,560,455,819,449,8,884,942,301,535,973,43,886,692,853,158,637,733,178,932,175,272,540,446,182,515,498,524,258,882,870,521,194,949,856,631,873,298,195,776,136,857,416,998,60,75,508,238,707,719,847,648,453,457,339,400,139,734,155,336,827,265,926,687,233,161,552,701,261,485,671,659,765,382,186,891,718,236,381,428,340,273,788,326,172,940,731,265,62,50,340,194,792,411,873,92,309,862,28,553,328,742,72,118,636,703,47,254,410,412,19,199,181,81,26,262,935,752,824,798,995,633,875,296,882,493,14,841,463,594,162,123,470,825,445,423,328,439,580,660,486,534,723,804,227,749,790,343,618,245,954,522,517,761,254,844,655,96,181,900,514,605,399,807,24,143,665,914,233,722,393,542,948,398,96,917,930,774,572,569,110,832,949,330,495,832,603,400,996,587,962,980,964,131,338,886,674,660,802,836,432,715,40,220,687,46,792,416,57,53,612,548,232,668,432,802,114,146,155,809,266,581,899,152,589,459,567,301,278,413,638,954,452,825,222,353,167,597,12,21,865,11,88,453,519,5,398,108,56,853,443,894,203,950,586,145,259,168,65,74,310,136,296,965,349,57,330,493,820,276,271,251,702,322,13,242,165,977,689,184,625,657,949,292,154,530,939,930,759,235,729,341,340,156,782,246,423,162,523,611,644,96,971,984,396,961,182,671,92,746,375,324,616,288,936,953,977,592,968,140,141,581,425,691,800,837,860,763,520,669,581,21,700,95,978,222,53,102,407,461,761,297,851,788,616,7,716,976,86,171,164,395,121,215,723,358,813,469,659,285,449,726,202,183,532,206,611,943,166,674,882,192,360,896,600,640,691,90,547,725,732,660,613,548,804,931,542,276,867,119,748,555,330,812,438,551,500,943,673,986,923,413,558,829,18,263,495,105 ];
		
		
		
		
		
		
		public static function test():void
		{
			var objects:Array = []; 
			objects.push({letter:"a", number:5  }); 
			objects.push({letter:"Blake", number:8 }); 
			objects.push({letter:"b", number:5 }); 
			objects.push({letter:"Dante", number:2 } ); 
			objects.push({letter:"Wang", number:9 } );
			objects.push({letter:"c", number:5 }); 
			objects.push({letter:"Blake", number:8 }); 
			objects.push({letter:"d", number:5 }); 
			objects.push({letter:"Dante", number:2 } ); 
			objects.push({letter:"Wang", number:9 } );
			objects.push({letter:"e", number:5 }); 
			objects.push({letter:"Blake", number:8 }); 
			objects.push({letter:"f", number:5 }); 
			objects.push({letter:"Dante", number:2 } ); 
			objects.push({letter:"Wang", number:9 } );
			objects.push({letter:"g", number:5 }); 
			objects.push({letter:"Blake", number:8 }); 
			objects.push({letter:"h", number:5 }); 
			objects.push({letter:"i", number:5 });
			objects.push({letter:"Dante", number:2 } ); 
			objects.push({letter:"Wang", number:9 } );
			objects.push({letter:"Blake", number:8 }); 
			objects.push({letter:"j", number:5 }); 
			objects.push({letter:"Dante", number:2 } ); 
			objects.push({letter:"Wang", number:9 } );
			objects.push({letter:"k", number:5 }); 
			objects.push({letter:"Blake", number:8 }); 
			objects.push({letter:"l", number:5 }); 
			objects.push({letter:"m", number:5 });
			objects.push({letter:"Dante", number:2 } ); 
			objects.push({letter:"Wang", number:9 } );
			objects.push({letter:"n", number:5 });
			objects.push({letter:"Blake", number:8 }); 
			objects.push({letter:"Dante", number:2 } ); 
			objects.push({letter:"Wang", number:9});
			
		
			
			
			
			var bornFunc:Function = function(a:Object, b:Object):*
			{
			   if (int(a.number) < int(b.born))
			   return -1
			   if (int(a.born) > int(b.born))
			   return 1
			    if (int(a.born) == int(b.born))
			   return 0
			}
			//objects.sort(
			//objects.sort(bornFunc);
			//objectsVector.sort(bornFunc)
	
			//objects.sort(bornFunc);
			//objectsVector.sort(bornFunc)
			
			
			//traceAll(objects);
			//traceAll(objectsVector);
		}
	}

}