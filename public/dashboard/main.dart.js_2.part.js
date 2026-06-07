((a,b)=>{a[b]=a[b]||{}})(self,"$__dart_deferred_initializers__")
$__dart_deferred_initializers__.current=function(a,b,c,$){var J,A,C,B={
b7l(d){var x,w,v,u
try{B.b7k()
v=new A.wo(d,A.ad(d).i("wo<1>"))
x=A.ak(["@context","https://schema.org","@type","BreadcrumbList","itemListElement",v.ghC(v).fa(0,new B.aL4(),y.l).eF(0)],y.g,y.o)
B.b7m(x)}catch(u){w=A.a2(u)
A.iG("Error injecting breadcrumb schema: "+A.i(w))}},
b7k(){var x,w,v,u,t,s,r,q
try{u=document.querySelectorAll('script[type="application/ld+json"]')
u.toString
x=new A.P2(u,y.f)
for(u=x,t=A.aW(u),u=new A.bD(u,J.c0(u),t.i("bD<N.E>")),t=t.i("N.E");u.u();){s=u.d
w=s==null?t.a(s):s
s=w
r=s.parentNode
if(r!=null)r.removeChild(s).toString}}catch(q){v=A.a2(q)
A.iG("Error removing existing structured data: "+A.i(v))}},
b7m(d){var x,w,v,u,t
try{v=document
u=v.createElement("script")
u.type="application/ld+json"
u.textContent=C.cd.a4M(d,null)
x=u
v.head.appendChild(x).toString}catch(t){w=A.a2(t)
A.iG("Error injecting structured data: "+A.i(w))}},
aL4:function aL4(){}}
J=c[1]
A=c[0]
C=c[2]
B=a.updateHolder(c[43],B)
var z=a.updateTypes([])
B.aL4.prototype={
$1(d){var x=d.b,w=J.ab(x)
return A.ak(["@type","ListItem","position",d.a+1,"name",w.h(x,"name"),"item","https://matsilmobile.com"+A.i(w.h(x,"url"))],y.g,y.a)},
$S:817};(function inheritance(){var x=a.inherit
x(B.aL4,A.dR)})()
var y={l:A.F("aq<h,y?>"),o:A.F("y"),g:A.F("h"),f:A.F("P2<b7>"),a:A.F("y?")}};
(a=>{a["9SH2ic6WPX86kDMQBezvB4n7hYY="]=a.current})($__dart_deferred_initializers__);