/**
 * Created by developer on 17.02.14.
 */
package de.aboutflash.rl2demo.services {
import de.aboutflash.rl2demo.model.ClockModel;

import flash.events.TimerEvent;
import flash.utils.Timer;

public class OneSecondClockService implements IClockService {

    public function OneSecondClockService() {
        timer = new Timer(1000);
        timer.addEventListener(TimerEvent.TIMER, onTimer)
    }

    [Inject]
    public var clockModel:ClockModel;
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
