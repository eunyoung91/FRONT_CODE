<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- #Include Virtual = "/library/include/reload/favicon.asp" -->
	<title><%=gMGC_Campus_Title%></title>
	<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
	<!-- #Include Virtual = "/library/include/reload/css_table.asp" -->	
	<!-- #include virtual="/public/jquery.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->

	<link rel="stylesheet" type="text/css" href="web.css">
</head>
<body>

<div id="wrapper">

    <!--  �ֻ�ܸ޴�//-->
    <!--#include virtual="/library/include/common/top.asp" -->
    <!--  //�ֻ�ܸ޴�-->

    <div id="header" class="<%=GetCampusColorType()%>">

	<!--��� �п��ΰ� �� ���� ��//  -->
	<!--#include virtual="/library/include/common/top_campus_tab.asp" -->
	<!-- //��� �п��ΰ� �� ���� �� -->

	<!--  ��� ��޴�//-->
	<!--#include virtual="/library/include/common/top_campus_detail_menu.asp" -->
	<!-- //��� ��޴� -->

    </div>
    <!-- // header -->
    <div id="container">
        <div id="div_cont">
			<div id="div_full" class="div_con taL">

				<div class="top_wrap">
					<div class="con">
						<div class="act_wrap">
							<div class="img_wrap">
								<img class="act01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/top_txt01.png" alt="" />
								<img class="act02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/top_txt02.png" alt="" />
							</div>
							<img class="act03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/top_img01.png" alt="" />
						</div>
					</div>
				</div>

				<div class="fix_menu_wrap">
					<ul class="fix_menu">
						<li class="on"><span>���� ���!<br>�� ����ΰ�?</span></li>
						<li><span>��� �غ� TIP</span></li> 
						<li><span>��� ���α׷�</span></li> 
					</ul>
				</div>

				<div class="fix_contents on contents01">
					<div id="con1" class="div_con1">
						<div class="taC">
							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con01_title01.png" alt="���� ���! �� ����ΰ�!" />
							</div>
							<div class="img_wrap mt50">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con01_img01.png" alt="" />
							</div>
							<div class="img_wrap mt30">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con01_img02.png" alt="" />
							</div>
						</div>
					</div>
					<div id="con2" class="div_con2">
						<div class="con taC">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con02_title01.png" alt="" />
							</div>
							<div class="img_wrap mt60">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con02_img01.png" alt="" />
							</div>
							<div class="img_wrap mt110">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con02_img02.png" alt="" />
							</div>
						</div>
					</div>
				</div>

				<div class="fix_contents contents02">
					<div id="con3" class="div_con3">
						<div class="taC">
							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con03_title01.png" alt="2025�г⵵ ������� �����ο�����" />
							</div>
							<div class="table_area">
								<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt60">
									<thead>
										<tr>
											<th rowspan="2" colspan="2">����</th>
											<th colspan="2" class="brn">2026�г⵵ �����ο�</th> 
										</tr>
										<tr>
											<th>���� ����</th>
											<th class="brn">��� ���� 44�� ����</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th rowspan="5">����</th>
											<th>�л�������(����)</th>
											<td>
												155,493(56.4%) 
											</td>
											<td class="brn">
												21,949(27.8%)
											</td>
										</tr>
										<tr>
											<th>�л�������(����)</th>
											<td>
												81,373(29.5%) 

											</td>
											<td class="brn">
												36,209(45.9%)

											</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>
												12,559(4.6%) 

											</td>
											<td class="brn">
												12,559(15.9%)

											</td>
										</tr>
										<tr>
											<th>�Ǳ�/��������</th>
											<td>
												21,865(7.9%) 

											</td>
											<td class="brn">
												6,178(7.8%)

											</td>
										</tr>
										<tr>
											<th>��Ÿ</th>
											<td>
												4,574(1.7%) 

											</td>
											<td class="brn">
												1,975(2.5%)

											</td>
										</tr>
										<tr>
											<th colspan="2">���� �Ұ�</th>
											<td>
												275,864(100.0%) 

											</td>
											<td class="brn">
												70,717(100.0%)

											</td>
										</tr>
									</tbody> 
								</table> 
							</div>
							<p class="p_text">
								�� �ѱ����б�������ȸ���� 2024. 7. 30(ȭ)�� ��ǥ�� 2026�г⵵ �����������������ȹ �ֿ���� ����
							</p>
						</div>
					</div>
					<div id="con4" class="div_con4">
						<div class="taC">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con05_title01.png" alt="�л��� Down, ��� Up!" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con05_sub_title01.png" alt="���к� ������� �л��� ������� �� ���� �ݿ� ���" />
							</div>

							<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt50">
								<colgroup> 
								<col width="*">
								<col width="10%" span="9">	                        
								</colgroup>
								<thead>
									<tr>
										<th rowspan="2">����</th>
										<th colspan="9" class="brn">�л��� ���� ��� �� ����</th> 
									</tr>
									<tr>
										<th>1��� </th>
										<th>2��� </th>
										<th>3��� </th>
										<th>4��� </th>
										<th>5��� </th>
										<th>6��� </th>
										<th>7��� </th>
										<th>8��� </th>
										<th class="brn">9��� </th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>���縯��</td>
										<td>100</td>
										<td>99.5</td>
										<td>99</td>
										<td>98.5</td>
										<td>98</td>
										<td>97.5</td>
										<td>97</td>
										<td>90</td>
										<td class="brn">70</td>
									</tr>
									<tr>
										<td>����</td>
										<td>100</td>
										<td>99</td>
										<td>97</td>
										<td>95</td>
										<td>90</td>
										<td>85</td>
										<td>60</td>
										<td>20</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>��ϴ�</td>
										<td>150</td>
										<td>145</td>
										<td>140</td>
										<td>135</td>
										<td>130</td>
										<td>120</td>
										<td>100</td>
										<td>50</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>�����</td>
										<td>100</td>
										<td>98</td>
										<td>96</td>
										<td>94</td>
										<td>92</td>
										<td>88</td>
										<td>80</td>
										<td>70</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>�ܱ���<br>(����/õ��)</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>97</td>
										<td>96</td>
										<td>95</td>
										<td>70</td>
										<td>40</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>������</td>
										<td>10.00</td>
										<td>9.97</td>
										<td>9.93</td>
										<td>9.90</td>
										<td>9.80</td>
										<td>8.70</td>
										<td>7.00</td>
										<td>6.00</td>
										<td class="brn">5.00</td>
									</tr>
									<tr>
										<td>�λ��</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>97</td>
										<td>96</td>
										<td>95</td>
										<td>90</td>
										<td>60</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>����</td>
										<td>100</td>
										<td>98</td>
										<td>96</td>
										<td>94</td>
										<td>90</td>
										<td>80</td>
										<td>60</td>
										<td>40</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>�����</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>97</td>
										<td>96</td>
										<td>95</td>
										<td>90</td>
										<td>80</td>
										<td class="brn">60</td>
									</tr>
									<tr>
										<td>������б����</td>
										<td>1,000</td>
										<td>990</td>
										<td>980</td>
										<td>970</td>
										<td>960</td>
										<td>800</td>
										<td>500</td>
										<td>250</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>����ø���</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>97</td>
										<td>96</td>
										<td>90</td>
										<td>80</td>
										<td>70</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>���￩��</td>
										<td>20</td>
										<td>19</td>
										<td>18</td>
										<td>17</td>
										<td>16</td>
										<td>14</td>
										<td>11</td>
										<td>8</td>
										<td class="brn">5</td>
									</tr>
									<tr>
										<td>������</td>
										<td>1,000</td>
										<td>990</td>
										<td>980</td>
										<td>950</td>
										<td>900</td>
										<td>800</td>
										<td>700</td>
										<td>500</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>������</td>
										<td>100.00</td>
										<td>98.75</td>
										<td>97.50</td>
										<td>96.25</td>
										<td>95.00</td>
										<td>93.75</td>
										<td>82.50</td>
										<td>78.75</td>
										<td class="brn">75.00</td>
									</tr>
									<tr>
										<td>������</td>
										<td>100</td>
										<td>98.9</td>
										<td>97.8</td>
										<td>96.6</td>
										<td>95.4</td>
										<td>90.4</td>
										<td>85.9</td>
										<td>81.9</td>
										<td class="brn">75.0</td>
									</tr>
									<tr>
										<td>���Ǵ�</td>
										<td>10.0</td>
										<td>9.5</td>
										<td>9.0</td>
										<td>8.5</td>
										<td>8.0</td>
										<td>7.0</td>
										<td>5.0</td>
										<td>3.0</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>���Ѵ�</td>
										<td>100</td>
										<td>99</td>
										<td>97.5</td>
										<td>96</td>
										<td>94.5</td>
										<td>91.5</td>
										<td>88.5</td>
										<td>82</td>
										<td class="brn">68</td>
									</tr>
									<tr>
										<td>���ִ�</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>95</td>
										<td>90</td>
										<td>85</td>
										<td>75</td>
										<td>65</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>������</td>
										<td>100</td>
										<td>98</td>
										<td>96</td>
										<td>94</td>
										<td>92</td>
										<td>90</td>
										<td>70</td>
										<td>40</td>
										<td class="brn">10</td>
									</tr>
									<tr>
										<td>���ϴ�</td>
										<td>10.0</td>
										<td>9.6</td>
										<td>9.5</td>
										<td>9.5</td>
										<td>9.4</td>
										<td>9.4</td>
										<td>7.2</td>
										<td>3.6</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>�߾Ӵ�</td>
										<td>10.00</td>
										<td>9.96</td>
										<td>9.92</td>
										<td>9.88</td>
										<td>9.84</td>
										<td>9.80</td>
										<td>9.60</td>
										<td>8.00</td>
										<td class="brn">4.00</td>
									</tr>
									<tr>
										<td>�ѱ����д�</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>97</td>
										<td>96</td>
										<td>94</td>
										<td>80</td>
										<td>60</td>
										<td class="brn">25</td>
									</tr>
									<tr>
										<td>�ѽŴ�</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>97</td>
										<td>96</td>
										<td>95</td>
										<td>94</td>
										<td>80</td>
										<td class="brn">50</td>
									</tr>
									<tr>
										<td>ȫ�ʹ�<br>(����/����)</td>
										<td>100</td>
										<td>99</td>
										<td>97</td>
										<td>94</td>
										<td>90</td>
										<td>85</td>
										<td>60</td>
										<td>30</td>
										<td class="brn">0</td>
									</tr>
								</tbody>
							</table>

							<p class="p_text">
								�� 2026�г⵵ ���к� �������������⺻��ȹ ����
							</p>
						</div>
					</div>
					<div id="con5" class="div_con5">
						<div class="taC">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con06_title01.png" alt="���� �����з� ���ؿ�ȭ" />
							</div>
							<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt60">
								<colgroup>
								<col width="20%">
								<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>����</th>
										<th class="brn">���� �����з� ���� ������ ����</th>
									</tr>
									
								</thead>
								<tbody>
									<tr>
										<th>
											�ι�/�ڿ��迭<br>(19�� ����)
										</th>
										<td class="brn taL pl15">
											���縯��(��ȣ/����/�ǿ��� ����), ������, ����, �����, �ܱ���(����), ����, �����, ������б����, ����ø���, ���￩��,<br>
											������, ���Ѵ�, ���ִ�(����/���� ����), ������(����), ������, ���ϴ�(�ǿ��� ����), �ѱ����д�, �ѱ����������, �ѽŴ�											
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div id="con6" class="div_con6">
						<div class="taC">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con07_title01.png" alt="���к� ���� ���� ����" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con07_sub_title01.png" alt="�ι�" />
							</div>

							<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt30">
								<colgroup>
									<col width="15%" span="2"> 
									<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>���� �� </th>
										<th>��� </th>
										<th>���� </th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>4 </td>
										<td>��8 </td>
										<td class="taL brn pl15">����� </td>
									</tr>
									<tr>
										<td rowspan="4">3 </td>
										<td>��4 </td>
										<td class="taL brn pl15">�����(���ǿ�-�ι�) </td>
									</tr>
									<tr>
										<td>��6 </td>
										<td class="taL brn pl15">���հ���, �߾Ӵ� </td>
									</tr>
									<tr>
										<td>��7 </td>
										<td class="taL brn pl15">������, �λ��(�濵), �Ѿ�� </td>
									</tr>
									<tr>
										<td>��8 </td>
										<td class="taL brn pl15">ȫ�ʹ� </td>
									</tr>
									<tr>
										<td rowspan="5">2 </td>
										<td>��3 </td>
										<td class="taL brn pl15">�ѱ��ܴ�(L&amp;D�к�, L&amp;T�к�) </td>
									</tr>
									<tr>
										<td>��4 </td>
										<td class="taL brn pl15">������(��������), �λ��(�ι�), �ѱ��ܴ�(����) </td>
									</tr>
									<tr>
										<td>��5 </td>
										<td class="taL brn pl15">�Ǳ���, �����, ������(��ǻ�� AI�к� ����),���Ǵ�, ������, ������, ��ȭ���� </td>
									</tr>
									<tr>
										<td>��6 </td>
										<td class="taL brn pl15">�����(����), ���δ�, ��ϴ�, �ѱ��װ��� </td>
									</tr>
									<tr>
										<td>��7 </td>
										<td class="taL brn pl15">��������, ��������, ���ſ���, ������(�̷�) </td>
									</tr>
									<tr>
										<td>1 </td>
										<td>3�̳� </td>
										<td class="taL brn pl15">��õ��, �����(ü��), ������ </td>
									</tr>
								</tbody>
							</table>

							
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con07_sub_title02.png" alt="�ڿ�" />
							</div>
							
							<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt30">
								<colgroup>
									<col width="15%" span="2"> 
									<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>���� �� </th>
										<th>��� </th>
										<th>���� </th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="3">4 </td>
										<td>��5 </td>
										<td class="taL brn pl15">��ȭ����(�ǿ�), �߾Ӵ�(����(2���� ���)/����) </td>
									</tr>
									<tr>
										<td>��6 </td>
										<td class="taL brn pl15">���ִ�(2���� ���)(����), ��ȭ����(����) </td>
									</tr>
									<tr>
										<td>��8 </td>
										<td class="taL brn pl15">����� </td>
									</tr>
									<tr>
										<td rowspan="6">3 </td>
										<td>��1 </td>
										<td class="taL brn pl15">��õ��(�ǿ�), ������(�̷�-�ǿ�), ���ϴ�(�ǿ�) </td>
									</tr>
									<tr>
										<td>��4 </td>
										<td class="taL brn pl15">���縯��(�ǿ�), �Ǳ���(���ǿ�), �����(�ǿ�/���ǿ�/ġ�ǿ�/����), ��ϴ�(�ǿ�/ġ�ǿ�), <br>�ܱ���(õ��-�ǿ�), ������(����), �λ��(�ǿ�/����), ���հ���(�ǿ�(2���� ���)), ������(����) </td>
									</tr>
									<tr>
										<td>��5 </td>
										<td class="taL brn pl15">���縯��(����), ��ϴ�(���ǿ�, ����), �����(����-����), �ܱ���(õ��-ġ�ǿ�), ��������(����), <br>���հ���(����/�۷ι�/�ݵ�ü/����Ʈ����,������), ���ִ�(����), ��ȭ����(��ũ��ư�к�) </td>
									</tr>
									<tr>
										<td>��6 </td>
										<td class="taL brn pl15">���հ���(�ڿ�����/��������/���а迭/�Ǽ�ȯ��), �߾Ӵ� </td>
									</tr>
									<tr>
										<td>��7 </td>
										<td class="taL brn pl15">���縯��(��ȣ), ������, �Ѿ�� </td>
									</tr>
									<tr>
										<td>��8 </td>
										<td class="taL brn pl15">ȫ�ʹ� </td>
									</tr>
									<tr>
										<td rowspan="4">2 </td>
										<td>��4 </td>
										<td class="taL brn pl15">��õ��(Ŭ�������), ������(���������к�) </td>
									</tr>
									<tr>
										<td>��5 </td>
										<td class="taL brn pl15">��õ��(���̿�������), �Ǳ���, ��ϴ�(��ȣ, IT), �����, ������(�ڿ���/��ǻ��/AI�к�), �λ��(�ڿ�),<br> ������, ������, ���Ǵ�, ������(�̷�_��ȣ), ��ȭ���� </td>
									</tr>
									<tr>
										<td>��6 </td>
										<td class="taL brn pl15">��ϴ�(�ڿ�), �����(����), ���δ�, �߾Ӵ�(�ٺ�ġ), �ѱ��װ��� </td>
									</tr>
									<tr>
										<td>��7 </td>
										<td class="taL brn pl15">��������, ��������, ���ſ���, ������(�̷�_�ڿ�) </td>
									</tr>
									<tr>
										<td rowspan="2">1 </td>
										<td>3�̳� </td>
										<td class="taL brn pl15">��õ��, ������, �ѱ��ܴ�(�۷ι�) </td>
									</tr>
									<tr>
										<td>4�̳� </td>
										<td class="taL brn pl15">ȫ�ʹ�(����) </td>
									</tr>
								</tbody>
							</table>
							<p class="p_text">
								�� 2026�г⵵ ���к� �������������⺻��ȹ ����
							</p>
						</div>
					</div>
				</div>

				<div class="fix_contents contents03">
					<div id="con7" class="div_con7">
						<div class="taC">
							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con08_title01.png" alt="" />
							</div>
							<div class="img_wrap mt65">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con08_img01.png" alt="" />
								<div class="link_area">
									<a class="a_link btn01" href="javascript:void(0);" data-open="layerOpen" alt="layer01">�հݼ��� �ڼ��� ����</a>
								</div>

								<div id="layer01" class="layer layer_popup">
									<div class="close_btn"><span>&#10005;</span></div>
									<div class="img_wrap">
										<h3>
											2026�г⵵ �ް����͵� ������ǰ�� ���� ��Ȳ �� ��õ ����
										</h3>
										<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4">
											<colgroup>
												<col width="4%" span="2">
												<col width="5%" span="9">
												<col width="4%" span="1">
												<col width="*">
											</colgroup>
											<thead>
												<tr>
													<th colspan="2" rowspan="2">����</th>
													<th rowspan="2">����</th>
													<th colspan="2">����</th>
													<th colspan="2">����</th>
													<th colspan="2">���</th>
													<th colspan="2">�����</th>
													<th rowspan="2">��õ<br>���</th>
													<th rowspan="2">��õ �б� �� �а�</th>
												</tr>
												<tr>
													<th>���� </th>
													<th>���� </th>
													<th>�п�(��) </th>
													<th>��ü </th>
													<th>�п�(��) </th>
													<th>��ü </th>
													<th>�п�(��) </th>
													<th>��ü </th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1ȸ </td>
													<td>3�� </td>
													<td>A�� </td>
													<td>100 </td>
													<td>90.7 </td>
													<td>33/170 </td>
													<td>409/2448 </td>
													<td>63.8 </td>
													<td>66.5 </td>
													<td>80.6 </td>
													<td>83.1  </td>
													<td>S </td>
													<td class="taL">�Ǿ��а迭(�ǿ�, ġ�ǿ�, ���ǿ�, ���ǿ�, ����), �����, ������ </td>
												</tr>
												<tr>
													<td>2ȸ </td>
													<td>4�� </td>
													<td>B�� </td>
													<td>100 </td>
													<td>88.6 </td>
													<td>3/33 </td>
													<td>48/368 </td>
													<td>73.9 </td>
													<td>75.3 </td>
													<td>90.9 </td>
													<td>87.0  </td>
													<td>S </td>
													<td class="taL">�Ǿ��а迭(�ǿ�, ġ�ǿ�, ���ǿ�, ���ǿ�, ����), �����, ������ </td>
												</tr>
												<tr>
													<td>3ȸ </td>
													<td>5�� </td>
													<td>A�� </td>
													<td>100 </td>
													<td>93 </td>
													<td>5/103 </td>
													<td>33/605 </td>
													<td>27.7 </td>
													<td>60.3 </td>
													<td>95.1 </td>
													<td>94.5  </td>
													<td>S </td>
													<td class="taL">�Ǿ��а迭(�ǿ�, ġ�ǿ�, ���ǿ�, ���ǿ�, ����), �����, ������ </td>
												</tr>
												<tr>
													<td>4ȸ </td>
													<td>6�� </td>
													<td>B�� </td>
													<td>100 </td>
													<td>84.2 </td>
													<td>8/21 </td>
													<td>38/194 </td>
													<td>78.7 </td>
													<td>73 </td>
													<td>61.9 </td>
													<td>80.2  </td>
													<td>S </td>
													<td class="taL">�Ǿ��а迭(�ǿ�, ġ�ǿ�, ���ǿ�, ���ǿ�, ����), �����, ������ </td>
												</tr>
												<tr>
													<td>5ȸ </td>
													<td>7�� </td>
													<td>A�� </td>
													<td>100 </td>
													<td>79.9 </td>
													<td>17/67 </td>
													<td>174/503 </td>
													<td>45 </td>
													<td>66.9 </td>
													<td>74.6 </td>
													<td>65.3  </td>
													<td>M </td>
													<td class="taL">������, ����ø���, ���հ���, ��ȭ����, �߾Ӵ�(����), �ѱ��ܴ�(����), �Ѿ�� </td>
												</tr>
												<tr>
													<td>6ȸ </td>
													<td>8�� </td>
													<td>C�� </td>
													<td>100 </td>
													<td>66.7 </td>
													<td>3/4 </td>
													<td>39/78 </td>
													<td>68.6 </td>
													<td>63.5 </td>
													<td>25 </td>
													<td>50.0  </td>
													<td>A </td>
													<td class="taL">������, ����, �����(����), �����, ��������, ��������, ������, ���￩��, ���ſ���, ������, ���Ѵ�, ������(�̷�), ������, �߾Ӵ�(�ٺ�ġ), �ѱ����д�, �ѱ����������, �ѱ��ܴ�(�۷ι�), �ѽŴ�, ȫ�ʹ�(����) </td>
												</tr>
												<tr>
													<td>7ȸ </td>
													<td>9�� </td>
													<td>D�� </td>
													<td>100 </td>
													<td>68.2 </td>
													<td>11/18 </td>
													<td>128/260 </td>
													<td>71.4 </td>
													<td>69.1 </td>
													<td>36.1 </td>
													<td>46.5  </td>
													<td>A </td>
													<td class="taL">������, ����, �����(����), �����, ��������, ��������, ������, ���￩��, ���ſ���, ������, ���Ѵ�, ������(�̷�), ������, �߾Ӵ�(�ٺ�ġ), �ѱ����д�, �ѱ����������, �ѱ��ܴ�(�۷ι�), �ѽŴ�, ȫ�ʹ�(����) </td>
												</tr>
											</tbody>
										</table>
									</div> 
								</div>
							</div>
						</div>
					
					</div>
					<div id="con8" class="div_con8">
						<div class="taC">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con09_title01.png" alt="" />
							</div>
							<div class="img_wrap mt45">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con09_img01.png" alt="" />
							</div>
							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con09_img02.png" alt="" />
							</div>
						</div>
					</div>
					
				</div>
			</div>
        </div>
    </div>
    <!-- container End -->
</div>
<!-- wrapper End -->
<!--#include virtual="/library/include/common/bottom.asp" -->

<script src="/public/js/TweenMax.min.js"></script> 
<script type="text/javascript">
	$(document).ready(function(){
		titleMotion();

		$(".fix_menu li").on('click', function(e){
			var idx = $(this).index()+1;

			$(".fix_menu li").removeClass("on");
			$(this).addClass("on");

			$(".fix_contents").removeClass("on");
			$(".contents0"+idx).addClass("on");

			var _top = $(".contents0"+idx),
				$target = _top.offset().top;

			e.preventDefault();
			$('html, body').animate({
				scrollTop: $target
			}, 500);

		});

        $('[data-open="layerOpen"]').on("click", function(){
			var temp = $(this).attr("alt");
			console.log(temp);
			$("#"+temp).addClass("open");
			$("#"+temp).slideDown(300);
			$(".modal_dim").fadeIn();
		});
		$(".modal_dim, .layer .close_btn").click(function () {
			$(".modal_dim").fadeOut();
			$(".layer").removeClass("open");
			$("body").removeClass("hid");
		});

	});

	function fix_menu_move() {
		var qstart = $(".top_wrap").height() + 100;  

		if ($(this).scrollTop() > qstart) {
			$('.fix_menu_wrap').css({
				top: '0px', "position": "fixed"
			});
		}else {
			$('.fix_menu_wrap').css({ 
				top: '770px', "position": "absolute"
			});
		}
	}
	function titleMotion(){
		var motion1 = new TimelineMax({delay:0.5,repeat:0})
			motion1.to(".act02", 0.5, {opacity:1, left:0});
		var motion = new TimelineMax({delay:0.5,repeat:0})
			motion.to(".act01", 0.5, {opacity:1});
		var motion2 = new TimelineMax({delay:1.2,repeat:0})
			motion2.to(".act03", 0.5, {opacity:1});
	}

    $(window).on({
		"load":function(){
			var temp_s = $('#div_full').offset().top;
			$('html, body').animate({
				scrollTop : temp_s
			},500);

		},
		"resize":function(){},
		"scroll":function(){ fix_menu_move();}
	});
</script>
</body>
</html>
