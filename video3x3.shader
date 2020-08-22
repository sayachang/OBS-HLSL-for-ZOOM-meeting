uniform string notes = "video3x3";
uniform int div = 3;
uniform float colored = 0.3;

float nn(float x){return frac(sin(x) * 543.65 + 290.4);}
float fs(float x){return frac(sin(x + 78.233)) * 43758.5453);}
float mod(float x, float y){return x - floor(x/y)*y;}
float3 hsv(float h, float s, float v){return ((clamp(abs(frac(h+float3(0.,.6,.3))*6.-3.)-1.,0.,1.)-1.)*s+1.)*v;}
float4 index(float2 uv, float dv) {
	float4 ind = (0).xxxx;
	
	for(int i=1;i<9;i++) {
		float j = (float)i;
		if(j >= dv) break;
		ind.xy += float2(step(uv.x, j/dv), step(uv.y, j/dv));
	}

	ind.z = dv*ind.x + (dv-1)*ind.y;
	ind.w = nn(ind.z);
	
	return ind;
}
float2 nuv(float2 uv, float i) {
	float time = elapsed_time;
	int j = (int)(nn(i)*10.);
	
	float2 n = uv;
	if(j==2) n.y=clamp(.0,nn(i),n.y);
	if(j==3) n.x=clamp(i,1.,n.y);
	if(j==4) n.x=frac(n.x + time);
	if(j==5) { n=floor(23.*n)/23; n.y=frac(n.y + time); }
	if(j==6) { n=1.-n; n += .1 * sin(time);}
	if(j==8) n.x*=abs(1.25*n.x);
	
	return frac(n);
}
float4 color(float2 uv, float4 ind) {
	float time = elapsed_time;
	float4 col = image.Sample(textureSampler, uv);
	float3 col2 = 0.3 * hsv(ind.w, 0.8, 0.8);
	float3 col3 = 0.2 * hsv(ind.w, 2.8, (0.1 * ind.z / div));
	col.rgb+=lerp(col2, col3, colored);
	if(ind.z==7.) {
		col.rgb=dot(col.rgb,float3(.02, .07, .01));
		col.rgb = abs(frac(col.rgb + time));
	}
	if(ind.z==10.) {
		float4 col2 = image.Sample(textureSampler, uv+float2(.05 - frac(time) * .05,.0));
		col.rgb=float3(col2.r, col.g, col2.b);
	}

	return float4(pow(col.rgb, .4545), 1);
}
float4 mainImage(VertData v_in) : TARGET
{
	float time = elapsed_time;
	float2 uv = v_in.uv;
	float dv = (float)div;
	float4 ind = index(uv, dv);
	
	uv *= dv;
	uv = nuv(uv, ind.z);
	
	return color(uv, ind);
}
