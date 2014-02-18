/**
 * Created by developer on 17.02.14.
 */
package de.aboutflash.rl2demo.services {
import de.aboutflash.rl2demo.model.IClockModel;

import flash.events.TimerEvent;
import flash.utils.Timer;

public class FiveSecondsClockService implements IClockService {

    public function FiveSecondsClockService() {
        timer = new Timer(5000);
        timer.addEventListener(TimerEvent.TIMER, onTimer)
    }

    [Inject]
    public var clockModel:IClockModel;
    private var timer:Timer;

    public function startTimeUpdate():void {
        timer.start();
    }

    public function stopTimeUpdate():void {
        timer.stop();
    }

    private function onTimer(event:TimerEvent):void {
        clockModel.update(new Date())
    }
}
}
