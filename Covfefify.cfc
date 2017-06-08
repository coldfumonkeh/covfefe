component output="false"{

  /**
  * Constructor
  */
  public Covfefify function init(){
    return this;
  }

  /**
  * Covfefifies the provided word or last word in the provided sentence.
  * @word The word or sentence to covfefify
  */
  public function covfefify( required string word ){
    var strCovfefied = '';
    var strProvided = arguments.word;
    var iListLen = listLen( strProvided, ' ' );
    var aWordList = [];
    if( iListLen GT 1 ){
      aWordList = listToArray( strProvided, ' ' );
      strProvided = aWordList[ iListLen ];
      arrayDeleteAt( aWordList, iListLen );
    }

    var iFirstVowel = vowelFinder( strProvided );
    var iFirstConsonant = consonantFinder( strProvided, iFirstVowel );

    if( iFirstConsonant ){
      var strFirstSplit = splitString( strProvided, iFirstConsonant );
      var strConsonantMap = alphaMap( mid( strProvided, iFirstConsonant, 1) );

      var iSecondVowel = vowelFinder( strProvided, iFirstConsonant )
      var strVowel = mid( strProvided, iSecondVowel, 1);

      if( arrayLen( aWordList ) ){
        strCovfefied = arrayToList( aWordList, ' ' ) & ' ';
      }

      strCovfefied = strCovfefied & strFirstSplit & '#strConsonantMap##strVowel##strConsonantMap##strVowel#';
    } else {

      if( arrayLen( aWordList ) ){
        strCovfefied = arrayToList( aWordList, ' ' ) & ' ';
      }

      strCovfefied = strCovfefied & strProvided;
    }


    return strCovfefied;
  }

  /**
  * Returns the left of the string to the provided end point
  * @word The word to split.
  * @end The end location.
  */
  private function splitString( required string word, required numeric end ){
    return left( arguments.word, arguments.end );
  }

  /**
  * Finds the first instance of a vowel in the word.
  * @word The word to search.
  * @start The start position for the search.
  */
  private function vowelFinder( required string word, numeric start = 0 ){
    if( arguments.start ){
      return REFindNoCase( '([aeiouy])', arguments.word, arguments.start );
    } else {
      return REFindNoCase( '([aeiouy])', arguments.word );
    }
  }

  /**
  * Finds the first instance of a consonant in the word after the provided start position.
  * @word The word to search.
  * @start The start position for the search.
  */
  private function consonantFinder( required string word, required numeric start ){
    return ( arguments.start ) ? REFindNoCase( '([bcdfghjklmnpqrstvwxz])', arguments.word, arguments.start ) : 0;
  }

  /**
  * Maps the provided letter with the voiceless version from the provided structure.
  * @letter The letter that needs to be mapped.
  */
  private function alphaMap( required string letter ){
    var sMap = {
      'b' = 'p',
      'c' = 'g',
      'd' = 't',
      'f' = 'v',
      'g' = 'k',
      'h' = 'h',
      'j' = 'j',
      'k' = 'g',
      'l' = 'l',
      'm' = 'm',
      'n' = 'n',
      'p' = 'b',
      'q' = 'q',
      'r' = 'r',
      's' = 'z',
      't' = 'd',
      'v' = 'f',
      'w' = 'w',
      'x' = 'x',
      'z' = 's'
    };
    return ( structKeyExists( sMap, arguments.letter ) ) ? sMap[ arguments.letter ] : '';
  }

}
