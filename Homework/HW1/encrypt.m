%% encrypt.m
% Implements a fake encryption scheme
% Author: Len Pieroni
% No assistance

%% Inputs
password = input('Enter password', 's');
phoneNumber = input('Enter phone number (just the digits)');
phoneNumber = num2str(phoneNumber);
%% Encrypt the thing
encryption = phoneNumber(1);
for i = 1:9
    encryption = strcat(encryption, num2str(password(i)));
    encryption = strcat(encryption, num2str(phoneNumber(i+1)));
end
%% Output
out = "The encrypted text is: " + encryption;
disp(out)                   