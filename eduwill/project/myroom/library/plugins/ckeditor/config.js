/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	
	config.extraPlugins = 'FMathEditor';
	config.extraAllowedContent = 'div(*)';
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

	config.removePlugins = 'resize';
	config.resize_enabled = false;
};
