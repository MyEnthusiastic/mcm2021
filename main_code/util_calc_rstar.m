function [r_star] = util_calc_rstar(gauss_paras, tmp, mois)
    lp =  gauss_paras(7).*exp(-(tmp-gauss_paras(2)).^2 ./ gauss_paras(3).^2);
    rp = gauss_paras(8).*exp(-(mois-gauss_paras(5)).^2 ./ gauss_paras(6).^2);
    r_star = lp + rp;
end