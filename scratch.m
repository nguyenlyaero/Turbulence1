[u,v,w] = generate_isotropic_turbulence(256,256,256,1);

%%
[E,kline] = get_energy_spectrum(u,500);
figure;
loglog(kline, E);
hold on;
loglog(kline, 1.4528*(kline.^4)./((1 + kline.^2).^(17/6)));

%%
kco=15;
uL=sharp_filter(u,kco);
uS=u-uL;
[ES,klineS] = get_energy_spectrum(uS,500);
[EL,klineL] = get_energy_spectrum(uL,500);
loglog(klineS, ES);
loglog(klineL, EL);