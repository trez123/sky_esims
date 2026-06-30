((a,b)=>{a[b]=a[b]||{}})(self,"$__dart_deferred_initializers__")
$__dart_deferred_initializers__.current=function(a,b,c,$){var B,C,E,F,D,A={aKy:function aKy(d,e,f,g){var _=this
_.a=d
_.b=e
_.c=f
_.d=g},aKz:function aKz(){},aKA:function aKA(d,e,f,g,h,i){var _=this
_.a=d
_.b=e
_.c=f
_.d=g
_.e=h
_.f=i},aKx:function aKx(){},CC:function CC(d,e,f,g){var _=this
_.a=d
_.b=e
_.c=f
_.d=g},CD:function CD(d,e,f){var _=this
_.b=_.w=null
_.c=!1
_.vA$=d
_.di$=e
_.aS$=f
_.a=null},a45:function a45(d,e,f,g,h,i,j){var _=this
_.dW=d
_.y1=e
_.y2=f
_.eD$=g
_.ak$=h
_.dw$=i
_.b=_.dy=null
_.c=0
_.y=_.d=null
_.z=!0
_.Q=null
_.as=!1
_.at=null
_.ay=$
_.ch=j
_.CW=!1
_.cx=$
_.cy=!0
_.db=!1
_.dx=$},
avQ(d,e,f,g,h,i){var x,w=null
if(h==null)x=F.m8
else x=h
return new A.ZA(d,new E.CB(e,f,!0,!0,!0,D.b9K(),w),g,C.at,!1,w,w,x,!0,w,f,C.av,w,w,C.F,C.aR,w)},
ZA:function ZA(d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t){var _=this
_.rx=d
_.ry=e
_.db=f
_.c=g
_.d=h
_.e=i
_.f=j
_.r=k
_.x=l
_.Q=m
_.as=n
_.ax=o
_.ay=p
_.ch=q
_.CW=r
_.cx=s
_.a=t},
a5y:function a5y(d,e,f){this.f=d
this.d=e
this.a=f}}
B=c[0]
C=c[2]
E=c[48]
F=c[90]
D=c[49]
A=a.updateHolder(c[40],A)
A.aKy.prototype={
aaJ(d){var x=this.c
return d.yI(this.d,x,x)},
j(d){var x=this
return"SliverGridGeometry("+C.b.b9(B.b(["scrollOffset: "+B.i(x.a),"crossAxisOffset: "+B.i(x.b),"mainAxisExtent: "+B.i(x.c),"crossAxisExtent: "+B.i(x.d)],y.x),", ")+")"}}
A.aKz.prototype={}
A.aKA.prototype={
aba(d){var x=this.b
if(x>0)return Math.max(0,this.a*C.d.hh(d/x)-1)
return 0},
anL(d){var x,w,v=this
if(v.f){x=v.c
w=v.e
return v.a*x-d-w-(x-w)}return d},
Ip(d){var x=this,w=x.a,v=C.e.bj(d,w)
return new A.aKy(C.e.k_(d,w)*x.b,x.anL(v*x.c),x.d,x.e)},
a3N(d){var x
if(d===0)return 0
x=this.b
return x*(C.e.k_(d-1,this.a)+1)-(x-this.d)}}
A.aKx.prototype={}
A.CC.prototype={
SJ(d){var x=this,w=x.c,v=x.a,u=Math.max(0,d.w-w*(v-1))/v,t=u/x.d
return new A.aKA(v,t+x.b,u+w,t,u,B.EX(d.x))}}
A.CD.prototype={
j(d){return"crossAxisOffset="+B.i(this.w)+"; "+this.afM(0)}}
A.a45.prototype={
fG(d){if(!(d.b instanceof A.CD))d.b=new A.CD(!1,null,null)},
saby(d){var x,w,v=this
if(v.dW===d)return
x=!0
if(B.B(d)===B.B(v.dW)){w=v.dW
if(w.a===d.a)if(w.b===d.b)if(w.c===d.c)x=w.d!==d.d}if(x)v.ab()
v.dW=d},
v5(d){var x=d.b
x.toString
x=y.t.a(x).w
x.toString
return x},
c0(){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,a0,a1,a2,a3,a4,a5,a6=this,a7=null,a8=y.z.a(B.C.prototype.ga4.call(a6)),a9=a6.y1
a9.R8=!1
x=a8.d
w=x+a8.z
v=w+a8.Q
u=a6.dW.SJ(a8)
t=u.b
s=t>1e-10?u.a*C.d.k_(w,t):0
r=isFinite(v)?u.aba(v):a7
if(a6.ak$!=null){q=a6.a3o(s)
a6.rp(q,r!=null?a6.a3p(r):0)}else a6.rp(0,0)
p=u.Ip(s)
if(a6.ak$==null)if(!a6.Ni(s,p.a)){o=u.a3N(a9.gv4())
a6.dy=D.lv(a7,!1,a7,a7,o,0,0,o,a7)
a9.rC()
return}n=p.a
m=n+p.c
t=a6.ak$
t.toString
t=t.b
t.toString
l=y.c
t=l.a(t).b
t.toString
k=t-1
t=y.t
j=a7
for(;k>=s;--k){i=u.Ip(k)
h=i.c
g=a6.a6o(a8.yI(i.d,h,h))
f=g.b
f.toString
t.a(f)
e=i.a
f.a=e
f.w=i.b
if(j==null)j=g
m=Math.max(m,e+h)}if(j==null){h=a6.ak$
h.toString
h.hq(p.aaJ(a8))
j=a6.ak$
h=j.b
h.toString
t.a(h)
h.a=n
h.w=p.b}h=j.b
h.toString
h=l.a(h).b
h.toString
k=h+1
h=B.x(a6).i("aJ.1")
f=r!=null
for(;;){if(!(!f||k<=r)){d=!1
break}i=u.Ip(k)
e=i.c
a0=a8.yI(i.d,e,e)
a1=j.b
a1.toString
g=h.a(a1).aS$
if(g!=null){a1=g.b
a1.toString
a1=l.a(a1).b
a1.toString
a1=a1!==k}else a1=!0
if(a1){g=a6.a6m(a0,j)
if(g==null){d=!0
break}}else g.hq(a0)
a1=g.b
a1.toString
t.a(a1)
a2=i.a
a1.a=a2
a1.w=i.b
m=Math.max(m,a2+e);++k
j=g}t=a6.dw$
t.toString
t=t.b
t.toString
t=l.a(t).b
t.toString
a3=d?m:a9.Pj(a8,s,t,n,m)
a4=a6.yQ(a8,Math.min(x,n),m)
a5=a6.EK(a8,n,m)
a6.dy=D.lv(a5,a3>a4||x>0||a8.f!==0,a7,a7,a3,a4,0,a3,a7)
if(a3===m)a9.R8=!0
a9.rC()}}
A.ZA.prototype={
a3c(d){return new A.a5y(this.rx,this.ry,null)}}
A.a5y.prototype={
b5(d){var x=new A.a45(this.f,y.v.a(d),B.t(y.e,y.g),0,null,null,B.aB())
x.b4()
return x},
bl(d,e){e.saby(this.f)},
Pi(d,e,f,g,h){var x,w
this.afN(d,e,f,g,h)
x=this.f.SJ(d)
w=this.d.gvv()
w.toString
w=x.a3N(w)
return w}}
var z=a.updateTypes([]);(function inheritance(){var x=a.inheritMany,w=a.inherit
x(B.w,[A.aKy,A.aKz,A.aKx])
w(A.aKA,A.aKz)
w(A.CC,A.aKx)
w(A.CD,D.fz)
w(A.a45,D.mE)
w(A.ZA,E.FV)
w(A.a5y,D.mK)})()
B.cM(b.typeUniverse,JSON.parse('{"CD":{"fz":[],"oc":[],"eT":["H"],"mk":[],"ds":[]},"a45":{"mE":[],"dt":[],"aJ":["H","fz"],"C":[],"aP":[],"aJ.1":"fz","aJ.0":"H"},"ZA":{"a3":[],"d":[]},"a5y":{"mK":[],"aQ":[],"d":[]}}'))
var y={x:B.I("v<h>"),g:B.I("H"),z:B.I("jF"),t:B.I("CD"),v:B.I("tQ"),c:B.I("fz"),e:B.I("u")}};
(a=>{a["kDKWRj8dWn3M7SKxACU/WmQ+4fw="]=a.current})($__dart_deferred_initializers__);