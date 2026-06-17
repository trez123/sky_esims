((a,b)=>{a[b]=a[b]||{}})(self,"$__dart_deferred_initializers__")
$__dart_deferred_initializers__.current=function(a,b,c,$){var J,A,C,B={
b7o(d){var x,w,v,u
try{B.b7n()
v=new A.wn(d,A.ad(d).i("wn<1>"))
x=A.ak(["@context","https://schema.org","@type","BreadcrumbList","itemListElement",v.ghC(v).fa(0,new B.aL6(),y.l).eF(0)],y.g,y.o)
B.b7p(x)}catch(u){w=A.a2(u)
A.id("Error injecting breadcrumb schema: "+A.i(w))}},
b7n(){var x,w,v,u,t,s,r,q
try{u=document.querySelectorAll('script[type="application/ld+json"]')
u.toString
x=new A.P3(u,y.f)
for(u=x,t=A.aV(u),u=new A.bD(u,J.bV(u),t.i("bD<N.E>")),t=t.i("N.E");u.u();){s=u.d
w=s==null?t.a(s):s
s=w
r=s.parentNode
if(r!=null)r.removeChild(s).toString}}catch(q){v=A.a2(q)
A.id("Error removing existing structured data: "+A.i(v))}},
b7p(d){var x,w,v,u,t
try{v=document
u=v.createElement("script")
u.type="application/ld+json"
u.textContent=C.cd.a4P(d,null)
x=u
v.head.appendChild(x).toString}catch(t){w=A.a2(t)
A.id("Error injecting structured data: "+A.i(w))}},
aL6:function aL6(){}}
J=c[1]
A=c[0]
C=c[2]
B=a.updateHolder(c[42],B)
var z=a.updateTypes([])
B.aL6.prototype={
$1(d){var x=d.b,w=J.ab(x)
return A.ak(["@type","ListItem","position",d.a+1,"name",w.h(x,"name"),"item","https://matsilmobile.com"+A.i(w.h(x,"url"))],y.g,y.a)},
$S:817};(function inheritance(){var x=a.inherit
x(B.aL6,A.dR)})()
var y={l:A.G("aq<h,z?>"),o:A.G("z"),g:A.G("h"),f:A.G("P3<b7>"),a:A.G("z?")}};
(a=>{a["qSF9NdIdNurvqmnf8HSnz2fhoeA="]=a.current})($__dart_deferred_initializers__);