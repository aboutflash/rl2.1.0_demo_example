/**
 * Created by developer on 18.02.14.
 */
package de.aboutflash.rl2demo.model {
public class ApplicationModel {
    private var _isClockRunning:Boolean;

    public function get isClockRunning():Boolean {
        return _isClockRunning;
    }

    public function setClockRunning():void {
        _isClockRunning = true;
    }

    public function setClockStopped():void {
        _isClockRunning = false;
    }
}
}
