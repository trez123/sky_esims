((a,b)=>{a[b]=a[b]||{}})(self,"$__dart_deferred_initializers__")
$__dart_deferred_initializers__.current=function(a,b,c,$){var B,C,E,F,D,A={aKf:function aKf(d,e,f,g){var _=this
_.a=d
_.b=e
_.c=f
_.d=g},aKg:function aKg(){},aKh:function aKh(d,e,f,g,h,i){var _=this
_.a=d
_.b=e
_.c=f
_.d=g
_.e=h
_.f=i},aKe:function aKe(){},Cw:function Cw(d,e,f,g){var _=this
_.a=d
_.b=e
_.c=f
_.d=g},Cx:function Cx(d,e,f){var _=this
_.b=_.w=null
_.c=!1
_.vs$=d
_.di$=e
_.aS$=f
_.a=null},a3Q:function a3Q(d,e,f,g,h,i,j){var _=this
_.dV=d
_.y1=e
_.y2=f
_.eB$=g
_.ak$=h
_.dz$=i
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
avw(d,e,f,g,h,i){var x,w=null
if(h==null)x=F.m8
else x=h
return new A.Zl(d,new E.Cv(e,f,!0,!0,!0,D.b8R(),w),g,C.at,!1,w,w,x,!0,w,f,C.av,w,w,C.G,C.aR,w)},
Zl:function Zl(d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t){var _=this
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
a5i:function a5i(d,e,f){this.f=d
this.d=e
this.a=f}}
B=c[0]
C=c[2]
E=c[48]
F=c[89]
D=c[49]
A=a.updateHolder(c[40],A)
A.aKf.prototype={
aai(d){var x=this.c
return d.yw(this.d,x,x)},
j(d){var x=this
return"SliverGridGeometry("+C.b.ba(B.b(["scrollOffset: "+B.i(x.a),"crossAxisOffset: "+B.i(x.b),"mainAxisExtent: "+B.i(x.c),"crossAxisExtent: "+B.i(x.d)],y.x),", ")+")"}}
A.aKg.prototype={}
A.aKh.prototype={
aaI(d){var x=this.b
if(x>0)return Math.max(0,this.a*C.d.h_(d/x)-1)
return 0},
ane(d){var x,w,v=this
if(v.f){x=v.c
w=v.e
return v.a*x-d-w-(x-w)}return d},
I4(d){var x=this,w=x.a,v=C.e.bi(d,w)
return new A.aKf(C.e.k_(d,w)*x.b,x.ane(v*x.c),x.d,x.e)},
a3o(d){var x
if(d===0)return 0
x=this.b
return x*(C.e.k_(d-1,this.a)+1)-(x-this.d)}}
A.aKe.prototype={}
A.Cw.prototype={
Sm(d){var x=this,w=x.c,v=x.a,u=Math.max(0,d.w-w*(v-1))/v,t=u/x.d
return new A.aKh(v,t+x.b,u+w,t,u,B.EN(d.x))}}
A.Cx.prototype={
j(d){return"crossAxisOffset="+B.i(this.w)+"; "+this.afg(0)}}
A.a3Q.prototype={
fF(d){if(!(d.b instanceof A.Cx))d.b=new A.Cx(!1,null,null)},
sab2(d){var x,w,v=this
if(v.dV===d)return
x=!0
if(B.C(d)===B.C(v.dV)){w=v.dV
if(w.a===d.a)if(w.b===d.b)if(w.c===d.c)x=w.d!==d.d}if(x)v.ab()
v.dV=d},
uY(d){var x=d.b
x.toString
x=y.t.a(x).w
x.toString
return x},
c0(){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,a0,a1,a2,a3,a4,a5,a6=this,a7=null,a8=y.z.a(B.B.prototype.ga2.call(a6)),a9=a6.y1
a9.R8=!1
x=a8.d
w=x+a8.z
v=w+a8.Q
u=a6.dV.Sm(a8)
t=u.b
s=t>1e-10?u.a*C.d.k_(w,t):0
r=isFinite(v)?u.aaI(v):a7
if(a6.ak$!=null){q=a6.a3_(s)
a6.rl(q,r!=null?a6.a30(r):0)}else a6.rl(0,0)
p=u.I4(s)
if(a6.ak$==null)if(!a6.MW(s,p.a)){o=u.a3o(a9.guX())
a6.dy=D.ls(a7,!1,a7,a7,o,0,0,o,a7)
a9.rv()
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
for(;k>=s;--k){i=u.I4(k)
h=i.c
g=a6.a5Z(a8.yw(i.d,h,h))
f=g.b
f.toString
t.a(f)
e=i.a
f.a=e
f.w=i.b
if(j==null)j=g
m=Math.max(m,e+h)}if(j==null){h=a6.ak$
h.toString
h.hn(p.aai(a8))
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
h=B.w(a6).i("aH.1")
f=r!=null
for(;;){if(!(!f||k<=r)){d=!1
break}i=u.I4(k)
e=i.c
a0=a8.yw(i.d,e,e)
a1=j.b
a1.toString
g=h.a(a1).aS$
if(g!=null){a1=g.b
a1.toString
a1=l.a(a1).b
a1.toString
a1=a1!==k}else a1=!0
if(a1){g=a6.a5X(a0,j)
if(g==null){d=!0
break}}else g.hn(a0)
a1=g.b
a1.toString
t.a(a1)
a2=i.a
a1.a=a2
a1.w=i.b
m=Math.max(m,a2+e);++k
j=g}t=a6.dz$
t.toString
t=t.b
t.toString
t=l.a(t).b
t.toString
a3=d?m:a9.OW(a8,s,t,n,m)
a4=a6.yE(a8,Math.min(x,n),m)
a5=a6.Ew(a8,n,m)
a6.dy=D.ls(a5,a3>a4||x>0||a8.f!==0,a7,a7,a3,a4,0,a3,a7)
if(a3===m)a9.R8=!0
a9.rv()}}
A.Zl.prototype={
a2O(d){return new A.a5i(this.rx,this.ry,null)}}
A.a5i.prototype={
b5(d){var x=new A.a3Q(this.f,y.v.a(d),B.u(y.e,y.g),0,null,null,B.aA())
x.b4()
return x},
bk(d,e){e.sab2(this.f)},
OV(d,e,f,g,h){var x,w
this.afh(d,e,f,g,h)
x=this.f.Sm(d)
w=this.d.gvn()
w.toString
w=x.a3o(w)
return w}}
var z=a.updateTypes([]);(function inheritance(){var x=a.inheritMany,w=a.inherit
x(B.x,[A.aKf,A.aKg,A.aKe])
w(A.aKh,A.aKg)
w(A.Cw,A.aKe)
w(A.Cx,D.fy)
w(A.a3Q,D.mx)
w(A.Zl,E.FJ)
w(A.a5i,D.mC)})()
B.cT(b.typeUniverse,JSON.parse('{"Cx":{"fy":[],"o7":[],"eS":["I"],"mf":[],"dp":[]},"a3Q":{"mx":[],"dq":[],"aH":["I","fy"],"B":[],"aN":[],"aH.1":"fy","aH.0":"I"},"Zl":{"a3":[],"d":[]},"a5i":{"mC":[],"aP":[],"d":[]}}'))
var y={x:B.F("v<h>"),g:B.F("I"),z:B.F("jC"),t:B.F("Cx"),v:B.F("tN"),c:B.F("fy"),e:B.F("n")}};
(a=>{a["LqJrcYt+WAKIGFW8gSbTKWvC5L4="]=a.current})($__dart_deferred_initializers__);