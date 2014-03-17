  within iboss;
	package controlblocks "Controlblocks for iBoss-Components"
		block EI_control "Controls the electrical interface"
			extends Modelica.Blocks.Interfaces.SISO;
			parameter Real threshold=1;
			parameter Real outputfactor=10000000.0;
			equation
				y = 0.015 + (1 - tanh(u - threshold)) * outputfactor * 0.5;
			annotation(
				defaultComponentName="ei_ctrl",
				Icon(
					coordinateSystem(extent={{-100,-100},{100,100}}),
					graphics={Line(points = {{-90,0},{68,0}}, color = {192,192,192}),Polygon(points = {{90,0},{68,8},{68,-8},{90,0}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Polygon(points = {{0,90},{-8,68},{8,68},{0,90}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{0,-80},{0,68}}, color = {192,192,192}),Text(textString = "ctrl", lineColor = {192,192,192}, extent = {{-90,72},{-18,24}}),Line(points = {{-43,0},{0,3},{17,63},{90,67}}, color = {0,0,0}, smooth = Smooth.Bezier)}),
				Diagram(
					coordinateSystem(extent={{-100,-100},{100,100}}),
					graphics={Line(points = {{-90,0},{68,0}}, color = {192,192,192}),Polygon(points = {{90,0},{68,8},{68,-8},{90,0}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-80,-80},{0,-80}}, color = {0,0,0}),Line(points = {{-0.01,0},{0.01,0}}, color = {0,0,0}),Line(points = {{0,80},{80,80}}, color = {0,0,0}),Rectangle(lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-2,2},{2,-4}}),Polygon(points = {{0,100},{-6,84},{6,84},{0,100}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{0,-90},{0,84}}, color = {192,192,192}),Text(textString = "y", lineColor = {160,160,164}, extent = {{7,102},{32,82}}),Text(textString = "u", lineColor = {160,160,164}, extent = {{70,-6},{94,-26}}),Text(textString = "1", extent = {{-25,86},{-5,70}}),Text(textString = "-1", extent = {{5,-72},{25,-88}})}),
				Documentation(info="MIME-Version: 1.0
Content-Type: multipart/related;boundary=\"--$iti$\";type=\"text/html\"

----$iti$
Content-Type:text/html;charset=\"iso-8859-1\"
Content-Transfer-Encoding: quoted-printable
Content-Location: C:\\Users\\tom\\AppData\\Local\\Temp\\itiC76F.tmp\\hlpC447.tmp\\EI_control.htm

<=21DOCTYPE HTML PUBLIC =22-//W3C//DTD HTML 4.0 Transitional//EN=22>
<HTML><HEAD>
<META content=3D=22text/html; charset=3Dwindows-1252=22 http-equiv=3DContent=
-Type>
<STYLE type=3Dtext/css>body, H3, H4, Table =7Bfont-family: Verdana, Arial, H=
elvetica, sans-serif; font-size:10px; color: =23000000;=7D
</STYLE>

<META name=3DGENERATOR content=3D=22MSHTML 10.00.9200.16660=22></HEAD>
<BODY>
<P>This blocks computes the output <B>y</B> as <B>sign</B> of the input 
<B>u</B>: </P><PRE>         1  <B>if</B> u &gt; 0
    y =3D  0  <B>if</B> u =3D=3D 0
        -1  <B>if</B> u &lt; 0
</PRE></BODY></HTML>


----$iti$--"));
		end EI_control;
		annotation(
			dateModified="2013-08-20 10:22:25Z",
			Icon(
				coordinateSystem(extent={{-100,-100},{100,100}}),
				graphics={Rectangle(lineColor = {0,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-87,87},{-47,50}}),Rectangle(lineColor = {0,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-57,23},{-17,-20}}),Rectangle(lineColor = {0,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{53,43},{100,0}}),Line(points = {{-43,67},{-30,67},{-30,30}}, color = {0,0,0}, arrow = {Arrow.None,Arrow.Open}),Line(points = {{-40,70},{83,70},{83,50}}, color = {0,0,0}, arrow = {Arrow.None,Arrow.Open}),Rectangle(lineColor = {0,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{20,-33},{70,-80}}),Line(points = {{-37,-23},{-37,-63},{20,-63}}, color = {0,0,0}, arrow = {Arrow.None,Arrow.Open})}));
	end controlblocks;
