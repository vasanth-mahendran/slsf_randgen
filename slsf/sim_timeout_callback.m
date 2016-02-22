function sim_timeout_callback(obj, event, sim_ob)
    %SIM_TIMEOUT_CALLBACK This callback to execute
    %   Detailed explanation goes here

%     disp('TIMEOUT CALLED');
    sim_ob.sim_status = get_param(sim_ob.generator.sys,'SimulationStatus');
    set_param(sim_ob.generator.sys, 'SimulationCommand', 'stop');
end

