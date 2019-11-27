function [bfgs, dfp, steep] = executar(func, x0)
    options_bfgs = optimoptions(@fminunc, 'Algorithm', 'quasi-newton', ...
        'hessupdate', 'bfgs', 'Display', 'iter');
    options_dfp = optimoptions(@fminunc, 'Algorithm', 'quasi-newton', ...
        'hessupdate', 'bfgs', 'Display', 'iter');
    options_steep = optimoptions(@fminunc, 'Algorithm', 'quasi-newton', ...
        'hessupdate', 'steepdesc', 'Display', 'iter');
    
    disp('Executando ''fminunc'' com o método ''bfgs''');
    [bfgs.x, bfgs.fval, bfgs.exitflag, bfgs.output] = ...
        fminunc(func, x0, options_bfgs);
    bfgs
    bfgs_output = bfgs.output    
    
    disp('Executando ''fminunc'' com o método ''dfp''');
    [dfp.x, dfp.fval, dfp.exitflag, dfp.output] = ...
        fminunc(func, x0, options_dfp);
    dfp
    dfp_output = dfp.output
    
    disp('Executando ''fminunc'' com o método ''steepdesc''');
    [steep.x, steep.fval, steep.exitflag, steep.output] = ...
        fminunc(func, x0, options_steep);
    steep
    steep_output = steep.output
    
end
