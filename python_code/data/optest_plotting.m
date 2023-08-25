%% PLOTTING DATA FROM MAGGIE
% WRITTEN BY Sophie LV Scopazzi
% Contact her with questions via
    % phone: 415-720-5883
    % email: sophie.scopazzi@gmail.com
    % email: sophie.scopazzi@marine.rutgers.edu
    % website: sophiescopazzi.com

%% first run "op_test_matlab" and leave the data in the workspace
    
close all 
% don't do a close all after running the other code or else you lose all
% the data and have to run it again (and it takes a while)

%%
fig1 = figure(1); sgtitle('Datalogger');     
    subplot(121), plot(Batt_Time,Batt_BattV);
    title('Voltage');
    xlabel('Date');
    ylabel('Voltage');

    subplot(122), plot(Batt_Time,Batt_PTemp);
    title('Temperature');
    xlabel('Date');
    ylabel('degC');
exportgraphics(gcf, 'figure1.jpg', 'Resolution', 300);  
%% 
fig2 = figure(2); sgtitle('MS3');
    subplot(221), plot(MS3_Time,MS3_hpa)
    title('Pressure');
    xlabel('Date');
    ylabel('hpa');

        subplot(222), plot(MS3_Time,MS3_RH)
        title('Relative Humidity');
        xlabel('Date');
        ylabel('%');

    subplot(223), plot(MS3_Time,MS3_AirTemp)
    title('Air Temp');
    xlabel('Date');
    ylabel('degC');

        subplot(224), plot(MS3_Time,MS3_Dew)
        title('Dew Point');
        xlabel('Date');
        ylabel('degC');
exportgraphics(gcf, 'figure2.jpg', 'Resolution', 300);  
%%        
fig3 = figure(3); sgtitle('PAR Den');
plot(PAR_Aqua1_Time,PAR_Aqua1_Den)
hold
plot(PAR_Aqua1_Time,PAR_Aqua2_Den)
plot(PAR_Aqua1_Time,PAR_Atmo_Den)
    xlabel('Date');
    ylabel('Den');
    legend('Aqua1','Aqua2','Atmo');

exportgraphics(gcf, 'figure3.jpg', 'Resolution', 300);  

fig4 = figure(4); sgtitle('PAR Total');
    plot(PAR_Aqua1_Time,PAR_Aqua1_Tot)
    hold
    plot(PAR_Aqua1_Time,PAR_Aqua2_Tot)
    plot(PAR_Aqua1_Time,PAR_Atmo_Tot)
        xlabel('Date');
        ylabel('Total');
        legend('Aqua1','Aqua2','Atmo');
        
exportgraphics(gcf, 'figure4.jpg', 'Resolution', 300);  
%%
fig5 = figure(5); sgtitle('WS Data');

    subplot(221), plot(WS_Time,WS_fWSV1)
    title('fWSV1');
    xlabel('Date');
    ylim([-14 14]);
    ylabel('m/s');

        subplot(222), plot(WS_Time,WS_fWSV2)
        title('fWSV2');
        xlabel('Date');
        ylim([-14 14]);
        ylabel('m/s');

    subplot(223), plot(WS_Time,WS_fWSV3)
    title('fWSV3');
    xlabel('Date');
    ylim([-14 14]);
    ylabel('m/s');

        subplot(224), plot(WS_Time,WS_fWSC)
        title('fWSC - unsure');
        xlabel('Date');
        ylabel('code says degC, but?');
        ylim([280 310]);
        
exportgraphics(gcf, 'figure5.jpg', 'Resolution', 300);  
%% 
fig6 = figure(6); sgtitle('EXO');
    subplot(221), plot(EXO_Time,EXO_Chloro)
    title('Chloro');
    xlabel('Date');
    ylabel('RFU');
    ylim([0.2 1.4]);

        subplot(222), plot(EXO_Time,EXO_nLFCond)
        title('nLFCond');
        xlabel('Date');
        ylabel('microSimens/cm');
        ylim([4000 8100]);

    subplot(223), plot(EXO_Time,EXO_Phyco)
    title('Phycoerythrin');
    xlabel('Date');
    ylabel('RFU');
    ylim([1 3.5]);

        subplot(224), plot(EXO_Time,EXO_Turbid)
        title('Turbid');
        xlabel('Date');
        ylabel('FNU');
        ylim([-14 50]);
        
exportgraphics(gcf, 'figure6.jpg', 'Resolution', 300);  
fig7 = figure(7); sgtitle('EXO');
    subplot(221), plot(EXO_Time,EXO_fDOM)
    title('fDOM');
    xlabel('Date');
    ylabel('QSU');
    ylim([10 20]);

        subplot(222), plot(EXO_Time,EXO_fDOM2)
        title('fDOM2');
        xlabel('Date');
        ylabel('RFU');
        ylim([4 6]);

    subplot(223), plot(EXO_Time,EXO_pH)
    title('ph');
    xlabel('Date');
    ylabel('ph');
    ylim([7 9]);

        subplot(224), plot(EXO_Time,EXO_pH2)
        title('ph2');
        xlabel('Date');
        ylabel('mV');
        ylim([-70 -40]);
        
exportgraphics(gcf, 'figure7.jpg', 'Resolution', 300);  
fig8 = figure(8); sgtitle('EXO');
    subplot(221), plot(EXO_Time,EXO_Temp)
    title('Temp');
    xlabel('Date');
    ylabel('degC');
    ylim([16 19]);

        subplot(222), plot(EXO_Time,EXO_Pres)
        title('Pressure');
        xlabel('Date');
        ylabel('psia');

    subplot(223), plot(EXO_Time,EXO_Cond)
    title('Cond');
    xlabel('Date');
    ylabel('microSimens/cm');
    ylim([3000 8100]);

        subplot(224), plot(EXO_Time,EXO_SpCond)
        title('SpCond');
        xlabel('Date');
        ylabel('microSimens/cm');
        ylim([4000 8100]);
        
exportgraphics(gcf, 'figure8.jpg', 'Resolution', 300);  
fig9 = figure(9); sgtitle('EXO');
    subplot(221), plot(EXO_Time,EXO_Sal)
    title('Salinity');
    xlabel('Date');
    ylabel('PSU');

        subplot(222), plot(EXO_Time,EXO_TSS)
        title('TSS');
        xlabel('Date');
        ylabel('mg/L');

    subplot(223), plot(EXO_Time,EXO_VertPos)
    title('Vertical Position');
    xlabel('Date');
    ylabel('Meters');

        subplot(224), plot(EXO_Time,EXO_Depth)
        title('Depth');
        xlabel('Date');
        ylabel('Meters');
        
exportgraphics(gcf, 'figure9.jpg', 'Resolution', 300);        
fig10 = figure(10); sgtitle('EXO');
    subplot(221), plot(EXO_Time,EXO_TDS)
    title('TDS');
    xlabel('Date');
    ylabel('mg/L');
    ylim([1400 8200]);

        subplot(222), plot(EXO_Time,EXO_DOX)
        title('DOX');
        xlabel('Date');
        ylabel('%Sat');
        ylim([80 100]);

    subplot(223), plot(EXO_Time,EXO_DOX)
    hold; plot(EXO_Time,EXO_DOX2)
    title('DOX and DOX2');
    xlabel('Date');
    ylabel('%Local');
    ylim([80 100]);
    legend('DOX','DOX2','Location','southeast')

        subplot(224), plot(EXO_Time,EXO_DOX3)
        title('DOX3');
        xlabel('Date');
        ylabel('mg/L');
        ylim([6 10]);
        
exportgraphics(gcf, 'figure10.jpg', 'Resolution', 300);
fig11 = figure(11); sgtitle('EXO');
    subplot(221), plot(EXO_Time,EXO_ORP)
    title('ORP');
    xlabel('Date');
    ylabel('mV');
    ylim([230 290]);

        subplot(222), plot(EXO_Time,EXO_WipePos)
        title('Wiper Position');
        xlabel('Date');
        ylabel('Voltage');
        ylim([1 1.4]);

    subplot(223), plot(EXO_Time,EXO_BPower)
    title('Battery Power');
    xlabel('Date');
    ylabel('Voltage');

        subplot(224), plot(EXO_Time,EXO_CabPwr)
        hold
        plot(EXO_Time,Batt_BattV)
        title('Cable Power');
        xlabel('Date');
        ylabel('Voltage');
        ylim([10 15]);
        legend('EXO','Maggie','Location','northwest')

exportgraphics(gcf, 'figure11.jpg', 'Resolution', 300);         
%%
% 
% 
% 
% for i = 1:12
% filename = ['fig', num2str(i),'.jpg'];
% figname = ['fig', num2str(i)];
% exportgraphics(figname,filename,'Resolution',300);
% end


