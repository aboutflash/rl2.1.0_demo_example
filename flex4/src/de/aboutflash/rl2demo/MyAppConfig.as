/**
 * Created by developer on 17.02.14.
 */
package de.aboutflash.rl2demo {
import de.aboutflash.rl2demo.commands.StartTimeUpdate;
import de.aboutflash.rl2demo.model.ClockModel;
import de.aboutflash.rl2demo.model.events.ClockEvent;
import de.aboutflash.rl2demo.view.MainView;
import de.aboutflash.rl2demo.view.mediators.ClockMediator;
import de.aboutflash.rl2demo.view.widgets.ClockWidget;

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

        mediatorMap.map(ClockWidget).toMediator(ClockMediator);

        commandMap.map(ClockEvent.CLOCK_UPDATE).toCommand(StartTimeUpdate);

        (contextView.view as IVisualElementContainer).addElement(new MainView());
    }
}
}
