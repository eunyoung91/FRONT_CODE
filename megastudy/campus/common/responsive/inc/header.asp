    <header id="header">
        <div class="container">
            <div class="left_area">
                <h1 class="logo">
                    <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0208" Then '���� %>
                    <a href="https://seocho.megastudy.net/">
                        <img class="img_sc" src="<%=Application("img_path")%>/library/common/logo/top_logo_sc.svg" alt="���� �ް����͵��п�" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0210" Then '���� %>
                    <a href="https://gangbuk.megastudy.net/">
                        <img class="img_gb" src="<%=Application("img_path")%>/library/common/logo/top_logo_gb.svg" alt="���� �ް����͵��п�" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0211" Then '�뷮�� %>
                    <a href="https://noryangjin.megastudy.net/">
                        <img class="img_nrj" src="<%=Application("img_path")%>/library/common/logo/top_logo_nrj.svg" alt="�뷮�� �ް����͵��п�" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0213" Then '���� %>
                    <a href="https://sinchon.megastudy.net/">
                        <img class="img_sinc" src="<%=Application("img_path")%>/library/common/logo/top_logo_sinc.svg" alt="���� �ް����͵��п�" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0276" Then '���� %>
                    <a href="https://songpa.megastudy.net/">
                        <img class="img_sp" src="<%=Application("img_path")%>/library/common/logo/top_logo_sp.svg" alt="���� �ް����͵��п�" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0251" Then '��õ %>
                    <a href="https://bucheon.megastudy.net/">
                        <img class="img_bc" src="<%=Application("img_path")%>/library/common/logo/top_logo_bc.svg" alt="��õ �ް����͵��п�" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0253" Then '�д� %>
                    <a href="https://bundang.megastudy.net/">
                        <img class="img_bd" src="<%=Application("img_path")%>/library/common/logo/top_logo_bd.svg" alt="�д� �ް����͵��п�" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0255" Then '�ϻ� %>
                    <a href="https://ilsan.megastudy.net/">
                        <img class="img_is" src="<%=Application("img_path")%>/library/common/logo/top_logo_is.svg" alt="�ϻ� �ް����͵��п�" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0217" Then '���� %>
                    <a href="https://pyeongchon.megastudy.net/">
                        <img class="img_pc" src="<%=Application("img_path")%>/library/common/logo/top_logo_pc.svg" alt="���� �ް����͵��п�" />
                    </a>
                    <% Else %>
                    <a href="https://campus.megastudy.net/">
                        <img class="img_mega" src="<%=Application("img_path")%>/library/common/logo/top_logo_megastudy.svg" alt="�ް����͵��п�" />
                    </a>
                    <% End If %>
                </h1>
            </div>
        </div>
    </header>