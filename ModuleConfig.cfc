/**
* Matt Gifford, Monkeh Works
* www.monkehworks.com
* ---
* This module connects your application to the Covfefe component
**/
component {

	// Module Properties
	this.title 				= "Covfefe component";
	this.author 			= "Matt Gifford";
	this.webURL 			= "https://www.monkehworks.com";
	this.description 		= "This component will allow you to covfefe your content for clarity.";
	this.version			= "@version.number@+@build.number@";
	// If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
	this.viewParentLookup 	= true;
	// If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
	this.layoutParentLookup = true;
	this.entryPoint			= 'covfefe';
	this.modelNamespace		= 'covfefe';
	this.cfmapping			= 'covfefe';
	this.autoMapModels 		= false;

	/**
	 * Configure
	 */
	function configure(){

		// Settings
		settings = {};
	}

	/**
	* Fired when the module is registered and activated.
	*/
	function onLoad(){
		parseParentSettings();
		var covfefeSettings = controller.getConfigSettings().covfefe;

		// Map Library
		binder.map( "covfefe@covfefe" )
			.to( "#moduleMapping#.covfefe" );
	}

	/**
	* Fired when the module is unregistered and unloaded
	*/
	function onUnload(){
	}

	/**
	* parse parent settings
	*/
	private function parseParentSettings(){
		var oConfig 		= controller.getSetting( "ColdBoxConfig" );
		var configStruct 	= controller.getConfigSettings();
		var odDSL 		= oConfig.getPropertyMixin( "covfefe", "variables", structnew() );

		//defaults
		configStruct.covfefe = variables.settings;

		// incorporate settings
		structAppend( configStruct.covfefe, odDSL, true );
	}

}
