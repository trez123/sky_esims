((a,b)=>{a[b]=a[b]||{}})(self,"$__dart_deferred_initializers__")
$__dart_deferred_initializers__.current=function(a,b,c,$){var J,A,C,B={
b6Y(d){var x,w,v,u
try{B.b6X()
v=new A.wl(d,A.ad(d).i("wl<1>"))
x=A.ak(["@context","https://schema.org","@type","BreadcrumbList","itemListElement",v.ghB(v).fa(0,new B.aKW(),y.l).eF(0)],y.g,y.o)
B.b6Z(x)}catch(u){w=A.a2(u)
A.jZ("Error injecting breadcrumb schema: "+A.i(w))}},
b6X(){var x,w,v,u,t,s,r,q
try{u=document.querySelectorAll('script[type="application/ld+json"]')
u.toString
x=new A.OZ(u,y.f)
for(u=x,t=A.aV(u),u=new A.bD(u,J.c_(u),t.i("bD<N.E>")),t=t.i("N.E");u.u();){s=u.d
w=s==null?t.a(s):s
s=w
r=s.parentNode
if(r!=null)r.removeChild(s).toString}}catch(q){v=A.a2(q)
A.jZ("Error removing existing structured data: "+A.i(v))}},
b6Z(d){var x,w,v,u,t
try{v=document
u=v.createElement("script")
u.type="application/ld+json"
u.textContent=C.cc.a4z(d,null)
x=u
v.head.appendChild(x).toString}catch(t){w=A.a2(t)
A.jZ("Error injecting structured data: "+A.i(w))}},
aKW:function aKW(){}}
J=c[1]
A=c[0]
C=c[2]
B=a.updateHolder(c[43],B)
var z=a.updateTypes([])
B.aKW.prototype={
$1(d){var x=d.b,w=J.aa(x)
return A.ak(["@type","ListItem","position",d.a+1,"name",w.h(x,"name"),"item","https://matsilmobile.com"+A.i(w.h(x,"url"))],y.g,y.a)},
$S:816};(function inheritance(){var x=a.inherit
x(B.aKW,A.dE)})()
var y={l:A.F("aq<h,x?>"),o:A.F("x"),g:A.F("h"),f:A.F("OZ<b7>"),a:A.F("x?")}};
(a=>{a["BxMD6LrDPOk6vx2510VO43A2d88="]=a.current})($__dart_deferred_initializers__);