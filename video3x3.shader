uniform string notes = "video3x3";
uniform int div = 3;

float n(float i){return frac(sin(i)*543.65+290.4);}
float4 mainImage(VertData v_in) : TARGET
{
	float time = elapsed_time;
	float2 uv = v_in.uv;
	float dv = (float)div;
	
	uv *= dv;
	float2 index2 = float2(step(v_in.uv.x,1./dv),step(v_in.uv.y,1./dv));
	index2+=float2(step(v_in.uv.x,2./dv),step(v_in.uv.y,2./dv));
	
	float index = (2.*index2.x+3.*index2.y);
	float nindex=n(index);
	
	if(index==2.) uv.y=1.;
	if(index==3.) uv.x=.5;
	if(index==4.) uv.x=frac(uv.x + time);
	if(index==5.) { uv=floor(23.*uv)/23; uv.y=frac(uv.y + time); }
	if(index==6.) { uv=1.-uv; uv += .1 * sin(time);}
	if(index==8.) uv.x*=abs(1.25*uv.x);
	
	uv=frac(uv);

	float4 col = image.Sample(textureSampler, uv);
	float4 col2 = image.Sample(textureSampler, uv+float2(.05 - frac(time) * .05,.0));
	col.rgb+=.3*((clamp(abs(frac(nindex+float3(0.,.6,.3))*6.-3.)-1.,0.,1.)-1.)*.8+1.)*.8;
	
	if(index==7.) { col.rgb=dot(col.rgb,float3(.02, .07, .01)); col.rgb = abs(frac(col.rgb + time));}
	if(index==10.) col.rgb=float3(col2.r, col.g, col2.b);
	
	col.rgb=pow(col.rgb,.4545);
	
	return col;
}
