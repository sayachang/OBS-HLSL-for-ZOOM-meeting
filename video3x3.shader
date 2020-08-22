uniform string notes = "video3x3";
uniform int div = 3;

float n(float i){return frac(sin(i)*543.65+290.4);}
float4 index(float2 uv, float dv) {
	float4 ind = (0).xxxx;
	
	// FIXME
	/*
	for(int i=1;i<9;i++) {
		float j = (float)i;
		ind.xy += float2(step(uv.x, j/dv), step(uv.y, j/dv));
		if(j > dv) break;
	}
	*/
	ind.xy += float2(step(uv.x, 1./dv), step(uv.y, 1./dv));
	ind.xy += float2(step(uv.x, 2./dv), step(uv.y, 2./dv));
	ind.xy += float2(step(uv.x, 3./dv), step(uv.y, 3./dv));
	
	ind.z = 2.*ind.x + 3.*ind.y;
	ind.w = n(ind.z);
	
	return ind;
}
float2 nuv(float2 uv, float i) {
	float time = elapsed_time;
	float2 n = uv;
	if(i==2.) n.y=1.;
	if(i==3.) n.x=.5;
	if(i==4.) n.x=frac(n.x + time);
	if(i==5.) { n=floor(23.*n)/23; n.y=frac(n.y + time); }
	if(i==6.) { n=1.-n; n += .1 * sin(time);}
	if(i==8.) n.x*=abs(1.25*n.x);
	
	return frac(n);
}
float4 color(float2 uv, float4 ind) {
	float time = elapsed_time;
	float4 col = image.Sample(textureSampler, uv);
	col.rgb+=.3*((clamp(abs(frac(ind.w+float3(0.,.6,.3))*6.-3.)-1.,0.,1.)-1.)*.8+1.)*.8;
	
	if(ind.z==7.) {
		col.rgb=dot(col.rgb,float3(.02, .07, .01));
		col.rgb = abs(frac(col.rgb + time));
	}
	if(ind.z==10.) {
		float4 col2 = image.Sample(textureSampler, uv+float2(.05 - frac(time) * .05,.0));
		col.rgb=float3(col2.r, col.g, col2.b);
	}

	return pow(col, .4545);
}
float4 mainImage(VertData v_in) : TARGET
{
	float time = elapsed_time;
	float2 uv = v_in.uv;
	float dv = (float)div;
	float4 ind = index(uv, dv);
	
	uv *= dv;
	uv = nuv(uv, ind.z);
	
	float4 col = color(uv, ind);
	
	return col;
}
