% 'A Holistic Wellness Center' MATLAB code 

% Creating Variables 

clinicName = 'A Holistic Wellness Center';   % name of the clinic 
centerLocation = 'Berkeley, California';      % location of the clinic  
numProviders = 4;                            % number of providers 
providers = {'Mary', 'John', 'Beth', 'Dave'}; % list of provider names 

% Creating arrays for provider information 

providerSpecialties = {'Acupuncture', 'Herbal Medicine', 'Cranial Sacral Therapy', 'Cognitive Behavioral Therapy'}; % list of provider specialties 
providerHours = [9, 11, 2, 4];                                                                                     % list of provider hours available 
providerRates = [75, 65, 90, 50];                                                                                  % list of provider rates 

% Printing the clinic information

fprintf('Name: %s\nLocation: %s\nNumber of providers: %d\n', clinicName, centerLocation, numProviders);

% Creating loop to print provider information 

for i = 1:numProviders
    fprintf('Provider: %s\n Specialty: %s\n Hours: %d pm\n Rate: $%d\n\n', providers{i}, providerSpecialties{i}, providerHours(i), providerRates(i));
end

% Creating variable for appointment calendar

appointmentCalendar = [1, 1, 1, 1, 0, 0, 0; 
                     0, 0, 0, 0, 0, 0, 0;
                     1, 1, 1, 0, 1, 0, 0;
                     1, 0, 0, 0, 1, 0, 0]; 

% Creating loop to print out the weekly appointment calendar for each provider

for i = 1:numProviders
    fprintf('Appointment Calendar for Provider %s\n', providers{i});
    disp(appointmentCalendar(i,:));   
end

% Creating variables for services and rates

services = {'Acupuncture', 'Herbal Medicine', 'Cranial Sacral Therapy', 'Cognitive Behavioral Therapy', 'Massage Therapy'};  % list of services offered 
serviceRates = [75, 65, 90, 50, 65];                                                                                       % list of service rates 

% Printing out list of services and rates 

fprintf('Services offered at %s\n', clinicName);
for i = 1:length(services)
    fprintf('Service Name: %s\nRate: $%d\n\n', services{i}, serviceRates(i));
end

% Creating function for calculating service cost

function cost = calculateCost(nServices, serviceRates)
    % Calculates the cost of provided services
    %
    % INPUT 
    % nServices: array of number of services used
    % serviceRates: array of service rates 
    %
    % OUTPUT 
    % cost: total cost of services 
    
    cost = sum(nServices .* serviceRates);
end

% Creating variable for customer service usage

custServices = [3, 0, 0, 2, 1];

% Calculating total cost for customer services 

totalCostCust = calculateCost(custServices, serviceRates);

% Printing total cost to customer 

fprintf('Total cost for customer services: $%d\n', totalCostCust);