/**
 * Created by developer on 18.02.14.
 */
package de.aboutflash.rl2demo.view.events {
import flash.events.Event;

public class MainViewEvent extends Event {

    public static const START_TIMER:String = "startTimer";
    public static const STOP_TIMER:String = "stopTimer";
    public static const SWITCH_TIME_SERVICE:String = "switchTimeService";

    public function MainViewEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false) {
        super(type, bubbles, cancelable);
    }
}
}
