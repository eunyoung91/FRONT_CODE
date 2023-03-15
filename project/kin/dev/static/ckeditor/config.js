/**
 * @license Copyright (c) 2003-2016, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	config.extraPlugins = 'FMathEditor';
	config.uiColor = '#f6f7f4';
	//자동 추가 제거
	config.basicEntities = false;
    config.fillEmptyBlocks = false;
	//특수문자 추가
	config.specialChars = config.specialChars.concat([
	[ 'ƒ', '' ],
	[ '∫', '' ],
	[ '∑', '' ],
	[ '∞', '' ],
	[ '√', '' ],
	[ '≠', '' ],
	[ '∏', '' ],
	[ '∂', '' ],
	[ 'ø', '' ],
	[ 'Δ', '' ],
	[ 'Σ', '' ],
	[ 'Φ', '' ],
	[ 'Ω', '' ],
	[ 'γ', '' ],
	[ 'ε', '' ],
	[ 'θ', '' ],
	[ 'λ', '' ],
	[ 'μ', '' ],
	]);
};

CKEDITOR.addCss('.cke_editable img { max-width: 100%; height: auto; }');