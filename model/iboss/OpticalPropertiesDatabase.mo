  within iboss;
package OpticalPropertiesDatabase
  record OpticalProperties
    extends Modelica.Icons.Record;
    parameter Modelica.SIunits.Emissivity epsilon;
    parameter Modelica.SIunits.Emissivity alpha;
  end OpticalProperties;

  record MLI
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.016, alpha = 0.0037);
  end MLI;

  record Schwarze_Beschichtungen_IMAGECURE_XV501T_4
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.924, alpha = 0.943);
  end Schwarze_Beschichtungen_IMAGECURE_XV501T_4;

  record Schwarze_Beschichtungen_313_1
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.86, alpha = 0.96);
  end Schwarze_Beschichtungen_313_1;

  record Schwarze_Beschichtungen_Aeroglaze_306_Kevlar_Composite
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.91, alpha = 0.96);
  end Schwarze_Beschichtungen_Aeroglaze_306_Kevlar_Composite;

  record Schwarze_Beschichtungen_Aeroglaze_H322
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.86, alpha = 0.96);
  end Schwarze_Beschichtungen_Aeroglaze_H322;

  record Schwarze_Beschichtungen_Aeroglaze_L_300
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.84, alpha = 0.95);
  end Schwarze_Beschichtungen_Aeroglaze_L_300;

  record Schwarze_Beschichtungen_Black_paint
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.91, alpha = 0.98);
  end Schwarze_Beschichtungen_Black_paint;

  record Schwarze_Beschichtungen_Black_lacquer
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.75, alpha = 0.95);
  end Schwarze_Beschichtungen_Black_lacquer;

  record Schwarze_Beschichtungen_Black_matte
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.9, alpha = 0.9);
  end Schwarze_Beschichtungen_Black_matte;

  record Schwarze_Beschichtungen_Black_velvet_paint
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.94, alpha = 0.91);
  end Schwarze_Beschichtungen_Black_velvet_paint;

  record Schwarze_Beschichtungen_C_black_Anfang
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.73, alpha = 0.97);
  end Schwarze_Beschichtungen_C_black_Anfang;

  record Schwarze_Beschichtungen_C_black
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.75, alpha = 0.97);
  end Schwarze_Beschichtungen_C_black;

  record Schwarze_Beschichtungen_CTL15
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.87, alpha = 0.95);
  end Schwarze_Beschichtungen_CTL15;

  record Schwarze_Beschichtungen_Catalac
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.96);
  end Schwarze_Beschichtungen_Catalac;

  record Schwarze_Beschichtungen_Carbon_NS_7
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.96);
  end Schwarze_Beschichtungen_Carbon_NS_7;

  record Schwarze_Beschichtungen_Deep_Sky_Black
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.94, alpha = 0.95);
  end Schwarze_Beschichtungen_Deep_Sky_Black;

  record Schwarze_Beschichtungen_Electrodag
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.68, alpha = 0.9);
  end Schwarze_Beschichtungen_Electrodag;

  record Schwarze_Beschichtungen_MS_94
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.89, alpha = 0.96);
  end Schwarze_Beschichtungen_MS_94;

  record Schwarze_Beschichtungen_N_150_1
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.94, alpha = 0.94);
  end Schwarze_Beschichtungen_N_150_1;

  record Schwarze_Beschichtungen_NSB69_82
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.9, alpha = 0.97);
  end Schwarze_Beschichtungen_NSB69_82;

  record Schwarze_Beschichtungen_PT401
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.85, alpha = 0.95);
  end Schwarze_Beschichtungen_PT401;

  record Schwarze_Beschichtungen_Pyromark_1200
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.83, alpha = 0.95);
  end Schwarze_Beschichtungen_Pyromark_1200;

  record Schwarze_Beschichtungen_Vel_Black
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.95, alpha = 0.99);
  end Schwarze_Beschichtungen_Vel_Black;

  record Schwarze_Beschichtungen_Z306_Anfang
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.91, alpha = 0.96);
  end Schwarze_Beschichtungen_Z306_Anfang;

  record Schwarze_Beschichtungen_Z306_Ende
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.84, alpha = 0.96);
  end Schwarze_Beschichtungen_Z306_Ende;

  record Weisse_Beschichtungen_Elpemer_SD_2491_SM_TSW
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.976, alpha = 0.354);
  end Weisse_Beschichtungen_Elpemer_SD_2491_SM_TSW;

  record Weisse_Beschichtungen_401
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.91, alpha = 0.25);
  end Weisse_Beschichtungen_401;

  record Weisse_Beschichtungen_A276
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.23);
  end Weisse_Beschichtungen_A276;

  record Weisse_Beschichtungen_Aeroglaze_A276
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.26);
  end Weisse_Beschichtungen_Aeroglaze_A276;

  record Weisse_Beschichtungen_Aeroglaze_A276_K1100_composite
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.89, alpha = 0.53);
  end Weisse_Beschichtungen_Aeroglaze_A276_K1100_composite;

  record Weisse_Beschichtungen_Catalac
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.9, alpha = 0.24);
  end Weisse_Beschichtungen_Catalac;

  record Weisse_Beschichtungen_DC_007
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.19);
  end Weisse_Beschichtungen_DC_007;

  record Weisse_Beschichtungen_Lucite
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.9, alpha = 0.35);
  end Weisse_Beschichtungen_Lucite;

  record Weisse_Beschichtungen_NS_37
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.91, alpha = 0.36);
  end Weisse_Beschichtungen_NS_37;

  record Weisse_Beschichtungen_NS_43C
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.92, alpha = 0.2);
  end Weisse_Beschichtungen_NS_43C;

  record Weisse_Beschichtungen_NS_43G
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.9, alpha = 0.26);
  end Weisse_Beschichtungen_NS_43G;

  record Weisse_Beschichtungen_NS_43G_Hincom
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.92, alpha = 0.18);
  end Weisse_Beschichtungen_NS_43G_Hincom;

  record Weisse_Beschichtungen_NS_44B
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.91, alpha = 0.34);
  end Weisse_Beschichtungen_NS_44B;

  record Weisse_Beschichtungen_NS_74
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.92, alpha = 0.17);
  end Weisse_Beschichtungen_NS_74;

  record Weisse_Beschichtungen_OSO_H_63W
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.83, alpha = 0.27);
  end Weisse_Beschichtungen_OSO_H_63W;

  record Weisse_Beschichtungen_P764_1A
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.92, alpha = 0.23);
  end Weisse_Beschichtungen_P764_1A;

  record Weisse_Beschichtungen_PV_100
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.82, alpha = 0.22);
  end Weisse_Beschichtungen_PV_100;

  record Weisse_Beschichtungen_S_13G_Anfang
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.9, alpha = 0.2);
  end Weisse_Beschichtungen_S_13G_Anfang;

  record Weisse_Beschichtungen_S_13G_4_Jahre_GEO
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.56);
  end Weisse_Beschichtungen_S_13G_4_Jahre_GEO;

  record Weisse_Beschichtungen_S_13G_Ende
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.85, alpha = 0.7);
  end Weisse_Beschichtungen_S_13G_Ende;

  record Weisse_Beschichtungen_S_13GLO_Anfang
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.22);
  end Weisse_Beschichtungen_S_13GLO_Anfang;

  record Weisse_Beschichtungen_S_13GLO_3_Jahre_GEO
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.39);
  end Weisse_Beschichtungen_S_13GLO_3_Jahre_GEO;

  record Weisse_Beschichtungen_S_13GLO_5_Jahre_GEO
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.47);
  end Weisse_Beschichtungen_S_13GLO_5_Jahre_GEO;

  record Weisse_Beschichtungen_S_13GPLO_Kevlar_Composite
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.9, alpha = 0.21);
  end Weisse_Beschichtungen_S_13GPLO_Kevlar_Composite;

  record Weisse_Beschichtungen_Skyspar
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.91, alpha = 0.22);
  end Weisse_Beschichtungen_Skyspar;

  record Weisse_Beschichtungen_Sperex
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.85, alpha = 0.34);
  end Weisse_Beschichtungen_Sperex;

  record Weisse_Beschichtungen_STM_K797_Anfang
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.85, alpha = 0.22);
  end Weisse_Beschichtungen_STM_K797_Anfang;

  record Weisse_Beschichtungen_STM_K797_4_Jahre_GEO
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.85, alpha = 0.6);
  end Weisse_Beschichtungen_STM_K797_4_Jahre_GEO;

  record Weisse_Beschichtungen_Thermatrol_DC_92_007_Anfang
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.82, alpha = 0.19);
  end Weisse_Beschichtungen_Thermatrol_DC_92_007_Anfang;

  record Weisse_Beschichtungen_Thermatrol_DC_92_007_4_Jahre_GEO
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.82, alpha = 0.57);
  end Weisse_Beschichtungen_Thermatrol_DC_92_007_4_Jahre_GEO;

  record Weisse_Beschichtungen_V_200
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.89, alpha = 0.26);
  end Weisse_Beschichtungen_V_200;

  record Weisse_Beschichtungen_White_velvet_400_series
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.87, alpha = 0.3);
  end Weisse_Beschichtungen_White_velvet_400_series;

  record Weisse_Beschichtungen_YB71_Anfang
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.9, alpha = 0.18);
  end Weisse_Beschichtungen_YB71_Anfang;

  record Weisse_Beschichtungen_YB71_Ende
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.91, alpha = 0.7);
  end Weisse_Beschichtungen_YB71_Ende;

  record Weisse_Beschichtungen_Z_93
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.92, alpha = 0.16);
  end Weisse_Beschichtungen_Z_93;

  record Weisse_Beschichtungen_Z_93_10_Jahre_GEO
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.92, alpha = 0.55);
  end Weisse_Beschichtungen_Z_93_10_Jahre_GEO;

  record Weisse_Beschichtungen_Z_93_SC55
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.94, alpha = 0.14);
  end Weisse_Beschichtungen_Z_93_SC55;

  record Weisse_Beschichtungen_Z_202
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.87, alpha = 0.25);
  end Weisse_Beschichtungen_Z_202;

  record Weisse_Beschichtungen_Z_255
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.89, alpha = 0.25);
  end Weisse_Beschichtungen_Z_255;

  record Andere_Beschichtungen_IMAGECURE_XV501T
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.967, alpha = 0.826);
  end Andere_Beschichtungen_IMAGECURE_XV501T;

  record Andere_Beschichtungen_Chemisch_Nickel_Gold
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.024, alpha = 0.238);
  end Andere_Beschichtungen_Chemisch_Nickel_Gold;

  record Andere_Beschichtungen_80_U
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.32, alpha = 0.29);
  end Andere_Beschichtungen_80_U;

  record Andere_Beschichtungen_586
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.3, alpha = 0.3);
  end Andere_Beschichtungen_586;

  record Andere_Beschichtungen_4817
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.49, alpha = 0.43);
  end Andere_Beschichtungen_4817;

  record Andere_Beschichtungen_Aeroglaze_A971
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.89, alpha = 0.43);
  end Andere_Beschichtungen_Aeroglaze_A971;

  record Andere_Beschichtungen_Chromacoat
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.05, alpha = 0.28);
  end Andere_Beschichtungen_Chromacoat;

  record Andere_Beschichtungen_COR_RC
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.71, alpha = 0.28);
  end Andere_Beschichtungen_COR_RC;

  record Andere_Beschichtungen_Epon_828
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.36, alpha = 0.37);
  end Andere_Beschichtungen_Epon_828;

  record Andere_Beschichtungen_Finch_643_1_1
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.23, alpha = 0.22);
  end Andere_Beschichtungen_Finch_643_1_1;

  record Andere_Beschichtungen_NS_43G
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.9, alpha = 0.38);
  end Andere_Beschichtungen_NS_43G;

  record Andere_Beschichtungen_NS_43_E
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.89, alpha = 0.57);
  end Andere_Beschichtungen_NS_43_E;

  record Andere_Beschichtungen_NS_53_B
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.87, alpha = 0.52);
  end Andere_Beschichtungen_NS_53_B;

  record Andere_Beschichtungen_NS_55_F
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.91, alpha = 0.57);
  end Andere_Beschichtungen_NS_55_F;

  record Andere_Beschichtungen_NS_79
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.91, alpha = 0.57);
  end Andere_Beschichtungen_NS_79;

  record Andere_Beschichtungen_TOR_RC
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.82, alpha = 0.18);
  end Andere_Beschichtungen_TOR_RC;

  record Oberflaechenbehandlungen_DURNI_COAT_DNC_520_25mum_EN_AW_5083
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.126, alpha = 0.465);
  end Oberflaechenbehandlungen_DURNI_COAT_DNC_520_25mum_EN_AW_5083;

  record Oberflaechenbehandlungen_DURNI_COAT_DNC_520_25mum_EN_AW_6060
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.132, alpha = 0.453);
  end Oberflaechenbehandlungen_DURNI_COAT_DNC_520_25mum_EN_AW_6060;

  record Oberflaechenbehandlungen_DURNI_COAT_DNC_520_50mum_EN_AW_5083
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.119, alpha = 0.457);
  end Oberflaechenbehandlungen_DURNI_COAT_DNC_520_50mum_EN_AW_5083;

  record Oberflaechenbehandlungen_DURNI_COAT_DNC_520_50mum_EN_AW_6060
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.122, alpha = 0.438);
  end Oberflaechenbehandlungen_DURNI_COAT_DNC_520_50mum_EN_AW_6060;

  record Oberflaechenbehandlungen_HART_COAT_50mum_EN_AW_5083
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.978, alpha = 0.844);
  end Oberflaechenbehandlungen_HART_COAT_50mum_EN_AW_5083;

  record Oberflaechenbehandlungen_HART_COAT_50mum_EN_AW_6060
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.975, alpha = 0.719);
  end Oberflaechenbehandlungen_HART_COAT_50mum_EN_AW_6060;

  record Oberflaechenbehandlungen_KEPLA_COAT_Schwarz_10mum_EN_AW_5083
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.93, alpha = 0.913);
  end Oberflaechenbehandlungen_KEPLA_COAT_Schwarz_10mum_EN_AW_5083;

  record Oberflaechenbehandlungen_KEPLA_COAT_Schwarz_10mum_EN_AW_6060
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.93, alpha = 0.908);
  end Oberflaechenbehandlungen_KEPLA_COAT_Schwarz_10mum_EN_AW_6060;

  record Oberflaechenbehandlungen_Poliert___EN_AW_5083
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.1, alpha = 0.213);
  end Oberflaechenbehandlungen_Poliert___EN_AW_5083;

  record Oberflaechenbehandlungen_Poliert___EN_AW_6060
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.245, alpha = 0.192);
  end Oberflaechenbehandlungen_Poliert___EN_AW_6060;

  record Oberflaechenbehandlungen_PVD_Titanoxidschicht___EN_AW_1050
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.035, alpha = 0.927);
  end Oberflaechenbehandlungen_PVD_Titanoxidschicht___EN_AW_1050;

  record Oberflaechenbehandlungen_Sandgestrahlt___EN_AW_5083
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.257, alpha = 0.483);
  end Oberflaechenbehandlungen_Sandgestrahlt___EN_AW_5083;

  record Oberflaechenbehandlungen_Sandgestrahlt___EN_AW_6060
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.322, alpha = 0.418);
  end Oberflaechenbehandlungen_Sandgestrahlt___EN_AW_6060;

  record Oberflaechenbehandlungen_Anodisiert_Blau___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.87, alpha = 0.67);
  end Oberflaechenbehandlungen_Anodisiert_Blau___Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Braun___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.86, alpha = 0.73);
  end Oberflaechenbehandlungen_Anodisiert_Braun___Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Chromsaeure___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.56, alpha = 0.44);
  end Oberflaechenbehandlungen_Anodisiert_Chromsaeure___Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Farblos___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.76, alpha = 0.27);
  end Oberflaechenbehandlungen_Anodisiert_Farblos___Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Gelb___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.87, alpha = 0.47);
  end Oberflaechenbehandlungen_Anodisiert_Gelb___Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Gold___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.82, alpha = 0.48);
  end Oberflaechenbehandlungen_Anodisiert_Gold___Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Gruen___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.66);
  end Oberflaechenbehandlungen_Anodisiert_Gruen___Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Matt___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.04, alpha = 0.26);
  end Oberflaechenbehandlungen_Anodisiert_Matt___Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Rot___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.57);
  end Oberflaechenbehandlungen_Anodisiert_Rot___Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Schwarz___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.88);
  end Oberflaechenbehandlungen_Anodisiert_Schwarz___Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Schwarz_2p5_nm_Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.75, alpha = 0.51);
  end Oberflaechenbehandlungen_Anodisiert_Schwarz_2p5_nm_Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Schwarz_12p7_nm_Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.82, alpha = 0.6);
  end Oberflaechenbehandlungen_Anodisiert_Schwarz_12p7_nm_Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Schwarz_25p4_nm_Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.84, alpha = 0.67);
  end Oberflaechenbehandlungen_Anodisiert_Schwarz_25p4_nm_Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Schwarz_38_nm_Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.86, alpha = 0.73);
  end Oberflaechenbehandlungen_Anodisiert_Schwarz_38_nm_Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Schwarz_50p8_nm_Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.86, alpha = 0.7);
  end Oberflaechenbehandlungen_Anodisiert_Schwarz_50p8_nm_Aluminium;

  record Oberflaechenbehandlungen_Anodisiert_Schwefelsaeure___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.87, alpha = 0.42);
  end Oberflaechenbehandlungen_Anodisiert_Schwefelsaeure___Aluminium;

  record Oberflaechenbehandlungen_Chemisch_Nickel____
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.07, alpha = 0.39);
  end Oberflaechenbehandlungen_Chemisch_Nickel____;

  record Oberflaechenbehandlungen_Galvanisiert_Gold____
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.03, alpha = 0.23);
  end Oberflaechenbehandlungen_Galvanisiert_Gold____;

  record Oberflaechenbehandlungen_Geschliffen___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.03, alpha = 0.16);
  end Oberflaechenbehandlungen_Geschliffen___Aluminium;

  record Oberflaechenbehandlungen_Geschliffen___Kupfer
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.03, alpha = 0.3);
  end Oberflaechenbehandlungen_Geschliffen___Kupfer;

  record Oberflaechenbehandlungen_Poliert_Anfang_der_Nutzungsdauer_Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.05, alpha = 0.15);
  end Oberflaechenbehandlungen_Poliert_Anfang_der_Nutzungsdauer_Aluminium;

  record Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.05, alpha = 0.15);
  end Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium;

  record Oberflaechenbehandlungen_Poliert___Edelstahl
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.11, alpha = 0.42);
  end Oberflaechenbehandlungen_Poliert___Edelstahl;

  record Oberflaechenbehandlungen_Poliert_Anfang_der_Nutzungsdauer_Gold
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.05, alpha = 0.3);
  end Oberflaechenbehandlungen_Poliert_Anfang_der_Nutzungsdauer_Gold;

  record Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Gold
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.05, alpha = 0.3);
  end Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Gold;

  record Oberflaechenbehandlungen_Poliert___Silber
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.02, alpha = 0.04);
  end Oberflaechenbehandlungen_Poliert___Silber;

  record Oberflaechenbehandlungen_Poliert___Wolfram
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.03, alpha = 0.44);
  end Oberflaechenbehandlungen_Poliert___Wolfram;

  record Oberflaechenbehandlungen_PVD_Aluminiumschicht____
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.02, alpha = 0.08);
  end Oberflaechenbehandlungen_PVD_Aluminiumschicht____;

  record Oberflaechenbehandlungen_PVD_Aluminiumschicht___Glassfasern
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.07, alpha = 0.15);
  end Oberflaechenbehandlungen_PVD_Aluminiumschicht___Glassfasern;

  record Oberflaechenbehandlungen_PVD_Aluminiumschicht___Edelstahl
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.02, alpha = 0.08);
  end Oberflaechenbehandlungen_PVD_Aluminiumschicht___Edelstahl;

  record Oberflaechenbehandlungen_PVD_Chromschicht___Glass
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.17, alpha = 0.56);
  end Oberflaechenbehandlungen_PVD_Chromschicht___Glass;

  record Oberflaechenbehandlungen_PVD_Chromschicht___Kapton_127_mum
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.24, alpha = 0.57);
  end Oberflaechenbehandlungen_PVD_Chromschicht___Kapton_127_mum;

  record Oberflaechenbehandlungen_PVD_Eisenoxidschicht___Glass
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.56, alpha = 0.85);
  end Oberflaechenbehandlungen_PVD_Eisenoxidschicht___Glass;

  record Oberflaechenbehandlungen_PVD_Germaniumschicht___Glass
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.09, alpha = 0.52);
  end Oberflaechenbehandlungen_PVD_Germaniumschicht___Glass;

  record Oberflaechenbehandlungen_PVD_Goldbeschichtet___Glass
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.02, alpha = 0.19);
  end Oberflaechenbehandlungen_PVD_Goldbeschichtet___Glass;

  record Oberflaechenbehandlungen_PVD_Molybdaemschicht___Glass
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.21, alpha = 0.56);
  end Oberflaechenbehandlungen_PVD_Molybdaemschicht___Glass;

  record Oberflaechenbehandlungen_PVD_Nickelschicht___Glass
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.04, alpha = 0.38);
  end Oberflaechenbehandlungen_PVD_Nickelschicht___Glass;

  record Oberflaechenbehandlungen_PVD_Rhodiumschicht___Glass
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.03, alpha = 0.18);
  end Oberflaechenbehandlungen_PVD_Rhodiumschicht___Glass;

  record Oberflaechenbehandlungen_PVD_Silberschicht___Glass
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.02, alpha = 0.04);
  end Oberflaechenbehandlungen_PVD_Silberschicht___Glass;

  record Oberflaechenbehandlungen_PVD_Titanschicht___Glass
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.12, alpha = 0.52);
  end Oberflaechenbehandlungen_PVD_Titanschicht___Glass;

  record Oberflaechenbehandlungen_PVD_TiNOX_Titanoxidschicht_Kupfer
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.05, alpha = 0.95);
  end Oberflaechenbehandlungen_PVD_TiNOX_Titanoxidschicht_Kupfer;

  record Oberflaechenbehandlungen_PVD_Wolframschicht___Glass
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.27, alpha = 0.6);
  end Oberflaechenbehandlungen_PVD_Wolframschicht___Glass;

  record Oberflaechenbehandlungen_Sandgestrahlt___Edelstahl
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.38, alpha = 0.58);
  end Oberflaechenbehandlungen_Sandgestrahlt___Edelstahl;

  record Oberflaechenbehandlungen_Sandgestrahlt___Gold
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.14, alpha = 0.48);
  end Oberflaechenbehandlungen_Sandgestrahlt___Gold;

  record Oberflaechenbehandlungen_Stark_oxidiert___Aluminium
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.3, alpha = 0.13);
  end Oberflaechenbehandlungen_Stark_oxidiert___Aluminium;

  record Folien_Baender_____Graphitfolie
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.419, alpha = 0.731);
  end Folien_Baender_____Graphitfolie;

  record Folien_Baender_____Waermeleitpatch
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.934, alpha = 0.285);
  end Folien_Baender_____Waermeleitpatch;

  record Folien_Baender_Aluminiert_25p4_mum_Folie_Aclar
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.45, alpha = 0.12);
  end Folien_Baender_Aluminiert_25p4_mum_Folie_Aclar;

  record Folien_Baender_Aluminiert_50p8_mum_Folie_Aclar
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.62, alpha = 0.11);
  end Folien_Baender_Aluminiert_50p8_mum_Folie_Aclar;

  record Folien_Baender_Aluminiert_127_mum_Folie_Aclar
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.73, alpha = 0.11);
  end Folien_Baender_Aluminiert_127_mum_Folie_Aclar;

  record Folien_Baender___50p8_mump_Anfang_der_Nutzungsdauer_Aluminiumband
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.04, alpha = 0.15);
  end Folien_Baender___50p8_mump_Anfang_der_Nutzungsdauer_Aluminiumband;

  record Folien_Baender___25p4_mum_Folie_Inconel_X
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.1, alpha = 0.52);
  end Folien_Baender___25p4_mum_Folie_Inconel_X;

  record Folien_Baender_Aluminiert_Aluminiumseite_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.03, alpha = 0.12);
  end Folien_Baender_Aluminiert_Aluminiumseite_Kapton;

  record Folien_Baender_Aluminiert_2_mum_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.24, alpha = 0.23);
  end Folien_Baender_Aluminiert_2_mum_Kapton;

  record Folien_Baender_Aluminiert_3p8_mum_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.34, alpha = 0.25);
  end Folien_Baender_Aluminiert_3p8_mum_Kapton;

  record Folien_Baender_Aluminiert_6p4_mum_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.45, alpha = 0.31);
  end Folien_Baender_Aluminiert_6p4_mum_Kapton;

  record Folien_Baender_Aluminiert_12p7_mum_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.55, alpha = 0.34);
  end Folien_Baender_Aluminiert_12p7_mum_Kapton;

  record Folien_Baender_Aluminiert_12p7_mump_Dracon_cloth_reinforced_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.53, alpha = 0.35);
  end Folien_Baender_Aluminiert_12p7_mump_Dracon_cloth_reinforced_Kapton;

  record Folien_Baender_Aluminiert_25p4_mum_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.67, alpha = 0.38);
  end Folien_Baender_Aluminiert_25p4_mum_Kapton;

  record Folien_Baender_Aluminiert_38p1_mum_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.71, alpha = 0.4);
  end Folien_Baender_Aluminiert_38p1_mum_Kapton;

  record Folien_Baender_Aluminiert_50p8_mump_Anfang_der_Nutzungsdauer_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.73, alpha = 0.39);
  end Folien_Baender_Aluminiert_50p8_mump_Anfang_der_Nutzungsdauer_Kapton;

  record Folien_Baender_Aluminiert_50p8_mump_nach_3_Jahren_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.73, alpha = 0.55);
  end Folien_Baender_Aluminiert_50p8_mump_nach_3_Jahren_Kapton;

  record Folien_Baender_Aluminiert_50p8_mump_nach_5_Jahren_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.73, alpha = 0.67);
  end Folien_Baender_Aluminiert_50p8_mump_nach_5_Jahren_Kapton;

  record Folien_Baender_Aluminiert_76p2_mum_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.82, alpha = 0.45);
  end Folien_Baender_Aluminiert_76p2_mum_Kapton;

  record Folien_Baender_Aluminiert_127_mump_Anfang_der_Nutzungsdauer_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.83, alpha = 0.49);
  end Folien_Baender_Aluminiert_127_mump_Anfang_der_Nutzungsdauer_Kapton;

  record Folien_Baender_Aluminiert_127_mump_nach_2p5_Jahren_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.83, alpha = 0.61);
  end Folien_Baender_Aluminiert_127_mump_nach_2p5_Jahren_Kapton;

  record Folien_Baender_Aluminiert_127_mump_Ende_der_Nutzungsdauer_Kapton
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.83, alpha = 0.7);
  end Folien_Baender_Aluminiert_127_mump_Ende_der_Nutzungsdauer_Kapton;

  record Folien_Baender_Aluminiumoxidschicht_25p4_mum_Kapton_aluminiert
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.2, alpha = 0.12);
  end Folien_Baender_Aluminiumoxidschicht_25p4_mum_Kapton_aluminiert;

  record Folien_Baender_Aluminiumoxidschicht_25p4mump_nach_1800_Stunden_UV_Kapton_aluminiert
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.2, alpha = 0.12);
  end Folien_Baender_Aluminiumoxidschicht_25p4mump_nach_1800_Stunden_UV_Kapton_aluminiert;

  record Folien_Baender_Indiumzinnoxid_ITO_50p8_mump_Anfang_der_Nutzungsdauer_Kapton_aluminiert
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.75, alpha = 0.34);
  end Folien_Baender_Indiumzinnoxid_ITO_50p8_mump_Anfang_der_Nutzungsdauer_Kapton_aluminiert;

  record Folien_Baender_Indiumzinnoxid_ITO_50p8_mump_nach_3_Jahren_Kapton_aluminiert
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.75, alpha = 0.47);
  end Folien_Baender_Indiumzinnoxid_ITO_50p8_mump_nach_3_Jahren_Kapton_aluminiert;

  record Folien_Baender_Siliciumoxidschicht_12p7_mump_Anfang_der_Nutzungsdauer_Kapton_aluminiert
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.18, alpha = 0.12);
  end Folien_Baender_Siliciumoxidschicht_12p7_mump_Anfang_der_Nutzungsdauer_Kapton_aluminiert;

  record Folien_Baender_Siliciumoxidschicht_12p7_mump_nach_4000_Stunden_UV_Kapton_aluminiert
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.24, alpha = 0.28);
  end Folien_Baender_Siliciumoxidschicht_12p7_mump_nach_4000_Stunden_UV_Kapton_aluminiert;

  record Folien_Baender_Siliciumoxidschicht_25p4_mum_Kapton_aluminiert
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.33, alpha = 0.11);
  end Folien_Baender_Siliciumoxidschicht_25p4_mum_Kapton_aluminiert;

  record Folien_Baender_Siliciumoxidschicht_25p4_mump_nach_2400_Stunden_UV_Kapton_aluminiert
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.33, alpha = 0.22);
  end Folien_Baender_Siliciumoxidschicht_25p4_mump_nach_2400_Stunden_UV_Kapton_aluminiert;

  record Folien_Baender_Aluminiumoxidschicht_25p4_mum_Kapton_versilbert
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.19, alpha = 0.08);
  end Folien_Baender_Aluminiumoxidschicht_25p4_mum_Kapton_versilbert;

  record Folien_Baender_Aluminiumoxidschicht_25p4mump_nach_2400_Stunden_UV_Kapton_versilbert
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.21, alpha = 0.08);
  end Folien_Baender_Aluminiumoxidschicht_25p4mump_nach_2400_Stunden_UV_Kapton_versilbert;

  record Folien_Baender___25p4_mump_Anfang_der_Nutzungsdauer_Kapton_black_Carbon_loaded
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.92);
  end Folien_Baender___25p4_mump_Anfang_der_Nutzungsdauer_Kapton_black_Carbon_loaded;

  record Folien_Baender___25p4_mump_nach_5_Jahren_in_GEO_Kapton_black_Carbon_loaded
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.92);
  end Folien_Baender___25p4_mump_nach_5_Jahren_in_GEO_Kapton_black_Carbon_loaded;

  record Folien_Baender___25p4_mump_nach_10_Jahren_in_GEO_Kapton_black_Carbon_loaded
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.89);
  end Folien_Baender___25p4_mump_nach_10_Jahren_in_GEO_Kapton_black_Carbon_loaded;

  record Folien_Baender_Aluminiert_20p3_mum_Kimfoil_polycarbonate_film
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.23, alpha = 0.19);
  end Folien_Baender_Aluminiert_20p3_mum_Kimfoil_polycarbonate_film;

  record Folien_Baender_Aluminiert_5p1_mum_Kimfoil_polycarbonate_film
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.3, alpha = 0.2);
  end Folien_Baender_Aluminiert_5p1_mum_Kimfoil_polycarbonate_film;

  record Folien_Baender_Aluminiert_6p1_mum_Kimfoil_polycarbonate_film
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.28, alpha = 0.17);
  end Folien_Baender_Aluminiert_6p1_mum_Kimfoil_polycarbonate_film;

  record Folien_Baender___Matt_Kupferfolie_Band
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.02, alpha = 0.32);
  end Folien_Baender___Matt_Kupferfolie_Band;

  record Folien_Baender_Sandgestrahlt___Kupferfolie_Band
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.04, alpha = 0.26);
  end Folien_Baender_Sandgestrahlt___Kupferfolie_Band;

  record Folien_Baender_Angelaufen___Kupferfolie_Band
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.04, alpha = 0.55);
  end Folien_Baender_Angelaufen___Kupferfolie_Band;

  record Folien_Baender___Anfang_der_Nutzungsdauer_Skylab_sail
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.35, alpha = 0.15);
  end Folien_Baender___Anfang_der_Nutzungsdauer_Skylab_sail;

  record Folien_Baender___Nach_1900_Stunden_UV_Skylab_sail
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.36, alpha = 0.19);
  end Folien_Baender___Nach_1900_Stunden_UV_Skylab_sail;

  record Folien_Baender___Anfang_der_Nutzungsdauer_Skylab_parasol_fabric_orange
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.86, alpha = 0.51);
  end Folien_Baender___Anfang_der_Nutzungsdauer_Skylab_parasol_fabric_orange;

  record Folien_Baender___Nach_2400_Stunden_UV_Skylab_parasol_fabric_orange
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.86, alpha = 0.65);
  end Folien_Baender___Nach_2400_Stunden_UV_Skylab_parasol_fabric_orange;

  record Folien_Baender_Goldbeschichtet_12p7_mum_Tedlar
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.49, alpha = 0.3);
  end Folien_Baender_Goldbeschichtet_12p7_mum_Tedlar;

  record Folien_Baender_Goldbeschichtet_25p4_mum_Tedlar
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.58, alpha = 0.26);
  end Folien_Baender_Goldbeschichtet_25p4_mum_Tedlar;

  record Folien_Baender_Goldbeschichtet_127_mum_Tedlar
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.81, alpha = 0.22);
  end Folien_Baender_Goldbeschichtet_127_mum_Tedlar;

  record Folien_Baender_Goldbeschichtet_254_mum_Tedlar
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.82, alpha = 0.23);
  end Folien_Baender_Goldbeschichtet_254_mum_Tedlar;

  record Folien_Baender_____Tape_235_black
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.9, alpha = 0.95);
  end Folien_Baender_____Tape_235_black;

  record Folien_Baender_____Tape_425
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.03, alpha = 0.2);
  end Folien_Baender_____Tape_425;

  record Folien_Baender_____Tape_850
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.59, alpha = 0.15);
  end Folien_Baender_____Tape_850;

  record Folien_Baender_____Tape_7361
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.03, alpha = 0.09);
  end Folien_Baender_____Tape_7361;

  record Folien_Baender_____Tape_7452
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.03, alpha = 0.14);
  end Folien_Baender_____Tape_7452;

  record Folien_Baender_____Tape_7800
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.03, alpha = 0.21);
  end Folien_Baender_____Tape_7800;

  record Folien_Baender_____Tape_Y9360
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.03, alpha = 0.19);
  end Folien_Baender_____Tape_Y9360;

  record Optical_Solar_Reflectors_OSR_____OSR_Quartz
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.8, alpha = 0.07);
  end Optical_Solar_Reflectors_OSR_____OSR_Quartz;

  record Optical_Solar_Reflectors_OSR_____OSR_Diffuse
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.8, alpha = 0.1);
  end Optical_Solar_Reflectors_OSR_____OSR_Diffuse;

  record Optical_Solar_Reflectors_OSR_Indiumzinnoxid_ITO___OSR
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.76, alpha = 0.07);
  end Optical_Solar_Reflectors_OSR_Indiumzinnoxid_ITO___OSR;

  record Optical_Solar_Reflectors_OSR_Aluminiert_12p7_mum_Teflon
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.4, alpha = 0.14);
  end Optical_Solar_Reflectors_OSR_Aluminiert_12p7_mum_Teflon;

  record Optical_Solar_Reflectors_OSR_Aluminiert_25p4_mum_Teflon
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.48, alpha = 0.14);
  end Optical_Solar_Reflectors_OSR_Aluminiert_25p4_mum_Teflon;

  record Optical_Solar_Reflectors_OSR_Aluminiert_50p8_mum_Teflon
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.6, alpha = 0.14);
  end Optical_Solar_Reflectors_OSR_Aluminiert_50p8_mum_Teflon;

  record Optical_Solar_Reflectors_OSR_Aluminiert_50p8_mum_Band_Teflon
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.76, alpha = 0.17);
  end Optical_Solar_Reflectors_OSR_Aluminiert_50p8_mum_Band_Teflon;

  record Optical_Solar_Reflectors_OSR_Aluminiert_50p8_mum_Folie_Teflon
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.65, alpha = 0.16);
  end Optical_Solar_Reflectors_OSR_Aluminiert_50p8_mum_Folie_Teflon;

  record Optical_Solar_Reflectors_OSR_Aluminiert_127_mum_Teflon
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.81, alpha = 0.22);
  end Optical_Solar_Reflectors_OSR_Aluminiert_127_mum_Teflon;

  record Optical_Solar_Reflectors_OSR_Aluminiert_190p5_mum_Teflon
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.8, alpha = 0.15);
  end Optical_Solar_Reflectors_OSR_Aluminiert_190p5_mum_Teflon;

  record Optical_Solar_Reflectors_OSR_Aluminiert_254_mum_Teflon
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.87, alpha = 0.13);
  end Optical_Solar_Reflectors_OSR_Aluminiert_254_mum_Teflon;

  record Optical_Solar_Reflectors_OSR_Versilbert_50p8_mum_Teflon
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.68, alpha = 0.08);
  end Optical_Solar_Reflectors_OSR_Versilbert_50p8_mum_Teflon;

  record Optical_Solar_Reflectors_OSR_Versilbert_127_mum_Teflon
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.81, alpha = 0.08);
  end Optical_Solar_Reflectors_OSR_Versilbert_127_mum_Teflon;

  record Optical_Solar_Reflectors_OSR_Versilbert_254_mum_Teflon
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.88, alpha = 0.09);
  end Optical_Solar_Reflectors_OSR_Versilbert_254_mum_Teflon;

  record Sonstiges_Poliert_Faser_Ausrichtung_0Grad_90Grad_CFK
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.857, alpha = 0.927);
  end Sonstiges_Poliert_Faser_Ausrichtung_0Grad_90Grad_CFK;

  record Sonstiges___Faser_Ausrichtung_0Grad_90Grad_CFK
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.964, alpha = 0.929);
  end Sonstiges___Faser_Ausrichtung_0Grad_90Grad_CFK;

  record Sonstiges_Poliert_Faser_Ausrichtung_45Grad_45Grad_45Grad_CFK
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.91, alpha = 0.915);
  end Sonstiges_Poliert_Faser_Ausrichtung_45Grad_45Grad_45Grad_CFK;

  record Sonstiges___Faser_Ausrichtung_45Grad_45Grad_45Grad_CFK
    extends OpticalPropertiesDatabase.OpticalProperties(epsilon = 0.961, alpha = 0.914);
  end Sonstiges___Faser_Ausrichtung_45Grad_45Grad_45Grad_CFK;
end OpticalPropertiesDatabase;
