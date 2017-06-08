component extends="testbox.system.BaseSpec" {

	function run() {

		describe( "Covfefify component", function() {

			beforeEach( function() {
				oCovfefify = createMock( 'Covfefify' );
			} );

			it( "should have the correct return type", function() {
				expect( oCovfefify ).toBeInstanceOf( 'Covfefify' );
				expect( oCovfefify ).toBeTypeOf( 'component' );
			} );

			it( "should have a function called `init`", function() {
				expect( oCovfefify ).toHaveKey( 'init' );
			} );

			it( "should have a function called `covfefify`", function() {
				expect( oCovfefify ).toHaveKey( 'covfefify' );
			} );

			it( "should have a function called `vowelFinder`", function() {
				var oCovfefify = makePublic( oCovfefify, 'vowelFinder' );
				expect( oCovfefify ).toHaveKey( 'vowelFinder' );
			} );

			it( "should have a function called `consonantFinder`", function() {
				var oCovfefify = makePublic( oCovfefify, 'consonantFinder' );
				expect( oCovfefify ).toHaveKey( 'consonantFinder' );
			} );

			it( "should have a function called `alphaMap`", function() {
				var oCovfefify = makePublic( oCovfefify, 'alphaMap' );
				expect( oCovfefify ).toHaveKey( 'alphaMap' );
			} );


		} );


		describe( "Covfefify method calls", function() {

			beforeEach( function() {
				oCovfefify 	= createMock("Covfefify");
			} );

			it( "should return the correct covfefified string from the `covfefify` function", function() {

				var strCovfefied = oCovfefify.covfefify( 'creation' );
				expect( strCovfefied ).toBe( 'creatdidi' );

				var strCovfefied = oCovfefify.covfefify( 'coverage' );
				expect( strCovfefied ).toBe( 'covfefe' );

				var strCovfefied = oCovfefify.covfefify( 'example' );
				expect( strCovfefied ).toBe( 'exxaxa' );

				var strCovfefied = oCovfefify.covfefify( 'programming' );
				expect( strCovfefied ).toBe( 'progkaka' );

				var strCovfefied = oCovfefify.covfefify( 'president' );
				expect( strCovfefied ).toBe( 'preszizi' );

				var strCovfefied = oCovfefify.covfefify( 'qwrtp' );
				expect( strCovfefied ).toBe( 'qwrtp' );

			} );

			it( "should return the correct covfefified string from the `covfefify` function when dealing with more than one word", function() {

				var strCovfefied = oCovfefify.covfefify( 'Despite the constant negative press coverage' );
				expect( strCovfefied ).toBe( 'Despite the constant negative press covfefe' );

				var strCovfefied = oCovfefify.covfefify( 'One more fine covfefied example' );
				expect( strCovfefied ).toBe( 'One more fine covfefied exxaxa' );

				var strCovfefied = oCovfefify.covfefify( 'qwrtp qwrtp qwrtp qwrtp qwrtp' );
				expect( strCovfefied ).toBe( 'qwrtp qwrtp qwrtp qwrtp qwrtp' );

			} );

			it( "should return the correct split string from the `splitString` function", function() {
				var oCovfefify = makePublic( oCovfefify, 'splitString' );

				var strSplitValue = oCovfefify.splitString( 'creation', 5 );
				expect( strSplitValue ).toBeTypeOf( 'string' );
				expect( strSplitValue ).toHaveLength( 5 );
				expect( strSplitValue ).toBe( 'creat' );

				var strSplitValue = oCovfefify.splitString( 'example', 2 );
				expect( strSplitValue ).toBeTypeOf( 'string' );
				expect( strSplitValue ).toHaveLength( 2 );
				expect( strSplitValue ).toBe( 'ex' );

				var strSplitValue = oCovfefify.splitString( 'coverage', 3 );
				expect( strSplitValue ).toBeTypeOf( 'string' );
				expect( strSplitValue ).toHaveLength( 3 );
				expect( strSplitValue ).toBe( 'cov' );

				var strSplitValue = oCovfefify.splitString( 'programming', 4 );
				expect( strSplitValue ).toBeTypeOf( 'string' );
				expect( strSplitValue ).toHaveLength( 4 );
				expect( strSplitValue ).toBe( 'prog' );

				// Intentional fail
				var strSplitValue = oCovfefify.splitString( 'president', 4 );
				expect( strSplitValue ).toBeTypeOf( 'string' );
				expect( strSplitValue ).toHaveLength( 4 );
				expect( strSplitValue ).toBe( 'pres' );

			} );

			it( "should return the correct alpha value from the `alphaMap` function", function() {
				var oCovfefify = makePublic( oCovfefify, 'alphaMap' );

				var strAlphaValue = oCovfefify.alphaMap( 'b' );
				expect( strAlphaValue ).toBeTypeOf( 'string' );
				expect( strAlphaValue ).toHaveLength( 1 );
				expect( strAlphaValue ).toBe( 'p' );

				var strAlphaValue = oCovfefify.alphaMap( 'c' );
				expect( strAlphaValue ).toBeTypeOf( 'string' );
				expect( strAlphaValue ).toHaveLength( 1 );
				expect( strAlphaValue ).toBe( 'g' );

				var strAlphaValue = oCovfefify.alphaMap( 'd' );
				expect( strAlphaValue ).toBeTypeOf( 'string' );
				expect( strAlphaValue ).toHaveLength( 1 );
				expect( strAlphaValue ).toBe( 't' );

				var strAlphaValue = oCovfefify.alphaMap( 'f' );
				expect( strAlphaValue ).toBeTypeOf( 'string' );
				expect( strAlphaValue ).toHaveLength( 1 );
				expect( strAlphaValue ).toBe( 'v' );

				// Intentional fail
				var strAlphaValue = oCovfefify.alphaMap( 'a' );
				expect( strAlphaValue ).toBeTypeOf( 'string' );
				expect( strAlphaValue ).toHaveLength( 0 );
				expect( strAlphaValue ).toBe( '' );

			} );

			it( "should return the correct location of the first vowel in the string from the `vowelFinder` function", function() {
				var oCovfefify = makePublic( oCovfefify, 'vowelFinder' );

				var iVowelLocation = oCovfefify.vowelFinder( 'creation' );
				expect( iVowelLocation ).toBeTypeOf( 'number' );
				expect( iVowelLocation ).toHaveLength( 1 );
				expect( iVowelLocation ).toBe( '3' );

				var iVowelLocation = oCovfefify.vowelFinder( 'coverage' );
				expect( iVowelLocation ).toBeTypeOf( 'number' );
				expect( iVowelLocation ).toHaveLength( 1 );
				expect( iVowelLocation ).toBe( '2' );

				var iVowelLocation = oCovfefify.vowelFinder( 'example' );
				expect( iVowelLocation ).toBeTypeOf( 'number' );
				expect( iVowelLocation ).toHaveLength( 1 );
				expect( iVowelLocation ).toBe( '1' );

				var iVowelLocation = oCovfefify.vowelFinder( 'programming' );
				expect( iVowelLocation ).toBeTypeOf( 'number' );
				expect( iVowelLocation ).toHaveLength( 1 );
				expect( iVowelLocation ).toBe( '3' );

				var iVowelLocation = oCovfefify.vowelFinder( 'president' );
				expect( iVowelLocation ).toBeTypeOf( 'number' );
				expect( iVowelLocation ).toHaveLength( 1 );
				expect( iVowelLocation ).toBe( '3' );

				var iVowelLocation = oCovfefify.vowelFinder( 'qwrtp' );
				expect( iVowelLocation ).toBeTypeOf( 'number' );
				expect( iVowelLocation ).toHaveLength( 1 );
				expect( iVowelLocation ).toBe( '0' );

			} );

			it( "should return the correct location of the first vowel in the string from the `vowelFinder` function using a start position", function() {
				var oCovfefify = makePublic( oCovfefify, 'vowelFinder' );

				var iVowelLocation = oCovfefify.vowelFinder( 'creation', 5 );
				expect( iVowelLocation ).toBeTypeOf( 'number' );
				expect( iVowelLocation ).toHaveLength( 1 );
				expect( iVowelLocation ).toBe( '6' );

				var iVowelLocation = oCovfefify.vowelFinder( 'coverage', 3 );
				expect( iVowelLocation ).toBeTypeOf( 'number' );
				expect( iVowelLocation ).toHaveLength( 1 );
				expect( iVowelLocation ).toBe( '4' );

				var iVowelLocation = oCovfefify.vowelFinder( 'example', 2 );
				expect( iVowelLocation ).toBeTypeOf( 'number' );
				expect( iVowelLocation ).toHaveLength( 1 );
				expect( iVowelLocation ).toBe( '3' );

				var iVowelLocation = oCovfefify.vowelFinder( 'programming', 4 );
				expect( iVowelLocation ).toBeTypeOf( 'number' );
				expect( iVowelLocation ).toHaveLength( 1 );
				expect( iVowelLocation ).toBe( '6' );

				var iVowelLocation = oCovfefify.vowelFinder( 'president', 4 );
				expect( iVowelLocation ).toBeTypeOf( 'number' );
				expect( iVowelLocation ).toHaveLength( 1 );
				expect( iVowelLocation ).toBe( '5' );

				var iVowelLocation = oCovfefify.vowelFinder( 'qwrtp' );
				expect( iVowelLocation ).toBeTypeOf( 'number' );
				expect( iVowelLocation ).toHaveLength( 1 );
				expect( iVowelLocation ).toBe( '0' );

			} );

			it( "should return the correct location of the first vowel in the string from the `consonantFinder` function", function() {
				var oCovfefify = makePublic( oCovfefify, 'consonantFinder' );

				var iConsonantLocation = oCovfefify.consonantFinder( 'creation', 3 );
				expect( iConsonantLocation ).toBeTypeOf( 'number' );
				expect( iConsonantLocation ).toHaveLength( 1 );
				expect( iConsonantLocation ).toBe( '5' );

				var iConsonantLocation = oCovfefify.consonantFinder( 'coverage', 2 );
				expect( iConsonantLocation ).toBeTypeOf( 'number' );
				expect( iConsonantLocation ).toHaveLength( 1 );
				expect( iConsonantLocation ).toBe( '3' );

				var iConsonantLocation = oCovfefify.consonantFinder( 'example', 1 );
				expect( iConsonantLocation ).toBeTypeOf( 'number' );
				expect( iConsonantLocation ).toHaveLength( 1 );
				expect( iConsonantLocation ).toBe( '2' );

				var iConsonantLocation = oCovfefify.consonantFinder( 'programming', 3 );
				expect( iConsonantLocation ).toBeTypeOf( 'number' );
				expect( iConsonantLocation ).toHaveLength( 1 );
				expect( iConsonantLocation ).toBe( '4' );

				var iConsonantLocation = oCovfefify.consonantFinder( 'president', 3 );
				expect( iConsonantLocation ).toBeTypeOf( 'number' );
				expect( iConsonantLocation ).toHaveLength( 1 );
				expect( iConsonantLocation ).toBe( '4' );

				var iConsonantLocation = oCovfefify.consonantFinder( 'qwrtp', 0 );
				expect( iConsonantLocation ).toBeTypeOf( 'number' );
				expect( iConsonantLocation ).toHaveLength( 1 );
				expect( iConsonantLocation ).toBe( '0' );

			} );

		} );

	}

}
