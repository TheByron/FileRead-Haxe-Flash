/******************************************************************************
* AUTHOR: Byron Himes
* DATE CREATED: 17 March 2016
* DESCRIPTION: This is an example of how to read a text file with Haxe,
*               compiling to flash. This file is non-compilable, and is
*               only for reference purposes.
******************************************************************************/

import flash.net.URLLoader;
import flash.net.URLRequest;
import flash.events.Event;

class MyClass
{
    // Create a URLLoader object
    private var loader = new URLLoader();
    
    public function new() {/* ... */ }
    
    // Assuming the data is in the same directory as the executable
    // call loader.load( URLRequest( path:String) );
    loader.load( new URLRequest("myFile.txt") );
    
    // the file data will now be stored in loader, and can be accessed like so:
    var data = loader.data;
    loader.close(); 
    
    //-------------------------------------------------------------------------
    
    /* An alternative way to load retrieve this data is to use an event handler
    -  Attach the event handler to loader and assign a callback function
    -  for when the event is completed (.load(...))
    */
    
    // Alternative method example:
    private function loadComplete(e:Event):Void
    {
        some_variable = e.target.data;
    }
    
    // Attach the callback and event listener
    loader.addEventListener(Event.COMPLETE, loadComplete);
}
