// CP: 65001
// SimulationX Version: 3.5.706.23 x64
model Model "EVS2x2x3simx.mo"
	bb_catalogue.bb_solar bb_solar1 annotation(Placement(transformation(
		origin={45,-70},
		extent={{16,15},{-5.08917,-5.08917}})));
	Modelica.Blocks.Sources.Trapezoid trapezoid1(
		amplitude=1367,
		rising=60,
		width=1000,
		falling=60,
		period=3000) annotation(Placement(transformation(
		origin={-1,-39},
		extent={{-4.20593,-4.20593},{16,14}})));
	connectionelement ce1 annotation(Placement(transformation(
		origin={77,-67},
		extent={{-7,-8},{3,12}})));
	bb_catalogue.bb_verbraucher bb1 annotation(Placement(transformation(extent={{85,-75},{105,-55}})));
	bb_catalogue.bb_verbraucher bb2 annotation(Placement(transformation(extent={{125,-75},{145,-55}})));
	bb_catalogue.bb_verbraucher bb3 annotation(Placement(transformation(extent={{125,-35},{145,-15}})));
	bb_catalogue.bb_verbraucher bb4 annotation(Placement(transformation(extent={{85,-35},{105,-15}})));
	connectionelement ce2 annotation(Placement(transformation(
		origin={117,-27},
		extent={{-7,-8},{3,12}})));
	connectionelement ce3 annotation(Placement(transformation(
		origin={117,-67},
		extent={{-7,-8},{3,12}})));
	connectionelement ce4 annotation(Placement(transformation(
		origin={133,-47},
		extent={{-7,-8},{3,12}},
		rotation=-90)));
	connectionelement ce5 annotation(Placement(transformation(
		origin={93,-47},
		extent={{-7,-8},{3,12}},
		rotation=-90)));
	bb_catalogue.bb_verbraucher bb5 annotation(Placement(transformation(extent={{85,5},{105,25}})));
	bb_catalogue.bb_verbraucher bb6 annotation(Placement(transformation(extent={{125,5},{145,25}})));
	bb_catalogue.bb_verbraucher bb7 annotation(Placement(transformation(extent={{125,45},{145,65}})));
	bb_catalogue.bb_verbraucher bb8 annotation(Placement(transformation(extent={{85,45},{105,65}})));
	connectionelement ce6 annotation(Placement(transformation(
		origin={117,53},
		extent={{-7,-8},{3,12}})));
	connectionelement ce7 annotation(Placement(transformation(
		origin={117,13},
		extent={{-7,-8},{3,12}})));
	connectionelement ce8 annotation(Placement(transformation(
		origin={133,33},
		extent={{-7,-8},{3,12}},
		rotation=-90)));
	connectionelement ce9 annotation(Placement(transformation(
		origin={93,33},
		extent={{-7,-8},{3,12}},
		rotation=-90)));
	bb_catalogue.bb_verbraucher bb9 annotation(Placement(transformation(extent={{0,5},{20,25}})));
	bb_catalogue.bb_verbraucher bb10 annotation(Placement(transformation(extent={{40,5},{60,25}})));
	bb_catalogue.bb_verbraucher bb11 annotation(Placement(transformation(extent={{40,45},{60,65}})));
	bb_catalogue.bb_verbraucher bb12 annotation(Placement(transformation(extent={{0,45},{20,65}})));
	connectionelement ce10 annotation(Placement(transformation(
		origin={32,53},
		extent={{-7,-8},{3,12}})));
	connectionelement ce11 annotation(Placement(transformation(
		origin={32,13},
		extent={{-7,-8},{3,12}})));
	connectionelement ce12 annotation(Placement(transformation(
		origin={48,33},
		extent={{-7,-8},{3,12}},
		rotation=-90)));
	connectionelement ce13 annotation(Placement(transformation(
		origin={8,33},
		extent={{-7,-8},{3,12}},
		rotation=-90)));
	equation
		connect(trapezoid1.y,bb_solar1.u) annotation(Line(points={{16,-34},{21,-34},{22,-34},{22,-65},{27,-65}}));
		connect(bb_solar1.Xn,ce1.int2) annotation(Line(points={{61,-65},{66,-65},{66,-65},{66,-65},{71,-65}}));
		connect(bb12.Xp,ce10.int2) annotation(Line(
			points={{20,55},{25,55},{21,55},{21,55},{26,55}},
			color={0,0,0}));
		connect(ce10.int1,bb11.Xn) annotation(Line(
			points={{34,55},{39,55},{35,55},{35,55},{40,55}},
			color={0,0,0}));
		connect(bb11.Yn,ce12.int2) annotation(Line(
			points={{50,45},{50,40},{50,44},{50,44},{50,39}},
			color={0,0,0}));
		connect(ce12.int1,bb10.Yp) annotation(Line(
			points={{50,31},{50,26},{50,30},{50,30},{50,25}},
			color={0,0,0}));
		connect(bb10.Xn,ce11.int1) annotation(Line(
			points={{40,15},{35,15},{39,15},{39,15},{34,15}},
			color={0,0,0}));
		connect(ce11.int2,bb9.Xp) annotation(Line(
			points={{26,15},{21,15},{25,15},{25,15},{20,15}},
			color={0,0,0}));
		connect(bb9.Yp,ce13.int1) annotation(Line(
			points={{10,25},{10,30},{10,26},{10,26},{10,31}},
			color={0,0,0}));
		connect(ce13.int2,bb12.Yn) annotation(Line(
			points={{10,39},{10,44},{10,40},{10,40},{10,45}},
			color={0,0,0}));
		connect(bb8.Yn,ce9.int2) annotation(Line(
			points={{95,45},{95,40},{95,44},{95,44},{95,39}},
			color={0,0,0}));
		connect(ce9.int1,bb5.Yp) annotation(Line(
			points={{95,31},{95,26},{95,30},{95,30},{95,25}},
			color={0,0,0}));
		connect(bb5.Xp,ce7.int2) annotation(Line(
			points={{105,15},{110,15},{106,15},{106,15},{111,15}},
			color={0,0,0}));
		connect(ce7.int1,bb6.Xn) annotation(Line(
			points={{119,15},{124,15},{120,15},{120,15},{125,15}},
			color={0,0,0}));
		connect(bb6.Yp,ce8.int1) annotation(Line(
			points={{135,25},{135,30},{135,26},{135,26},{135,31}},
			color={0,0,0}));
		connect(ce8.int2,bb7.Yn) annotation(Line(
			points={{135,39},{135,44},{135,40},{135,40},{135,45}},
			color={0,0,0}));
		connect(bb7.Xn,ce6.int1) annotation(Line(
			points={{125,55},{120,55},{124,55},{124,55},{119,55}},
			color={0,0,0}));
		connect(ce6.int2,bb8.Xp) annotation(Line(
			points={{111,55},{106,55},{110,55},{110,55},{105,55}},
			color={0,0,0}));
		connect(bb3.Yn,ce4.int2) annotation(Line(
			points={{135,-35},{135,-40},{135,-36},{135,-36},{135,-41}},
			color={0,0,0}));
		connect(ce4.int1,bb2.Yp) annotation(Line(
			points={{135,-49},{135,-54},{135,-50},{135,-50},{135,-55}},
			color={0,0,0}));
		connect(bb2.Xn,ce3.int1) annotation(Line(
			points={{125,-65},{120,-65},{124,-65},{124,-65},{119,-65}},
			color={0,0,0}));
		connect(ce3.int2,bb1.Xp) annotation(Line(
			points={{111,-65},{106,-65},{110,-65},{110,-65},{105,-65}},
			color={0,0,0}));
		connect(bb1.Yp,ce5.int1) annotation(Line(
			points={{95,-55},{95,-50},{95,-54},{95,-54},{95,-49}},
			color={0,0,0}));
		connect(ce5.int2,bb4.Yn) annotation(Line(
			points={{95,-41},{95,-36},{95,-40},{95,-40},{95,-35}},
			color={0,0,0}));
		connect(bb4.Xp,ce2.int2) annotation(Line(
			points={{105,-25},{110,-25},{106,-25},{106,-25},{111,-25}},
			color={0,0,0}));
		connect(ce2.int1,bb3.Xn) annotation(Line(
			points={{119,-25},{124,-25},{120,-25},{120,-25},{125,-25}},
			color={0,0,0}));
		connect(bb12.Zn,bb8.Zp) annotation(
			Line(
				points={{15,50},{20,75},{90,75},{90,61},{89,61}},
				color={0,0,0}),
			AutoRoute=false);
		connect(bb11.Zn,bb7.Zp) annotation(
			Line(
				points={{55.33332824707031,49.66666793823242},{60,70},{130,70},{130,61},{129.3333435058594,60.66666793823242}},
				color={0,0,0}),
			AutoRoute=false);
		connect(bb9.Zn,bb5.Zp) annotation(
			Line(
				points={{15.33332824707031,9.666664123535156},{20,25},{90,25},{90,21},{89.33332824707031,20.66666412353516}},
				color={0,0,0}),
			AutoRoute=false);
		connect(bb10.Zn,bb6.Zp) annotation(
			Line(
				points={{55,10},{60,28},{130,28},{130,21},{129,21}},
				color={0,0,0}),
			AutoRoute=false);
		connect(bb8.Zn,bb4.Zp) annotation(
			Line(
				points={{100,50},{95,50},{80,50},{80,-19},{89,-19}},
				color={0,0,0}),
			AutoRoute=false);
		connect(bb3.Zp,bb7.Zn) annotation(
			Line(
				points={{129,-19},{134,-10},{155,-10},{155,50},{140,50}},
				color={0,0,0}),
			AutoRoute=false);
		connect(bb1.Zp,bb5.Zn) annotation(
			Line(
				points={{89.33332824707031,-59.33332824707031},{85,-55},{75,-50},{75,0},{100,0},{100.3333282470703,
				9.666664123535156}},
				color={0,0,0}),
			AutoRoute=false);
		connect(bb6.Zn,bb2.Zp) annotation(
			Line(
				points={{140,10},{140,0},{150,0},{150,-50},{129,-59}},
				color={0,0,0}),
			AutoRoute=false);
		connect(ce1.int1,bb1.Xn) annotation(Line(
			points={{79,-65},{84,-65},{80,-65},{80,-65},{85,-65}},
			color={0,0,0}));
	public
		annotation(
			ce1(int1(Vcc(
				v(__iti_flags=2),
				i(__iti_flags=2)))),
			__iti_viewinfo[1](
				simViewInfos[0](
					viewSettings(
						relZoom=120,
						scrollPos(
							x=349,
							y=292)),
					runtimeClass="CSimView",
					tabGroup=0,
					typename="ModelViewInfo"),
				simViewInfos[1](
					runtimeClass="CSimXModelicaView",
					tabGroup=0,
					typename="ViewInfo"),
				typename="ModelInfo"),
			experiment(
				StopTime=10000,
				StartTime=0));
end Model;
