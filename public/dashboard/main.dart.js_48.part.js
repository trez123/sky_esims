((a,b)=>{a[b]=a[b]||{}})(self,"$__dart_deferred_initializers__")
$__dart_deferred_initializers__.current=function(a,b,c,$){var J,A,C,B={aNq:function aNq(d){this.a=d},
bh9(){var x=new B.aNr()
x.c=new A.bd(new A.am($.ap,y.D),y.h)
x.E1()
return x},
aNr:function aNr(){this.b=this.a=$
this.c=null}},D
J=c[1]
A=c[0]
C=c[2]
B=a.updateHolder(c[33],B)
D=c[91]
B.aNq.prototype={
Or(d){return this.aDK(d)},
aDK(d){var x=0,w=A.r(y.q),v,u=this,t,s,r
var $async$Or=A.n(function(e,f){if(e===1)return A.o(f,w)
for(;;)switch(x){case 0:t=A.b([],y.U)
s=y.N
r=C.b.ga_(D.a5d)
v=u.a.hm("/wipay/create-checkout","POST",t,d,A.t(s,s),A.t(s,s),r)
x=1
break
case 1:return A.p(v,w)}})
return A.q($async$Or,w)},
rq(d){return this.aDJ(d)},
aDJ(d){var x=0,w=A.r(y.n),v,u=this,t,s,r,q,p
var $async$rq=A.n(function(e,f){if(e===1)return A.o(f,w)
for(;;)switch(x){case 0:x=3
return A.m(u.Or(d),$async$rq)
case 3:t=f
s=t.b
x=s>=400?4:5
break
case 4:r=A
q=A
p=s
x=6
return A.m(A.ho(t),$async$rq)
case 6:throw r.c(q.nh(p,f))
case 5:x=A.nb(J.b9(A.n8(t.e).c.a,"charset")).bx(0,t.w).length!==0&&s!==204?7:8
break
case 7:r=y.F
q=u.a
x=10
return A.m(A.ho(t),$async$rq)
case 10:x=9
return A.m(q.lN(f,"WiPayCheckoutResponse"),$async$rq)
case 9:v=r.a(f)
x=1
break
case 8:v=null
x=1
break
case 1:return A.p(v,w)}})
return A.q($async$rq,w)},
In(d){return this.abb(d)},
abb(d){var x=0,w=A.r(y.q),v,u=this,t,s
var $async$In=A.n(function(e,f){if(e===1)return A.o(f,w)
for(;;)switch(x){case 0:t=A.b([],y.U)
s=y.N
C.b.G(t,A.EO("","transactionId",d))
v=u.a.hm("/wipay/payment-success","GET",t,null,A.t(s,s),A.t(s,s),null)
x=1
break
case 1:return A.p(v,w)}})
return A.q($async$In,w)},
qr(d){return this.aba(d)},
aba(d){var x=0,w=A.r(y.I),v,u=this,t,s,r,q,p
var $async$qr=A.n(function(e,f){if(e===1)return A.o(f,w)
for(;;)switch(x){case 0:x=3
return A.m(u.In(d),$async$qr)
case 3:t=f
s=t.b
x=s>=400?4:5
break
case 4:r=A
q=A
p=s
x=6
return A.m(A.ho(t),$async$qr)
case 6:throw r.c(q.nh(p,f))
case 5:x=A.nb(J.b9(A.n8(t.e).c.a,"charset")).bx(0,t.w).length!==0&&s!==204?7:8
break
case 7:r=y.k
q=u.a
x=10
return A.m(A.ho(t),$async$qr)
case 10:x=9
return A.m(q.lN(f,"WiPayPaymentSuccessDetailsDto"),$async$qr)
case 9:v=r.a(f)
x=1
break
case 8:v=null
x=1
break
case 1:return A.p(v,w)}})
return A.q($async$qr,w)}}
B.aNr.prototype={
E1(){var x=0,w=A.r(y.H),v=this,u,t,s,r
var $async$E1=A.n(function(d,e){if(d===1)return A.o(e,w)
for(;;)switch(x){case 0:s=new A.AC()
r=s
x=2
return A.m(A.At(),$async$E1)
case 2:r.sE7(e)
u=A.F1()
if(u==null)u=new A.nl(A.b3(y.m))
t=y.N
t=new A.zb("https://api.skyesims.com",s,u,A.t(t,t))
v.b=t
v.a=new B.aNq(t)
v.c.en(0)
return A.p(null,w)}})
return A.q($async$E1,w)},
ys(){var x=0,w=A.r(y.H),v=this,u
var $async$ys=A.n(function(d,e){if(d===1)return A.o(e,w)
for(;;)switch(x){case 0:u=v.c.a
x=2
return A.m(u,$async$ys)
case 2:return A.p(null,w)}})
return A.q($async$ys,w)},
z_(d){return this.aDw(d)},
aDw(d){var x=0,w=A.r(y.n),v,u=2,t=[],s=this,r,q,p,o
var $async$z_=A.n(function(e,f){if(e===1){t.push(f)
x=u}for(;;)switch(x){case 0:x=3
return A.m(s.ys(),$async$z_)
case 3:u=5
q=s.a
q===$&&A.a()
x=8
return A.m(q.rq(d),$async$z_)
case 8:q=f
v=q
x=1
break
u=2
x=7
break
case 5:u=4
o=t.pop()
r=A.a2(o)
A.iG("Error creating WiPay checkout: "+A.i(r))
v=null
x=1
break
x=7
break
case 4:x=2
break
case 7:case 1:return A.p(v,w)
case 2:return A.o(t.at(-1),w)}})
return A.q($async$z_,w)},
wE(d){return this.ab9(d)},
ab9(d){var x=0,w=A.r(y.I),v,u=2,t=[],s=this,r,q,p,o
var $async$wE=A.n(function(e,f){if(e===1){t.push(f)
x=u}for(;;)switch(x){case 0:x=3
return A.m(s.ys(),$async$wE)
case 3:u=5
q=s.a
q===$&&A.a()
x=8
return A.m(q.qr(d),$async$wE)
case 8:q=f
v=q
x=1
break
u=2
x=7
break
case 5:u=4
o=t.pop()
r=A.a2(o)
A.iG("Error getting payment success: "+A.i(r))
v=null
x=1
break
x=7
break
case 4:x=2
break
case 7:case 1:return A.p(v,w)
case 2:return A.o(t.at(-1),w)}})
return A.q($async$wE,w)}}
var z=a.updateTypes([]);(function inheritance(){var x=a.inheritMany
x(A.y,[B.aNq,B.aNr])})()
var y=(function rtii(){var x=A.F
return{U:x("v<to>"),m:x("a6"),q:x("Cb"),N:x("h"),F:x("Df"),k:x("Dg"),h:x("bd<~>"),D:x("am<~>"),n:x("Df?"),I:x("Dg?"),H:x("~")}})();(function constants(){var x=a.makeConstList
D.a5d=x(["application/json"],A.F("v<h>"))})()};
(a=>{a["hXxg0pkqpobXq66PhmvSBFd9ONw="]=a.current})($__dart_deferred_initializers__);