<div class="lecture wide">
    <div class="lec_info">
        <div class="top_tit mt100">
            <p class="sub_tit">���� ����� ���� ������ ����</p>
            <h2 class="main_tit">Ǯü���� Ŀ��ŧ��</h2>
            <p class="tit_txt mt40">
                �� ���� ��� �ش�ȭ�� ���� <strong>������ ���� ���� ����</strong><br>
                �� ������ �������� �Խ� ���� ������ �� �м��� ���� <strong>������ �н� Ŀ��ŧ��</strong>

            </p>
        </div> 

        <!-- �����ü� -->
        <h3 class="lec_info_title mt80">�����ü�</h3>  
        <h4 class="lec_sub_title">���غ� ���� ����</h4> 
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="12.5%" span="8">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="3">����</th>
                    <th colspan="3">����</th>
                    <th rowspan="2" class="brL">����</th>
                    <th>Ž��</th>
                </tr>
                <tr> 
                    <th>����</th>
                    <th>����</th>
                    <th>���͸�ü/<br>ȭ�����۹�</th>
                    <th>���Х�</th>
                    <th>���Х�</th>
                    <th>Ȯ�������/<br>������/����</th>
                    <th>��ȸŽ��/<br>����Ž��</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <td>2T</td>
                    <td>2T</td>
                    <td>2T</td>
                    <td>2T</td>
                    <td>2T</td>
                    <td>2T</td>
                    <td>2T</td> 
                    <td>6T</td> 
                </tr>
            </tbody>
        </table> 
        <p class="gray_box bn">
            �� ���� ���� �Ǵ� ���� TEST�� ���� ���κ� ���� ����<br>
            �� �Խ� ���� ���Ӱ��� �� ��� ���� �ʿ� ���� ���� ���� ���� 
        </p>

        <h4 class="lec_sub_title mt50">�׸�&middot;��ȭ ����</h4> 
        <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0208" Then '���� %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="12.5%" span="8">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="3">����</th>
                    <th colspan="3">����</th>
                    <th rowspan="2" class="brL">����</th>
                    <th>���</th>
                </tr> 
                <tr>
                    <th>����</th>
                    <th>����</th>
                    <th>���͸�ü/<br>ȭ�����۹�</th>
                    <th>���Х�</th>
                    <th>���Х�</th>
                    <th>Ȯ�������/<br>������/����</th>
                    <th>�ι����/<br>�������</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <td>6T</td>
                    <td>6T</td>
                    <td>2T</td>
                    <td>6T</td>
                    <td>6T</td>
                    <td>6T</td>
                    <td>6T</td>
                    <td>3T</td> 
                </tr>
            </tbody>
        </table> 
         
        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0213" Then '���� %> 
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="14.33%" span="7">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">����</th>
                    <th colspan="3">����</th>
                    <th rowspan="2" class="brL">����</th>
                    <th>���</th>
                </tr> 
                <tr>
                    <th>����</th>
                    <th>����</th> 
                    <th>���Х�</th>
                    <th>���Х�</th>
                    <th>������</th>
                    <th>�ι����/<br>�������</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <td>6T</td>
                    <td>6T</td> 
                    <td>6T</td>
                    <td>6T</td>
                    <td>6T</td>
                    <td>6T</td>
                    <td>3T</td> 
                </tr>
            </tbody>
        </table>
        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0253" Then '�д� %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="14%" span="5">
                <col width="15%" span="2">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">����</th>
                    <th colspan="3">����</th>
                    <th rowspan="2" class="brL">����</th>
                    <th>���</th>
                </tr> 
                <tr>
                    <th>����</th>
                    <th>����</th>
                    <th>���Х�</th>
                    <th>���Х�</th>
                    <th>Ȯ�������/<br>������/����</th>
                    <th>�ι����/<br>�������</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <td>2T</td>
                    <td>2T</td>
                    <td>2T</td>
                    <td>2T</td>
                    <td>2T</td>
                    <td>2T</td>
                    <td>2T</td> 
                </tr>
            </tbody>
        </table>
        <% Else %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="12.5%" span="8">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="3">����</th>
                    <th colspan="3">����</th>
                    <th rowspan="2" class="brL">����</th>
                    <th>���</th>
                </tr> 
                <tr>
                    <th>����</th>
                    <th>����</th>
                    <th>���͸�ü/<br>ȭ�����۹�</th>
                    <th>���Х�</th>
                    <th>���Х�</th>
                    <th>Ȯ�������/<br>������/����</th>
                    <th>�ι����/<br>�������</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <td>6T</td>
                    <td>6T</td>
                    <td>2T</td>
                    <td>6T</td>
                    <td>6T</td>
                    <td>6T</td>
                    <td>6T</td>
                    <td>2T</td> 
                </tr>
            </tbody>
        </table>
        <% End If %>
        <p class="gray_box bn">
            �� �Խ� ���� ���Ӱ��� �� ��� ���� �ʿ� ���� ���� ���� ���� 
        </p>
        <!-- //�����ü� -->

        <!-- �ð�ǥ -->
        <h3 class="lec_info_title mt80">���� �ð�ǥ</h3>
        <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0208" Then '���� %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20 no_pd">
            <caption></caption>
            <colgroup>
                <col width="5%">
                <col width="11%">
                <col width="12%" span="7">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">����</th>
                    <th>��</th>
                    <th>ȭ</th>
                    <th>��</th>
                    <th>��</th>
                    <th>��</th> 
                    <th>��</th> 
                    <th>��</th> 
                </tr> 
            </thead>
            <tbody>
                <tr>
                    <th>1</th>
                    <th>08:10 ~ 09:50</th>
                    <td>���Х� -<br>Level 1</td>
                    <td>�ڱ��ֵ�<br>�н�</td>
                    <td>���Х� -<br>Level 3</td>
                    <td>�ڱ��ֵ�<br>�н�</td>
                    <td>�ڱ��ֵ�<br>�н�</td> 
                    <td rowspan="2" class="brL">������ ����</td> 
                    <td rowspan="2">
                        �ڱ��ֵ�<br>�н�<br>
                        (����)
                        <br><br>
                        ���<br>
                        08:50 / 12:50<br>
                        �� ���� 
                    </td> 
                </tr>
                <tr> 
                    <th>2</th>
                    <th>10:10 ~ 11:50</th> 
                    <td>�ڱ��ֵ�<br>�н�</td>
                    <td>���� -<br>Level 1</td>  
                    <td>������ -<br>Level 3</td>  
                    <td>���� -<br>Level 2</td>  
                    <td>���� -<br>Level 2</td>  
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="7">���� �Ļ�</td>
                </tr>
                <tr>
                    <th>3</th>
                    <th>13:10 ~ 14:50</th> 
                    <td colspan="7">�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>4</th>
                    <th>15:10 ~ 16:50</th> 
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>ȭ�����۹� -<br>Level 1</td>  
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>���Х� -<br>�׸�&middot;��ȭ</td>  
                    <td>������ -<br>�׸�&middot;��ȭ</td>
                    <td rowspan="2" class="brL">�ڱ��ֵ�<br>�н�</td> 
                    <td rowspan="2">
                        �ڱ��ֵ�<br>�н�<br>
                        (����)<br>
                        <br><br>
                        �Ͽ�<br>
                        18:00 / 22:00<br>
                        �� ���� 
                    </td> 
                </tr>
            
                <tr>
                    <th>5</th>
                    <th>17:10 ~ 18:00</th>  
                    <td>���� -<br>�׸�&middot;��ȭ</td>
                    <td>�ڱ��ֵ�<br>�н�</td>
                    <td>���� -<br>�׸�&middot;��ȭ</td>
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="7">���� �Ļ�</td>
                </tr>
                <tr> 
                    <th>6</th>
                    <th>18:50 ~ 20:50</th>
                    <td rowspan="2" >���</td> 
                    <td rowspan="2" colspan="4" class="brL">�ڱ��ֵ��н�</td>
                    <td rowspan="2">�ڱ��ֵ��н�<br>(����)</td>
                    <td rowspan="2">�ڱ��ֵ��н�<br>(����)</td>
                </tr>
                <tr> 
                    <th>7</th>
                    <th>21:00 ~ 22:00</th>
                </tr> 
            </tbody>
        </table> 
        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0210" Then '���� %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="8%">
                <col width="12%">
                <col width="16%" span="5">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">����</th>
                    <th>��</th>
                    <th>ȭ</th>
                    <th>��</th>
                    <th>��</th>
                    <th>��</th> 
                </tr> 
            </thead>
            <tbody>
                <tr>
                    <th>1</th>
                    <th>08:10 ~ 09:50</th>
                    <td>���Х� - Level 1</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���Х� - Level 3</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>2</th>
                    <th>10:10 ~ 11:50</th> 
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - Level 1</td>  
                    <td>������ - Level 3</td>  
                    <td>���� - Level 2</td>  
                    <td>���� - Level 2</td>  
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr>
                    <th>3</th>
                    <th>13:10 ~ 14:50</th> 
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>4</th>
                    <th>15:10 ~ 16:50</th> 
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>ȭ�����۹� -<br>Level 1</td>  
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>���Х� -<br>�׸�&middot;��ȭ</td>  
                    <td>������ -<br>�׸�&middot;��ȭ</td>  
                </tr>
              
                <tr>
                    <th>5</th>
                    <th>17:10 ~ 18:00</th>  
                    <td>���� - �׸�&middot;��ȭ</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - �׸�&middot;��ȭ</td>
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr> 
                    <th>6</th>
                    <th>19:10 ~ 20:50</th>
                    <td colspan="5">����, TEST</td> 
                </tr>
                <tr> 
                    <th>7</th>
                    <th>21:00 ~ 22:00</th>
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr> 
            </tbody>
        </table> 
        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0211" Then '�뷮�� %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="5%">
                <col width="11%">
                <col width="12%" span="7">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">����</th>
                    <th>��</th>
                    <th>ȭ</th>
                    <th>��</th>
                    <th>��</th>
                    <th>��</th> 
                    <th>��</th> 
                    <th>��</th> 
                </tr> 
            </thead>
            <tbody>
                <tr>
                    <th>1</th>
                    <th>08:10 ~ 09:50</th>
                    <td>���Х� - Level 1</td>
                    <td>�ڱ��ֵ�<br>�н�</td>
                    <td>���Х� - Level 3</td>
                    <td>�ڱ��ֵ�<br>�н�</td>
                    <td>�ڱ��ֵ�<br>�н�</td> 
                    <td rowspan="2" class="brL">������<br>DAY</td>
                    <td rowspan="2" class="brL">������<br>�ڱ��ֵ�<br>�н�<br><br>[��� �ð�]<br><br>08:50 / 12:50<br>�� ����</td>
                </tr>
                <tr> 
                    <th>2</th>
                    <th>10:10 ~ 11:50</th> 
                    <td>�ڱ��ֵ�<br>�н�</td>
                    <td>���� - <br>Level 1</td>  
                    <td>������ - Level 3</td>  
                    <td>���� - <br>Level 2</td>  
                    <td>���� -<br> Level 2</td>  
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="7">���� �Ļ�</td>
                </tr> 
                <tr>
                    <th>3</th>
                    <th>13:10 ~ 14:50</th>
                    <td colspan="5">�ڱ��ֵ��н�</td>
                    <td rowspan="3" class="brL" style="height: 200px;box-sizing: border-box;">
                        �ڱ��ֵ�<Br>�н�<br>
                        <br>
                        (~17:00���� �ǹ�)
                    </td>
                    <td rowspan="3" style="height: 200px;box-sizing: border-box;">
                        ������<br>�ڱ��ֵ�<br>�н�<br>
                        <br>
                        [�Ͽ� �ð�]<br>
                        <br>
                        17:00 / 20:50<br>�� ����
                    </td>
                </tr>
                <tr>
                    <th>4</th>
                    <th>15:10 ~ 16:50</th>
                    <td rowspan="3" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>ȭ�����۹� -<br>Level 1</td>
                    <td rowspan="3" class="brL">��ȸŽ�� /<br>����Ž��</td> 
                    <td>���Х� -<br>�׸�&middot;��ȭ</td>  
                    <td>������ -<br>�׸�&middot;��ȭ</td>  
                </tr>
                <tr>
                    <th rowspan="2">5</th>
                    <th rowspan="2">17:10 ~ 18:00</th> 
                    <td rowspan="2">���� -<br>�׸�&middot;��ȭ</td>
                    <td rowspan="2">�ڱ��ֵ�<br>�н�</td>
                    <td rowspan="2">���� -<br>�׸�&middot;��ȭ</td> 
                </tr>
                <tr>
                    <td colspan="2" class="brL">���� �Ļ�</td>
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                    <td rowspan="3" class="brL">
                        ������<br>�ڱ��ֵ�<br>�н�<br>
                        <br>
                        (~21:00����)
                    </td>
                    <td rowspan="3">
                        ������<br>�ڱ��ֵ�<br>�н�<br>
                        <br>
                        (~21:00����)
                    </td>
                </tr> 
                <tr>
                    <th>6</th>
                    <th>19:10 ~ 20:50</th>
                    <td rowspan="2" colspan="5" class="brL">
                        �ڱ��ֵ��н�
                    </td>
                </tr>
                <tr>
                    <th>7</th>
                    <th>21:00  ~ 22:00</th>
                </tr> 
            </tbody>
        </table>  

        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0213" Then '���� %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="8%">
                <col width="12%">
                <col width="16%" span="5">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">����</th>
                    <th>��</th>
                    <th>ȭ</th>
                    <th>��</th>
                    <th>��</th>
                    <th>��</th> 
                </tr> 
            </thead>
            <tbody>
                <tr>
                    <th>1</th>
                    <th>08:10 ~ 09:50</th>
                    <td>���Х� - Level 1</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���Х� - Level 3</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>2</th>
                    <th>10:10 ~ 11:50</th> 
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - Level 1</td>  
                    <td>������ - Level 3</td>  
                    <td>���� - Level 2</td>  
                    <td>���� - Level 2</td>  
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr>
                    <th>3</th>
                    <th>13:10 ~ 14:50</th> 
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>4</th>
                    <th>15:10 ~ 16:50</th> 
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>ȭ�����۹� -<br>Level 1</td>  
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>���Х� -<br>�׸�&middot;��ȭ</td>  
                    <td>������ -<br>�׸�&middot;��ȭ</td>  
                </tr>
              
                <tr>
                    <th>5</th>
                    <th>17:10 ~ 18:00</th>  
                    <td>���� - �׸�&middot;��ȭ</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - �׸�&middot;��ȭ</td>
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr> 
                    <th>6</th>
                    <th>19:10 ~ 20:50</th>
                    <td colspan="5">����, TEST</td> 
                </tr>
                <tr> 
                    <th>7</th>
                    <th>21:00 ~ 22:00</th>
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr> 
            </tbody>
        </table> 
        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0276" Then '���� %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="8%">
                <col width="12%">
                <col width="16%" span="5">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">����</th>
                    <th>��</th>
                    <th>ȭ</th>
                    <th>��</th>
                    <th>��</th>
                    <th>��</th> 
                </tr> 
            </thead>
            <tbody>
                <tr>
                    <th>1</th>
                    <th>08:10 ~ 09:50</th>
                    <td>���Х� - Level 1</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���Х� - Level 3</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>2</th>
                    <th>10:10 ~ 11:50</th> 
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - Level 1</td>  
                    <td>������ - Level 3</td>  
                    <td>���� - Level 2</td>  
                    <td>���� - Level 2</td>  
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr>
                    <th>3</th>
                    <th>13:10 ~ 14:50</th> 
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>4</th>
                    <th>15:10 ~ 16:50</th> 
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>ȭ�����۹� -<br>Level 1</td>  
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>���Х� -<br>�׸�&middot;��ȭ</td>  
                    <td>������ -<br>�׸�&middot;��ȭ</td>  
                </tr>
              
                <tr>
                    <th>5</th>
                    <th>17:10 ~ 18:00</th>  
                    <td>���� - �׸�&middot;��ȭ</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - �׸�&middot;��ȭ</td>
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr> 
                    <th>6</th>
                    <th>19:10 ~ 20:50</th>
                    <td colspan="5">����, TEST</td> 
                </tr>
                <tr> 
                    <th>7</th>
                    <th>21:00 ~ 22:00</th>
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr> 
            </tbody>
        </table> 
        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0251" Then '��õ %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="8%">
                <col width="12%">
                <col width="16%" span="5">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">����</th>
                    <th>��</th>
                    <th>ȭ</th>
                    <th>��</th>
                    <th>��</th>
                    <th>��</th> 
                </tr> 
            </thead>
            <tbody>
                <tr>
                    <th>1</th>
                    <th>08:10 ~ 09:50</th>
                    <td>���Х� - Level 1</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���Х� - Level 3</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>2</th>
                    <th>10:10 ~ 11:50</th> 
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - Level 1</td>  
                    <td>������ - Level 3</td>  
                    <td>���� - Level 2</td>  
                    <td>���� - Level 2</td>  
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr>
                    <th>3</th>
                    <th>13:10 ~ 14:50</th> 
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>4</th>
                    <th>15:10 ~ 16:50</th> 
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>ȭ�����۹� -<br>Level 1</td>  
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>���Х� -<br>�׸�&middot;��ȭ</td>  
                    <td>������ -<br>�׸�&middot;��ȭ</td>  
                </tr>
              
                <tr>
                    <th>5</th>
                    <th>17:10 ~ 18:00</th>  
                    <td>���� - �׸�&middot;��ȭ</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - �׸�&middot;��ȭ</td>
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr> 
                    <th>6</th>
                    <th>19:10 ~ 20:50</th>
                    <td colspan="5">����, TEST</td> 
                </tr>
                <tr> 
                    <th>7</th>
                    <th>21:00 ~ 22:00</th>
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr> 
            </tbody>
        </table> 
        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0253" Then '�д� %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="8%">
                <col width="12%">
                <col width="16%" span="5">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">����</th>
                    <th>��</th>
                    <th>ȭ</th>
                    <th>��</th>
                    <th>��</th>
                    <th>��</th> 
                </tr> 
            </thead>
            <tbody>
                <tr>
                    <th>1</th>
                    <th>08:10 ~ 09:50</th>
                    <td>���Х� - Level 1</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���Х� - Level 3</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>2</th>
                    <th>10:10 ~ 11:50</th> 
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - Level 1</td>  
                    <td>������ - Level 3</td>  
                    <td>���� - Level 2</td>  
                    <td>���� - Level 2</td>  
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr>
                    <th>3</th>
                    <th>13:10 ~ 14:50</th> 
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>4</th>
                    <th>15:10 ~ 16:50</th> 
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>ȭ�����۹� -<br>Level 1</td>  
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>���Х� -<br>�׸�&middot;��ȭ</td>  
                    <td>������ -<br>�׸�&middot;��ȭ</td>  
                </tr>
              
                <tr>
                    <th>5</th>
                    <th>17:10 ~ 18:00</th>  
                    <td>���� - �׸�&middot;��ȭ</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - �׸�&middot;��ȭ</td>
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr> 
                    <th>6</th>
                    <th>19:10 ~ 20:50</th>
                    <td colspan="5">����, TEST</td> 
                </tr>
                <tr> 
                    <th>7</th>
                    <th>21:00 ~ 22:00</th>
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr> 
            </tbody>
        </table> 
        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0255" Then '�ϻ� %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="8%">
                <col width="12%">
                <col width="16%" span="5">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">����</th>
                    <th>��</th>
                    <th>ȭ</th>
                    <th>��</th>
                    <th>��</th>
                    <th>��</th> 
                </tr> 
            </thead>
            <tbody>
                <tr>
                    <th>1</th>
                    <th>08:10 ~ 09:50</th>
                    <td>���Х� - Level 1</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���Х� - Level 3</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>2</th>
                    <th>10:10 ~ 11:50</th> 
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - Level 1</td>  
                    <td>������ - Level 3</td>  
                    <td>���� - Level 2</td>  
                    <td>���� - Level 2</td>  
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr>
                    <th>3</th>
                    <th>13:10 ~ 14:50</th> 
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>4</th>
                    <th>15:10 ~ 16:50</th> 
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>ȭ�����۹� -<br>Level 1</td>  
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>���Х� -<br>�׸�&middot;��ȭ</td>  
                    <td>������ -<br>�׸�&middot;��ȭ</td>  
                </tr>
              
                <tr>
                    <th>5</th>
                    <th>17:10 ~ 18:00</th>  
                    <td>���� - �׸�&middot;��ȭ</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - �׸�&middot;��ȭ</td>
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr> 
                    <th>6</th>
                    <th>19:10 ~ 20:50</th>
                    <td colspan="5">����, TEST</td> 
                </tr>
                <tr> 
                    <th>7</th>
                    <th>21:00 ~ 22:00</th>
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr> 
            </tbody>
        </table> 
        <% Else %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="8%">
                <col width="12%">
                <col width="16%" span="5">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">����</th>
                    <th>��</th>
                    <th>ȭ</th>
                    <th>��</th>
                    <th>��</th>
                    <th>��</th> 
                </tr> 
            </thead>
            <tbody>
                <tr>
                    <th>1</th>
                    <th>08:10 ~ 09:50</th>
                    <td>���Х� - Level 1</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���Х� - Level 3</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>2</th>
                    <th>10:10 ~ 11:50</th> 
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - Level 1</td>  
                    <td>������ - Level 3</td>  
                    <td>���� - Level 2</td>  
                    <td>���� - Level 2</td>  
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr>
                    <th>3</th>
                    <th>13:10 ~ 14:50</th> 
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr>
                <tr> 
                    <th>4</th>
                    <th>15:10 ~ 16:50</th> 
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>ȭ�����۹� -<br>Level 1</td>  
                    <td rowspan="2" class="brL">��ȸŽ�� /<br>����Ž��</td>
                    <td>���Х� -<br>�׸�&middot;��ȭ</td>  
                    <td>������ -<br>�׸�&middot;��ȭ</td>  
                </tr>
              
                <tr>
                    <th>5</th>
                    <th>17:10 ~ 18:00</th>  
                    <td>���� - �׸�&middot;��ȭ</td>
                    <td>�ڱ��ֵ��н�</td>
                    <td>���� - �׸�&middot;��ȭ</td>
                </tr>
                <tr>
                    <th colspan="2">����</th>
                    <td colspan="5">���� �Ļ�</td>
                </tr>
                <tr> 
                    <th>6</th>
                    <th>19:10 ~ 20:50</th>
                    <td colspan="5">����, TEST</td> 
                </tr>
                <tr> 
                    <th>7</th>
                    <th>21:00 ~ 22:00</th>
                    <td colspan="5">�ڱ��ֵ��н�</td> 
                </tr> 
            </tbody>
        </table> 
		<% End If %>
        <p class="gray_box bn">
            �� �� �ð�ǥ�� �����̸�, �п� �л������� ���� ����� �� ����
        </p>
        <!-- //�ð�ǥ -->

        <!-- Ŀ��ŧ�� -->
        <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0251" Then '��õ %>
        <% Else %>
        <h3 class="lec_info_title mt80">Ŀ��ŧ��</h3>   
        <h4 class="lec_sub_title">����</h4>
        <p class="taL mt15 fz17">���غ� ���� ����</p> 
        <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0213" Then '���� %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="20%">
                <col width="20%">
                <col width="*">
            </colgroup>
            <thead> 
                <tr>
                    <th>����</th>
                    <th>����</th>
                    <th>Ŀ��ŧ��</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <th>���� ���ǰ��<br>(Level 1~2)</th>
                    <td>
                        ����<br>
                        ����<br>
                        ���͸�ü<br>
                        (����)<br>
                        ȭ�����۹�<br>
                    </td>
                    <td class="taL"> 
                        �� �򰡿� Ʈ����� �������� �Ϻ��� �ݿ��� ���� ���ǰ��<br>
                        �� �� ���ǰ��� ���� �н��� ������ ���� ���ǰ����� ����
                    </td> 
                </tr> 
                <tr>
                    <th>EXA<br>(Level 2)</th>
                    <td>
                        ���͸�ü<br>
                        (�⺻) 
                    </td>
                    <td class="taL"> 
                        �� �򰡿� ����� ������ �������� ������ ���� ���ǰ��<br>
                        �� �ֽ� ���� ������ �ݿ��Ͽ� �پ��� ���� Ȱ�� 
                    </td>
                </tr>
                <tr>
                    <th>QUETTA<br>(Level 3)</th>
                    <td>
                        ����<br>
                        ����
                    </td>
                    <td class="taL">
                        [���� ���� ���� Ǯ�� : 1��� �޼�]<br>
                        �� ���� ���� ���� ��ǰ �� ���� �м�<br>
                        �� ���� ���� ���� Ǯ�̷� ���� ����<br>
                        �� ���� ���� �� �м� �� ���� �ذ� ��� ����
                    </td>
                </tr>
                <tr>
                    <th>RONNA<br>(Level 4)</th>
                    <td>
                        ����<br>
                        ����
                    </td>
                    <td class="taL"> 
                        �� ������ ���� ���� ��ǰ �� ���� �м�<br>
                        �� ���� ���ؿ� ���� �ܿ� �з� �� ���� ����<br>
                        �� ������ ��ȭ �н� �� ����� ���� Ǯ�̷� ���� ����                                    
                    </td>
                </tr>
            </tbody>
        </table> 
        <% Else %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="20%">
                <col width="20%">
                <col width="*">
            </colgroup>
            <thead> 
                <tr>
                    <th>����</th>
                    <th>����</th>
                    <th>Ŀ��ŧ��</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <th>QUETTA<br>(Level 1)</th>
                    <td>
                        ����<br>
                        ����<br>
                        ���͸�ü<br>
                        (����)<br>
                        ȭ�����۹�<br>
                    </td>
                    <td class="taL">
                        [���� ���� ���� Ǯ�� : 1��� �޼�]<br>
                        �� ���� ���� ���� ��ǰ �� ���� �м�<br>
                        �� ���� ���� ���� Ǯ�̷� ���� ����<br>
                        �� ���� ���� �� �м� �� ���� �ذ� ��� ����
                    </td> 
                </tr> 
                <tr>
                    <th>RONNA<br>(Level 2)</th>
                    <td>
                        ����<br>
                        ����<br>
                        ���͸�ü<br>
                        (����) 
                    </td>
                    <td class="taL">
                        [������ ��ȭ �н� : QUETTA�� ���� ���]<br>
                        �� ������ ���� ���� ��ǰ �� ���� �м�<br>
                        �� ���� ���ؿ� ���� �ܿ� �з� �� ���� ����<br>
                        �� ������ ��ȭ �н� �� ����� ���� Ǯ�̷� ���� ���� 
                    </td>
                </tr>
                <tr>
                    <th>YOTTA<br>(Level 3)</th>
                    <td>
                        ����<br>
                        ����
                    </td>
                    <td class="taL">
                        [���� ���� �н� : RONNA�� ���� ���]<br>
                        �� ���� ��ǥ ���� ���� ���� �н�<br>
                        �� �ʼ� ������ ��ǰ ����<br>
                        �� ���� ���� �н� �� ���̵� �� ������ ���� ���� Ǯ�̷� ���� ���� 
                    </td>
                </tr>
                <tr>
                    <th>ZETTA<br>(Level 4)</th>
                    <td>
                        ����<br>
                        ����
                    </td>
                    <td class="taL">
                        [�ʼ� ���� �н� : YOTTA�� ���� ���]<br>
                        �� ����/���� �ʼ� ���� �н�<br>
                        �� ���� ��ǥ ���� ���� �м� �� ����<br>
                        �� ���� ���� ���� Ǯ�̷� ���� ����                                    
                    </td>
                </tr>
            </tbody>
        </table>
        <% End If %>    
        <p class="gray_box bn">
            �� ���غ� ������ Ŀ��ŧ�� - 4���� ����. ���� 8�� �������� ��
        </p>


        <p class="taL mt50 fz17">�׸�&middot;��ȭ ����(���� : �׸�&middot;��ȭ ����)</p> 
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="20%"> 
                <col width="*">
            </colgroup>
            <thead> 
                <tr>
                    <th>����</th> 
                    <th>Ŀ��ŧ��</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <th>����</th> 
                    <td class="taL">
                        �� ���� ����� ����<br>
                        �� ���� ��ǰ ����� ����<br>
                        �� '�����ð�' ���� �ʼ� ��ǰ �ؼ�<br>
                        �� '�����Ҽ�' ���� �ʼ� ��ǰ �ؼ�<br>
                        �� '�����' ���� ��ǰ ���� �Ʒ�<br>
                        �� '����Ҽ�' ���� ��ǰ ���� �Ʒ�<br>
                        �� '����/���/�ó�����' ���� ��ǰ ���� �Ʒ�<br>
                        �� ǥ����/������ Ư¡ ���� ���� �Ʒ�<br>
                        �� <����> ���� ���� �Ʒ�<br>
                        �� ���� ���� ���� ���� ���� �Ʒ� 
                    </td> 
                </tr> 
                <tr>
                    <th>����</th> 
                    <td class="taL">
                        �� ���� ���� ���ع� ���� - ���� �� ���� �б�<br>
                        �� ���� ���� ���ع� ���� - ���� ���� �ľ��ϱ�<br>
                        �� '������' �ʼ� ������� ���� �� ���� �Ʒ�<br>
                        �� '����' �ʼ� ������� ���� �� ���� �Ʒ�<br>
                        �� '�������' �ʼ� ������� ���� �� ���� �Ʒ�<br>
                        �� '����/ȭ��/���' �ʼ� ������� ���� �� ���� �Ʒ�<br>
                        �� 'ö��' �ʼ� ������� ���� �� ���� �Ʒ�<br>
                        �� ���� �߷� �� ���� ���� ���� �Ʒ�<br>
                        �� <����> ���� ���� �Ʒ�<br>
                        �� ���� LEET ���� ���� �Ʒ� 
                    </td>
                </tr> 
                <tr>
                    <th>���͸�ü</th>
                    <td class="taL">
                        �� ������ ���� ���� ���� �Ʒ�<br>
                        �� ���� �׸� ���� �Ʒ� - �ܾ�<br>
                        �� ���� �׸� ���� �Ʒ� - ����<br>
                        �� ���� �׸� ���� �Ʒ� - ����/�Թ�/�߼�����<br>
                        �� ��ü ���� ���� ���� ����<br>
                        �� ���͸�ü Ŭ���� ���� 
                    </td>
                </tr>
                <tr>
                    <th>ȭ�����۹�</th>
                    <td class="taL">
                        �� ȭ�����۹� [3��] ���� ���� �Ʒ�<br>
                        �� ȭ�����۹� ���� ���� ���� �Ʒ�<br>
                        �� ȭ�����۹� Ŭ���� ���� 
                    </td>
                </tr>
            </tbody>
        </table>  


        <h4 class="lec_sub_title mt50">����</h4>
        <p class="taL mt15 fz17">���غ� ���� ����</p> 
        <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0213" Then '���� %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="20%">
                <col width="20%">
                <col width="*">
            </colgroup>
            <thead> 
                <tr>
                    <th>����</th>
                    <th>����</th>
                    <th>Ŀ��ŧ��</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <th>���� ���ǰ��<br>(Level 1)</th>
                    <td>
                        ���Х�<br>
                        ������<br>
                        ����
                    </td>
                    <td class="taL"> 
                        �� �򰡿� Ʈ����� �������� �Ϻ��� �ݿ��� ���� ���ǰ��<br>
                        �� �� ���ǰ��� ���� �н��� ������ ���� ���ǰ����� ����
                    </td> 
                </tr> 
                <tr>
                    <th>PETA<br>(Level 1)</th>
                    <td>
                        Ȯ�������
                    </td>
                    <td class="taL"> 
                        �� �ֿ� ���� ���� �Ʒ� �н�<br>
                        �� ������ �������� �����Ǵ� ���ǰ��
                    </td>
                </tr>
                <tr>
                    <th>EXA<br>(Level 1~2)</th>
                    <td>
                        ���Х�<br>
                        ���Х�<br>
                        ������<br>
                        Ȯ������� 
                    </td>
                    <td class="taL"> 
                        �� �ٽ� ���� ����Ǯ�� ���� �ܿ��� �н� ���� ����<br>
                        �� ȸ�� �� �ǹ� �ִ� 3, 4���� 15�������� ������ ���� ���ǰ��<br>
                        �� �ٽ� ���׵鿡 ���� ���� �ذ���� ����
                    </td>
                </tr>
                <tr>
                    <th>QUETTA<br>(Level 2~3)</th>
                    <td>
                        ���Х�<br>
                        ���Х�<br>
                        ������ 
                    </td>
                    <td class="taL"> 
                        [���� N�� Ǯ�� : 1��� �޼�]<br>
                        �� ���� ���� ���� ���� Ǯ�� �� ���� �м�<br>
                        �� ���� N�� ���� Ǯ�̷� �پ��� ���� ���� ����<br>
                        �� ���� ����+���� ���� �� �м� �� ���� �ذ� ��� ����                                  
                    </td>
                </tr>
                <tr>
                    <th>RONNA<br>(Level 3~4)</th>
                    <td>
                        ���Х�<br>
                        ���Х�<br>
                        ������ 
                    </td>
                    <td class="taL">  
                        �� ������ ���� ���� ���� Ǯ�� �� ���� �м�<br>
                        �� ����+���� 4�� ���� ������ ����<br>
                        �� ������ ��ȭ �н� �� ����� ���� Ǯ�̷� ���� ����                                
                    </td>
                </tr>
            </tbody>
        </table> 
        <% Else %> 
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="20%">
                <col width="20%">
                <col width="*">
            </colgroup>
            <thead> 
                <tr>
                    <th>����</th>
                    <th>����</th>
                    <th>Ŀ��ŧ��</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <th>QUETTA<br>(Level 1)</th>
                    <td>
                        ���Х�<br>
                        ���Х�<br>
                        ������<br>
                        Ȯ�������<br>
                        ���� 
                    </td>
                    <td class="taL">
                        [���� N�� Ǯ�� : 1��� �޼�]<br>
                        �� ���� ���� ���� ���� Ǯ�� �� ���� �м�<br>
                        �� ���� N�� ���� Ǯ�̷� �پ��� ���� ���� ����<br>
                        �� ���� ����+���� ���� �� �м� �� ���� �ذ� ��� ����
                    </td> 
                </tr> 
                <tr>
                    <th>RONNA<br>(Level 2)</th>
                    <td>
                        ���Х�<br>
                        ���Х�<br>
                        ������<br>
                        Ȯ������� 
                    </td>
                    <td class="taL">
                        [������ ��ȭ �н� : QUETTA�� ���� ���]<br>
                        �� ������ ���� ���� ���� Ǯ�� �� ���� �м�<br>
                        �� ����+���� 4�� ���� ������ ����<br>
                        �� ������ ��ȭ �н� �� ����� ���� Ǯ�̷� ���� ����
                    </td>
                </tr>
                <tr>
                    <th>YOTTA<br>(Level 3)</th>
                    <td>
                        ���Х�<br>
                        ���Х�<br>
                        ������ 
                    </td>
                    <td class="taL">
                        [���� ���� �н� : RONNA�� ���� ���]<br>
                        �� ���� ���� ���� ���� �н�<br>
                        �� ��ȭ ���� �н��� ���� ���� ������<br>
                        �� ���̵� �� ������ ����+���� ���� Ǯ�̷� ���� ���� 
                    </td>
                </tr>
                <tr>
                    <th>ZETTA<br>(Level 4)</th>
                    <td>
                        ���Х�<br>
                        ���Х�<br>
                        ������
                    </td>
                    <td class="taL">
                        [�ʼ� ���� �н� : YOTTA�� ���� ���]<br>
                        �� ������ �ʼ� ���� �н�<br>
                        �� ���� ���� ���� �� �м� �� ����<br>
                        �� ���� ����+���� ���� Ǯ�̷� ���� ����                                    
                    </td>
                </tr>
            </tbody>
        </table>  
        <% End If %> 
        <p class="gray_box bn">
            �� ���غ� ������ Ŀ��ŧ�� - 4���� ����. ���� 8�� �������� ��
        </p>

        <p class="taL mt50 fz17">�׸�&middot;��ȭ ����(���� : �׸�&middot;��ȭ ����)</p> 
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="20%"> 
                <col width="*">
            </colgroup>
            <thead> 
                <tr>
                    <th>����</th> 
                    <th>Ŀ��ŧ��</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <th>���Х�</th> 
                    <td class="taL">
                        �� �ŵ��������� ����<br>
                        �� ������ �αװ� �ڿ����� ����<br>
                        �� �����α��Լ� �׷����� �����̵��� ��Ī�̵�<br>
                        �� �����α��Լ��� �׷����� ��ε���� Ȱ��<br>
                        �� �����α��Լ��� �׷����� ������ �ؼ�<br>
                        �� �ﰢ�Լ��� ���ǿ� ����<br>
                        �� �ﰢ�Լ� �׷����� Ư¡(�ֱ�, �ִ�, �ּ�, ��������)<br>
                        �� �ﰢ�Լ� �׷����� ������ �ؼ�<br>
                        �� �ﰢ�Լ� �׷����� �ﰢ�������� Ȱ��<br>
                        �� �ߵ� ���� ��鵵�� ������<br>
                        �� ���� ��Ģ�� �ڻ��� ��Ģ�� Ȱ��<br>
                        �� ���������� �������� �Ϲ��װ� ��<br>
                        �� ���� ��ȣ�� ������ ������ �ؼ�<br>
                        �� �ñ׸��� ���� ���� ������ �� 
                    </td> 
                </tr> 
                <tr>
                    <th>���Х�</th> 
                    <td class="taL">
                        �� �Լ��� ���Ѱ� ���׽��� ����<br>
                        �� ������ ���ǿ� ���� ���� �Լ��� ���Ӽ�<br>
                        �� �̺а���� ���ǿ� ǥ��, �̺а��ɼ�<br>
                        �� �����Լ��� ���� ����� ������ ����, �Ÿ����� Ȱ��<br>
                        �� �����Լ��� �����Լ��� ����, �ش�ؼ�, �̺а��ɼ�<br>
                        �� ������, �ε�İ� �̺��� Ȱ��<br>
                        �� ���Լ��� Ȱ���� �Լ��� �߷�<br>
                        �� �������а� �������� ���<br>
                        �� ���������� ���ǵ� �Լ��� �ؼ�<br>
                        �� �������� Ȱ�� - ���̿� ���Ͽ�<br>
                        �� �ӵ��� ���ӵ�, ��ġ, �Ÿ��� ��� �� 
                    </td>
                </tr> 
                <tr>
                    <th>Ȯ�������</th>
                    <td class="taL">
                        �� �������� ����(������, �ߺ�����, ���� ���� ������ ����)<br>
                        �� �ߺ����հ� ��������<br>
                        �� Ȯ���� ���������� ��������<br>
                        �� ���Ǻ� Ȯ��, ����� ������ ����, ���������� Ȯ��<br>
                        �� �̻�Ȯ�������� ���׺���<br>
                        �� ����Ȯ�������� ���Ժ���<br>
                        �� ����� ����
                    </td>
                </tr>
                <tr>
                    <th>������</th>
                    <td class="taL"> 
                        �� ������ ���Ѱ� �޼��� �⺻�� ����(����/�߻�/��Ģ����)<br>
                        �� �������� ����(��������, ���� ���� ��, ���� ������)<br>
                        �� ������ ���Ѱ� �޼��� ���<br>
                        �� ���޼��� �������ǰ� ���<br>
                        �� ����, �α�, �ﰢ�Լ��� ���Ѱ� Ȱ��<br>
                        �� ����, �α�, �ﰢ�Լ��� �̺й��� Ȱ��<br>
                        �� ���Լ��� �̺а� ���Լ� �̺�<br>
                        �� �ռ��Լ� �̺а� N���� Ȱ��<br>
                        �� �Լ��� ������ �ش�ؼ�, �̰赵�Լ��� ������, �ʿ��Լ��� �׷���<br>
                        �� ���Լ��� Ȱ��<br>
                        �� ġȯ���а� �κ�����<br>
                        �� ���������� ���ǵ� �Լ��� �ؼ�<br>
                        �� �������� Ȱ�� - �޼��� ����, ����, ����<br>
                        �� ���(�ӵ��� ���ӵ�, �Ÿ�, ��� ����) 
                    </td>
                </tr>
                <tr>
                    <th>����</th>
                    <td class="taL">
                        �� �������� ���ǿ� ����<br>
                        �� Ÿ���� ���ǿ� ����<br>
                        �� �ְ�� ���ǿ� ����<br>
                        �� ������ ���ǿ� ����, ����, �� ���� �� ���� ���� ���� ����<br>
                        �� ��ġ���Ϳ� ��������<br>
                        �� ������ ���а� ����<br>
                        �� ���ͷ� ��Ÿ�� ������ �����İ� ����<br>
                        �� ���� ���ǿ� ������� ����<br>
                        �� ���翵<br>
                        �� ������ǥ������ �Ÿ��� ����, ���� ������ 
                    </td>
                </tr>
            </tbody>
        </table>  


        <h4 class="lec_sub_title mt50">����</h4>
        <p class="taL mt15 fz17">���غ� ���� ����</p> 
        <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0213" Then '���� %>
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="20%">
                <col width="20%">
                <col width="*">
            </colgroup>
            <thead> 
                <tr>
                    <th>����</th>
                    <th>����</th>
                    <th>Ŀ��ŧ��</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <th>PETA<br>(Level 1~3)</th>
                    <td>
                        ����
                    </td>
                    <td class="taL"> 
                        �� �ֿ� ���� ���� �Ʒ� �н�<br>
                        �� ������ 10�������� �����Ǵ� ���� ���ǰ��<br>
                        �� ���׺� ������ �����ϴ� ������ ����ǥ'�� ������ �н� ������ ������ '��� ���� �м�ǥ' ����
                    </td> 
                </tr>  
            </tbody>
        </table> 
        <% Else %> 
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="20%">
                <col width="20%">
                <col width="*">
            </colgroup>
            <thead> 
                <tr>
                    <th>����</th>
                    <th>����</th>
                    <th>Ŀ��ŧ��</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <th>QUETTA<br>(Level 1)</th>
                    <td rowspan="3" class="brL">����</td>
                    <td class="taL">
                        [���� 3�� ���� ���� �н� : 1��� �޼�]<br>
                        �� ���� ��ǥ ���� ���� ���� �н�<br>
                        �� ������ �ְ� ���̵��� ���� ���� Ǯ�̷� ���� ���� ����<br>
                        �� ���� �⺻ 9���� �� ���� 3�� ���� ���� �н��Ͽ� �������� 1��� Ȯ��                                    
                    </td> 
                </tr> 
                <tr>
                    <th>RONNA<br>(Level 2)</th> 
                    <td class="taL">
                        [�߿� ���� ���� �н� : QUETTA�� ���� ���]<br>
                        �� ���� ��ǥ ���� ���� ���� �н�<br>
                        �� ������ �߰� ���̵��� ���� ���� Ǯ�̷� ���� ���� ����<br>
                        �� ���� �⺻ 9���� �� ���� 3������ ����, ������ �� ���ϰ�, ������ �����ϴ� �н� 
                    </td>
                </tr>
                <tr>
                    <th>YOTTA<br>(Level 3)</th> 
                    <td class="taL">
                        [�⺻ ���� ���� �н� : RONNA�� ���� ���]<br>
                        �� ���� ��ǥ ���� ���� ���� �н�<br>
                        �� ������ ���� ���̵��� ���� ���� Ǯ�̷� ���� ���� ����<br>
                        �� �⺻ �н��� ���� �ְ� ���� ȹ�� ������ ���� ���� �н� 
                    </td>
                </tr>  
            </tbody>
        </table>  
        <% End If %> 
        <p class="gray_box bn">
            �� ���غ� ������ Ŀ��ŧ�� - 4���� ����. ���� 8�� �������� ��
        </p>


        <p class="taL mt50 fz17">�׸�&middot;��ȭ ����(���� : �׸�&middot;��ȭ ����)</p> 
        <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt20">
            <caption></caption>
            <colgroup>
                <col width="20%"> 
                <col width="*">
            </colgroup>
            <thead> 
                <tr>
                    <th>����</th> 
                    <th>Ŀ��ŧ��</th>
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <th>���</th> 
                    <td class="taL">
                        �� ������ġ - �� ��ġ, ����, ��(�ɵ��� ����)<br>
                        �� ���ı��������� ���� ��� ����<br>
                        �� �뵿��<br>
                        �� ������� - ����λ�<br>
                        �� ����� ���ӻ�<br>
                        �� �λ��� ���ӻ�<br>
                        �� ������ �� ��ġ<br>
                        �� ��ʹ���<br>
                        �� ��������
                    </td> 
                </tr> 
                <tr>
                    <th>����</th> 
                    <td class="taL">
                        �� ����� ���� ����<br>
                        �� ���� ���� ����<br>
                        �� �����ľ�<br>
                        �� ��ĭ ����, ��ģ ���� �м�<br>
                        �� paraphrasing<br>
                        �� �ܼ� Ȱ��(���þ�, ����, �����)<br>
                        �� ����� ������ ���� �� ���� �ľ� 
                    </td>
                </tr> 
                <tr>
                    <th>����</th>
                    <td class="taL">
                        �� �־�, ������(�����, to������, ����� ���ӻ�)<br>
                        �� ���־�/���־�, ��������/��������<br>
                        �� ����<br>
                        �� ����籸/��(to������, �л�, �������, ����λ�, ����)<br>
                        �� �λ籸/��(to������, �λ��� ���ӻ�)<br>
                        �� �־� ������ ��ġ�� ��ġ�� ����(����� ��ġ ����)<br>
                        �� ������ ��ġ<br>
                        �� ����, ���� ���� 
                    </td>
                </tr>
                <tr>
                    <th>����</th>
                    <td class="taL">
                        �� ����, 6&middot;9�� ���� ���� ���� ������
                    </td>
                </tr> 
            </tbody>
        </table> 
        <% End If %>
        <!-- //Ŀ��ŧ�� -->
    </div>
</div> 