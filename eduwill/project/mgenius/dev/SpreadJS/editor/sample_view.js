/*jshint -W030 */   // Expected an assignment or function call and instead saw an expression (a && a.fun1())
/*jshint -W004 */   // {a} is already defined (can use let instead of var in es6)
/* jshint laxbreak: true */

var app = app || {};
var spreadNS = GC.Spread.Sheets;
var Calc = GC.Spread.CalcEngine;
var spread, excelIO;
var ribbon;
var settingCache = {backColor: "white", foreColor: "black", tableStyles: 'medium2'};
var tableIndex = 1, pictureIndex = 1;
var fbx, isShiftKey = false;
var resourceMap = {},
    conditionalFormatTexts = {};
var Barcode = spreadNS.Barcode;
var $tableStyleDropdown;
var colorPicker, $colorPickerContainer;
var isSafari = (function () {
    var tem, M = navigator.userAgent.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || [];
    if (!/trident/i.test(M[1]) && M[1] !== 'Chrome') {
        M = M[2] ? [M[1], M[2]] : [navigator.appName, navigator.appVersion, '-?'];
        if ((tem = navigator.userAgent.match(/version\/(\d+)/i)) != null) M.splice(1, 1, tem[1]);
        return M[0].toLowerCase() === "safari";
    }
    return false;
})();
var isIE = navigator.userAgent.toLowerCase().indexOf('compatible') < 0 && /(trident)(?:.*? rv ([\w.]+)|)/.exec(navigator.userAgent.toLowerCase()) !== null;
var mergable = false, unmergable = false;
var defaultParagraphSeparator = 'p';
var MARGIN_BOTTOM = 4;



//$(document).ready(function () {
function SpreadJs_init() {
	spread = new spreadNS.Workbook($("#ss")[0]);
	
	spread.options.tabStripVisible = false;

}




function getFileName() {
    function to2DigitsString(num) {
        return ("0" + num).substr(-2);
    }

    var date = new Date();
    return [
        "export",
        date.getFullYear(), to2DigitsString(date.getMonth() + 1), to2DigitsString(date.getDate()),
        to2DigitsString(date.getHours()), to2DigitsString(date.getMinutes()), to2DigitsString(date.getSeconds())
    ].join("");
}

function exportFile(fileName) {
    if ($("#saveJson")[0].checked) {
        exportToJSON(fileName);
    } else if ($("#saveExcel")[0].checked) {
        exportToExcel(fileName);
    } else if ($("#savePdf")[0].checked) {
        exportToPdf(fileName);
    }
}

function exportToJSON(fileName) {
    var json = spread.toJSON({includeBindingSource: true}),
        text = JSON.stringify(json);
    if (isSafari) {
        $("#download").show();
        var link = $("#downloadlink");
        link[0].href = "data:text/plain;" + text;
    } else {
        saveAs(new Blob([text], {type: "text/plain;charset=utf-8"}), fileName + ".ssjson");
    }
}

function exportToExcel(fileName) {
	var json = spread.toJSON({includeBindingSource: true});
    var password = $("#savePassword").val();
    excelIO.save(json, function (blob) {
        if (isSafari) {
            var reader = new FileReader();
            reader.onloadend = function () {
                $("#download").show();
                var link = $("#downloadlink");
                link[0].href = reader.result;
            };
            reader.readAsDataURL(blob);
        } else {
			saveAs(blob, fileName + ".xlsx");
        }
    }, function (e) {
        alert(e);
    }, {password: password});
}

function exportToPdf(fileName) {
    spread.savePDF(function (blob) {
        if (isSafari) {
            var reader = new FileReader();
            reader.onloadend = function () {
                $("#download").show();
                var link = $("#downloadlink");
                link[0].href = reader.result;
            };
            reader.readAsDataURL(blob);
        } else {
            saveAs(blob, fileName + ".pdf");
        }
    }, function (e) {
        alert(e);
    })
}
app.saveBrowserFile = exportFile;

// import / export related items (end)

