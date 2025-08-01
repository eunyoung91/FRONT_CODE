    <header id="header">
        <div class="container">
            <div class="left_area">
                <h1 class="logo">
                    <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0208" Then '서초 %>
                    <a href="https://seocho.megastudy.net/">
                        <img class="img_sc" src="<%=Application("img_path")%>/library/common/logo/top_logo_sc.svg" alt="서초 메가스터디학원" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0210" Then '강북 %>
                    <a href="https://gangbuk.megastudy.net/">
                        <img class="img_gb" src="<%=Application("img_path")%>/library/common/logo/top_logo_gb.svg" alt="강북 메가스터디학원" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0211" Then '노량진 %>
                    <a href="https://noryangjin.megastudy.net/">
                        <img class="img_nrj" src="<%=Application("img_path")%>/library/common/logo/top_logo_nrj.svg" alt="노량진 메가스터디학원" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0213" Then '신촌 %>
                    <a href="https://sinchon.megastudy.net/">
                        <img class="img_sinc" src="<%=Application("img_path")%>/library/common/logo/top_logo_sinc.svg" alt="신촌 메가스터디학원" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0276" Then '송파 %>
                    <a href="https://songpa.megastudy.net/">
                        <img class="img_sp" src="<%=Application("img_path")%>/library/common/logo/top_logo_sp.svg" alt="송파 메가스터디학원" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0251" Then '부천 %>
                    <a href="https://bucheon.megastudy.net/">
                        <img class="img_bc" src="<%=Application("img_path")%>/library/common/logo/top_logo_bc.svg" alt="부천 메가스터디학원" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0253" Then '분당 %>
                    <a href="https://bundang.megastudy.net/">
                        <img class="img_bd" src="<%=Application("img_path")%>/library/common/logo/top_logo_bd.svg" alt="분당 메가스터디학원" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0255" Then '일산 %>
                    <a href="https://ilsan.megastudy.net/">
                        <img class="img_is" src="<%=Application("img_path")%>/library/common/logo/top_logo_is.svg" alt="일산 메가스터디학원" />
                    </a>
                    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0217" Then '평촌 %>
                    <a href="https://pyeongchon.megastudy.net/">
                        <img class="img_pc" src="<%=Application("img_path")%>/library/common/logo/top_logo_pc.svg" alt="평촌 메가스터디학원" />
                    </a>
                    <% Else %>
                    <a href="https://campus.megastudy.net/">
                        <img class="img_mega" src="<%=Application("img_path")%>/library/common/logo/top_logo_megastudy.svg" alt="메가스터디학원" />
                    </a>
                    <% End If %>
                </h1>
            </div>
        </div>
    </header>