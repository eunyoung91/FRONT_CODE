<%@ Language=VBScript %>
<%
' ==========================================
' reference.asp
' Markdown(.md) 파일을 HTML로 렌더링하여 미리보기
' ==========================================
Dim fso, file, content, filePath
Set fso = Server.CreateObject("Scripting.FileSystemObject")
filePath = Server.MapPath("reference.md")  ' reference.md 파일 경로

If fso.FileExists(filePath) Then
    Set file = fso.OpenTextFile(filePath, 1)
    content = file.ReadAll()
    file.Close
    Set file = Nothing
Else
    content = "# ? reference.md 파일이 존재하지 않습니다."
End If

Set fso = Nothing
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>2026 윈터스쿨 매뉴얼 미리보기</title>

    <!-- marked.js 라이브러리 -->
    <script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>

    <!-- 스타일 -->
    <style>
        body {
            background: #fafafa;
            padding: 2rem;
            line-height: 1.4;
			color: #333
        }
        .markdown_container {
            max-width: 960px;
            margin: auto;
            background: white;
            border: 1px solid #ddd;
            padding: 2rem;
            border-radius: 8px;
        }
        .markdown_container pre {
            background: #f4f4f4;
            padding: 1rem;
            overflow-x: auto;
        }
        .markdown_container code {
            /* font-family: Consolas, monospace; */
            font-family: Arial, Helvetica, sans-serif;
            background: #eee;
            padding: 2px 4px;
        }
        .markdown_container h1, .markdown_container h2, .markdown_container h3 {
            color: #333;
            margin-top: 1.5em;
        }
    </style>
</head>
<body>
    <div class="markdown_container">
        <div id="md_content" style="display:none;"><%=Server.HTMLEncode(content)%></div>
        <div id="md_rendered">불러오는 중...</div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const raw = document.getElementById("md_content").innerText;
            const html = marked.parse(raw);
            document.getElementById("md_rendered").innerHTML = html;
        });
    </script>
</body>
</html>
