/**
 * Created by developer on 17.02.14.
 */
package de.aboutflash.rl2demo.model.events {
import flash.events.Event;

public class ClockEvent extends Event {

    public static const CLOCK_UPDATE:String = "clockUpdate";

    public function ClockEvent(date:Date, type:String = CLOCK_UPDATE, bubbles:Boolean = true, cancelable:Boolean = true) {
        this._date = date;
        super(type, bubbles, cancelable)
    }

    private var _date:Date;

    public function get date():Date {
        return _date;
    }
}
}
