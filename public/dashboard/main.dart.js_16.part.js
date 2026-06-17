((a,b)=>{a[b]=a[b]||{}})(self,"$__dart_deferred_initializers__")
$__dart_deferred_initializers__.current=function(a,b,c,$){var B,C,E,F,D,A={aKo:function aKo(d,e,f,g){var _=this
_.a=d
_.b=e
_.c=f
_.d=g},aKp:function aKp(){},aKq:function aKq(d,e,f,g,h,i){var _=this
_.a=d
_.b=e
_.c=f
_.d=g
_.e=h
_.f=i},aKn:function aKn(){},Cx:function Cx(d,e,f,g){var _=this
_.a=d
_.b=e
_.c=f
_.d=g},Cy:function Cy(d,e,f){var _=this
_.b=_.w=null
_.c=!1
_.vw$=d
_.dh$=e
_.aS$=f
_.a=null},a3Y:function a3Y(d,e,f,g,h,i,j){var _=this
_.dV=d
_.y1=e
_.y2=f
_.eB$=g
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
avE(d,e,f,g,h,i){var x,w=null
if(h==null)x=F.m7
else x=h
return new A.Zu(d,new E.Cw(e,f,!0,!0,!0,D.b9f(),w),g,C.at,!1,w,w,x,!0,w,f,C.av,w,w,C.F,C.aR,w)},
Zu:function Zu(d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t){var _=this
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
a5q:function a5q(d,e,f){this.f=d
this.d=e
this.a=f}}
B=c[0]
C=c[2]
E=c[48]
F=c[90]
D=c[49]
A=a.updateHolder(c[40],A)
A.aKo.prototype={
aaz(d){var x=this.c
return d.yE(this.d,x,x)},
j(d){var x=this
return"SliverGridGeometry("+C.b.ba(B.b(["scrollOffset: "+B.i(x.a),"crossAxisOffset: "+B.i(x.b),"mainAxisExtent: "+B.i(x.c),"crossAxisExtent: "+B.i(x.d)],y.x),", ")+")"}}
A.aKp.prototype={}
A.aKq.prototype={
ab0(d){var x=this.b
if(x>0)return Math.max(0,this.a*C.d.hf(d/x)-1)
return 0},
anA(d){var x,w,v=this
if(v.f){x=v.c
w=v.e
return v.a*x-d-w-(x-w)}return d},
Ii(d){var x=this,w=x.a,v=C.e.bi(d,w)
return new A.aKo(C.e.k_(d,w)*x.b,x.anA(v*x.c),x.d,x.e)},
a3D(d){var x
if(d===0)return 0
x=this.b
return x*(C.e.k_(d-1,this.a)+1)-(x-this.d)}}
A.aKn.prototype={}
A.Cx.prototype={
SB(d){var x=this,w=x.c,v=x.a,u=Math.max(0,d.w-w*(v-1))/v,t=u/x.d
return new A.aKq(v,t+x.b,u+w,t,u,B.ER(d.x))}}
A.Cy.prototype={
j(d){return"crossAxisOffset="+B.i(this.w)+"; "+this.afC(0)}}
A.a3Y.prototype={
fG(d){if(!(d.b instanceof A.Cy))d.b=new A.Cy(!1,null,null)},
sabo(d){var x,w,v=this
if(v.dV===d)return
x=!0
if(B.C(d)===B.C(v.dV)){w=v.dV
if(w.a===d.a)if(w.b===d.b)if(w.c===d.c)x=w.d!==d.d}if(x)v.ab()
v.dV=d},
v1(d){var x=d.b
x.toString
x=y.t.a(x).w
x.toString
return x},
c0(){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,a0,a1,a2,a3,a4,a5,a6=this,a7=null,a8=y.z.a(B.B.prototype.ga2.call(a6)),a9=a6.y1
a9.R8=!1
x=a8.d
w=x+a8.z
v=w+a8.Q
u=a6.dV.SB(a8)
t=u.b
s=t>1e-10?u.a*C.d.k_(w,t):0
r=isFinite(v)?u.ab0(v):a7
if(a6.ak$!=null){q=a6.a3e(s)
a6.ro(q,r!=null?a6.a3f(r):0)}else a6.ro(0,0)
p=u.Ii(s)
if(a6.ak$==null)if(!a6.Na(s,p.a)){o=u.a3D(a9.gv0())
a6.dy=D.lu(a7,!1,a7,a7,o,0,0,o,a7)
a9.rB()
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
for(;k>=s;--k){i=u.Ii(k)
h=i.c
g=a6.a6f(a8.yE(i.d,h,h))
f=g.b
f.toString
t.a(f)
e=i.a
f.a=e
f.w=i.b
if(j==null)j=g
m=Math.max(m,e+h)}if(j==null){h=a6.ak$
h.toString
h.ho(p.aaz(a8))
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
h=B.w(a6).i("aI.1")
f=r!=null
for(;;){if(!(!f||k<=r)){d=!1
break}i=u.Ii(k)
e=i.c
a0=a8.yE(i.d,e,e)
a1=j.b
a1.toString
g=h.a(a1).aS$
if(g!=null){a1=g.b
a1.toString
a1=l.a(a1).b
a1.toString
a1=a1!==k}else a1=!0
if(a1){g=a6.a6d(a0,j)
if(g==null){d=!0
break}}else g.ho(a0)
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
a3=d?m:a9.Pa(a8,s,t,n,m)
a4=a6.yM(a8,Math.min(x,n),m)
a5=a6.EG(a8,n,m)
a6.dy=D.lu(a5,a3>a4||x>0||a8.f!==0,a7,a7,a3,a4,0,a3,a7)
if(a3===m)a9.R8=!0
a9.rB()}}
A.Zu.prototype={
a32(d){return new A.a5q(this.rx,this.ry,null)}}
A.a5q.prototype={
b5(d){var x=new A.a3Y(this.f,y.v.a(d),B.t(y.e,y.g),0,null,null,B.aB())
x.b4()
return x},
bk(d,e){e.sabo(this.f)},
P9(d,e,f,g,h){var x,w
this.afD(d,e,f,g,h)
x=this.f.SB(d)
w=this.d.gvr()
w.toString
w=x.a3D(w)
return w}}
var z=a.updateTypes([]);(function inheritance(){var x=a.inheritMany,w=a.inherit
x(B.z,[A.aKo,A.aKp,A.aKn])
w(A.aKq,A.aKp)
w(A.Cx,A.aKn)
w(A.Cy,D.fz)
w(A.a3Y,D.mD)
w(A.Zu,E.FN)
w(A.a5q,D.mJ)})()
B.cM(b.typeUniverse,JSON.parse('{"Cy":{"fz":[],"ob":[],"eS":["I"],"ml":[],"dq":[]},"a3Y":{"mD":[],"dr":[],"aI":["I","fz"],"B":[],"aO":[],"aI.1":"fz","aI.0":"I"},"Zu":{"a3":[],"d":[]},"a5q":{"mJ":[],"aQ":[],"d":[]}}'))
var y={x:B.G("v<h>"),g:B.G("I"),z:B.G("jE"),t:B.G("Cy"),v:B.G("tO"),c:B.G("fz"),e:B.G("u")}};
(a=>{a["F7LriIgoFsVclrjiDSbDFGDWQ3w="]=a.current})($__dart_deferred_initializers__);