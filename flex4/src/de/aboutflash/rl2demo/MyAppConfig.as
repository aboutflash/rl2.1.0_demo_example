/**
 * Created by developer on 17.02.14.
 */
package de.aboutflash.rl2demo {
import de.aboutflash.rl2demo.commands.StartTimeUpdate;
import de.aboutflash.rl2demo.commands.StopTimeUpdate;
import de.aboutflash.rl2demo.model.ClockModel;
import de.aboutflash.rl2demo.view.MainView;
import de.aboutflash.rl2demo.view.events.MainViewEvent;
import de.aboutflash.rl2demo.view.mediators.ClockMediator;
import de.aboutflash.rl2demo.view.widgets.IClockWidget;

import mx.core.IVisualElementContainer;

import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IInjector;

public class MyAppConfig implements IConfig {
    [Inject]
    public var injector:IInjector;

    [Inject]
    public var mediatorMap:IMediatorMap;

    [Inject]
    public var commandMap:IEventCommandMap;

    [Inject]
    public var contextView:ContextView;

    public function configure():void {
        injector.map(ClockModel).asSingleton();

        mediatorMap.map(IClockWidget).toMediator(ClockMediator);

        commandMap.map(MainViewEvent.START_TIMER).toCommand(StartTimeUpdate);
        commandMap.map(MainViewEvent.START_TIMER).toCommand(StopTimeUpdate);

        (contextView.view as IVisualElementContainer).addElement(new MainView());
    }
}
}
