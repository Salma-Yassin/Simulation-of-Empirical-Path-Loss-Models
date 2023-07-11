%% BERs plots for 16-QAM and BFSK both theortical and through simulations

clear
clc

NdB = 10;
PdB = linspace(10,1000,2000);
SNR = PdB - NdB ;

%% BER With AWGN only 

BER_16_QAM_AWGN = [];


for i = 1:1:length(SNR)% run the 16-QAM modulation for different valus of E0/N0
    b = assig6(SNR(i));
    BER_16_QAM_AWGN = [BER_16_QAM_AWGN b];
end

% subplot(2,1,1)
% semilogy(SNR, BER_16_QAM_AWGN+0.1)
% xlim([0 600])
% title('BERs of 16-QAM With AWGN only')
% xlabel('SNR')
% ylabel('Bit Error Rate')
% legend('16 - QAM')
% grid on 
% ylim([0.1 0.6])


%% BER With AWGN and empirical channel 

BER_16_QAM_emp =[];


for i =1:1:length(SNR)% run the 16-QAM modulation for different valus of E0/N0
    b = assig6(SNR(i));
    BER_16_QAM_emp = [BER_16_QAM_emp b];
end
% 
% subplot(2,1,2)
% semilogy(SNR , BER_16_QAM_emp)
% xlim([0 600])
% title('BERs of 16-QAM With AWGN and Empirical Model')
% xlabel('SNR')
% ylabel('Bit Error Rate')
% legend('16 - QAM')
% grid on 
% ylim([0.2 0.6])


