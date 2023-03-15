var data = {
    "selected": 0,
    "tabs": [
        {
            "title": "홈",
            "name": "home",
            "collapse": ["groupStyle2", "groupFont", "groupAlignment", "*groupStyle3", "groupStyle1"],
            "groupCollapseItems": ["groupStyle1"],
            "groups": [
                {
                    "tools": [
                        {
                            "type": "group",
                            "collapseGroup": "groupFont",
                            "centerAlign": true,
                            "items": [
                                {
                                    "type": "input-group",
                                    "name": "fontFamily",
                                    "width": 80,
                                    "dropdown": ["Arial", "Arial Black", "Calibri", "Cambria", "Century", "Courier New", "Comic Sans MS", "Garamond", "Georgia", "맑은 고딕", "Mangal", "Meiryo", "MS Gothic", "MS Mincho", "MS PGothic", "MS PMincho", "Roboto", "Tahoma", "Times", "Times New Roman", "Trebuchet MS", "Verdana", "Wingdings"]
                                },
                                {
                                    "type": "input-group",
                                    "name": "fontSize",
                                    "width": 40,
                                    "dropdown": [8, 9, 10, 11, 12, 13, 14, 15, 16, 18, 20, 22, 24, 26, 28, 36, 48, 72]
                                },
                            ]
                        },
                        {
                            "type": "icon",
                            "iconClass": "sprite Bold",
                            "name": "bold",
                            "text": "굵게",
                            "tooltip": "굵게",
                            "collapseGroup": "groupStyle1",
                            "toggle": true,
                            "nolabel": true
                        },
                        {
                            "type": "icon",
                            "iconClass": "sprite Italic",
                            "name": "italic",
                            "text": "기울임꼴",
                            "tooltip": "기울임꼴",
                            "collapseGroup": "groupStyle1",
                            "toggle": true,
                            "nolabel": true
                        },
                        {
                            "type": "icon",
                            "iconClass": "sprite Underline",
                            "name": "underline",
                            "text": "밑줄",
                            "tooltip": "밑줄",
                            "collapseGroup": "groupStyle1",
                            "toggle": true,
                            "nolabel": true
                        },
                        {
                            "type": "icon",
                            "iconClass": "sprite UnderlineDouble",
                            "name": "doubleUnderline",
                            "text": "이중 밑줄",
                            "tooltip": "이중 밑줄",
                            "collapseGroup": "groupStyle1",
                            "toggle": true,
                            "nolabel": true
                        },
                        {
                            "type": "group",
                            "collapseGroup": "groupStyle3",
                            "tooltip": "테두리",
                            "items": [
                                {
                                    "type": "icon-group",
                                    "iconClass": "sprite BorderBottomNoToggle",
                                    "name": "border",
                                    "text": "테두리",
                                    "header": "테두리",
                                    "minWidth": 280,
                                    "dropdown": [
                                        { "value": "bottom", "text": "아래쪽 테두리", "iconClass": "sprite BorderBottom" },
                                        { "value": "top", "text": "위쪽 테두리", "iconClass": "sprite BorderTop" },
                                        { "value": "left", "text": "왼쪽 테두리", "iconClass": "sprite BorderLeft" },
                                        { "value": "right", "text": "오른쪽 테두리", "iconClass": "sprite BorderRight" },
                                        "",
                                        { "value": "none", "text": "테두리 없음", "iconClass": "sprite BorderNone" },
                                        { "value": "all", "text": "모든 테두리", "iconClass": "sprite BordersAll" },
                                        { "value": "outside", "text": "외부 테두리", "iconClass": "sprite BorderOutside" },
                                        { "value": "thick", "text": "굵은 상자 테두리", "iconClass": "sprite BorderThickOutside" },
                                        "",
                                        { "value": "doublebottom", "text": "아래쪽 이중 테두리", "iconClass": "sprite BorderDoubleBottom" },
                                        { "value": "thickbottom", "text": "굵은 아래쪽 테두리", "iconClass": "sprite BorderThickBottom" },
                                        { "value": "top-bottom", "text": "위쪽 및 아래쪽 테두리", "iconClass": "sprite BorderTopAndBottom" },
                                        { "value": "top-thickbottom", "text": "위쪽/굵은 아래쪽 테두리", "iconClass": "sprite BorderTopAndThickBottom" },
                                        { "value": "top-doublebottom", "text": "위쪽/아래쪽 이중 테두리", "iconClass": "sprite BorderTopAndDoubleBottom" },
                                        "",
                                        { "value": "more", "text": "더 많은 테두리...", "iconClass": "sprite BordersMoreDialog" }
                                    ]
                                }
                            ]
                        },
                        {
                            "type": "group",
                            "collapseGroup": "groupStyle3",
                            "tooltip": "채우기 색",
                            "items": [
                                {
                                    "type": "setcolor-group",
                                    "iconClass": "sprite FillBackColorSplitDropdown",
                                    "name": "backColor",
                                    "text": "채우기 색",
                                    "colorPickerOptions": { "nofill": { "show": true, "text": "채우기 없음", "color": "white" }, "header": "채우기 색" }
                                }
                            ]
                        },
                        {
                            "type": "group",
                            "collapseGroup": "groupStyle3",
                            "tooltip": "글꼴 색",
                            "items": [
                                {
                                    "type": "setcolor-group",
                                    "iconClass": "sprite GroupBasicText",
                                    "name": "foreColor",
                                    "text": "글꼴 색",
                                    "colorPickerOptions": { "autocolor": { "show": false, "text": "자동", "color": "black" }, "header": "글꼴 색" }
                                }
                            ]
                        },
                        {
                            "type": "icon",
                            "iconClass": "sprite Overline",
                            "name": "overline",
                            "text": "윗줄",
                            "tooltip": "윗줄",
                            "collapseGroup": "groupStyle2",
                            "toggle": true
                        },
                        {
                            "type": "icon",
                            "iconClass": "sprite Strikethrough",
                            "name": "strikethrough",
                            "text": "취소선",
                            "tooltip": "취소선",
                            "collapseGroup": "groupStyle2",
                            "toggle": true
                        },
						{
                            "type": "dropdown",
                            "iconClass": "sprite AlignCenter",
                            "name": "align",
                            "tooltip": "맞춤",
                            "header": "맞춤",
                            "items": ["indent", "outdent"],
                            "rows": [
                                {
                                    "type": "icon-group",
                                    "items": [
                                        {
                                            "iconClass": "sprite AlignTopExcel",
                                            "name": "valign-top",
                                            "text": "위쪽",
                                            "toggle": true,
                                            "nolabel": true,
                                            "toggleGroup": "valign"
                                        },
                                        {
                                            "iconClass": "sprite AlignMiddleExcel",
                                            "name": "valign-center",
                                            "text": "가운데",
                                            "toggle": true,
                                            "nolabel": true,
                                            "toggleGroup": "valign"
                                        },
                                        {
                                            "iconClass": "sprite AlignBottomExcel",
                                            "name": "valign-bottom",
                                            "text": "아래쪽",
                                            "toggle": true,
                                            "nolabel": true,
                                            "toggleGroup": "valign"
                                        }
                                    ]
                                },
                                {
                                    "type": "icon-group",
                                    "items": [
                                        {
                                            "iconClass": "sprite AlignLeft",
                                            "name": "halign-left",
                                            "text": "왼쪽",
                                            "toggle": true,
                                            "nolabel": true,
                                            "toggleGroup": "halign"
                                        },
                                        {
                                            "iconClass": "sprite AlignCenter",
                                            "name": "halign-center",
                                            "text": "가운데",
                                            "toggle": true,
                                            "nolabel": true,
                                            "toggleGroup": "halign"
                                        },
                                        {
                                            "iconClass": "sprite AlignRight",
                                            "name": "halign-right",
                                            "text": "오른쪽",
                                            "toggle": true,
                                            "nolabel": true,
                                            "toggleGroup": "halign"
                                        }
                                    ]
                                }
                            ]
                        },
                        {
                            "type": "icon",
                            "iconClass": "sprite MergeCenter",
                            "name": "cellmerge",
                            "text": "병합하고 가운데 맞춤",
                            "collapseGroup": "groupAlignment",
                            "toggle": true
                        },
                        {
                            "type": "icon",
                            "iconClass": "sprite WrapText",
                            "name": "wordwrap",
                            "text": "텍스트 줄 바꿈",
                            "collapseGroup": "groupAlignment",
                            "toggle": true
                        },
						 {
                            "type": "icon",
                            "iconClass": "sprite IndentIncrease",
                            "name": "indent",
                            "text": "들여쓰기",
                            "collapseGroup": "groupIndent"
                        },
                        {
                            "type": "icon",
                            "iconClass": "sprite IndentDecrease",
                            "name": "outdent",
                            "text": "내어쓰기",
                            "collapseGroup": "groupIndent"
                        },
						{
                            "type": "group",
                            "tooltip": "셀 형식",
                            "items": [
                                {
                                    "type": "dropdown-only",
                                    "iconClass": "sprite DollarSign",
                                    "name": "cellformat",
                                    "text": "셀 형식",
                                    "dropdown": [
                                        { "value": "nullValue", "text": "일반", "iconClass": "sprite DataTypeGeneral" },
                                        { "value": "0.00", "text": "숫자", "iconClass": "sprite DataTypeNumber" },
                                        { "value": "$#,##0.00", "text": "통화", "iconClass": "sprite DataTypeCurrency" },
                                        { "value": "$ #,##0.00;$ (#,##0.00);$ \"-\"??;@", "text": "회계", "iconClass": "sprite DataTypeCurrencyBasic" },
                                        { "value": "m/d/yyyy", "text": "짧은 날짜", "iconClass": "sprite DataTypeShortDate" },
                                        { "value": "dddd, mmmm dd, yyyy", "text": "긴 날짜", "iconClass": "sprite DataTypeLongDate" },
                                        { "value": "h:mm:ss AM/PM", "text": "시간", "iconClass": "sprite DataTypeTime" },
                                        { "value": "0%", "text": "백분율", "iconClass": "sprite PercentStyle" },
                                        { "value": "# ?/?", "text": "분수", "iconClass": "sprite DataTypeStandard" },
                                        { "value": "0.00E+00", "text": "지수", "iconClass": "sprite DataTypeScientific" },
                                        { "value": "@", "text": "텍스트", "iconClass": "sprite DataTypeText" },
                                    ]
                                }
                            ]
                        },
						{
                            "type": "group",
                            "tooltip": "숫자 형식",
                            "items": [
                                {
                                    "type": "dropdown-only",
                                    "iconClass": "sprite PercentStyle",
                                    "name": "numberformat",
                                    "text": "숫자 형식",
                                    "dropdown": [
                                        { "value": "percentStyle", "text": "백분율 스타일", "iconClass": "sprite PercentStyle" },
                                        { "value": "commaStyle", "text": "쉼표 스타일", "iconClass": "sprite CommaStyle" },
                                        { "value": "increaseDecimal", "text": "자릿수 늘림", "iconClass": "sprite DecimalsIncrease" },
                                        { "value": "decreaseDecimal", "text": "자릿수 줄임", "iconClass": "sprite DecimalsDecrease" }
                                    ]
                                }
                            ]
                        },
						{
                            "type": "group",
                            "tooltip": "삽입 및 삭제",
                            "items": [
                                {
                                    "type": "dropdown-only",
                                    "iconClass": "sprite InsertCellMenu",
                                    "name": "cellsgroup",
                                    "text": "삽입 및 삭제",
                                    "dropdown": [
                                        { "value": "insertRows", "text": "행 삽입", "iconClass": "sprite InsertRow" },
                                        { "value": "insertColumns", "text": "열 삽입", "iconClass": "sprite InsertColumns" },
                                        { "value": "insert-shiftCellsRight", "text": "셀 삽입 및 오른쪽으로 밀기", "iconClass": "sprite InsertColumnLeft" },
                                        { "value": "insert-shiftCellsDown", "text": "셀 삽입 및 아래로 밀기", "iconClass": "sprite InsertRowAbove" },
                                        { "value": "deleteRows", "text": "행 삭제", "iconClass": "sprite CellsDelete" },
                                        { "value": "deleteColumns", "text": "열 삭제", "iconClass": "sprite CellsDeleteSmart" },
                                        { "value": "delete-shiftCellsLeft", "text": "셀 삭제 및 왼쪽으로 밀기", "iconClass": "sprite CellsDelete" },
                                        { "value": "delete-shiftCellsUp", "text": "셀 삭제 및 위로 밀기", "iconClass": "sprite CellsDeleteSmart" }
                                    ]
                                }
                            ]
                        },
						{
                            "type": "group",
                            "tooltip": "합계",
                            "items": [
                                {
                                    "type": "dropdown-only",
                                    "iconClass": "sprite Formula icon-text",
                                    "name": "autoSum",
                                    "text": "자동 합계",
                                    "dropdown": [
                                        { "value": "sum", "text": "합계" },
                                        { "value": "average", "text": "평균" },
                                        { "value": "count", "text": "숫자 개수" },
                                        { "value": "max", "text": "최대값" },
                                        { "value": "min", "text": "최소값" }
                                    ]
                                }
                            ]
                        }
                    ]
                }
               

            ]
        }
        
        
    ]
};
