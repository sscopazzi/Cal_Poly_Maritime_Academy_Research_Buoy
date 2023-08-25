%% DATA PARSING FOR MAGGIE'S 1HR FILES
% WRITTEN BY Sophie LV Scopazzi
% Contact her via
    % phone: 415-720-5883
    % email: sophie.scopazzi@gmail.com
    % email: sophie.scopazzi@marine.rutgers.edu
    % website: sophiescopazzi.com

clear all % always
close all % always

%% BATT DATA PARSING
Batt_Time = []; % init pos 1, this is date and time (ex: 2023-05-27 15:02:00)
Batt_BattV = [];     % init pos 3, this is voltage
Batt_PTemp = [];     % init pos 4, this is degC
k = 21;         % init loop variable, the rest of the Battery_hr files are trash 

for i = 21:152 % Battery_hr files go to 152
    batt_name = sprintf('%s%d','Battery_hr',k); % change the file name
    batt_temp = readtable(batt_name);           % all the data
   
    % Timestamp data parsing
    batt_time = (batt_temp(:,1));          % thid position, but it's a table!
    batt_time_array = table2array(batt_time);  % make into array
    Batt_Time = vertcat(Batt_Time,batt_time_array);     % for column array
    
    % BattV data parsing
    batt_battv = (batt_temp(:,3));          % thid position, but it's a table!
    batt_temp_array = table2array(batt_battv);  % make into array
    Batt_BattV = vertcat(Batt_BattV,batt_temp_array);     % for column array
       
    % PTemp data parsing
    batt_ptemp = (batt_temp(:,4));          % thid position, but it's a table!
    batt_ptemp_array = table2array(batt_ptemp);  % make into array
    Batt_PTemp = vertcat(Batt_PTemp,batt_ptemp_array);     % for column array
    
    k = k+1;
end

%% MS3 DATA PARSING
MS3_Time = [];      % init pos 1, this is date and time (ex: 2023-05-27 15:02:00)
MS3_hpa = [];       % init pos 3, this is hpa
MS3_RH = [];        % init pos 4, this is %
MS3_AirTemp = [];   % init pos 5, this is degC
MS3_Dew = [];       % init pos 6, this is degC
k = 21;             % init loop variable, the rest of the MS3_hr files are trash 

for i = 21:152 % Battery_hr files go to 152
    ms3_name = sprintf('%s%d','MS3_hr',k); % change the file name
    ms3_temp = readtable(ms3_name);           % all the data
   
    % Timestamp data parsing
    ms3_time = (ms3_temp(:,1));          % thid position, but it's a table!
    ms3_time_array = table2array(ms3_time);  % make into array
    MS3_Time = vertcat(MS3_Time,ms3_time_array);     % for column array
    
    % MS3_mbar data parsing
    ms3_mbar = (ms3_temp(:,3));          % thid position, but it's a table!
    ms3_temp_array = table2array(ms3_mbar);  % make into array
    MS3_hpa = vertcat(MS3_hpa,ms3_temp_array);     % for column array
       
    % MS3_RH data parsing
    ms3_rh = (ms3_temp(:,4));          % thid position, but it's a table!
    ms3_rh_array = table2array(ms3_rh);  % make into array
    MS3_RH = vertcat(MS3_RH,ms3_rh_array);     % for column array
    
    % MS3_airtemp data parsing
    ms3_airtemp = (ms3_temp(:,5));          % thid position, but it's a table!
    ms3_temp_array = table2array(ms3_airtemp);  % make into array
    MS3_AirTemp = vertcat(MS3_AirTemp,ms3_temp_array);     % for column array
       
    % MS3_Dew data parsing
    ms3_dew = (ms3_temp(:,6));          % thid position, but it's a table!
    ms3_dew_array = table2array(ms3_dew);  % make into array
    MS3_Dew = vertcat(MS3_Dew,ms3_dew_array);     % for column array
    
    k = k+1;
end

%% PAR AQUA1 DATA PARSING
PAR_Aqua1_Time = [];    % init pos 1, this is date and time (ex: 2023-05-27 15:02:00)
PAR_Aqua1_Den  = [];    % init pos 3, this is den
PAR_Aqua1_Tot  = [];    % init pos 4, this is tot
k = 17;         % init loop variable, the rest of the PAR_aqua1_hr files are trash 

for i = 17:158 % PAR_aqua1_hr files go to 158
    paraq1_name = sprintf('%s%d','PAR_aqua1_hr',k); % change the file name
    paraq1_temp = readtable(paraq1_name);           % all the data
   
    % Timestamp data parsing
    paraq1_time = (paraq1_temp(:,1));                   % thid position, but it's a table!
    paraq1_time_array = table2array(paraq1_time);       % make into array
    PAR_Aqua1_Time = vertcat(PAR_Aqua1_Time,paraq1_time_array); % for column array
    
    % Den data parsing
    paraq1_den = (paraq1_temp(:,3));          % thid position, but it's a table!
    paraq1_den_array = table2array(paraq1_den);  % make into array
    PAR_Aqua1_Den = vertcat(PAR_Aqua1_Den,paraq1_den_array);     % for column array
       
    % Tot data parsing
    paraq1_tot = (paraq1_temp(:,4));          % thid position, but it's a table!
    paraq1_tot_array = table2array(paraq1_tot);  % make into array
    PAR_Aqua1_Tot = vertcat(PAR_Aqua1_Tot,paraq1_tot_array);     % for column array
    
    k = k+1;
end

%% PAR AQUA2 DATA PARSING
PAR_Aqua2_Time = [];    % init pos 1, this is date and time (ex: 2023-05-27 15:02:00)
PAR_Aqua2_Den  = [];    % init pos 3, this is den
PAR_Aqua2_Tot  = [];    % init pos 4, this is tot
k = 17;         % init loop variable, the rest of the PAR_aqua1_hr files are trash 

for i = 17:158 % PAR_aqua2_hr files go to 158
    paraq2_name = sprintf('%s%d','PAR_aqua2_hr',k); % change the file name
    paraq2_temp = readtable(paraq2_name);           % all the data
   
    % Timestamp data parsing
    paraq2_time = (paraq2_temp(:,1));                   % thid position, but it's a table!
    paraq2_time_array = table2array(paraq2_time);       % make into array
    PAR_Aqua2_Time = vertcat(PAR_Aqua2_Time,paraq2_time_array); % for column array
    
    % Den data parsing
    paraq2_den = (paraq2_temp(:,3));          % thid position, but it's a table!
    paraq2_den_array = table2array(paraq2_den);  % make into array
    PAR_Aqua2_Den = vertcat(PAR_Aqua2_Den,paraq2_den_array);     % for column array
       
    % Tot data parsing
    paraq2_tot = (paraq2_temp(:,4));          % thid position, but it's a table!
    paraq2_tot_array = table2array(paraq2_tot);  % make into array
    PAR_Aqua2_Tot = vertcat(PAR_Aqua2_Tot,paraq2_tot_array);     % for column array
    
    k = k+1;
end

%% PAR ATMO DATA PARSING
PAR_Atmo_Time = [];    % init pos 1, this is date and time (ex: 2023-05-27 15:02:00)
PAR_Atmo_Den  = [];    % init pos 3, this is den
PAR_Atmo_Tot  = [];    % init pos 4, this is tot
k = 17;         % init loop variable, the rest of the PAR_aqua1_hr files are trash 

for i = 17:158 % PAR_aqua2_hr files go to 158, 17 is 1500 where the MS3 and EXO start
    paratmo_name = sprintf('%s%d','PAR_atmo_hr',k); % change the file name
    paratmo_temp = readtable(paratmo_name);           % all the data
   
    % Timestamp data parsing
    paratmo_time = (paratmo_temp(:,1));                   % thid position, but it's a table!
    paratmo_time_array = table2array(paratmo_time);       % make into array
    PAR_Atmo_Time = vertcat(PAR_Atmo_Time,paratmo_time_array); % for column array
    
    % Den data parsing
    paratmo_den = (paratmo_temp(:,3));          % thid position, but it's a table!
    paratmo_den_array = table2array(paratmo_den);  % make into array
    PAR_Atmo_Den = vertcat(PAR_Atmo_Den,paratmo_den_array);     % for column array
       
    % Tot data parsing
    paratmo_tot = (paratmo_temp(:,4));          % thid position, but it's a table!
    paratmo_tot_array = table2array(paratmo_tot);  % make into array
    PAR_Atmo_Tot = vertcat(PAR_Atmo_Tot,paratmo_tot_array);     % for column array
    
    k = k+1;
end

%% WS DATA PARSING
WS_Time   = [];    % init pos 1, this is date and time (ex: 2023-05-27 15:02:00)
WS_fWSV1  = [];    % init pos 3, this is m/s
WS_fWSV2  = [];    % init pos 4, this is m/s
WS_fWSV3  = [];    % init pos 5, this is m/s
WS_fWSC   = [];    % init pos 6, this is heading
k         = 17;    % init loop variable, the rest of the PAR_aqua1_hr files are trash 

for i = 17:158 % WS_hr files go to 158, 17 is 1500 where the MS3 and EXO start
    ws_name = sprintf('%s%d','WS_hr',k);    % change the file name
    ws_temp = readtable(ws_name);           % all the data
   
    % Timestamp data parsing
    ws_time = (ws_temp(:,1));                   % thid position, but it's a table!
    ws_time_array = table2array(ws_time);       % make into array
    WS_Time = vertcat(WS_Time,ws_time_array);   % for column array
    
    % fWSV1 data parsing
    ws1 = (ws_temp(:,3));                       % thid position, but it's a table!
    ws1_array = table2array(ws1);               % make into array
    WS_fWSV1 = vertcat(WS_fWSV1,ws1_array);     % for column array
       
    % fWSV2 data parsing
    ws2 = (ws_temp(:,4));                       % thid position, but it's a table!
    ws2_array = table2array(ws2);               % make into array
    WS_fWSV2 = vertcat(WS_fWSV2,ws2_array);     % for column array
    
    % fWSV3 data parsing
    ws3 = (ws_temp(:,5));                       % thid position, but it's a table!
    ws3_array = table2array(ws3);               % make into array
    WS_fWSV3 = vertcat(WS_fWSV3,ws3_array);     % for column array
    
    % fWSC data parsing
    wsc = (ws_temp(:,6));                       % thid position, but it's a table!
    wsc_array = table2array(wsc);               % make into array
    WS_fWSC = vertcat(WS_fWSC,wsc_array);       % for column array
    
    k = k+1;
end

%% EXO DATA PARSING
EXO_Time    = [];   % init pos 1,   date and time (ex: 2023-05-27 15:02:00)
EXO_Chloro  = [];   % init pos 3,   RFU
EXO_nLFCond = [];   % init pos 4,   microSimens/cm
EXO_Pres    = [];   % init pos 5,   psia
EXO_Turbid  = [];   % init pos 6,   FNU
EXO_Temp    = [];   % init pos 7,   degC
EXO_Cond    = [];   % init pos 8,   microSimens/cm
EXO_DOX     = [];   % init pos 9,   %Sat
EXO_Sal     = [];   % init pos 10,  PSU
EXO_TSS     = [];   % init pos 11,  mg/L
EXO_VertPos = [];   % init pos 12,  m
EXO_Depth   = [];   % init pos 13,  m
EXO_DOX2    = [];   % init pos 14,  %Local
EXO_SpCond  = [];   % init pos 15,  microSimens/cm
EXO_WipePos = [];   % init pos 16,  volt
EXO_BPower  = [];   % init pos 17,  volt
EXO_fDOM    = [];   % init pos 18,  QSU
EXO_DOX3    = [];   % init pos 19,  mg/L
EXO_Phyco   = [];   % init pos 20,  RFU
EXO_pH      = [];   % init pos 21,  pH
EXO_CabPwr  = [];   % init pos 22,  volt
EXO_fDOM2   = [];   % init pos 23,  RFU
EXO_ORP     = [];   % init pos 24,  mV
EXO_TDS     = [];   % init pos 25,  mg/L
EXO_pH2     = [];   % init pos 26,  mV
k = 16;    % init loop variable, the rest of the PAR_aqua1_hr files are trash 

for i = 16:157 % EXO_hr files go to 157, 16 is 1500 
    exo_name = sprintf('%s%d','EXO_hr',k);    % change the file name
    exo_temp = readtable(exo_name);           % all the data
   
    % EXO_Time data parsing
    exo_time = (exo_temp(:,1));                   % but it's a table!
    exo_time_array = table2array(exo_time);       % make into array
    EXO_Time = vertcat(EXO_Time,exo_time_array);  % for column array
    
    % EXO_Chloro data parsing
    exo_chloro = (exo_temp(:,3));                       % but it's a table!
    exo_chloro_array = table2array(exo_chloro);         % make into array
    EXO_Chloro = vertcat(EXO_Chloro,exo_chloro_array);  % for column array
    
    % EXO_nLFCond
    exo_nlf = (exo_temp(:,4));                          % but it's a table!
    exo_nlf_array = table2array(exo_nlf);               % make into array
    EXO_nLFCond = vertcat(EXO_nLFCond,exo_nlf_array);   % for column array
    
    % EXO_Pres
    exo_pres = (exo_temp(:,5));                    % but it's a table!
    exo_pres_array = table2array(exo_pres);        % make into array
    EXO_Pres = vertcat(EXO_Pres,exo_pres_array);   % for column array  
    
    % EXO_Turbid
    exo_turb = (exo_temp(:,6));                        % but it's a table!
    exo_turb_array = table2array(exo_turb);            % make into array
    EXO_Turbid = vertcat(EXO_Turbid,exo_turb_array);   % for column array      
    
    % EXO_Temp
    exo_tempy = (exo_temp(:,7));                    % but it's a table!
    exo_tempy_array = table2array(exo_tempy);       % make into array
    EXO_Temp = vertcat(EXO_Temp,exo_tempy_array);   % for column array     
    
    % EXO_Cond   
    exo_cond = (exo_temp(:,8));                   % but it's a table!
    exo_cond_array = table2array(exo_cond);       % make into array
    EXO_Cond = vertcat(EXO_Cond,exo_cond_array);  % for column array  
    
    % EXO_DOX     
    exo_dox = (exo_temp(:,9));                 % but it's a table!
    exo_dox_array = table2array(exo_dox);      % make into array
    EXO_DOX = vertcat(EXO_DOX,exo_dox_array);  % for column array      
    
    % EXO_Sal     
    exo_sal = (exo_temp(:,10));                % but it's a table!
    exo_sal_array = table2array(exo_sal);      % make into array
    EXO_Sal = vertcat(EXO_Sal,exo_sal_array);  % for column array      
    
    % EXO_TSS     
    exo_tss = (exo_temp(:,11));                % but it's a table!
    exo_tss_array = table2array(exo_tss);      % make into array
    EXO_TSS = vertcat(EXO_TSS,exo_tss_array);  % for column array     
    
    % EXO_VertPos 
    exo_verty = (exo_temp(:,12));                        % but it's a table!
    exo_verty_array = table2array(exo_verty);            % make into array
    EXO_VertPos = vertcat(EXO_VertPos,exo_verty_array);  % for column array   
    
    % EXO_Depth   
    exo_depth = (exo_temp(:,13));                    % but it's a table!
    exo_depth_array = table2array(exo_depth);        % make into array
    EXO_Depth = vertcat(EXO_Depth,exo_depth_array);  % for column array     
    
    % EXO_DOX2    
    exo_dox2 = (exo_temp(:,14));                  % but it's a table!
    exo_dox2_array = table2array(exo_dox2);       % make into array
    EXO_DOX2 = vertcat(EXO_DOX2,exo_dox2_array);  % for column array 
    
    % EXO_SpCond  
    exo_spd = (exo_temp(:,15));                      % but it's a table!
    exo_spd_array = table2array(exo_spd);            % make into array
    EXO_SpCond = vertcat(EXO_SpCond,exo_spd_array);  % for column array     
    
    % EXO_WipePos 
    exo_wipe = (exo_temp(:,16));                        % but it's a table!
    exo_wipe_array = table2array(exo_wipe);             % make into array
    EXO_WipePos = vertcat(EXO_WipePos,exo_wipe_array);  % for column array    
    
    % EXO_BPower  
    exo_bpower = (exo_temp(:,17));                      % but it's a table!
    exo_bpower_array = table2array(exo_bpower);         % make into array
    EXO_BPower = vertcat(EXO_BPower,exo_bpower_array);  % for column array     
    
    % EXO_fDOM    
    exo_fdom = (exo_temp(:,18));                  % but it's a table!
    exo_fdom_array = table2array(exo_fdom);       % make into array
    EXO_fDOM = vertcat(EXO_fDOM,exo_fdom_array);  % for column array
    
    % EXO_DOX3    
    exo_dox3 = (exo_temp(:,19));                  % but it's a table!
    exo_dox3_array = table2array(exo_dox3);       % make into array
    EXO_DOX3 = vertcat(EXO_DOX3,exo_dox3_array);  % for column array
    
    % EXO_Phyco   
    exo_phy = (exo_temp(:,20));                    % but it's a table!
    exo_phy_array = table2array(exo_phy);          % make into array
    EXO_Phyco = vertcat(EXO_Phyco,exo_phy_array);  % for column array
    
    % EXO_pH      
    exo_ph = (exo_temp(:,21));              % but it's a table!
    exo_ph_array = table2array(exo_ph);     % make into array
    EXO_pH = vertcat(EXO_pH,exo_ph_array);  % for column array
    
    % EXO_CabPwr  
    exo_capb = (exo_temp(:,22));                      % but it's a table!
    exo_cabp_array = table2array(exo_capb);           % make into array
    EXO_CabPwr = vertcat(EXO_CabPwr,exo_cabp_array);  % for column array
    
    % EXO_fDOM2 
    exo_fdom2 = (exo_temp(:,23));                    % but it's a table!
    exo_fdom2_array = table2array(exo_fdom2);        % make into array
    EXO_fDOM2 = vertcat(EXO_fDOM2,exo_fdom2_array);  % for column array
    
    % EXO_ORP    
    exo_orp = (exo_temp(:,24));                % but it's a table!
    exo_orp_array = table2array(exo_orp);      % make into array
    EXO_ORP = vertcat(EXO_ORP,exo_orp_array);  % for column array
    
    % EXO_TDS      
    exo_tds = (exo_temp(:,25));                % but it's a table!
    exo_tds_array = table2array(exo_tds);      % make into array
    EXO_TDS = vertcat(EXO_TDS,exo_tds_array);  % for column array
    
    % EXO_pH2    
    exo_ph2 = (exo_temp(:,26));                % but it's a table!
    exo_ph2_array = table2array(exo_ph2);      % make into array
    EXO_pH2 = vertcat(EXO_pH2,exo_ph2_array);  % for column array

    k = k+1;
end