# 2026 ���ͽ���

[�������� 2026 ���ͽ���](https://tseocho.megastudy.net/seocho/nsu/nsu/2026/winter/winter_01.asp)

## &#9989; ���丮 ����

```
/seocho/nsu/nsu/2026/winter/
������ winter_01.asp             # �� 1 - 2026 ���ͽ��� �Ұ�
������ winter_02.asp             # �� 2 - �����䰭
������ winter_03.asp             # �� 3 - Ŀ��ŧ��
������ web.css                   # ���� ��Ÿ�� ����

/campus_common/2026/winter/
������ inc_top.asp               # ��� ���־� + �� + ��� �޴�
������ inc_head.asp              # ���� head ���� (���� & ���� CSS/JS ����)
������ winter_01.asp             # ���ͽ��� �Ұ� ���� ������

/public/
������ Method.asp                # ASP �޼��� ����
������ class.Mssql.asp           # DB ���� Ŭ����
������ js/
��   ������ common_new.js         # ���� �ڹٽ�ũ��Ʈ
������ jquery/
��   ������ jquery-1.12.4.min.js  # jQuery ���̺귯��

/common/inc/
������ head_common.asp           # ���� ��Ÿ �� �⺻ head ���� ���� ����

/common/css/
������ aos.css                   # AOS �ִϸ��̼� ��Ÿ��
������ 2026/
��   ������ winter.css            # 2026 ���ͽ��� ���� CSS

/common/js/
������ aos.js                    # AOS �ִϸ��̼� JS
������ gsap.min.js               # GSAP �ִϸ��̼� ���̺귯��
������ apply_info.js             # �¶��� ���� ���� JS
������ 2026/
��   ������ winter.js             # 2026 ���ͽ��� ���� JS

```

---

## &#9989; �ֿ� Include ���� ����

### 1. `inc_head.asp`
- **������ ��Ÿ ����**  
  - ���� ���ڵ�, ����Ʈ, ������ ȣȯ�� �� �⺻ ��Ÿ ���� ����
- **���� �� �ܺ� ��Ÿ��, ��ũ��Ʈ**
  - `head_common.asp`�� ���� ���� CSS/JS �ε�
  - jQuery, AOS, slick, GSAP �� �⺻ ���̺귯�� ����
- **���ͽ��� ���� CSS/JS ����**
  - `/common/css/2026/winter.css`
  - `/common/js/2026/winter.js`
- **�¶��� ���� ���� JS ����**
  - `/common/js/apply_info.js`

### 2. `inc_top.asp`
- **�п��� ��� �б� ó��**
  - ķ�۽���, �귣���, ��ȭ��ȣ ����
- **���־� �̹��� �б� ��� (`right_wrap`)**
- **�п��� �� ��� (`lec_tab`)**
- **��� ���޴� (`r_quickMn`)**
- **��ũ�� �� �� ���� �� ��� �޴� ���� JS ����**

### 3. `winter_01.asp ~ winter_03.asp`
- �� �ǿ� �ش��ϴ� ���� ���
---

## &#9989; �п� �ڵ� �б� ���� (inc_top.asp ����)
```asp
Select Case GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") 
    Case "CD0208"
        tel = "02-535-5678"
        campusName = "����"
        campusBrand = "�ް����͵��п�"
    Case "CD0243"
        tel = "031-797-9332"
        campusName = "�ڿ��� ������"
        campusBrand = "���� ����п�"
End Select
```

---

## &#9989; ��ũ��Ʈ ����

- `lec_tab` ��ũ�� ���� ���
- `r_quickMn` ��� �޴� fadeIn/Out ó��

```js
$(function () {
    if ($('.lec_tab').length === 0 || $('.r_quickMn').length === 0) return;

    $('.r_quickMn').hide();
    var num = $('.lec_tab').offset().top;
    var isVisible = false;
    var ticking = false;

    menuTop();
    $(window).on('scroll', function () {
        if (!ticking) {
            ticking = true;
            requestAnimationFrame(function () {
                menuTop();
                ticking = false;
            });
        }
    });

    function menuTop() {
        if ($(window).scrollTop() > num) {
            $('.lec_tab').css({ top: '0px', position: 'fixed' });
            if (!isVisible) {
                $('.r_quickMn').fadeIn(300);
                isVisible = true;
            }
        } else {
            $('.lec_tab').css({ position: 'relative' });
            if (isVisible) {
                $('.r_quickMn').fadeOut(300);
                isVisible = false;
            }
        }
    }
});
```

---

## &#9989; ��Ÿ

### 4. `head_common.asp`

- **������ ���� `<head>` ���� ����**
- ��� ASP ������ ��ܿ��� ���������� ���ԵǸ�, �ֿ� ��Ÿ �±׿� CSS/JS ������ �ҷ��ɴϴ�.
- `inc_head.asp` ������ `<!--#include virtual="/common/inc/head_common.asp" -->`�� ���Ե˴ϴ�.


```asp
<% ' head_common.asp %>

<!-- ��Ÿ �±� -->
<meta charset="euc-kr">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">

<!-- �ĺ��� -->
<!--#Include Virtual = "/library/include/reload/favicon.asp" -->

<!-- ������ Ÿ��Ʋ -->
<title><%=gMGC_Campus_Title%></title>

<!-- ���� CSS -->
<link rel="stylesheet" type="text/css" href="/library/css/common_new.css?v=250620" />
<link rel="stylesheet" type="text/css" href="/library/css/table.css?v=250523" />

<!-- ���̺귯�� CSS -->
<link rel="stylesheet" type="text/css" href="/common/css/slick.css">

<!-- jQuery �� UI -->
<script type="text/javascript" src="/public/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/public/js/jquery-ui.min.js"></script>

<!-- ���̺귯�� �÷����� -->
<script type="text/javascript" src="/common/js/slick.js"></script>

<!-- ���� JS -->
<script type="text/javascript" src="/public/js/common_new.js?v20190812001"></script>

```

- **���� ���� ���̺귯���� �ش� �������� ���� ����**

```
<!-- ���̺귯�� CSS -->
<link rel="stylesheet" type="text/css" href="/common/css/aos.css">

<!-- ���̺귯�� �÷����� -->
<script type="text/javascript" src="/common/js/aos.js"></script>
<script type="text/javascript" src="/common/js/gsap.min.js"></script>