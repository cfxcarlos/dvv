"use strict";
var oI = Object.defineProperty,
    aI = Object.defineProperties,
    lI = Object.getOwnPropertyDescriptors,
    y_ = Object.getOwnPropertySymbols,
    uI = Object.prototype.hasOwnProperty,
    cI = Object.prototype.propertyIsEnumerable,
    __ = (He, ce, O) => ce in He ? oI(He, ce, {
        enumerable: !0,
        configurable: !0,
        writable: !0,
        value: O
    }) : He[ce] = O,
    st = (He, ce) => {
        for (var O in ce || (ce = {})) uI.call(ce, O) && __(He, O, ce[O]);
        if (y_)
            for (var O of y_(ce)) cI.call(ce, O) && __(He, O, ce[O]);
        return He
    },
    Ar = (He, ce) => aI(He, lI(ce));
(self.webpackChunkzo_attachs = self.webpackChunkzo_attachs || []).push([
    ["main"], {
        5548: (He, ce, O) => {
            O.d(ce, {
                y: () => W
            });
            var A = O(4168),
                ne = O(2926),
                be = O(6617),
                te = O(1359),
                ye = O(7255);
            var z = O(5426);
            let W = (() => {
                class Z {
                    constructor(xe) {
                        this._isScalar = !1, xe && (this._subscribe = xe)
                    }
                    lift(xe) {
                        const we = new Z;
                        return we.source = this, we.operator = xe, we
                    }
                    subscribe(xe, we, me) {
                        const {
                            operator: gt
                        } = this, tt = function(Z, Re, xe) {
                            if (Z) {
                                if (Z instanceof A.L) return Z;
                                if (Z[ne.b]) return Z[ne.b]()
                            }
                            return Z || Re || xe ? new A.L(Z, Re, xe) : new A.L(be.c)
                        }(xe, we, me);
                        if (tt.add(gt ? gt.call(tt, this.source) : this.source || z.v.useDeprecatedSynchronousErrorHandling && !tt.syncErrorThrowable ? this._subscribe(tt) : this._trySubscribe(tt)), z.v.useDeprecatedSynchronousErrorHandling && tt.syncErrorThrowable && (tt.syncErrorThrowable = !1, tt.syncErrorThrown)) throw tt.syncErrorValue;
                        return tt
                    }
                    _trySubscribe(xe) {
                        try {
                            return this._subscribe(xe)
                        } catch (we) {
                            z.v.useDeprecatedSynchronousErrorHandling && (xe.syncErrorThrown = !0, xe.syncErrorValue = we),
                                function(Z) {
                                    for (; Z;) {
                                        const {
                                            closed: Re,
                                            destination: xe,
                                            isStopped: we
                                        } = Z;
                                        if (Re || we) return !1;
                                        Z = xe && xe instanceof A.L ? xe : null
                                    }
                                    return !0
                                }(xe) ? xe.error(we) : console.warn(we)
                        }
                    }
                    forEach(xe, we) {
                        return new(we = Y(we))((me, gt) => {
                            let tt;
                            tt = this.subscribe(St => {
                                try {
                                    xe(St)
                                } catch ($e) {
                                    gt($e), tt && tt.unsubscribe()
                                }
                            }, gt, me)
                        })
                    }
                    _subscribe(xe) {
                        const {
                            source: we
                        } = this;
                        return we && we.subscribe(xe)
                    } [te.L]() {
                        return this
                    }
                    pipe(...xe) {
                        return 0 === xe.length ? this : function(Z) {
                            return 0 === Z.length ? ye.y : 1 === Z.length ? Z[0] : function(xe) {
                                return Z.reduce((we, me) => me(we), xe)
                            }
                        }(xe)(this)
                    }
                    toPromise(xe) {
                        return new(xe = Y(xe))((we, me) => {
                            let gt;
                            this.subscribe(tt => gt = tt, tt => me(tt), () => we(gt))
                        })
                    }
                }
                return Z.create = Re => new Z(Re), Z
            })();

            function Y(Z) {
                if (Z || (Z = z.v.Promise || Promise), !Z) throw new Error("no Promise impl found");
                return Z
            }
        },
        6617: (He, ce, O) => {
            O.d(ce, {
                c: () => ne
            });
            var A = O(5426),
                T = O(9887);
            const ne = {
                closed: !0,
                next(be) {},
                error(be) {
                    if (A.v.useDeprecatedSynchronousErrorHandling) throw be;
                    (0, T.z)(be)
                },
                complete() {}
            }
        },
        3405: (He, ce, O) => {
            O.d(ce, {
                Yc: () => ye,
                xQ: () => se
            });
            var A = O(5548),
                T = O(4168),
                ne = O(1346),
                be = O(2108),
                he = O(5973),
                te = O(2926);
            class ye extends T.L {
                constructor(W) {
                    super(W), this.destination = W
                }
            }
            let se = (() => {
                class z extends A.y {
                    constructor() {
                        super(), this.observers = [], this.closed = !1, this.isStopped = !1, this.hasError = !1, this.thrownError = null
                    } [te.b]() {
                        return new ye(this)
                    }
                    lift(Y) {
                        const Z = new ee(this, this);
                        return Z.operator = Y, Z
                    }
                    next(Y) {
                        if (this.closed) throw new be.N;
                        if (!this.isStopped) {
                            const {
                                observers: Z
                            } = this, Re = Z.length, xe = Z.slice();
                            for (let we = 0; we < Re; we++) xe[we].next(Y)
                        }
                    }
                    error(Y) {
                        if (this.closed) throw new be.N;
                        this.hasError = !0, this.thrownError = Y, this.isStopped = !0;
                        const {
                            observers: Z
                        } = this, Re = Z.length, xe = Z.slice();
                        for (let we = 0; we < Re; we++) xe[we].error(Y);
                        this.observers.length = 0
                    }
                    complete() {
                        if (this.closed) throw new be.N;
                        this.isStopped = !0;
                        const {
                            observers: Y
                        } = this, Z = Y.length, Re = Y.slice();
                        for (let xe = 0; xe < Z; xe++) Re[xe].complete();
                        this.observers.length = 0
                    }
                    unsubscribe() {
                        this.isStopped = !0, this.closed = !0, this.observers = null
                    }
                    _trySubscribe(Y) {
                        if (this.closed) throw new be.N;
                        return super._trySubscribe(Y)
                    }
                    _subscribe(Y) {
                        if (this.closed) throw new be.N;
                        return this.hasError ? (Y.error(this.thrownError), ne.w.EMPTY) : this.isStopped ? (Y.complete(), ne.w.EMPTY) : (this.observers.push(Y), new he.W(this, Y))
                    }
                    asObservable() {
                        const Y = new A.y;
                        return Y.source = this, Y
                    }
                }
                return z.create = (W, Y) => new ee(W, Y), z
            })();
            class ee extends se {
                constructor(W, Y) {
                    super(), this.destination = W, this.source = Y
                }
                next(W) {
                    const {
                        destination: Y
                    } = this;
                    Y && Y.next && Y.next(W)
                }
                error(W) {
                    const {
                        destination: Y
                    } = this;
                    Y && Y.error && this.destination.error(W)
                }
                complete() {
                    const {
                        destination: W
                    } = this;
                    W && W.complete && this.destination.complete()
                }
                _subscribe(W) {
                    const {
                        source: Y
                    } = this;
                    return Y ? this.source.subscribe(W) : ne.w.EMPTY
                }
            }
        },
        5973: (He, ce, O) => {
            O.d(ce, {
                W: () => T
            });
            var A = O(1346);
            class T extends A.w {
                constructor(be, he) {
                    super(), this.subject = be, this.subscriber = he, this.closed = !1
                }
                unsubscribe() {
                    if (this.closed) return;
                    this.closed = !0;
                    const be = this.subject,
                        he = be.observers;
                    if (this.subject = null, !he || 0 === he.length || be.isStopped || be.closed) return;
                    const te = he.indexOf(this.subscriber); - 1 !== te && he.splice(te, 1)
                }
            }
        },
        4168: (He, ce, O) => {
            O.d(ce, {
                L: () => ye
            });
            var A = O(6783),
                T = O(6617),
                ne = O(1346),
                be = O(2926),
                he = O(5426),
                te = O(9887);
            class ye extends ne.w {
                constructor(z, W, Y) {
                    switch (super(), this.syncErrorValue = null, this.syncErrorThrown = !1, this.syncErrorThrowable = !1, this.isStopped = !1, arguments.length) {
                        case 0:
                            this.destination = T.c;
                            break;
                        case 1:
                            if (!z) {
                                this.destination = T.c;
                                break
                            }
                            if ("object" == typeof z) {
                                z instanceof ye ? (this.syncErrorThrowable = z.syncErrorThrowable, this.destination = z, z.add(this)) : (this.syncErrorThrowable = !0, this.destination = new se(this, z));
                                break
                            }
                        default:
                            this.syncErrorThrowable = !0, this.destination = new se(this, z, W, Y)
                    }
                } [be.b]() {
                    return this
                }
                static create(z, W, Y) {
                    const Z = new ye(z, W, Y);
                    return Z.syncErrorThrowable = !1, Z
                }
                next(z) {
                    this.isStopped || this._next(z)
                }
                error(z) {
                    this.isStopped || (this.isStopped = !0, this._error(z))
                }
                complete() {
                    this.isStopped || (this.isStopped = !0, this._complete())
                }
                unsubscribe() {
                    this.closed || (this.isStopped = !0, super.unsubscribe())
                }
                _next(z) {
                    this.destination.next(z)
                }
                _error(z) {
                    this.destination.error(z), this.unsubscribe()
                }
                _complete() {
                    this.destination.complete(), this.unsubscribe()
                }
                _unsubscribeAndRecycle() {
                    const {
                        _parentOrParents: z
                    } = this;
                    return this._parentOrParents = null, this.unsubscribe(), this.closed = !1, this.isStopped = !1, this._parentOrParents = z, this
                }
            }
            class se extends ye {
                constructor(z, W, Y, Z) {
                    super(), this._parentSubscriber = z;
                    let Re, xe = this;
                    (0, A.m)(W) ? Re = W: W && (Re = W.next, Y = W.error, Z = W.complete, W !== T.c && (xe = Object.create(W), (0, A.m)(xe.unsubscribe) && this.add(xe.unsubscribe.bind(xe)), xe.unsubscribe = this.unsubscribe.bind(this))), this._context = xe, this._next = Re, this._error = Y, this._complete = Z
                }
                next(z) {
                    if (!this.isStopped && this._next) {
                        const {
                            _parentSubscriber: W
                        } = this;
                        he.v.useDeprecatedSynchronousErrorHandling && W.syncErrorThrowable ? this.__tryOrSetError(W, this._next, z) && this.unsubscribe() : this.__tryOrUnsub(this._next, z)
                    }
                }
                error(z) {
                    if (!this.isStopped) {
                        const {
                            _parentSubscriber: W
                        } = this, {
                            useDeprecatedSynchronousErrorHandling: Y
                        } = he.v;
                        if (this._error) Y && W.syncErrorThrowable ? (this.__tryOrSetError(W, this._error, z), this.unsubscribe()) : (this.__tryOrUnsub(this._error, z), this.unsubscribe());
                        else if (W.syncErrorThrowable) Y ? (W.syncErrorValue = z, W.syncErrorThrown = !0) : (0, te.z)(z), this.unsubscribe();
                        else {
                            if (this.unsubscribe(), Y) throw z;
                            (0, te.z)(z)
                        }
                    }
                }
                complete() {
                    if (!this.isStopped) {
                        const {
                            _parentSubscriber: z
                        } = this;
                        if (this._complete) {
                            const W = () => this._complete.call(this._context);
                            he.v.useDeprecatedSynchronousErrorHandling && z.syncErrorThrowable ? (this.__tryOrSetError(z, W), this.unsubscribe()) : (this.__tryOrUnsub(W), this.unsubscribe())
                        } else this.unsubscribe()
                    }
                }
                __tryOrUnsub(z, W) {
                    try {
                        z.call(this._context, W)
                    } catch (Y) {
                        if (this.unsubscribe(), he.v.useDeprecatedSynchronousErrorHandling) throw Y;
                        (0, te.z)(Y)
                    }
                }
                __tryOrSetError(z, W, Y) {
                    if (!he.v.useDeprecatedSynchronousErrorHandling) throw new Error("bad call");
                    try {
                        W.call(this._context, Y)
                    } catch (Z) {
                        return he.v.useDeprecatedSynchronousErrorHandling ? (z.syncErrorValue = Z, z.syncErrorThrown = !0, !0) : ((0, te.z)(Z), !0)
                    }
                    return !1
                }
                _unsubscribe() {
                    const {
                        _parentSubscriber: z
                    } = this;
                    this._context = null, this._parentSubscriber = null, z.unsubscribe()
                }
            }
        },
        1346: (He, ce, O) => {
            O.d(ce, {
                w: () => te
            });
            var A = O(5894),
                T = O(7879),
                ne = O(6783);
            const he = (() => {
                function se(ee) {
                    return Error.call(this), this.message = ee ? `${ee.length} errors occurred during unsubscription:\n${ee.map((z,W)=>`${W+1}) ${z.toString()}`).join("\n  ")}` : "", this.name = "UnsubscriptionError", this.errors = ee, this
                }
                return se.prototype = Object.create(Error.prototype), se
            })();
            class te {
                constructor(ee) {
                    this.closed = !1, this._parentOrParents = null, this._subscriptions = null, ee && (this._ctorUnsubscribe = !0, this._unsubscribe = ee)
                }
                unsubscribe() {
                    let ee;
                    if (this.closed) return;
                    let {
                        _parentOrParents: z,
                        _ctorUnsubscribe: W,
                        _unsubscribe: Y,
                        _subscriptions: Z
                    } = this;
                    if (this.closed = !0, this._parentOrParents = null, this._subscriptions = null, z instanceof te) z.remove(this);
                    else if (null !== z)
                        for (let Re = 0; Re < z.length; ++Re) z[Re].remove(this);
                    if ((0, ne.m)(Y)) {
                        W && (this._unsubscribe = void 0);
                        try {
                            Y.call(this)
                        } catch (Re) {
                            ee = Re instanceof he ? ye(Re.errors) : [Re]
                        }
                    }
                    if ((0, A.k)(Z)) {
                        let Re = -1,
                            xe = Z.length;
                        for (; ++Re < xe;) {
                            const we = Z[Re];
                            if ((0, T.K)(we)) try {
                                we.unsubscribe()
                            } catch (me) {
                                ee = ee || [], me instanceof he ? ee = ee.concat(ye(me.errors)) : ee.push(me)
                            }
                        }
                    }
                    if (ee) throw new he(ee)
                }
                add(ee) {
                    let z = ee;
                    if (!ee) return te.EMPTY;
                    switch (typeof ee) {
                        case "function":
                            z = new te(ee);
                        case "object":
                            if (z === this || z.closed || "function" != typeof z.unsubscribe) return z;
                            if (this.closed) return z.unsubscribe(), z;
                            if (!(z instanceof te)) {
                                const Z = z;
                                z = new te, z._subscriptions = [Z]
                            }
                            break;
                        default:
                            throw new Error("unrecognized teardown " + ee + " added to Subscription.")
                    }
                    let {
                        _parentOrParents: W
                    } = z;
                    if (null === W) z._parentOrParents = this;
                    else if (W instanceof te) {
                        if (W === this) return z;
                        z._parentOrParents = [W, this]
                    } else {
                        if (-1 !== W.indexOf(this)) return z;
                        W.push(this)
                    }
                    const Y = this._subscriptions;
                    return null === Y ? this._subscriptions = [z] : Y.push(z), z
                }
                remove(ee) {
                    const z = this._subscriptions;
                    if (z) {
                        const W = z.indexOf(ee); - 1 !== W && z.splice(W, 1)
                    }
                }
            }
            var se;

            function ye(se) {
                return se.reduce((ee, z) => ee.concat(z instanceof he ? z.errors : z), [])
            }
            te.EMPTY = ((se = new te).closed = !0, se)
        },
        5426: (He, ce, O) => {
            O.d(ce, {
                v: () => T
            });
            let A = !1;
            const T = {
                Promise: void 0,
                set useDeprecatedSynchronousErrorHandling(ne) {
                    if (ne) {
                        const be = new Error;
                        console.warn("DEPRECATED! RxJS was set to use deprecated synchronous error handling behavior by code at: \n" + be.stack)
                    } else A && console.log("RxJS: Back to a better error behavior. Thank you. <3");
                    A = ne
                },
                get useDeprecatedSynchronousErrorHandling() {
                    return A
                }
            }
        },
        8345: (He, ce, O) => {
            O.d(ce, {
                IY: () => be,
                Ds: () => te,
                ft: () => se
            });
            var A = O(4168),
                T = O(5548),
                ne = O(4651);
            class be extends A.L {
                constructor(z) {
                    super(), this.parent = z
                }
                _next(z) {
                    this.parent.notifyNext(z)
                }
                _error(z) {
                    this.parent.notifyError(z), this.unsubscribe()
                }
                _complete() {
                    this.parent.notifyComplete(), this.unsubscribe()
                }
            }
            class te extends A.L {
                notifyNext(z) {
                    this.destination.next(z)
                }
                notifyError(z) {
                    this.destination.error(z)
                }
                notifyComplete() {
                    this.destination.complete()
                }
            }

            function se(ee, z) {
                if (z.closed) return;
                if (ee instanceof T.y) return ee.subscribe(z);
                let W;
                try {
                    W = (0, ne.s)(ee)(z)
                } catch (Y) {
                    z.error(Y)
                }
                return W
            }
        },
        5783: (He, ce, O) => {
            O.d(ce, {
                c: () => he,
                N: () => te
            });
            var A = O(3405),
                T = O(5548),
                ne = O(1346),
                be = O(5234);
            class he extends T.y {
                constructor(W, Y) {
                    super(), this.source = W, this.subjectFactory = Y, this._refCount = 0, this._isComplete = !1
                }
                _subscribe(W) {
                    return this.getSubject().subscribe(W)
                }
                getSubject() {
                    const W = this._subject;
                    return (!W || W.isStopped) && (this._subject = this.subjectFactory()), this._subject
                }
                connect() {
                    let W = this._connection;
                    return W || (this._isComplete = !1, W = this._connection = new ne.w, W.add(this.source.subscribe(new ye(this.getSubject(), this))), W.closed && (this._connection = null, W = ne.w.EMPTY)), W
                }
                refCount() {
                    return (0, be.x)()(this)
                }
            }
            const te = (() => {
                const z = he.prototype;
                return {
                    operator: {
                        value: null
                    },
                    _refCount: {
                        value: 0,
                        writable: !0
                    },
                    _subject: {
                        value: null,
                        writable: !0
                    },
                    _connection: {
                        value: null,
                        writable: !0
                    },
                    _subscribe: {
                        value: z._subscribe
                    },
                    _isComplete: {
                        value: z._isComplete,
                        writable: !0
                    },
                    getSubject: {
                        value: z.getSubject
                    },
                    connect: {
                        value: z.connect
                    },
                    refCount: {
                        value: z.refCount
                    }
                }
            })();
            class ye extends A.Yc {
                constructor(W, Y) {
                    super(W), this.connectable = Y
                }
                _error(W) {
                    this._unsubscribe(), super._error(W)
                }
                _complete() {
                    this.connectable._isComplete = !0, this._unsubscribe(), super._complete()
                }
                _unsubscribe() {
                    const W = this.connectable;
                    if (W) {
                        this.connectable = null;
                        const Y = W._connection;
                        W._refCount = 0, W._subject = null, W._connection = null, Y && Y.unsubscribe()
                    }
                }
            }
        },
        3596: (He, ce, O) => {
            O.d(ce, {
                z: () => be
            });
            var A = O(2411),
                T = O(2225);

            function be(...he) {
                return (0, T.J)(1)((0, A.of)(...he))
            }
        },
        5476: (He, ce, O) => {
            O.d(ce, {
                P: () => be
            });
            var A = O(5548),
                T = O(1915),
                ne = O(172);

            function be(he) {
                return new A.y(te => {
                    let ye;
                    try {
                        ye = he()
                    } catch (ee) {
                        return void te.error(ee)
                    }
                    return (ye ? (0, T.D)(ye) : (0, ne.c)()).subscribe(te)
                })
            }
        },
        172: (He, ce, O) => {
            O.d(ce, {
                E: () => T,
                c: () => ne
            });
            var A = O(5548);
            const T = new A.y(he => he.complete());

            function ne(he) {
                return he ? function(he) {
                    return new A.y(te => he.schedule(() => te.complete()))
                }(he) : T
            }
        },
        1915: (He, ce, O) => {
            O.d(ce, {
                D: () => xe
            });
            var A = O(5548),
                T = O(4651),
                ne = O(1346),
                be = O(1359),
                ye = O(3428),
                se = O(4352),
                W = O(847),
                Y = O(1265);

            function xe(we, me) {
                return me ? function(we, me) {
                    if (null != we) {
                        if (function(we) {
                                return we && "function" == typeof we[be.L]
                            }(we)) return function(we, me) {
                            return new A.y(gt => {
                                const tt = new ne.w;
                                return tt.add(me.schedule(() => {
                                    const St = we[be.L]();
                                    tt.add(St.subscribe({
                                        next($e) {
                                            tt.add(me.schedule(() => gt.next($e)))
                                        },
                                        error($e) {
                                            tt.add(me.schedule(() => gt.error($e)))
                                        },
                                        complete() {
                                            tt.add(me.schedule(() => gt.complete()))
                                        }
                                    }))
                                })), tt
                            })
                        }(we, me);
                        if ((0, W.t)(we)) return function(we, me) {
                            return new A.y(gt => {
                                const tt = new ne.w;
                                return tt.add(me.schedule(() => we.then(St => {
                                    tt.add(me.schedule(() => {
                                        gt.next(St), tt.add(me.schedule(() => gt.complete()))
                                    }))
                                }, St => {
                                    tt.add(me.schedule(() => gt.error(St)))
                                }))), tt
                            })
                        }(we, me);
                        if ((0, Y.z)(we)) return (0, ye.r)(we, me);
                        if (function(we) {
                                return we && "function" == typeof we[se.hZ]
                            }(we) || "string" == typeof we) return function(we, me) {
                            if (!we) throw new Error("Iterable cannot be null");
                            return new A.y(gt => {
                                const tt = new ne.w;
                                let St;
                                return tt.add(() => {
                                    St && "function" == typeof St.return && St.return()
                                }), tt.add(me.schedule(() => {
                                    St = we[se.hZ](), tt.add(me.schedule(function() {
                                        if (gt.closed) return;
                                        let $e, X;
                                        try {
                                            const Me = St.next();
                                            $e = Me.value, X = Me.done
                                        } catch (Me) {
                                            return void gt.error(Me)
                                        }
                                        X ? gt.complete() : (gt.next($e), this.schedule())
                                    }))
                                })), tt
                            })
                        }(we, me)
                    }
                    throw new TypeError((null !== we && typeof we || we) + " is not observable")
                }(we, me) : we instanceof A.y ? we : new A.y((0, T.s)(we))
            }
        },
        5433: (He, ce, O) => {
            O.d(ce, {
                n: () => be
            });
            var A = O(5548),
                T = O(8769),
                ne = O(3428);

            function be(he, te) {
                return te ? (0, ne.r)(he, te) : new A.y((0, T.V)(he))
            }
        },
        8526: (He, ce, O) => {
            O.d(ce, {
                T: () => he
            });
            var A = O(5548),
                T = O(8151),
                ne = O(2225),
                be = O(5433);

            function he(...te) {
                let ye = Number.POSITIVE_INFINITY,
                    se = null,
                    ee = te[te.length - 1];
                return (0, T.K)(ee) ? (se = te.pop(), te.length > 1 && "number" == typeof te[te.length - 1] && (ye = te.pop())) : "number" == typeof ee && (ye = te.pop()), null === se && 1 === te.length && te[0] instanceof A.y ? te[0] : (0, ne.J)(ye)((0, be.n)(te, se))
            }
        },
        2411: (He, ce, O) => {
            O.d(ce, {
                of: () => be
            });
            var A = O(8151),
                T = O(5433),
                ne = O(3428);

            function be(...he) {
                let te = he[he.length - 1];
                return (0, A.K)(te) ? (he.pop(), (0, ne.r)(he, te)) : (0, T.n)(he)
            }
        },
        6700: (He, ce, O) => {
            O.d(ce, {
                b: () => T
            });
            var A = O(4421);

            function T(ne, be) {
                return (0, A.zg)(ne, be, 1)
            }
        },
        8735: (He, ce, O) => {
            O.d(ce, {
                h: () => T
            });
            var A = O(4168);

            function T(he, te) {
                return function(se) {
                    return se.lift(new ne(he, te))
                }
            }
            class ne {
                constructor(te, ye) {
                    this.predicate = te, this.thisArg = ye
                }
                call(te, ye) {
                    return ye.subscribe(new be(te, this.predicate, this.thisArg))
                }
            }
            class be extends A.L {
                constructor(te, ye, se) {
                    super(te), this.predicate = ye, this.thisArg = se, this.count = 0
                }
                _next(te) {
                    let ye;
                    try {
                        ye = this.predicate.call(this.thisArg, te, this.count++)
                    } catch (se) {
                        return void this.destination.error(se)
                    }
                    ye && this.destination.next(te)
                }
            }
        },
        8053: (He, ce, O) => {
            O.d(ce, {
                U: () => T
            });
            var A = O(4168);

            function T(he, te) {
                return function(se) {
                    if ("function" != typeof he) throw new TypeError("argument is not a function. Are you looking for `mapTo()`?");
                    return se.lift(new ne(he, te))
                }
            }
            class ne {
                constructor(te, ye) {
                    this.project = te, this.thisArg = ye
                }
                call(te, ye) {
                    return ye.subscribe(new be(te, this.project, this.thisArg))
                }
            }
            class be extends A.L {
                constructor(te, ye, se) {
                    super(te), this.project = ye, this.count = 0, this.thisArg = se || this
                }
                _next(te) {
                    let ye;
                    try {
                        ye = this.project.call(this.thisArg, te, this.count++)
                    } catch (se) {
                        return void this.destination.error(se)
                    }
                    this.destination.next(ye)
                }
            }
        },
        2225: (He, ce, O) => {
            O.d(ce, {
                J: () => ne
            });
            var A = O(4421),
                T = O(7255);

            function ne(be = Number.POSITIVE_INFINITY) {
                return (0, A.zg)(T.y, be)
            }
        },
        4421: (He, ce, O) => {
            O.d(ce, {
                zg: () => be
            });
            var A = O(8053),
                T = O(1915),
                ne = O(8345);

            function be(se, ee, z = Number.POSITIVE_INFINITY) {
                return "function" == typeof ee ? W => W.pipe(be((Y, Z) => (0, T.D)(se(Y, Z)).pipe((0, A.U)((Re, xe) => ee(Y, Re, Z, xe))), z)) : ("number" == typeof ee && (z = ee), W => W.lift(new he(se, z)))
            }
            class he {
                constructor(ee, z = Number.POSITIVE_INFINITY) {
                    this.project = ee, this.concurrent = z
                }
                call(ee, z) {
                    return z.subscribe(new te(ee, this.project, this.concurrent))
                }
            }
            class te extends ne.Ds {
                constructor(ee, z, W = Number.POSITIVE_INFINITY) {
                    super(ee), this.project = z, this.concurrent = W, this.hasCompleted = !1, this.buffer = [], this.active = 0, this.index = 0
                }
                _next(ee) {
                    this.active < this.concurrent ? this._tryNext(ee) : this.buffer.push(ee)
                }
                _tryNext(ee) {
                    let z;
                    const W = this.index++;
                    try {
                        z = this.project(ee, W)
                    } catch (Y) {
                        return void this.destination.error(Y)
                    }
                    this.active++, this._innerSub(z)
                }
                _innerSub(ee) {
                    const z = new ne.IY(this),
                        W = this.destination;
                    W.add(z);
                    const Y = (0, ne.ft)(ee, z);
                    Y !== z && W.add(Y)
                }
                _complete() {
                    this.hasCompleted = !0, 0 === this.active && 0 === this.buffer.length && this.destination.complete(), this.unsubscribe()
                }
                notifyNext(ee) {
                    this.destination.next(ee)
                }
                notifyComplete() {
                    const ee = this.buffer;
                    this.active--, ee.length > 0 ? this._next(ee.shift()) : 0 === this.active && this.hasCompleted && this.destination.complete()
                }
            }
        },
        5234: (He, ce, O) => {
            O.d(ce, {
                x: () => T
            });
            var A = O(4168);

            function T() {
                return function(te) {
                    return te.lift(new ne(te))
                }
            }
            class ne {
                constructor(te) {
                    this.connectable = te
                }
                call(te, ye) {
                    const {
                        connectable: se
                    } = this;
                    se._refCount++;
                    const ee = new be(te, se),
                        z = ye.subscribe(ee);
                    return ee.closed || (ee.connection = se.connect()), z
                }
            }
            class be extends A.L {
                constructor(te, ye) {
                    super(te), this.connectable = ye
                }
                _unsubscribe() {
                    const {
                        connectable: te
                    } = this;
                    if (!te) return void(this.connection = null);
                    this.connectable = null;
                    const ye = te._refCount;
                    if (ye <= 0) return void(this.connection = null);
                    if (te._refCount = ye - 1, ye > 1) return void(this.connection = null);
                    const {
                        connection: se
                    } = this, ee = te._connection;
                    this.connection = null, ee && (!se || ee === se) && ee.unsubscribe()
                }
            }
        },
        1125: (He, ce, O) => {
            O.d(ce, {
                O: () => ne
            });
            var A = O(3596),
                T = O(8151);

            function ne(...be) {
                const he = be[be.length - 1];
                return (0, T.K)(he) ? (be.pop(), te => (0, A.z)(be, te, he)) : te => (0, A.z)(be, te)
            }
        },
        9204: (He, ce, O) => {
            O.d(ce, {
                w: () => be
            });
            var A = O(8053),
                T = O(1915),
                ne = O(8345);

            function be(ye, se) {
                return "function" == typeof se ? ee => ee.pipe(be((z, W) => (0, T.D)(ye(z, W)).pipe((0, A.U)((Y, Z) => se(z, Y, W, Z))))) : ee => ee.lift(new he(ye))
            }
            class he {
                constructor(se) {
                    this.project = se
                }
                call(se, ee) {
                    return ee.subscribe(new te(se, this.project))
                }
            }
            class te extends ne.Ds {
                constructor(se, ee) {
                    super(se), this.project = ee, this.index = 0
                }
                _next(se) {
                    let ee;
                    const z = this.index++;
                    try {
                        ee = this.project(se, z)
                    } catch (W) {
                        return void this.destination.error(W)
                    }
                    this._innerSub(ee)
                }
                _innerSub(se) {
                    const ee = this.innerSubscription;
                    ee && ee.unsubscribe();
                    const z = new ne.IY(this),
                        W = this.destination;
                    W.add(z), this.innerSubscription = (0, ne.ft)(se, z), this.innerSubscription !== z && W.add(this.innerSubscription)
                }
                _complete() {
                    const {
                        innerSubscription: se
                    } = this;
                    (!se || se.closed) && super._complete(), this.unsubscribe()
                }
                _unsubscribe() {
                    this.innerSubscription = void 0
                }
                notifyComplete() {
                    this.innerSubscription = void 0, this.isStopped && super._complete()
                }
                notifyNext(se) {
                    this.destination.next(se)
                }
            }
        },
        6636: (He, ce, O) => {
            O.d(ce, {
                q: () => be
            });
            var A = O(4168),
                T = O(523),
                ne = O(172);

            function be(ye) {
                return se => 0 === ye ? (0, ne.c)() : se.lift(new he(ye))
            }
            class he {
                constructor(se) {
                    if (this.total = se, this.total < 0) throw new T.W
                }
                call(se, ee) {
                    return ee.subscribe(new te(se, this.total))
                }
            }
            class te extends A.L {
                constructor(se, ee) {
                    super(se), this.total = ee, this.count = 0
                }
                _next(se) {
                    const ee = this.total,
                        z = ++this.count;
                    z <= ee && (this.destination.next(se), z === ee && (this.destination.complete(), this.unsubscribe()))
                }
            }
        },
        3428: (He, ce, O) => {
            O.d(ce, {
                r: () => ne
            });
            var A = O(5548),
                T = O(1346);

            function ne(be, he) {
                return new A.y(te => {
                    const ye = new T.w;
                    let se = 0;
                    return ye.add(he.schedule(function() {
                        se !== be.length ? (te.next(be[se++]), te.closed || ye.add(this.schedule())) : te.complete()
                    })), ye
                })
            }
        },
        4352: (He, ce, O) => {
            O.d(ce, {
                hZ: () => T
            });
            const T = "function" == typeof Symbol && Symbol.iterator ? Symbol.iterator : "@@iterator"
        },
        1359: (He, ce, O) => {
            O.d(ce, {
                L: () => A
            });
            const A = "function" == typeof Symbol && Symbol.observable || "@@observable"
        },
        2926: (He, ce, O) => {
            O.d(ce, {
                b: () => A
            });
            const A = "function" == typeof Symbol ? Symbol("rxSubscriber") : "@@rxSubscriber_" + Math.random()
        },
        523: (He, ce, O) => {
            O.d(ce, {
                W: () => T
            });
            const T = (() => {
                function ne() {
                    return Error.call(this), this.message = "argument out of range", this.name = "ArgumentOutOfRangeError", this
                }
                return ne.prototype = Object.create(Error.prototype), ne
            })()
        },
        2108: (He, ce, O) => {
            O.d(ce, {
                N: () => T
            });
            const T = (() => {
                function ne() {
                    return Error.call(this), this.message = "object unsubscribed", this.name = "ObjectUnsubscribedError", this
                }
                return ne.prototype = Object.create(Error.prototype), ne
            })()
        },
        9887: (He, ce, O) => {
            function A(T) {
                setTimeout(() => {
                    throw T
                }, 0)
            }
            O.d(ce, {
                z: () => A
            })
        },
        7255: (He, ce, O) => {
            function A(T) {
                return T
            }
            O.d(ce, {
                y: () => A
            })
        },
        5894: (He, ce, O) => {
            O.d(ce, {
                k: () => A
            });
            const A = Array.isArray || (T => T && "number" == typeof T.length)
        },
        1265: (He, ce, O) => {
            O.d(ce, {
                z: () => A
            });
            const A = T => T && "number" == typeof T.length && "function" != typeof T
        },
        6783: (He, ce, O) => {
            function A(T) {
                return "function" == typeof T
            }
            O.d(ce, {
                m: () => A
            })
        },
        7879: (He, ce, O) => {
            function A(T) {
                return null !== T && "object" == typeof T
            }
            O.d(ce, {
                K: () => A
            })
        },
        847: (He, ce, O) => {
            function A(T) {
                return !!T && "function" != typeof T.subscribe && "function" == typeof T.then
            }
            O.d(ce, {
                t: () => A
            })
        },
        8151: (He, ce, O) => {
            function A(T) {
                return T && "function" == typeof T.schedule
            }
            O.d(ce, {
                K: () => A
            })
        },
        4651: (He, ce, O) => {
            O.d(ce, {
                s: () => W
            });
            var A = O(8769),
                T = O(9887),
                be = O(4352),
                te = O(1359),
                se = O(1265),
                ee = O(847),
                z = O(7879);
            const W = Y => {
                if (Y && "function" == typeof Y[te.L]) return (Y => Z => {
                    const Re = Y[te.L]();
                    if ("function" != typeof Re.subscribe) throw new TypeError("Provided object does not correctly implement Symbol.observable");
                    return Re.subscribe(Z)
                })(Y);
                if ((0, se.z)(Y)) return (0, A.V)(Y);
                if ((0, ee.t)(Y)) return (Y => Z => (Y.then(Re => {
                    Z.closed || (Z.next(Re), Z.complete())
                }, Re => Z.error(Re)).then(null, T.z), Z))(Y);
                if (Y && "function" == typeof Y[be.hZ]) return (Y => Z => {
                    const Re = Y[be.hZ]();
                    for (;;) {
                        let xe;
                        try {
                            xe = Re.next()
                        } catch (we) {
                            return Z.error(we), Z
                        }
                        if (xe.done) {
                            Z.complete();
                            break
                        }
                        if (Z.next(xe.value), Z.closed) break
                    }
                    return "function" == typeof Re.return && Z.add(() => {
                        Re.return && Re.return()
                    }), Z
                })(Y);
                {
                    const Re = `You provided ${(0,z.K)(Y)?"an invalid object":`'${Y}'`} where a stream was expected. You can provide an Observable, Promise, Array, or Iterable.`;
                    throw new TypeError(Re)
                }
            }
        },
        8769: (He, ce, O) => {
            O.d(ce, {
                V: () => A
            });
            const A = T => ne => {
                for (let be = 0, he = T.length; be < he && !ne.closed; be++) ne.next(T[be]);
                ne.complete()
            }
        },
        2749: (He, ce, O) => {
            O.d(ce, {
                Y: () => he
            });
            var A = O(3405),
                T = O(8735),
                ne = O(8053),
                be = O(9619);
            let he = (() => {
                class ye {
                    constructor() {
                        this.subject = new A.xQ
                    }
                    on(ee, z) {
                        return this.subject.pipe((0, T.h)(W => W.name === ee), (0, ne.U)(W => W.value)).subscribe(z)
                    }
                    emit(ee) {
                        this.subject.next(ee)
                    }
                }
                return ye.\u0275fac = function(ee) {
                    return new(ee || ye)
                }, ye.\u0275prov = be.Yz7({
                    token: ye,
                    factory: ye.\u0275fac,
                    providedIn: "root"
                }), ye
            })()
        },
        9003: (He, ce, O) => {
            O.d(ce, {
                R: () => ye
            });
            var A = O(4762),
                T = O(9619),
                ne = O(4522),
                be = O(6706),
                he = O(2749),
                te = (() => ((te || (te = {})).CLOSE_NUI = "closeNui", te))();
            let ye = (() => {
                class se {
                    constructor(z, W, Y) {
                        this.httpClient = z, this.router = W, this.eventBus = Y, this.showNui = !0, this.data = null, window.addEventListener("message", this.handleNativeEvent.bind(this)), window.addEventListener("keyup", this.close.bind(this))
                    }
                    sendData(z, W) {
                        return (0, A.mG)(this, void 0, void 0, function*() {
                            return yield this.httpClient.post(`http://zo_attachs/${z}`, JSON.stringify(W)).toPromise().catch(Y => {})
                        })
                    }
                    close(z) {
                        return (0, A.mG)(this, void 0, void 0, function*() {
                            "Escape" === z.key && this.eventBus.emit({
                                name: "closeNuiAttachs"
                            })
                        })
                    }
                    handleNativeEvent(z) {
                        var W;
                        return (0, A.mG)(this, void 0, void 0, function*() {
                            switch (this.data = null == z ? void 0 : z.data, null === (W = this.data) || void 0 === W ? void 0 : W.type) {
                                case "openAttachs":
                                    this.showNui = !0, yield this.router.navigate(["/attachs"]);
                                    break;
                                case "sendNotify":
                                    this.eventBus.emit({
                                        name: "showNotify",
                                        value: this.data
                                    });
                                    break;
                                case te.CLOSE_NUI:
                                    this.showNui = !1, yield this.router.navigate(["/"])
                            }
                        })
                    }
                }
                return se.\u0275fac = function(z) {
                    return new(z || se)(T.LFG(ne.eN), T.LFG(be.F0), T.LFG(he.Y))
                }, se.\u0275prov = T.Yz7({
                    token: se,
                    factory: se.\u0275fac,
                    providedIn: "root"
                }), se
            })()
        },
        2311: (He, ce, O) => {
            var A = O(5427),
                T = O(9619),
                ne = O(4522),
                be = O(6706);
            const he = [{
                path: "",
                loadChildren: () => O.e("src_app_nui_nui_module_ts").then(O.bind(O, 3391)).then(Y => Y.NuiModule)
            }];
            let te = (() => {
                class Y {}
                return Y.\u0275fac = function(Re) {
                    return new(Re || Y)
                }, Y.\u0275mod = T.oAB({
                    type: Y
                }), Y.\u0275inj = T.cJS({
                    imports: [
                        [be.Bz.forRoot(he)], be.Bz
                    ]
                }), Y
            })();
            var ye = O(9003);
            let se = (() => {
                class Y {
                    constructor(Re) {
                        this.nativeService = Re
                    }
                }
                return Y.\u0275fac = function(Re) {
                    return new(Re || Y)(T.Y36(ye.R))
                }, Y.\u0275cmp = T.Xpm({
                    type: Y,
                    selectors: [
                        ["app-root"]
                    ],
                    decls: 1,
                    vars: 0,
                    template: function(Re, xe) {
                        1 & Re && T._UZ(0, "router-outlet")
                    },
                    directives: [be.lC],
                    encapsulation: 2
                }), Y
            })();
            var ee = O(9555);
            let z = (() => {
                class Y {}
                return Y.\u0275fac = function(Re) {
                    return new(Re || Y)
                }, Y.\u0275mod = T.oAB({
                    type: Y,
                    bootstrap: [se]
                }), Y.\u0275inj = T.cJS({
                    providers: [ye.R],
                    imports: [
                        [ee.PW, ne.JF, te]
                    ]
                }), Y
            })();
            A.q6().bootstrapModule(z).catch(Y => console.error(Y))
        },
        4762: (He, ce, O) => {
            function he(ue, _e, de, ve) {
                var Ne, Ce = arguments.length,
                    ae = Ce < 3 ? _e : null === ve ? ve = Object.getOwnPropertyDescriptor(_e, de) : ve;
                if ("object" == typeof Reflect && "function" == typeof Reflect.decorate) ae = Reflect.decorate(ue, _e, de, ve);
                else
                    for (var Te = ue.length - 1; Te >= 0; Te--)(Ne = ue[Te]) && (ae = (Ce < 3 ? Ne(ae) : Ce > 3 ? Ne(_e, de, ae) : Ne(_e, de)) || ae);
                return Ce > 3 && ae && Object.defineProperty(_e, de, ae), ae
            }

            function se(ue, _e, de, ve) {
                return new(de || (de = Promise))(function(ae, Ne) {
                    function Te(Ht) {
                        try {
                            Xe(ve.next(Ht))
                        } catch (ln) {
                            Ne(ln)
                        }
                    }

                    function Ut(Ht) {
                        try {
                            Xe(ve.throw(Ht))
                        } catch (ln) {
                            Ne(ln)
                        }
                    }

                    function Xe(Ht) {
                        Ht.done ? ae(Ht.value) : function(ae) {
                            return ae instanceof de ? ae : new de(function(Ne) {
                                Ne(ae)
                            })
                        }(Ht.value).then(Te, Ut)
                    }
                    Xe((ve = ve.apply(ue, _e || [])).next())
                })
            }
            O.d(ce, {
                gn: () => he,
                mG: () => se
            })
        },
        9814: (He, ce, O) => {
            O.d(ce, {
                l3: () => ne,
                _j: () => A,
                LC: () => T,
                ZN: () => gt,
                jt: () => he,
                vP: () => ye,
                SB: () => ee,
                oB: () => se,
                eR: () => W,
                X$: () => be,
                ZE: () => tt,
                k1: () => St
            });
            class A {}
            class T {}
            const ne = "*";

            function be($e, X) {
                return {
                    type: 7,
                    name: $e,
                    definitions: X,
                    options: {}
                }
            }

            function he($e, X = null) {
                return {
                    type: 4,
                    styles: X,
                    timings: $e
                }
            }

            function ye($e, X = null) {
                return {
                    type: 2,
                    steps: $e,
                    options: X
                }
            }

            function se($e) {
                return {
                    type: 6,
                    styles: $e,
                    offset: null
                }
            }

            function ee($e, X, Me) {
                return {
                    type: 0,
                    name: $e,
                    styles: X,
                    options: Me
                }
            }

            function W($e, X, Me = null) {
                return {
                    type: 1,
                    expr: $e,
                    animation: X,
                    options: Me
                }
            }

            function me($e) {
                Promise.resolve(null).then($e)
            }
            class gt {
                constructor(X = 0, Me = 0) {
                    this._onDoneFns = [], this._onStartFns = [], this._onDestroyFns = [], this._started = !1, this._destroyed = !1, this._finished = !1, this._position = 0, this.parentPlayer = null, this.totalTime = X + Me
                }
                _onFinish() {
                    this._finished || (this._finished = !0, this._onDoneFns.forEach(X => X()), this._onDoneFns = [])
                }
                onStart(X) {
                    this._onStartFns.push(X)
                }
                onDone(X) {
                    this._onDoneFns.push(X)
                }
                onDestroy(X) {
                    this._onDestroyFns.push(X)
                }
                hasStarted() {
                    return this._started
                }
                init() {}
                play() {
                    this.hasStarted() || (this._onStart(), this.triggerMicrotask()), this._started = !0
                }
                triggerMicrotask() {
                    me(() => this._onFinish())
                }
                _onStart() {
                    this._onStartFns.forEach(X => X()), this._onStartFns = []
                }
                pause() {}
                restart() {}
                finish() {
                    this._onFinish()
                }
                destroy() {
                    this._destroyed || (this._destroyed = !0, this.hasStarted() || this._onStart(), this.finish(), this._onDestroyFns.forEach(X => X()), this._onDestroyFns = [])
                }
                reset() {
                    this._started = !1
                }
                setPosition(X) {
                    this._position = this.totalTime ? X * this.totalTime : 1
                }
                getPosition() {
                    return this.totalTime ? this._position / this.totalTime : 1
                }
                triggerCallback(X) {
                    const Me = "start" == X ? this._onStartFns : this._onDoneFns;
                    Me.forEach(Dt => Dt()), Me.length = 0
                }
            }
            class tt {
                constructor(X) {
                    this._onDoneFns = [], this._onStartFns = [], this._finished = !1, this._started = !1, this._destroyed = !1, this._onDestroyFns = [], this.parentPlayer = null, this.totalTime = 0, this.players = X;
                    let Me = 0,
                        Dt = 0,
                        ue = 0;
                    const _e = this.players.length;
                    0 == _e ? me(() => this._onFinish()) : this.players.forEach(de => {
                        de.onDone(() => {
                            ++Me == _e && this._onFinish()
                        }), de.onDestroy(() => {
                            ++Dt == _e && this._onDestroy()
                        }), de.onStart(() => {
                            ++ue == _e && this._onStart()
                        })
                    }), this.totalTime = this.players.reduce((de, ve) => Math.max(de, ve.totalTime), 0)
                }
                _onFinish() {
                    this._finished || (this._finished = !0, this._onDoneFns.forEach(X => X()), this._onDoneFns = [])
                }
                init() {
                    this.players.forEach(X => X.init())
                }
                onStart(X) {
                    this._onStartFns.push(X)
                }
                _onStart() {
                    this.hasStarted() || (this._started = !0, this._onStartFns.forEach(X => X()), this._onStartFns = [])
                }
                onDone(X) {
                    this._onDoneFns.push(X)
                }
                onDestroy(X) {
                    this._onDestroyFns.push(X)
                }
                hasStarted() {
                    return this._started
                }
                play() {
                    this.parentPlayer || this.init(), this._onStart(), this.players.forEach(X => X.play())
                }
                pause() {
                    this.players.forEach(X => X.pause())
                }
                restart() {
                    this.players.forEach(X => X.restart())
                }
                finish() {
                    this._onFinish(), this.players.forEach(X => X.finish())
                }
                destroy() {
                    this._onDestroy()
                }
                _onDestroy() {
                    this._destroyed || (this._destroyed = !0, this._onFinish(), this.players.forEach(X => X.destroy()), this._onDestroyFns.forEach(X => X()), this._onDestroyFns = [])
                }
                reset() {
                    this.players.forEach(X => X.reset()), this._destroyed = !1, this._finished = !1, this._started = !1
                }
                setPosition(X) {
                    const Me = X * this.totalTime;
                    this.players.forEach(Dt => {
                        const ue = Dt.totalTime ? Math.min(1, Me / Dt.totalTime) : 1;
                        Dt.setPosition(ue)
                    })
                }
                getPosition() {
                    const X = this.players.reduce((Me, Dt) => null === Me || Dt.totalTime > Me.totalTime ? Dt : Me, null);
                    return null != X ? X.getPosition() : 0
                }
                beforeDestroy() {
                    this.players.forEach(X => {
                        X.beforeDestroy && X.beforeDestroy()
                    })
                }
                triggerCallback(X) {
                    const Me = "start" == X ? this._onStartFns : this._onDoneFns;
                    Me.forEach(Dt => Dt()), Me.length = 0
                }
            }
            const St = "!"
        },
        6019: (He, ce, O) => {
            O.d(ce, {
                mr: () => tt,
                ez: () => dr,
                H9: () => Ms,
                K0: () => ye,
                Do: () => $e,
                V_: () => z,
                Ye: () => X,
                S$: () => me,
                mk: () => rs,
                sg: () => Yn,
                O5: () => At,
                PC: () => Sn,
                tP: () => Ln,
                b0: () => St,
                lw: () => se,
                EM: () => xi,
                JF: () => Fi,
                NF: () => ri,
                w_: () => te,
                bD: () => us,
                q: () => ne,
                Mx: () => jr,
                HT: () => he
            });
            var A = O(9619);
            let T = null;

            function ne() {
                return T
            }

            function he(_) {
                T || (T = _)
            }
            class te {}
            const ye = new A.OlP("DocumentToken");
            let se = (() => {
                class _ {
                    historyGo(y) {
                        throw new Error("Not implemented")
                    }
                }
                return _.\u0275fac = function(y) {
                    return new(y || _)
                }, _.\u0275prov = A.Yz7({
                    token: _,
                    factory: function() {
                        return (0, A.LFG)(W)
                    },
                    providedIn: "platform"
                }), _
            })();
            const z = new A.OlP("Location Initialized");
            let W = (() => {
                class _ extends se {
                    constructor(y) {
                        super(), this._doc = y, this._init()
                    }
                    _init() {
                        this.location = window.location, this._history = window.history
                    }
                    getBaseHrefFromDOM() {
                        return ne().getBaseHref(this._doc)
                    }
                    onPopState(y) {
                        const I = ne().getGlobalEventTarget(this._doc, "window");
                        return I.addEventListener("popstate", y, !1), () => I.removeEventListener("popstate", y)
                    }
                    onHashChange(y) {
                        const I = ne().getGlobalEventTarget(this._doc, "window");
                        return I.addEventListener("hashchange", y, !1), () => I.removeEventListener("hashchange", y)
                    }
                    get href() {
                        return this.location.href
                    }
                    get protocol() {
                        return this.location.protocol
                    }
                    get hostname() {
                        return this.location.hostname
                    }
                    get port() {
                        return this.location.port
                    }
                    get pathname() {
                        return this.location.pathname
                    }
                    get search() {
                        return this.location.search
                    }
                    get hash() {
                        return this.location.hash
                    }
                    set pathname(y) {
                        this.location.pathname = y
                    }
                    pushState(y, I, B) {
                        Y() ? this._history.pushState(y, I, B) : this.location.hash = B
                    }
                    replaceState(y, I, B) {
                        Y() ? this._history.replaceState(y, I, B) : this.location.hash = B
                    }
                    forward() {
                        this._history.forward()
                    }
                    back() {
                        this._history.back()
                    }
                    historyGo(y = 0) {
                        this._history.go(y)
                    }
                    getState() {
                        return this._history.state
                    }
                }
                return _.\u0275fac = function(y) {
                    return new(y || _)(A.LFG(ye))
                }, _.\u0275prov = A.Yz7({
                    token: _,
                    factory: function() {
                        return new W((0, A.LFG)(ye))
                    },
                    providedIn: "platform"
                }), _
            })();

            function Y() {
                return !!window.history.pushState
            }

            function Re(_, b) {
                if (0 == _.length) return b;
                if (0 == b.length) return _;
                let y = 0;
                return _.endsWith("/") && y++, b.startsWith("/") && y++, 2 == y ? _ + b.substring(1) : 1 == y ? _ + b : _ + "/" + b
            }

            function xe(_) {
                const b = _.match(/#|\?|$/),
                    y = b && b.index || _.length;
                return _.slice(0, y - ("/" === _[y - 1] ? 1 : 0)) + _.slice(y)
            }

            function we(_) {
                return _ && "?" !== _[0] ? "?" + _ : _
            }
            let me = (() => {
                class _ {
                    historyGo(y) {
                        throw new Error("Not implemented")
                    }
                }
                return _.\u0275fac = function(y) {
                    return new(y || _)
                }, _.\u0275prov = A.Yz7({
                    token: _,
                    factory: function() {
                        return function(_) {
                            const b = (0, A.LFG)(ye).location;
                            return new St((0, A.LFG)(se), b && b.origin || "")
                        }()
                    },
                    providedIn: "root"
                }), _
            })();
            const tt = new A.OlP("appBaseHref");
            let St = (() => {
                    class _ extends me {
                        constructor(y, I) {
                            if (super(), this._platformLocation = y, this._removeListenerFns = [], null == I && (I = this._platformLocation.getBaseHrefFromDOM()), null == I) throw new Error("No base href set. Please provide a value for the APP_BASE_HREF token or add a base element to the document.");
                            this._baseHref = I
                        }
                        ngOnDestroy() {
                            for (; this._removeListenerFns.length;) this._removeListenerFns.pop()()
                        }
                        onPopState(y) {
                            this._removeListenerFns.push(this._platformLocation.onPopState(y), this._platformLocation.onHashChange(y))
                        }
                        getBaseHref() {
                            return this._baseHref
                        }
                        prepareExternalUrl(y) {
                            return Re(this._baseHref, y)
                        }
                        path(y = !1) {
                            const I = this._platformLocation.pathname + we(this._platformLocation.search),
                                B = this._platformLocation.hash;
                            return B && y ? `${I}${B}` : I
                        }
                        pushState(y, I, B, q) {
                            const De = this.prepareExternalUrl(B + we(q));
                            this._platformLocation.pushState(y, I, De)
                        }
                        replaceState(y, I, B, q) {
                            const De = this.prepareExternalUrl(B + we(q));
                            this._platformLocation.replaceState(y, I, De)
                        }
                        forward() {
                            this._platformLocation.forward()
                        }
                        back() {
                            this._platformLocation.back()
                        }
                        historyGo(y = 0) {
                            var I, B;
                            null == (B = (I = this._platformLocation).historyGo) || B.call(I, y)
                        }
                    }
                    return _.\u0275fac = function(y) {
                        return new(y || _)(A.LFG(se), A.LFG(tt, 8))
                    }, _.\u0275prov = A.Yz7({
                        token: _,
                        factory: _.\u0275fac
                    }), _
                })(),
                $e = (() => {
                    class _ extends me {
                        constructor(y, I) {
                            super(), this._platformLocation = y, this._baseHref = "", this._removeListenerFns = [], null != I && (this._baseHref = I)
                        }
                        ngOnDestroy() {
                            for (; this._removeListenerFns.length;) this._removeListenerFns.pop()()
                        }
                        onPopState(y) {
                            this._removeListenerFns.push(this._platformLocation.onPopState(y), this._platformLocation.onHashChange(y))
                        }
                        getBaseHref() {
                            return this._baseHref
                        }
                        path(y = !1) {
                            let I = this._platformLocation.hash;
                            return null == I && (I = "#"), I.length > 0 ? I.substring(1) : I
                        }
                        prepareExternalUrl(y) {
                            const I = Re(this._baseHref, y);
                            return I.length > 0 ? "#" + I : I
                        }
                        pushState(y, I, B, q) {
                            let De = this.prepareExternalUrl(B + we(q));
                            0 == De.length && (De = this._platformLocation.pathname), this._platformLocation.pushState(y, I, De)
                        }
                        replaceState(y, I, B, q) {
                            let De = this.prepareExternalUrl(B + we(q));
                            0 == De.length && (De = this._platformLocation.pathname), this._platformLocation.replaceState(y, I, De)
                        }
                        forward() {
                            this._platformLocation.forward()
                        }
                        back() {
                            this._platformLocation.back()
                        }
                        historyGo(y = 0) {
                            var I, B;
                            null == (B = (I = this._platformLocation).historyGo) || B.call(I, y)
                        }
                    }
                    return _.\u0275fac = function(y) {
                        return new(y || _)(A.LFG(se), A.LFG(tt, 8))
                    }, _.\u0275prov = A.Yz7({
                        token: _,
                        factory: _.\u0275fac
                    }), _
                })(),
                X = (() => {
                    class _ {
                        constructor(y, I) {
                            this._subject = new A.vpe, this._urlChangeListeners = [], this._platformStrategy = y;
                            const B = this._platformStrategy.getBaseHref();
                            this._platformLocation = I, this._baseHref = xe(ue(B)), this._platformStrategy.onPopState(q => {
                                this._subject.emit({
                                    url: this.path(!0),
                                    pop: !0,
                                    state: q.state,
                                    type: q.type
                                })
                            })
                        }
                        path(y = !1) {
                            return this.normalize(this._platformStrategy.path(y))
                        }
                        getState() {
                            return this._platformLocation.getState()
                        }
                        isCurrentPathEqualTo(y, I = "") {
                            return this.path() == this.normalize(y + we(I))
                        }
                        normalize(y) {
                            return _.stripTrailingSlash(function(_, b) {
                                return _ && b.startsWith(_) ? b.substring(_.length) : b
                            }(this._baseHref, ue(y)))
                        }
                        prepareExternalUrl(y) {
                            return y && "/" !== y[0] && (y = "/" + y), this._platformStrategy.prepareExternalUrl(y)
                        }
                        go(y, I = "", B = null) {
                            this._platformStrategy.pushState(B, "", y, I), this._notifyUrlChangeListeners(this.prepareExternalUrl(y + we(I)), B)
                        }
                        replaceState(y, I = "", B = null) {
                            this._platformStrategy.replaceState(B, "", y, I), this._notifyUrlChangeListeners(this.prepareExternalUrl(y + we(I)), B)
                        }
                        forward() {
                            this._platformStrategy.forward()
                        }
                        back() {
                            this._platformStrategy.back()
                        }
                        historyGo(y = 0) {
                            var I, B;
                            null == (B = (I = this._platformStrategy).historyGo) || B.call(I, y)
                        }
                        onUrlChange(y) {
                            this._urlChangeListeners.push(y), this._urlChangeSubscription || (this._urlChangeSubscription = this.subscribe(I => {
                                this._notifyUrlChangeListeners(I.url, I.state)
                            }))
                        }
                        _notifyUrlChangeListeners(y = "", I) {
                            this._urlChangeListeners.forEach(B => B(y, I))
                        }
                        subscribe(y, I, B) {
                            return this._subject.subscribe({
                                next: y,
                                error: I,
                                complete: B
                            })
                        }
                    }
                    return _.normalizeQueryParams = we, _.joinWithSlash = Re, _.stripTrailingSlash = xe, _.\u0275fac = function(y) {
                        return new(y || _)(A.LFG(me), A.LFG(se))
                    }, _.\u0275prov = A.Yz7({
                        token: _,
                        factory: function() {
                            return new X((0, A.LFG)(me), (0, A.LFG)(se))
                        },
                        providedIn: "root"
                    }), _
                })();

            function ue(_) {
                return _.replace(/\/index.html$/, "")
            }
            const _e = {
                ADP: [void 0, void 0, 0],
                AFN: [void 0, "\u060b", 0],
                ALL: [void 0, void 0, 0],
                AMD: [void 0, "\u058f", 2],
                AOA: [void 0, "Kz"],
                ARS: [void 0, "$"],
                AUD: ["A$", "$"],
                AZN: [void 0, "\u20bc"],
                BAM: [void 0, "KM"],
                BBD: [void 0, "$"],
                BDT: [void 0, "\u09f3"],
                BHD: [void 0, void 0, 3],
                BIF: [void 0, void 0, 0],
                BMD: [void 0, "$"],
                BND: [void 0, "$"],
                BOB: [void 0, "Bs"],
                BRL: ["R$"],
                BSD: [void 0, "$"],
                BWP: [void 0, "P"],
                BYN: [void 0, "\u0440.", 2],
                BYR: [void 0, void 0, 0],
                BZD: [void 0, "$"],
                CAD: ["CA$", "$", 2],
                CHF: [void 0, void 0, 2],
                CLF: [void 0, void 0, 4],
                CLP: [void 0, "$", 0],
                CNY: ["CN\xa5", "\xa5"],
                COP: [void 0, "$", 2],
                CRC: [void 0, "\u20a1", 2],
                CUC: [void 0, "$"],
                CUP: [void 0, "$"],
                CZK: [void 0, "K\u010d", 2],
                DJF: [void 0, void 0, 0],
                DKK: [void 0, "kr", 2],
                DOP: [void 0, "$"],
                EGP: [void 0, "E\xa3"],
                ESP: [void 0, "\u20a7", 0],
                EUR: ["\u20ac"],
                FJD: [void 0, "$"],
                FKP: [void 0, "\xa3"],
                GBP: ["\xa3"],
                GEL: [void 0, "\u20be"],
                GHS: [void 0, "GH\u20b5"],
                GIP: [void 0, "\xa3"],
                GNF: [void 0, "FG", 0],
                GTQ: [void 0, "Q"],
                GYD: [void 0, "$", 2],
                HKD: ["HK$", "$"],
                HNL: [void 0, "L"],
                HRK: [void 0, "kn"],
                HUF: [void 0, "Ft", 2],
                IDR: [void 0, "Rp", 2],
                ILS: ["\u20aa"],
                INR: ["\u20b9"],
                IQD: [void 0, void 0, 0],
                IRR: [void 0, void 0, 0],
                ISK: [void 0, "kr", 0],
                ITL: [void 0, void 0, 0],
                JMD: [void 0, "$"],
                JOD: [void 0, void 0, 3],
                JPY: ["\xa5", void 0, 0],
                KHR: [void 0, "\u17db"],
                KMF: [void 0, "CF", 0],
                KPW: [void 0, "\u20a9", 0],
                KRW: ["\u20a9", void 0, 0],
                KWD: [void 0, void 0, 3],
                KYD: [void 0, "$"],
                KZT: [void 0, "\u20b8"],
                LAK: [void 0, "\u20ad", 0],
                LBP: [void 0, "L\xa3", 0],
                LKR: [void 0, "Rs"],
                LRD: [void 0, "$"],
                LTL: [void 0, "Lt"],
                LUF: [void 0, void 0, 0],
                LVL: [void 0, "Ls"],
                LYD: [void 0, void 0, 3],
                MGA: [void 0, "Ar", 0],
                MGF: [void 0, void 0, 0],
                MMK: [void 0, "K", 0],
                MNT: [void 0, "\u20ae", 2],
                MRO: [void 0, void 0, 0],
                MUR: [void 0, "Rs", 2],
                MXN: ["MX$", "$"],
                MYR: [void 0, "RM"],
                NAD: [void 0, "$"],
                NGN: [void 0, "\u20a6"],
                NIO: [void 0, "C$"],
                NOK: [void 0, "kr", 2],
                NPR: [void 0, "Rs"],
                NZD: ["NZ$", "$"],
                OMR: [void 0, void 0, 3],
                PHP: ["\u20b1"],
                PKR: [void 0, "Rs", 2],
                PLN: [void 0, "z\u0142"],
                PYG: [void 0, "\u20b2", 0],
                RON: [void 0, "lei"],
                RSD: [void 0, void 0, 0],
                RUB: [void 0, "\u20bd"],
                RUR: [void 0, "\u0440."],
                RWF: [void 0, "RF", 0],
                SBD: [void 0, "$"],
                SEK: [void 0, "kr", 2],
                SGD: [void 0, "$"],
                SHP: [void 0, "\xa3"],
                SLL: [void 0, void 0, 0],
                SOS: [void 0, void 0, 0],
                SRD: [void 0, "$"],
                SSP: [void 0, "\xa3"],
                STD: [void 0, void 0, 0],
                STN: [void 0, "Db"],
                SYP: [void 0, "\xa3", 0],
                THB: [void 0, "\u0e3f"],
                TMM: [void 0, void 0, 0],
                TND: [void 0, void 0, 3],
                TOP: [void 0, "T$"],
                TRL: [void 0, void 0, 0],
                TRY: [void 0, "\u20ba"],
                TTD: [void 0, "$"],
                TWD: ["NT$", "$", 2],
                TZS: [void 0, void 0, 2],
                UAH: [void 0, "\u20b4"],
                UGX: [void 0, void 0, 0],
                USD: ["$"],
                UYI: [void 0, void 0, 0],
                UYU: [void 0, "$"],
                UYW: [void 0, void 0, 4],
                UZS: [void 0, void 0, 2],
                VEF: [void 0, "Bs", 2],
                VND: ["\u20ab", void 0, 0],
                VUV: [void 0, void 0, 0],
                XAF: ["FCFA", void 0, 0],
                XCD: ["EC$", "$"],
                XOF: ["F\u202fCFA", void 0, 0],
                XPF: ["CFPF", void 0, 0],
                XXX: ["\xa4"],
                YER: [void 0, void 0, 0],
                ZAR: [void 0, "R"],
                ZMK: [void 0, void 0, 0],
                ZMW: [void 0, "ZK"],
                ZWD: [void 0, void 0, 0]
            };
            var de = (() => ((de = de || {})[de.Decimal = 0] = "Decimal", de[de.Percent = 1] = "Percent", de[de.Currency = 2] = "Currency", de[de.Scientific = 3] = "Scientific", de))(),
                ve = (() => ((ve = ve || {})[ve.Zero = 0] = "Zero", ve[ve.One = 1] = "One", ve[ve.Two = 2] = "Two", ve[ve.Few = 3] = "Few", ve[ve.Many = 4] = "Many", ve[ve.Other = 5] = "Other", ve))(),
                Te = (() => ((Te = Te || {})[Te.Decimal = 0] = "Decimal", Te[Te.Group = 1] = "Group", Te[Te.List = 2] = "List", Te[Te.PercentSign = 3] = "PercentSign", Te[Te.PlusSign = 4] = "PlusSign", Te[Te.MinusSign = 5] = "MinusSign", Te[Te.Exponential = 6] = "Exponential", Te[Te.SuperscriptingExponent = 7] = "SuperscriptingExponent", Te[Te.PerMille = 8] = "PerMille", Te[Te.Infinity = 9] = "Infinity", Te[Te.NaN = 10] = "NaN", Te[Te.TimeSeparator = 11] = "TimeSeparator", Te[Te.CurrencyDecimal = 12] = "CurrencyDecimal", Te[Te.CurrencyGroup = 13] = "CurrencyGroup", Te))();

            function gn(_, b) {
                const y = (0, A.cg1)(_),
                    I = y[A.wAp.NumberSymbols][b];
                if (void 0 === I) {
                    if (b === Te.CurrencyDecimal) return y[A.wAp.NumberSymbols][Te.Decimal];
                    if (b === Te.CurrencyGroup) return y[A.wAp.NumberSymbols][Te.Group]
                }
                return I
            }
            const Pt = A.kL8;
            const wn = /^(\d+)?\.((\d+)(-(\d+))?)?$/;

            function Oe(_, b, y, I, B) {
                const De = function(_, b = "-") {
                    const y = {
                            minInt: 1,
                            minFrac: 0,
                            maxFrac: 0,
                            posPre: "",
                            posSuf: "",
                            negPre: "",
                            negSuf: "",
                            gSize: 0,
                            lgSize: 0
                        },
                        I = _.split(";"),
                        B = I[0],
                        q = I[1],
                        De = -1 !== B.indexOf(".") ? B.split(".") : [B.substring(0, B.lastIndexOf("0") + 1), B.substring(B.lastIndexOf("0") + 1)],
                        We = De[0],
                        Tt = De[1] || "";
                    y.posPre = We.substr(0, We.indexOf("#"));
                    for (let Rt = 0; Rt < Tt.length; Rt++) {
                        const yt = Tt.charAt(Rt);
                        "0" === yt ? y.minFrac = y.maxFrac = Rt + 1 : "#" === yt ? y.maxFrac = Rt + 1 : y.posSuf += yt
                    }
                    const wt = We.split(",");
                    if (y.gSize = wt[1] ? wt[1].length : 0, y.lgSize = wt[2] || wt[1] ? (wt[2] || wt[1]).length : 0, q) {
                        const Rt = B.length - y.posPre.length - y.posSuf.length,
                            yt = q.indexOf("#");
                        y.negPre = q.substr(0, yt).replace(/'/g, ""), y.negSuf = q.substr(yt + Rt).replace(/'/g, "")
                    } else y.negPre = b + y.posPre, y.negSuf = y.posSuf;
                    return y
                }(function(_, b) {
                    return (0, A.cg1)(_)[A.wAp.NumberFormats][b]
                }(b, de.Currency), gn(b, Te.MinusSign));
                return De.minFrac = function(_) {
                        let b;
                        const y = _e[_];
                        return y && (b = y[2]), "number" == typeof b ? b : 2
                    }(I), De.maxFrac = De.minFrac,
                    function(_, b, y, I, B, q, De = !1) {
                        let We = "",
                            Tt = !1;
                        if (isFinite(_)) {
                            let wt = function(_) {
                                let I, B, q, De, We, b = Math.abs(_) + "",
                                    y = 0;
                                for ((B = b.indexOf(".")) > -1 && (b = b.replace(".", "")), (q = b.search(/e/i)) > 0 ? (B < 0 && (B = q), B += +b.slice(q + 1), b = b.substring(0, q)) : B < 0 && (B = b.length), q = 0;
                                    "0" === b.charAt(q); q++);
                                if (q === (We = b.length)) I = [0], B = 1;
                                else {
                                    for (We--;
                                        "0" === b.charAt(We);) We--;
                                    for (B -= q, I = [], De = 0; q <= We; q++, De++) I[De] = Number(b.charAt(q))
                                }
                                return B > 22 && (I = I.splice(0, 21), y = B - 1, B = 1), {
                                    digits: I,
                                    exponent: y,
                                    integerLen: B
                                }
                            }(_);
                            De && (wt = function(_) {
                                if (0 === _.digits[0]) return _;
                                const b = _.digits.length - _.integerLen;
                                return _.exponent ? _.exponent += 2 : (0 === b ? _.digits.push(0, 0) : 1 === b && _.digits.push(0), _.integerLen += 2), _
                            }(wt));
                            let Rt = b.minInt,
                                yt = b.minFrac,
                                Bt = b.maxFrac;
                            if (q) {
                                const Or = q.match(wn);
                                if (null === Or) throw new Error(`${q} is not a valid digit info`);
                                const Os = Or[1],
                                    Je = Or[3],
                                    jn = Or[5];
                                null != Os && (Rt = Le(Os)), null != Je && (yt = Le(Je)), null != jn ? Bt = Le(jn) : null != Je && yt > Bt && (Bt = yt)
                            }! function(_, b, y) {
                                if (b > y) throw new Error(`The minimum number of digits after fraction (${b}) is higher than the maximum (${y}).`);
                                let I = _.digits,
                                    B = I.length - _.integerLen;
                                const q = Math.min(Math.max(b, B), y);
                                let De = q + _.integerLen,
                                    We = I[De];
                                if (De > 0) {
                                    I.splice(Math.max(_.integerLen, De));
                                    for (let yt = De; yt < I.length; yt++) I[yt] = 0
                                } else {
                                    B = Math.max(0, B), _.integerLen = 1, I.length = Math.max(1, De = q + 1), I[0] = 0;
                                    for (let yt = 1; yt < De; yt++) I[yt] = 0
                                }
                                if (We >= 5)
                                    if (De - 1 < 0) {
                                        for (let yt = 0; yt > De; yt--) I.unshift(0), _.integerLen++;
                                        I.unshift(1), _.integerLen++
                                    } else I[De - 1]++;
                                for (; B < Math.max(0, q); B++) I.push(0);
                                let Tt = 0 !== q;
                                const wt = b + _.integerLen,
                                    Rt = I.reduceRight(function(yt, Bt, ht, en) {
                                        return en[ht] = (Bt += yt) < 10 ? Bt : Bt - 10, Tt && (0 === en[ht] && ht >= wt ? en.pop() : Tt = !1), Bt >= 10 ? 1 : 0
                                    }, 0);
                                Rt && (I.unshift(Rt), _.integerLen++)
                            }(wt, yt, Bt);
                            let ht = wt.digits,
                                en = wt.integerLen;
                            const Sr = wt.exponent;
                            let Tr = [];
                            for (Tt = ht.every(Or => !Or); en < Rt; en++) ht.unshift(0);
                            for (; en < 0; en++) ht.unshift(0);
                            en > 0 ? Tr = ht.splice(en, ht.length) : (Tr = ht, ht = [0]);
                            const Bn = [];
                            for (ht.length >= b.lgSize && Bn.unshift(ht.splice(-b.lgSize, ht.length).join("")); ht.length > b.gSize;) Bn.unshift(ht.splice(-b.gSize, ht.length).join(""));
                            ht.length && Bn.unshift(ht.join("")), We = Bn.join(gn(y, I)), Tr.length && (We += gn(y, B) + Tr.join("")), Sr && (We += gn(y, Te.Exponential) + "+" + Sr)
                        } else We = gn(y, Te.Infinity);
                        return We = _ < 0 && !Tt ? b.negPre + We + b.negSuf : b.posPre + We + b.posSuf, We
                    }(_, De, b, Te.CurrencyGroup, Te.CurrencyDecimal, B).replace("\xa4", y).replace("\xa4", "").trim()
            }

            function Le(_) {
                const b = parseInt(_);
                if (isNaN(b)) throw new Error("Invalid integer literal when parsing " + _);
                return b
            }
            class Ve {}
            let lt = (() => {
                class _ extends Ve {
                    constructor(y) {
                        super(), this.locale = y
                    }
                    getPluralCategory(y, I) {
                        switch (Pt(I || this.locale)(y)) {
                            case ve.Zero:
                                return "zero";
                            case ve.One:
                                return "one";
                            case ve.Two:
                                return "two";
                            case ve.Few:
                                return "few";
                            case ve.Many:
                                return "many";
                            default:
                                return "other"
                        }
                    }
                }
                return _.\u0275fac = function(y) {
                    return new(y || _)(A.LFG(A.soG))
                }, _.\u0275prov = A.Yz7({
                    token: _,
                    factory: _.\u0275fac
                }), _
            })();

            function jr(_, b) {
                b = encodeURIComponent(b);
                for (const y of _.split(";")) {
                    const I = y.indexOf("="),
                        [B, q] = -1 == I ? [y, ""] : [y.slice(0, I), y.slice(I + 1)];
                    if (B.trim() === b) return decodeURIComponent(q)
                }
                return null
            }
            let rs = (() => {
                class _ {
                    constructor(y, I, B, q) {
                        this._iterableDiffers = y, this._keyValueDiffers = I, this._ngEl = B, this._renderer = q, this._iterableDiffer = null, this._keyValueDiffer = null, this._initialClasses = [], this._rawClass = null
                    }
                    set klass(y) {
                        this._removeClasses(this._initialClasses), this._initialClasses = "string" == typeof y ? y.split(/\s+/) : [], this._applyClasses(this._initialClasses), this._applyClasses(this._rawClass)
                    }
                    set ngClass(y) {
                        this._removeClasses(this._rawClass), this._applyClasses(this._initialClasses), this._iterableDiffer = null, this._keyValueDiffer = null, this._rawClass = "string" == typeof y ? y.split(/\s+/) : y, this._rawClass && ((0, A.sIi)(this._rawClass) ? this._iterableDiffer = this._iterableDiffers.find(this._rawClass).create() : this._keyValueDiffer = this._keyValueDiffers.find(this._rawClass).create())
                    }
                    ngDoCheck() {
                        if (this._iterableDiffer) {
                            const y = this._iterableDiffer.diff(this._rawClass);
                            y && this._applyIterableChanges(y)
                        } else if (this._keyValueDiffer) {
                            const y = this._keyValueDiffer.diff(this._rawClass);
                            y && this._applyKeyValueChanges(y)
                        }
                    }
                    _applyKeyValueChanges(y) {
                        y.forEachAddedItem(I => this._toggleClass(I.key, I.currentValue)), y.forEachChangedItem(I => this._toggleClass(I.key, I.currentValue)), y.forEachRemovedItem(I => {
                            I.previousValue && this._toggleClass(I.key, !1)
                        })
                    }
                    _applyIterableChanges(y) {
                        y.forEachAddedItem(I => {
                            if ("string" != typeof I.item) throw new Error(`NgClass can only toggle CSS classes expressed as strings, got ${(0,A.AaK)(I.item)}`);
                            this._toggleClass(I.item, !0)
                        }), y.forEachRemovedItem(I => this._toggleClass(I.item, !1))
                    }
                    _applyClasses(y) {
                        y && (Array.isArray(y) || y instanceof Set ? y.forEach(I => this._toggleClass(I, !0)) : Object.keys(y).forEach(I => this._toggleClass(I, !!y[I])))
                    }
                    _removeClasses(y) {
                        y && (Array.isArray(y) || y instanceof Set ? y.forEach(I => this._toggleClass(I, !1)) : Object.keys(y).forEach(I => this._toggleClass(I, !1)))
                    }
                    _toggleClass(y, I) {
                        (y = y.trim()) && y.split(/\s+/g).forEach(B => {
                            I ? this._renderer.addClass(this._ngEl.nativeElement, B) : this._renderer.removeClass(this._ngEl.nativeElement, B)
                        })
                    }
                }
                return _.\u0275fac = function(y) {
                    return new(y || _)(A.Y36(A.ZZ4), A.Y36(A.aQg), A.Y36(A.SBq), A.Y36(A.Qsj))
                }, _.\u0275dir = A.lG2({
                    type: _,
                    selectors: [
                        ["", "ngClass", ""]
                    ],
                    inputs: {
                        klass: ["class", "klass"],
                        ngClass: "ngClass"
                    }
                }), _
            })();
            class _n {
                constructor(b, y, I, B) {
                    this.$implicit = b, this.ngForOf = y, this.index = I, this.count = B
                }
                get first() {
                    return 0 === this.index
                }
                get last() {
                    return this.index === this.count - 1
                }
                get even() {
                    return this.index % 2 == 0
                }
                get odd() {
                    return !this.even
                }
            }
            let Yn = (() => {
                class _ {
                    constructor(y, I, B) {
                        this._viewContainer = y, this._template = I, this._differs = B, this._ngForOf = null, this._ngForOfDirty = !0, this._differ = null
                    }
                    set ngForOf(y) {
                        this._ngForOf = y, this._ngForOfDirty = !0
                    }
                    set ngForTrackBy(y) {
                        this._trackByFn = y
                    }
                    get ngForTrackBy() {
                        return this._trackByFn
                    }
                    set ngForTemplate(y) {
                        y && (this._template = y)
                    }
                    ngDoCheck() {
                        if (this._ngForOfDirty) {
                            this._ngForOfDirty = !1;
                            const y = this._ngForOf;
                            if (!this._differ && y) try {
                                this._differ = this._differs.find(y).create(this.ngForTrackBy)
                            } catch (I) {
                                throw new Error(`Cannot find a differ supporting object '${y}' of type '${function(_){return _.name||typeof _}(y)}'. NgFor only supports binding to Iterables such as Arrays.`)
                            }
                        }
                        if (this._differ) {
                            const y = this._differ.diff(this._ngForOf);
                            y && this._applyChanges(y)
                        }
                    }
                    _applyChanges(y) {
                        const I = [];
                        y.forEachOperation((B, q, De) => {
                            if (null == B.previousIndex) {
                                const We = this._viewContainer.createEmbeddedView(this._template, new _n(null, this._ngForOf, -1, -1), null === De ? void 0 : De),
                                    Tt = new xn(B, We);
                                I.push(Tt)
                            } else if (null == De) this._viewContainer.remove(null === q ? void 0 : q);
                            else if (null !== q) {
                                const We = this._viewContainer.get(q);
                                this._viewContainer.move(We, De);
                                const Tt = new xn(B, We);
                                I.push(Tt)
                            }
                        });
                        for (let B = 0; B < I.length; B++) this._perViewChange(I[B].view, I[B].record);
                        for (let B = 0, q = this._viewContainer.length; B < q; B++) {
                            const De = this._viewContainer.get(B);
                            De.context.index = B, De.context.count = q, De.context.ngForOf = this._ngForOf
                        }
                        y.forEachIdentityChange(B => {
                            this._viewContainer.get(B.currentIndex).context.$implicit = B.item
                        })
                    }
                    _perViewChange(y, I) {
                        y.context.$implicit = I.item
                    }
                    static ngTemplateContextGuard(y, I) {
                        return !0
                    }
                }
                return _.\u0275fac = function(y) {
                    return new(y || _)(A.Y36(A.s_b), A.Y36(A.Rgc), A.Y36(A.ZZ4))
                }, _.\u0275dir = A.lG2({
                    type: _,
                    selectors: [
                        ["", "ngFor", "", "ngForOf", ""]
                    ],
                    inputs: {
                        ngForOf: "ngForOf",
                        ngForTrackBy: "ngForTrackBy",
                        ngForTemplate: "ngForTemplate"
                    }
                }), _
            })();
            class xn {
                constructor(b, y) {
                    this.record = b, this.view = y
                }
            }
            let At = (() => {
                class _ {
                    constructor(y, I) {
                        this._viewContainer = y, this._context = new Mi, this._thenTemplateRef = null, this._elseTemplateRef = null, this._thenViewRef = null, this._elseViewRef = null, this._thenTemplateRef = I
                    }
                    set ngIf(y) {
                        this._context.$implicit = this._context.ngIf = y, this._updateView()
                    }
                    set ngIfThen(y) {
                        ss("ngIfThen", y), this._thenTemplateRef = y, this._thenViewRef = null, this._updateView()
                    }
                    set ngIfElse(y) {
                        ss("ngIfElse", y), this._elseTemplateRef = y, this._elseViewRef = null, this._updateView()
                    }
                    _updateView() {
                        this._context.$implicit ? this._thenViewRef || (this._viewContainer.clear(), this._elseViewRef = null, this._thenTemplateRef && (this._thenViewRef = this._viewContainer.createEmbeddedView(this._thenTemplateRef, this._context))) : this._elseViewRef || (this._viewContainer.clear(), this._thenViewRef = null, this._elseTemplateRef && (this._elseViewRef = this._viewContainer.createEmbeddedView(this._elseTemplateRef, this._context)))
                    }
                    static ngTemplateContextGuard(y, I) {
                        return !0
                    }
                }
                return _.\u0275fac = function(y) {
                    return new(y || _)(A.Y36(A.s_b), A.Y36(A.Rgc))
                }, _.\u0275dir = A.lG2({
                    type: _,
                    selectors: [
                        ["", "ngIf", ""]
                    ],
                    inputs: {
                        ngIf: "ngIf",
                        ngIfThen: "ngIfThen",
                        ngIfElse: "ngIfElse"
                    }
                }), _
            })();
            class Mi {
                constructor() {
                    this.$implicit = null, this.ngIf = null
                }
            }

            function ss(_, b) {
                if (b && !b.createEmbeddedView) throw new Error(`${_} must be a TemplateRef, but received '${(0,A.AaK)(b)}'.`)
            }
            let Sn = (() => {
                    class _ {
                        constructor(y, I, B) {
                            this._ngEl = y, this._differs = I, this._renderer = B, this._ngStyle = null, this._differ = null
                        }
                        set ngStyle(y) {
                            this._ngStyle = y, !this._differ && y && (this._differ = this._differs.find(y).create())
                        }
                        ngDoCheck() {
                            if (this._differ) {
                                const y = this._differ.diff(this._ngStyle);
                                y && this._applyChanges(y)
                            }
                        }
                        _setStyle(y, I) {
                            const [B, q] = y.split(".");
                            null != (I = null != I && q ? `${I}${q}` : I) ? this._renderer.setStyle(this._ngEl.nativeElement, B, I) : this._renderer.removeStyle(this._ngEl.nativeElement, B)
                        }
                        _applyChanges(y) {
                            y.forEachRemovedItem(I => this._setStyle(I.key, null)), y.forEachAddedItem(I => this._setStyle(I.key, I.currentValue)), y.forEachChangedItem(I => this._setStyle(I.key, I.currentValue))
                        }
                    }
                    return _.\u0275fac = function(y) {
                        return new(y || _)(A.Y36(A.SBq), A.Y36(A.aQg), A.Y36(A.Qsj))
                    }, _.\u0275dir = A.lG2({
                        type: _,
                        selectors: [
                            ["", "ngStyle", ""]
                        ],
                        inputs: {
                            ngStyle: "ngStyle"
                        }
                    }), _
                })(),
                Ln = (() => {
                    class _ {
                        constructor(y) {
                            this._viewContainerRef = y, this._viewRef = null, this.ngTemplateOutletContext = null, this.ngTemplateOutlet = null
                        }
                        ngOnChanges(y) {
                            if (y.ngTemplateOutlet) {
                                const I = this._viewContainerRef;
                                this._viewRef && I.remove(I.indexOf(this._viewRef)), this._viewRef = this.ngTemplateOutlet ? I.createEmbeddedView(this.ngTemplateOutlet, this.ngTemplateOutletContext) : null
                            } else this._viewRef && y.ngTemplateOutletContext && this.ngTemplateOutletContext && (this._viewRef.context = this.ngTemplateOutletContext)
                        }
                    }
                    return _.\u0275fac = function(y) {
                        return new(y || _)(A.Y36(A.s_b))
                    }, _.\u0275dir = A.lG2({
                        type: _,
                        selectors: [
                            ["", "ngTemplateOutlet", ""]
                        ],
                        inputs: {
                            ngTemplateOutletContext: "ngTemplateOutletContext",
                            ngTemplateOutlet: "ngTemplateOutlet"
                        },
                        features: [A.TTD]
                    }), _
                })();
            let Ms = (() => {
                class _ {
                    constructor(y, I = "USD") {
                        this._locale = y, this._defaultCurrencyCode = I
                    }
                    transform(y, I = this._defaultCurrencyCode, B = "symbol", q, De) {
                        if (! function(_) {
                                return !(null == _ || "" === _ || _ != _)
                            }(y)) return null;
                        De = De || this._locale, "boolean" == typeof B && (B = B ? "symbol" : "code");
                        let We = I || this._defaultCurrencyCode;
                        "code" !== B && (We = "symbol" === B || "symbol-narrow" === B ? function(_, b, y = "en") {
                            const I = function(_) {
                                    return (0, A.cg1)(_)[A.wAp.Currencies]
                                }(y)[_] || _e[_] || [],
                                B = I[1];
                            return "narrow" === b && "string" == typeof B ? B : I[0] || _
                        }(We, "symbol" === B ? "wide" : "narrow", De) : B);
                        try {
                            return Oe(function(_) {
                                if ("string" == typeof _ && !isNaN(Number(_) - parseFloat(_))) return Number(_);
                                if ("number" != typeof _) throw new Error(`${_} is not a number`);
                                return _
                            }(y), De, We, I, q)
                        } catch (Tt) {
                            throw function(_, b) {
                                return Error(`InvalidPipeArgument: '${b}' for pipe '${(0,A.AaK)(_)}'`)
                            }(_, Tt.message)
                        }
                    }
                }
                return _.\u0275fac = function(y) {
                    return new(y || _)(A.Y36(A.soG, 16), A.Y36(A.EJc, 16))
                }, _.\u0275pipe = A.Yjl({
                    name: "currency",
                    type: _,
                    pure: !0
                }), _
            })();
            let dr = (() => {
                class _ {}
                return _.\u0275fac = function(y) {
                    return new(y || _)
                }, _.\u0275mod = A.oAB({
                    type: _
                }), _.\u0275inj = A.cJS({
                    providers: [{
                        provide: Ve,
                        useClass: lt
                    }]
                }), _
            })();
            const us = "browser";

            function ri(_) {
                return _ === us
            }
            let xi = (() => {
                class _ {}
                return _.\u0275prov = (0, A.Yz7)({
                    token: _,
                    providedIn: "root",
                    factory: () => new En((0, A.LFG)(ye), window)
                }), _
            })();
            class En {
                constructor(b, y) {
                    this.document = b, this.window = y, this.offset = () => [0, 0]
                }
                setOffset(b) {
                    this.offset = Array.isArray(b) ? () => b : b
                }
                getScrollPosition() {
                    return this.supportsScrolling() ? [this.window.pageXOffset, this.window.pageYOffset] : [0, 0]
                }
                scrollToPosition(b) {
                    this.supportsScrolling() && this.window.scrollTo(b[0], b[1])
                }
                scrollToAnchor(b) {
                    if (!this.supportsScrolling()) return;
                    const y = function(_, b) {
                        const y = _.getElementById(b) || _.getElementsByName(b)[0];
                        if (y) return y;
                        if ("function" == typeof _.createTreeWalker && _.body && (_.body.createShadowRoot || _.body.attachShadow)) {
                            const I = _.createTreeWalker(_.body, NodeFilter.SHOW_ELEMENT);
                            let B = I.currentNode;
                            for (; B;) {
                                const q = B.shadowRoot;
                                if (q) {
                                    const De = q.getElementById(b) || q.querySelector(`[name="${b}"]`);
                                    if (De) return De
                                }
                                B = I.nextNode()
                            }
                        }
                        return null
                    }(this.document, b);
                    y && (this.scrollToElement(y), this.attemptFocus(y))
                }
                setHistoryScrollRestoration(b) {
                    if (this.supportScrollRestoration()) {
                        const y = this.window.history;
                        y && y.scrollRestoration && (y.scrollRestoration = b)
                    }
                }
                scrollToElement(b) {
                    const y = b.getBoundingClientRect(),
                        I = y.left + this.window.pageXOffset,
                        B = y.top + this.window.pageYOffset,
                        q = this.offset();
                    this.window.scrollTo(I - q[0], B - q[1])
                }
                attemptFocus(b) {
                    return b.focus(), this.document.activeElement === b
                }
                supportScrollRestoration() {
                    try {
                        if (!this.supportsScrolling()) return !1;
                        const b = Ps(this.window.history) || Ps(Object.getPrototypeOf(this.window.history));
                        return !(!b || !b.writable && !b.set)
                    } catch (b) {
                        return !1
                    }
                }
                supportsScrolling() {
                    try {
                        return !!this.window && !!this.window.scrollTo && "pageXOffset" in this.window
                    } catch (b) {
                        return !1
                    }
                }
            }

            function Ps(_) {
                return Object.getOwnPropertyDescriptor(_, "scrollRestoration")
            }
            class Fi {}
        },
        4522: (He, ce, O) => {
            O.d(ce, {
                eN: () => Te,
                JF: () => Kt
            });
            var A = O(6019),
                T = O(9619),
                ne = O(2411),
                be = O(5548),
                he = O(6700),
                te = O(8735),
                ye = O(8053);
            class se {}
            class ee {}
            class z {
                constructor(N) {
                    this.normalizedNames = new Map, this.lazyUpdate = null, N ? this.lazyInit = "string" == typeof N ? () => {
                        this.headers = new Map, N.split("\n").forEach($ => {
                            const ge = $.indexOf(":");
                            if (ge > 0) {
                                const fe = $.slice(0, ge),
                                    Ie = fe.toLowerCase(),
                                    Pe = $.slice(ge + 1).trim();
                                this.maybeSetNormalizedName(fe, Ie), this.headers.has(Ie) ? this.headers.get(Ie).push(Pe) : this.headers.set(Ie, [Pe])
                            }
                        })
                    } : () => {
                        this.headers = new Map, Object.keys(N).forEach($ => {
                            let ge = N[$];
                            const fe = $.toLowerCase();
                            "string" == typeof ge && (ge = [ge]), ge.length > 0 && (this.headers.set(fe, ge), this.maybeSetNormalizedName($, fe))
                        })
                    } : this.headers = new Map
                }
                has(N) {
                    return this.init(), this.headers.has(N.toLowerCase())
                }
                get(N) {
                    this.init();
                    const $ = this.headers.get(N.toLowerCase());
                    return $ && $.length > 0 ? $[0] : null
                }
                keys() {
                    return this.init(), Array.from(this.normalizedNames.values())
                }
                getAll(N) {
                    return this.init(), this.headers.get(N.toLowerCase()) || null
                }
                append(N, $) {
                    return this.clone({
                        name: N,
                        value: $,
                        op: "a"
                    })
                }
                set(N, $) {
                    return this.clone({
                        name: N,
                        value: $,
                        op: "s"
                    })
                }
                delete(N, $) {
                    return this.clone({
                        name: N,
                        value: $,
                        op: "d"
                    })
                }
                maybeSetNormalizedName(N, $) {
                    this.normalizedNames.has($) || this.normalizedNames.set($, N)
                }
                init() {
                    this.lazyInit && (this.lazyInit instanceof z ? this.copyFrom(this.lazyInit) : this.lazyInit(), this.lazyInit = null, this.lazyUpdate && (this.lazyUpdate.forEach(N => this.applyUpdate(N)), this.lazyUpdate = null))
                }
                copyFrom(N) {
                    N.init(), Array.from(N.headers.keys()).forEach($ => {
                        this.headers.set($, N.headers.get($)), this.normalizedNames.set($, N.normalizedNames.get($))
                    })
                }
                clone(N) {
                    const $ = new z;
                    return $.lazyInit = this.lazyInit && this.lazyInit instanceof z ? this.lazyInit : this, $.lazyUpdate = (this.lazyUpdate || []).concat([N]), $
                }
                applyUpdate(N) {
                    const $ = N.name.toLowerCase();
                    switch (N.op) {
                        case "a":
                        case "s":
                            let ge = N.value;
                            if ("string" == typeof ge && (ge = [ge]), 0 === ge.length) return;
                            this.maybeSetNormalizedName(N.name, $);
                            const fe = ("a" === N.op ? this.headers.get($) : void 0) || [];
                            fe.push(...ge), this.headers.set($, fe);
                            break;
                        case "d":
                            const Ie = N.value;
                            if (Ie) {
                                let Pe = this.headers.get($);
                                if (!Pe) return;
                                Pe = Pe.filter(Fe => -1 === Ie.indexOf(Fe)), 0 === Pe.length ? (this.headers.delete($), this.normalizedNames.delete($)) : this.headers.set($, Pe)
                            } else this.headers.delete($), this.normalizedNames.delete($)
                    }
                }
                forEach(N) {
                    this.init(), Array.from(this.normalizedNames.keys()).forEach($ => N(this.normalizedNames.get($), this.headers.get($)))
                }
            }
            class W {
                encodeKey(N) {
                    return xe(N)
                }
                encodeValue(N) {
                    return xe(N)
                }
                decodeKey(N) {
                    return decodeURIComponent(N)
                }
                decodeValue(N) {
                    return decodeURIComponent(N)
                }
            }
            const Z = /%(\d[a-f0-9])/gi,
                Re = {
                    40: "@",
                    "3A": ":",
                    24: "$",
                    "2C": ",",
                    "3B": ";",
                    "2B": "+",
                    "3D": "=",
                    "3F": "?",
                    "2F": "/"
                };

            function xe(pe) {
                return encodeURIComponent(pe).replace(Z, (N, $) => {
                    var ge;
                    return null != (ge = Re[$]) ? ge : N
                })
            }

            function we(pe) {
                return `${pe}`
            }
            class me {
                constructor(N = {}) {
                    if (this.updates = null, this.cloneFrom = null, this.encoder = N.encoder || new W, N.fromString) {
                        if (N.fromObject) throw new Error("Cannot specify both fromString and fromObject.");
                        this.map = function(pe, N) {
                            const $ = new Map;
                            return pe.length > 0 && pe.replace(/^\?/, "").split("&").forEach(fe => {
                                const Ie = fe.indexOf("="),
                                    [Pe, Fe] = -1 == Ie ? [N.decodeKey(fe), ""] : [N.decodeKey(fe.slice(0, Ie)), N.decodeValue(fe.slice(Ie + 1))],
                                    ze = $.get(Pe) || [];
                                ze.push(Fe), $.set(Pe, ze)
                            }), $
                        }(N.fromString, this.encoder)
                    } else N.fromObject ? (this.map = new Map, Object.keys(N.fromObject).forEach($ => {
                        const ge = N.fromObject[$];
                        this.map.set($, Array.isArray(ge) ? ge : [ge])
                    })) : this.map = null
                }
                has(N) {
                    return this.init(), this.map.has(N)
                }
                get(N) {
                    this.init();
                    const $ = this.map.get(N);
                    return $ ? $[0] : null
                }
                getAll(N) {
                    return this.init(), this.map.get(N) || null
                }
                keys() {
                    return this.init(), Array.from(this.map.keys())
                }
                append(N, $) {
                    return this.clone({
                        param: N,
                        value: $,
                        op: "a"
                    })
                }
                appendAll(N) {
                    const $ = [];
                    return Object.keys(N).forEach(ge => {
                        const fe = N[ge];
                        Array.isArray(fe) ? fe.forEach(Ie => {
                            $.push({
                                param: ge,
                                value: Ie,
                                op: "a"
                            })
                        }) : $.push({
                            param: ge,
                            value: fe,
                            op: "a"
                        })
                    }), this.clone($)
                }
                set(N, $) {
                    return this.clone({
                        param: N,
                        value: $,
                        op: "s"
                    })
                }
                delete(N, $) {
                    return this.clone({
                        param: N,
                        value: $,
                        op: "d"
                    })
                }
                toString() {
                    return this.init(), this.keys().map(N => {
                        const $ = this.encoder.encodeKey(N);
                        return this.map.get(N).map(ge => $ + "=" + this.encoder.encodeValue(ge)).join("&")
                    }).filter(N => "" !== N).join("&")
                }
                clone(N) {
                    const $ = new me({
                        encoder: this.encoder
                    });
                    return $.cloneFrom = this.cloneFrom || this, $.updates = (this.updates || []).concat(N), $
                }
                init() {
                    null === this.map && (this.map = new Map), null !== this.cloneFrom && (this.cloneFrom.init(), this.cloneFrom.keys().forEach(N => this.map.set(N, this.cloneFrom.map.get(N))), this.updates.forEach(N => {
                        switch (N.op) {
                            case "a":
                            case "s":
                                const $ = ("a" === N.op ? this.map.get(N.param) : void 0) || [];
                                $.push(we(N.value)), this.map.set(N.param, $);
                                break;
                            case "d":
                                if (void 0 === N.value) {
                                    this.map.delete(N.param);
                                    break
                                } {
                                    let ge = this.map.get(N.param) || [];
                                    const fe = ge.indexOf(we(N.value)); - 1 !== fe && ge.splice(fe, 1), ge.length > 0 ? this.map.set(N.param, ge) : this.map.delete(N.param)
                                }
                        }
                    }), this.cloneFrom = this.updates = null)
                }
            }
            class tt {
                constructor() {
                    this.map = new Map
                }
                set(N, $) {
                    return this.map.set(N, $), this
                }
                get(N) {
                    return this.map.has(N) || this.map.set(N, N.defaultValue()), this.map.get(N)
                }
                delete(N) {
                    return this.map.delete(N), this
                }
                keys() {
                    return this.map.keys()
                }
            }

            function $e(pe) {
                return "undefined" != typeof ArrayBuffer && pe instanceof ArrayBuffer
            }

            function X(pe) {
                return "undefined" != typeof Blob && pe instanceof Blob
            }

            function Me(pe) {
                return "undefined" != typeof FormData && pe instanceof FormData
            }
            class ue {
                constructor(N, $, ge, fe) {
                    let Ie;
                    if (this.url = $, this.body = null, this.reportProgress = !1, this.withCredentials = !1, this.responseType = "json", this.method = N.toUpperCase(), function(pe) {
                            switch (pe) {
                                case "DELETE":
                                case "GET":
                                case "HEAD":
                                case "OPTIONS":
                                case "JSONP":
                                    return !1;
                                default:
                                    return !0
                            }
                        }(this.method) || fe ? (this.body = void 0 !== ge ? ge : null, Ie = fe) : Ie = ge, Ie && (this.reportProgress = !!Ie.reportProgress, this.withCredentials = !!Ie.withCredentials, Ie.responseType && (this.responseType = Ie.responseType), Ie.headers && (this.headers = Ie.headers), Ie.context && (this.context = Ie.context), Ie.params && (this.params = Ie.params)), this.headers || (this.headers = new z), this.context || (this.context = new tt), this.params) {
                        const Pe = this.params.toString();
                        if (0 === Pe.length) this.urlWithParams = $;
                        else {
                            const Fe = $.indexOf("?");
                            this.urlWithParams = $ + (-1 === Fe ? "?" : Fe < $.length - 1 ? "&" : "") + Pe
                        }
                    } else this.params = new me, this.urlWithParams = $
                }
                serializeBody() {
                    return null === this.body ? null : $e(this.body) || X(this.body) || Me(this.body) || "undefined" != typeof URLSearchParams && this.body instanceof URLSearchParams || "string" == typeof this.body ? this.body : this.body instanceof me ? this.body.toString() : "object" == typeof this.body || "boolean" == typeof this.body || Array.isArray(this.body) ? JSON.stringify(this.body) : this.body.toString()
                }
                detectContentTypeHeader() {
                    return null === this.body || Me(this.body) ? null : X(this.body) ? this.body.type || null : $e(this.body) ? null : "string" == typeof this.body ? "text/plain" : this.body instanceof me ? "application/x-www-form-urlencoded;charset=UTF-8" : "object" == typeof this.body || "number" == typeof this.body || "boolean" == typeof this.body ? "application/json" : null
                }
                clone(N = {}) {
                    var Ot;
                    const $ = N.method || this.method,
                        ge = N.url || this.url,
                        fe = N.responseType || this.responseType,
                        Ie = void 0 !== N.body ? N.body : this.body,
                        Pe = void 0 !== N.withCredentials ? N.withCredentials : this.withCredentials,
                        Fe = void 0 !== N.reportProgress ? N.reportProgress : this.reportProgress;
                    let ze = N.headers || this.headers,
                        Nt = N.params || this.params;
                    const Lt = null != (Ot = N.context) ? Ot : this.context;
                    return void 0 !== N.setHeaders && (ze = Object.keys(N.setHeaders).reduce((kt, vt) => kt.set(vt, N.setHeaders[vt]), ze)), N.setParams && (Nt = Object.keys(N.setParams).reduce((kt, vt) => kt.set(vt, N.setParams[vt]), Nt)), new ue($, ge, Ie, {
                        params: Nt,
                        headers: ze,
                        context: Lt,
                        reportProgress: Fe,
                        responseType: fe,
                        withCredentials: Pe
                    })
                }
            }
            var _e = (() => ((_e = _e || {})[_e.Sent = 0] = "Sent", _e[_e.UploadProgress = 1] = "UploadProgress", _e[_e.ResponseHeader = 2] = "ResponseHeader", _e[_e.DownloadProgress = 3] = "DownloadProgress", _e[_e.Response = 4] = "Response", _e[_e.User = 5] = "User", _e))();
            class de {
                constructor(N, $ = 200, ge = "OK") {
                    this.headers = N.headers || new z, this.status = void 0 !== N.status ? N.status : $, this.statusText = N.statusText || ge, this.url = N.url || null, this.ok = this.status >= 200 && this.status < 300
                }
            }
            class ve extends de {
                constructor(N = {}) {
                    super(N), this.type = _e.ResponseHeader
                }
                clone(N = {}) {
                    return new ve({
                        headers: N.headers || this.headers,
                        status: void 0 !== N.status ? N.status : this.status,
                        statusText: N.statusText || this.statusText,
                        url: N.url || this.url || void 0
                    })
                }
            }
            class Ce extends de {
                constructor(N = {}) {
                    super(N), this.type = _e.Response, this.body = void 0 !== N.body ? N.body : null
                }
                clone(N = {}) {
                    return new Ce({
                        body: void 0 !== N.body ? N.body : this.body,
                        headers: N.headers || this.headers,
                        status: void 0 !== N.status ? N.status : this.status,
                        statusText: N.statusText || this.statusText,
                        url: N.url || this.url || void 0
                    })
                }
            }
            class ae extends de {
                constructor(N) {
                    super(N, 0, "Unknown Error"), this.name = "HttpErrorResponse", this.ok = !1, this.message = this.status >= 200 && this.status < 300 ? `Http failure during parsing for ${N.url||"(unknown url)"}` : `Http failure response for ${N.url||"(unknown url)"}: ${N.status} ${N.statusText}`, this.error = N.error || null
                }
            }

            function Ne(pe, N) {
                return {
                    body: N,
                    headers: pe.headers,
                    context: pe.context,
                    observe: pe.observe,
                    params: pe.params,
                    reportProgress: pe.reportProgress,
                    responseType: pe.responseType,
                    withCredentials: pe.withCredentials
                }
            }
            let Te = (() => {
                class pe {
                    constructor($) {
                        this.handler = $
                    }
                    request($, ge, fe = {}) {
                        let Ie;
                        if ($ instanceof ue) Ie = $;
                        else {
                            let ze, Nt;
                            ze = fe.headers instanceof z ? fe.headers : new z(fe.headers), fe.params && (Nt = fe.params instanceof me ? fe.params : new me({
                                fromObject: fe.params
                            })), Ie = new ue($, ge, void 0 !== fe.body ? fe.body : null, {
                                headers: ze,
                                context: fe.context,
                                params: Nt,
                                reportProgress: fe.reportProgress,
                                responseType: fe.responseType || "json",
                                withCredentials: fe.withCredentials
                            })
                        }
                        const Pe = (0, ne.of)(Ie).pipe((0, he.b)(ze => this.handler.handle(ze)));
                        if ($ instanceof ue || "events" === fe.observe) return Pe;
                        const Fe = Pe.pipe((0, te.h)(ze => ze instanceof Ce));
                        switch (fe.observe || "body") {
                            case "body":
                                switch (Ie.responseType) {
                                    case "arraybuffer":
                                        return Fe.pipe((0, ye.U)(ze => {
                                            if (null !== ze.body && !(ze.body instanceof ArrayBuffer)) throw new Error("Response is not an ArrayBuffer.");
                                            return ze.body
                                        }));
                                    case "blob":
                                        return Fe.pipe((0, ye.U)(ze => {
                                            if (null !== ze.body && !(ze.body instanceof Blob)) throw new Error("Response is not a Blob.");
                                            return ze.body
                                        }));
                                    case "text":
                                        return Fe.pipe((0, ye.U)(ze => {
                                            if (null !== ze.body && "string" != typeof ze.body) throw new Error("Response is not a string.");
                                            return ze.body
                                        }));
                                    default:
                                        return Fe.pipe((0, ye.U)(ze => ze.body))
                                }
                            case "response":
                                return Fe;
                            default:
                                throw new Error(`Unreachable: unhandled observe type ${fe.observe}}`)
                        }
                    }
                    delete($, ge = {}) {
                        return this.request("DELETE", $, ge)
                    }
                    get($, ge = {}) {
                        return this.request("GET", $, ge)
                    }
                    head($, ge = {}) {
                        return this.request("HEAD", $, ge)
                    }
                    jsonp($, ge) {
                        return this.request("JSONP", $, {
                            params: (new me).append(ge, "JSONP_CALLBACK"),
                            observe: "body",
                            responseType: "json"
                        })
                    }
                    options($, ge = {}) {
                        return this.request("OPTIONS", $, ge)
                    }
                    patch($, ge, fe = {}) {
                        return this.request("PATCH", $, Ne(fe, ge))
                    }
                    post($, ge, fe = {}) {
                        return this.request("POST", $, Ne(fe, ge))
                    }
                    put($, ge, fe = {}) {
                        return this.request("PUT", $, Ne(fe, ge))
                    }
                }
                return pe.\u0275fac = function($) {
                    return new($ || pe)(T.LFG(se))
                }, pe.\u0275prov = T.Yz7({
                    token: pe,
                    factory: pe.\u0275fac
                }), pe
            })();
            class Ut {
                constructor(N, $) {
                    this.next = N, this.interceptor = $
                }
                handle(N) {
                    return this.interceptor.intercept(N, this.next)
                }
            }
            const Xe = new T.OlP("HTTP_INTERCEPTORS");
            let Ht = (() => {
                class pe {
                    intercept($, ge) {
                        return ge.handle($)
                    }
                }
                return pe.\u0275fac = function($) {
                    return new($ || pe)
                }, pe.\u0275prov = T.Yz7({
                    token: pe,
                    factory: pe.\u0275fac
                }), pe
            })();
            const mt = /^\)\]\}',?\n/;
            let nn = (() => {
                class pe {
                    constructor($) {
                        this.xhrFactory = $
                    }
                    handle($) {
                        if ("JSONP" === $.method) throw new Error("Attempted to construct Jsonp request without HttpClientJsonpModule installed.");
                        return new be.y(ge => {
                            const fe = this.xhrFactory.build();
                            if (fe.open($.method, $.urlWithParams), $.withCredentials && (fe.withCredentials = !0), $.headers.forEach((vt, ot) => fe.setRequestHeader(vt, ot.join(","))), $.headers.has("Accept") || fe.setRequestHeader("Accept", "application/json, text/plain, */*"), !$.headers.has("Content-Type")) {
                                const vt = $.detectContentTypeHeader();
                                null !== vt && fe.setRequestHeader("Content-Type", vt)
                            }
                            if ($.responseType) {
                                const vt = $.responseType.toLowerCase();
                                fe.responseType = "json" !== vt ? vt : "text"
                            }
                            const Ie = $.serializeBody();
                            let Pe = null;
                            const Fe = () => {
                                    if (null !== Pe) return Pe;
                                    const vt = 1223 === fe.status ? 204 : fe.status,
                                        ot = fe.statusText || "OK",
                                        Gn = new z(fe.getAllResponseHeaders()),
                                        Ke = function(pe) {
                                            return "responseURL" in pe && pe.responseURL ? pe.responseURL : /^X-Request-URL:/m.test(pe.getAllResponseHeaders()) ? pe.getResponseHeader("X-Request-URL") : null
                                        }(fe) || $.url;
                                    return Pe = new ve({
                                        headers: Gn,
                                        status: vt,
                                        statusText: ot,
                                        url: Ke
                                    }), Pe
                                },
                                ze = () => {
                                    let {
                                        headers: vt,
                                        status: ot,
                                        statusText: Gn,
                                        url: Ke
                                    } = Fe(), cn = null;
                                    204 !== ot && (cn = void 0 === fe.response ? fe.responseText : fe.response), 0 === ot && (ot = cn ? 200 : 0);
                                    let ir = ot >= 200 && ot < 300;
                                    if ("json" === $.responseType && "string" == typeof cn) {
                                        const zn = cn;
                                        cn = cn.replace(mt, "");
                                        try {
                                            cn = "" !== cn ? JSON.parse(cn) : null
                                        } catch (Ct) {
                                            cn = zn, ir && (ir = !1, cn = {
                                                error: Ct,
                                                text: cn
                                            })
                                        }
                                    }
                                    ir ? (ge.next(new Ce({
                                        body: cn,
                                        headers: vt,
                                        status: ot,
                                        statusText: Gn,
                                        url: Ke || void 0
                                    })), ge.complete()) : ge.error(new ae({
                                        error: cn,
                                        headers: vt,
                                        status: ot,
                                        statusText: Gn,
                                        url: Ke || void 0
                                    }))
                                },
                                Nt = vt => {
                                    const {
                                        url: ot
                                    } = Fe(), Gn = new ae({
                                        error: vt,
                                        status: fe.status || 0,
                                        statusText: fe.statusText || "Unknown Error",
                                        url: ot || void 0
                                    });
                                    ge.error(Gn)
                                };
                            let Lt = !1;
                            const Ot = vt => {
                                    Lt || (ge.next(Fe()), Lt = !0);
                                    let ot = {
                                        type: _e.DownloadProgress,
                                        loaded: vt.loaded
                                    };
                                    vt.lengthComputable && (ot.total = vt.total), "text" === $.responseType && !!fe.responseText && (ot.partialText = fe.responseText), ge.next(ot)
                                },
                                kt = vt => {
                                    let ot = {
                                        type: _e.UploadProgress,
                                        loaded: vt.loaded
                                    };
                                    vt.lengthComputable && (ot.total = vt.total), ge.next(ot)
                                };
                            return fe.addEventListener("load", ze), fe.addEventListener("error", Nt), fe.addEventListener("timeout", Nt), fe.addEventListener("abort", Nt), $.reportProgress && (fe.addEventListener("progress", Ot), null !== Ie && fe.upload && fe.upload.addEventListener("progress", kt)), fe.send(Ie), ge.next({
                                type: _e.Sent
                            }), () => {
                                fe.removeEventListener("error", Nt), fe.removeEventListener("abort", Nt), fe.removeEventListener("load", ze), fe.removeEventListener("timeout", Nt), $.reportProgress && (fe.removeEventListener("progress", Ot), null !== Ie && fe.upload && fe.upload.removeEventListener("progress", kt)), fe.readyState !== fe.DONE && fe.abort()
                            }
                        })
                    }
                }
                return pe.\u0275fac = function($) {
                    return new($ || pe)(T.LFG(A.JF))
                }, pe.\u0275prov = T.Yz7({
                    token: pe,
                    factory: pe.\u0275fac
                }), pe
            })();
            const rr = new T.OlP("XSRF_COOKIE_NAME"),
                Gt = new T.OlP("XSRF_HEADER_NAME");
            class un {}
            let Yt = (() => {
                    class pe {
                        constructor($, ge, fe) {
                            this.doc = $, this.platform = ge, this.cookieName = fe, this.lastCookieString = "", this.lastToken = null, this.parseCount = 0
                        }
                        getToken() {
                            if ("server" === this.platform) return null;
                            const $ = this.doc.cookie || "";
                            return $ !== this.lastCookieString && (this.parseCount++, this.lastToken = (0, A.Mx)($, this.cookieName), this.lastCookieString = $), this.lastToken
                        }
                    }
                    return pe.\u0275fac = function($) {
                        return new($ || pe)(T.LFG(A.K0), T.LFG(T.Lbi), T.LFG(rr))
                    }, pe.\u0275prov = T.Yz7({
                        token: pe,
                        factory: pe.\u0275fac
                    }), pe
                })(),
                Pt = (() => {
                    class pe {
                        constructor($, ge) {
                            this.tokenService = $, this.headerName = ge
                        }
                        intercept($, ge) {
                            const fe = $.url.toLowerCase();
                            if ("GET" === $.method || "HEAD" === $.method || fe.startsWith("http://") || fe.startsWith("https://")) return ge.handle($);
                            const Ie = this.tokenService.getToken();
                            return null !== Ie && !$.headers.has(this.headerName) && ($ = $.clone({
                                headers: $.headers.set(this.headerName, Ie)
                            })), ge.handle($)
                        }
                    }
                    return pe.\u0275fac = function($) {
                        return new($ || pe)(T.LFG(un), T.LFG(Gt))
                    }, pe.\u0275prov = T.Yz7({
                        token: pe,
                        factory: pe.\u0275fac
                    }), pe
                })(),
                Rr = (() => {
                    class pe {
                        constructor($, ge) {
                            this.backend = $, this.injector = ge, this.chain = null
                        }
                        handle($) {
                            if (null === this.chain) {
                                const ge = this.injector.get(Xe, []);
                                this.chain = ge.reduceRight((fe, Ie) => new Ut(fe, Ie), this.backend)
                            }
                            return this.chain.handle($)
                        }
                    }
                    return pe.\u0275fac = function($) {
                        return new($ || pe)(T.LFG(ee), T.LFG(T.zs3))
                    }, pe.\u0275prov = T.Yz7({
                        token: pe,
                        factory: pe.\u0275fac
                    }), pe
                })(),
                sr = (() => {
                    class pe {
                        static disable() {
                            return {
                                ngModule: pe,
                                providers: [{
                                    provide: Pt,
                                    useClass: Ht
                                }]
                            }
                        }
                        static withOptions($ = {}) {
                            return {
                                ngModule: pe,
                                providers: [$.cookieName ? {
                                    provide: rr,
                                    useValue: $.cookieName
                                } : [], $.headerName ? {
                                    provide: Gt,
                                    useValue: $.headerName
                                } : []]
                            }
                        }
                    }
                    return pe.\u0275fac = function($) {
                        return new($ || pe)
                    }, pe.\u0275mod = T.oAB({
                        type: pe
                    }), pe.\u0275inj = T.cJS({
                        providers: [Pt, {
                            provide: Xe,
                            useExisting: Pt,
                            multi: !0
                        }, {
                            provide: un,
                            useClass: Yt
                        }, {
                            provide: rr,
                            useValue: "XSRF-TOKEN"
                        }, {
                            provide: Gt,
                            useValue: "X-XSRF-TOKEN"
                        }]
                    }), pe
                })(),
                Kt = (() => {
                    class pe {}
                    return pe.\u0275fac = function($) {
                        return new($ || pe)
                    }, pe.\u0275mod = T.oAB({
                        type: pe
                    }), pe.\u0275inj = T.cJS({
                        providers: [Te, {
                            provide: se,
                            useClass: Rr
                        }, nn, {
                            provide: ee,
                            useExisting: nn
                        }],
                        imports: [
                            [sr.withOptions({
                                cookieName: "XSRF-TOKEN",
                                headerName: "X-XSRF-TOKEN"
                            })]
                        ]
                    }), pe
                })()
        },
        9619: (He, ce, O) => {
            O.d(ce, {
                deG: () => Ft,
                tb: () => oy,
                AFp: () => ry,
                ip1: () => gd,
                CZH: () => Ko,
                hGG: () => gS,
                z2F: () => ja,
                sBO: () => B0,
                Sil: () => _d,
                _Vd: () => Ho,
                EJc: () => ly,
                SBq: () => qs,
                qLn: () => Eo,
                vpe: () => Zs,
                gxx: () => So,
                tBr: () => go,
                XFs: () => N,
                OlP: () => rt,
                zs3: () => tn,
                IIB: () => Yw,
                ZZ4: () => ru,
                aQg: () => su,
                soG: () => Xl,
                YKP: () => gm,
                h0i: () => qi,
                PXZ: () => P0,
                R0b: () => kr,
                FiY: () => ci,
                r_U: () => qw,
                Lbi: () => iy,
                g9A: () => sy,
                Qsj: () => Ub,
                FYo: () => Gl,
                JOm: () => Ws,
                Tiy: () => Xc,
                q3G: () => hn,
                tp0: () => wi,
                Rgc: () => Va,
                dDg: () => hy,
                DyG: () => ml,
                GfV: () => dm,
                s_b: () => ql,
                ifc: () => Ot,
                eFA: () => _y,
                G48: () => w0,
                Gpc: () => we,
                f3M: () => P_,
                X6Q: () => bd,
                _c5: () => lS,
                VLi: () => b0,
                c2e: () => ay,
                zSh: () => wa,
                wAp: () => it,
                vHH: () => St,
                EiD: () => Af,
                mCW: () => ma,
                qzn: () => _o,
                JVY: () => Q_,
                pB0: () => J_,
                eBb: () => q_,
                L6k: () => Y_,
                LAX: () => Z_,
                cg1: () => Wc,
                Tjo: () => Y0,
                kL8: () => Og,
                yhl: () => Df,
                dqk: () => Ke,
                sIi: () => Ia,
                CqO: () => xc,
                QGY: () => Oc,
                F4k: () => jp,
                RDi: () => Fi,
                AaK: () => Z,
                z3N: () => di,
                qOj: () => vc,
                TTD: () => Hr,
                _Bn: () => om,
                xp6: () => fh,
                uIk: () => wc,
                Tol: () => lg,
                ekj: () => jc,
                Suo: () => Fm,
                Xpm: () => bn,
                lG2: () => On,
                Yz7: () => Gt,
                cJS: () => Yt,
                oAB: () => wn,
                Yjl: () => yi,
                Y36: () => Ma,
                _UZ: () => Fp,
                GkF: () => Vp,
                qZA: () => Nc,
                TgZ: () => Pc,
                EpF: () => Bp,
                n5z: () => pl,
                Ikx: () => $c,
                LFG: () => Mn,
                $8M: () => h,
                $Z: () => xp,
                NdJ: () => Fc,
                CRH: () => Lm,
                O4$: () => Un,
                oxw: () => $p,
                ALo: () => Tm,
                xi3: () => Im,
                Hsn: () => Wp,
                F$t: () => zp,
                Q6J: () => Mc,
                VKq: () => _m,
                WLB: () => Em,
                kEZ: () => Dm,
                iGM: () => Om,
                CHM: () => l,
                LSH: () => Ou,
                kYT: () => Er,
                Udp: () => Bc,
                WFA: () => Lc,
                d8E: () => zc,
                YNc: () => Cp,
                _uU: () => gg,
                Oqu: () => Hc,
                hij: () => Bl,
                Gf: () => xm
            });
            var A = O(3405),
                T = O(1346),
                ne = O(5548),
                be = O(8526),
                he = O(5783);
            var se = O(5234);

            function ee() {
                return new A.xQ
            }

            function W(e) {
                for (let t in e)
                    if (e[t] === W) return t;
                throw Error("Could not find renamed property on target object.")
            }

            function Y(e, t) {
                for (const n in t) t.hasOwnProperty(n) && !e.hasOwnProperty(n) && (e[n] = t[n])
            }

            function Z(e) {
                if ("string" == typeof e) return e;
                if (Array.isArray(e)) return "[" + e.map(Z).join(", ") + "]";
                if (null == e) return "" + e;
                if (e.overriddenName) return `${e.overriddenName}`;
                if (e.name) return `${e.name}`;
                const t = e.toString();
                if (null == t) return "" + t;
                const n = t.indexOf("\n");
                return -1 === n ? t : t.substring(0, n)
            }

            function Re(e, t) {
                return null == e || "" === e ? null === t ? "" : t : null == t || "" === t ? e : e + " " + t
            }
            const xe = W({
                __forward_ref__: W
            });

            function we(e) {
                return e.__forward_ref__ = we, e.toString = function() {
                    return Z(this())
                }, e
            }

            function me(e) {
                return gt(e) ? e() : e
            }

            function gt(e) {
                return "function" == typeof e && e.hasOwnProperty(xe) && e.__forward_ref__ === we
            }
            class St extends Error {
                constructor(t, n) {
                    super(function(e, t) {
                        return `${e?`NG0${e}: `:""}${t}`
                    }(t, n)), this.code = t
                }
            }

            function Me(e) {
                return "string" == typeof e ? e : null == e ? "" : String(e)
            }

            function Dt(e) {
                return "function" == typeof e ? e.name || e.toString() : "object" == typeof e && null != e && "function" == typeof e.type ? e.type.name || e.type.toString() : Me(e)
            }

            function ve(e, t) {
                const n = t ? ` in ${t}` : "";
                throw new St("201", `No provider for ${Dt(e)} found${n}`)
            }

            function Wt(e, t) {
                null == e && function(e, t, n, r) {
                    throw new Error(`ASSERTION ERROR: ${e}` + (null == r ? "" : ` [Expected=> ${n} ${r} ${t} <=Actual]`))
                }(t, e, null, "!=")
            }

            function Gt(e) {
                return {
                    token: e.token,
                    providedIn: e.providedIn || null,
                    factory: e.factory,
                    value: void 0
                }
            }

            function Yt(e) {
                return {
                    providers: e.providers || [],
                    imports: e.imports || []
                }
            }

            function Pt(e) {
                return Rr(e, Kt) || Rr(e, Nr)
            }

            function Rr(e, t) {
                return e.hasOwnProperty(t) ? e[t] : null
            }

            function sr(e) {
                return e && (e.hasOwnProperty(yr) || e.hasOwnProperty(pe)) ? e[yr] : null
            }
            const Kt = W({
                    \u0275prov: W
                }),
                yr = W({
                    \u0275inj: W
                }),
                Nr = W({
                    ngInjectableDef: W
                }),
                pe = W({
                    ngInjectorDef: W
                });
            var N = (() => ((N = N || {})[N.Default = 0] = "Default", N[N.Host = 1] = "Host", N[N.Self = 2] = "Self", N[N.SkipSelf = 4] = "SkipSelf", N[N.Optional = 8] = "Optional", N))();
            let $;

            function fe(e) {
                const t = $;
                return $ = e, t
            }

            function Ie(e, t, n) {
                const r = Pt(e);
                return r && "root" == r.providedIn ? void 0 === r.value ? r.value = r.factory() : r.value : n & N.Optional ? null : void 0 !== t ? t : void ve(Z(e), "Injector")
            }

            function Fe(e) {
                return {
                    toString: e
                }.toString()
            }
            var ze = (() => ((ze = ze || {})[ze.OnPush = 0] = "OnPush", ze[ze.Default = 1] = "Default", ze))(),
                Ot = (() => {
                    return (e = Ot || (Ot = {}))[e.Emulated = 0] = "Emulated", e[e.None = 2] = "None", e[e.ShadowDom = 3] = "ShadowDom", Ot;
                    var e
                })();
            const kt = "undefined" != typeof globalThis && globalThis,
                vt = "undefined" != typeof window && window,
                ot = "undefined" != typeof self && "undefined" != typeof WorkerGlobalScope && self instanceof WorkerGlobalScope && self,
                Ke = kt || "undefined" != typeof global && global || vt || ot,
                zn = {},
                Ct = [],
                or = W({
                    \u0275cmp: W
                }),
                Vr = W({
                    \u0275dir: W
                }),
                Nn = W({
                    \u0275pipe: W
                }),
                Kn = W({
                    \u0275mod: W
                }),
                Ye = W({
                    \u0275fac: W
                }),
                ar = W({
                    __NG_ELEMENT_ID__: W
                });
            let lr = 0;

            function bn(e) {
                return Fe(() => {
                    const n = {},
                        r = {
                            type: e.type,
                            providersResolver: null,
                            decls: e.decls,
                            vars: e.vars,
                            factory: null,
                            template: e.template || null,
                            consts: e.consts || null,
                            ngContentSelectors: e.ngContentSelectors,
                            hostBindings: e.hostBindings || null,
                            hostVars: e.hostVars || 0,
                            hostAttrs: e.hostAttrs || null,
                            contentQueries: e.contentQueries || null,
                            declaredInputs: n,
                            inputs: null,
                            outputs: null,
                            exportAs: e.exportAs || null,
                            onPush: e.changeDetection === ze.OnPush,
                            directiveDefs: null,
                            pipeDefs: null,
                            selectors: e.selectors || Ct,
                            viewQuery: e.viewQuery || null,
                            features: e.features || null,
                            data: e.data || {},
                            encapsulation: e.encapsulation || Ot.Emulated,
                            id: "c",
                            styles: e.styles || Ct,
                            _: null,
                            setInput: null,
                            schemas: e.schemas || null,
                            tView: null
                        },
                        s = e.directives,
                        i = e.features,
                        o = e.pipes;
                    return r.id += lr++, r.inputs = ur(e.inputs, n), r.outputs = ur(e.outputs), i && i.forEach(a => a(r)), r.directiveDefs = s ? () => ("function" == typeof s ? s() : s).map(Cs) : null, r.pipeDefs = o ? () => ("function" == typeof o ? o() : o).map(Br) : null, r
                })
            }

            function Cs(e) {
                return bt(e) || function(e) {
                    return e[Vr] || null
                }(e)
            }

            function Br(e) {
                return function(e) {
                    return e[Nn] || null
                }(e)
            }
            const _r = {};

            function wn(e) {
                return Fe(() => {
                    const t = {
                        type: e.type,
                        bootstrap: e.bootstrap || Ct,
                        declarations: e.declarations || Ct,
                        imports: e.imports || Ct,
                        exports: e.exports || Ct,
                        transitiveCompileScopes: null,
                        schemas: e.schemas || null,
                        id: e.id || null
                    };
                    return null != e.id && (_r[e.id] = e.type), t
                })
            }

            function Er(e, t) {
                return Fe(() => {
                    const n = mn(e, !0);
                    n.declarations = t.declarations || Ct, n.imports = t.imports || Ct, n.exports = t.exports || Ct
                })
            }

            function ur(e, t) {
                if (null == e) return zn;
                const n = {};
                for (const r in e)
                    if (e.hasOwnProperty(r)) {
                        let s = e[r],
                            i = s;
                        Array.isArray(s) && (i = s[1], s = s[0]), n[s] = r, t && (t[s] = i)
                    } return n
            }
            const On = bn;

            function yi(e) {
                return {
                    type: e.type,
                    name: e.name,
                    factory: null,
                    pure: !1 !== e.pure,
                    onDestroy: e.type.prototype.ngOnDestroy || null
                }
            }

            function bt(e) {
                return e[or] || null
            }

            function mn(e, t) {
                const n = e[Kn] || null;
                if (!n && !0 === t) throw new Error(`Type ${Z(e)} does not have '\u0275mod' property.`);
                return n
            }

            function Sn(e) {
                return Array.isArray(e) && "object" == typeof e[1]
            }

            function Ln(e) {
                return Array.isArray(e) && !0 === e[1]
            }

            function _i(e) {
                return 0 != (8 & e.flags)
            }

            function on(e) {
                return 2 == (2 & e.flags)
            }

            function ws(e) {
                return 1 == (1 & e.flags)
            }

            function Tn(e) {
                return null !== e.template
            }

            function Ss(e) {
                return 0 != (512 & e[2])
            }

            function dr(e, t) {
                return e.hasOwnProperty(Ye) ? e[Ye] : null
            }
            class us {
                constructor(t, n, r) {
                    this.previousValue = t, this.currentValue = n, this.firstChange = r
                }
                isFirstChange() {
                    return this.firstChange
                }
            }

            function Hr() {
                return ni
            }

            function ni(e) {
                return e.type.prototype.ngOnChanges && (e.setInput = ri), $r
            }

            function $r() {
                const e = Ni(this),
                    t = null == e ? void 0 : e.current;
                if (t) {
                    const n = e.previous;
                    if (n === zn) e.previous = t;
                    else
                        for (let r in t) n[r] = t[r];
                    e.current = null, this.ngOnChanges(t)
                }
            }

            function ri(e, t, n, r) {
                const s = Ni(e) || function(e, t) {
                        return e[Pi] = t
                    }(e, {
                        previous: zn,
                        current: null
                    }),
                    i = s.current || (s.current = {}),
                    o = s.previous,
                    a = this.declaredInputs[n],
                    f = o[a];
                i[a] = new us(f && f.currentValue, t, o === zn), e[r] = t
            }
            Hr.ngInherit = !0;
            const Pi = "__ngSimpleChanges__";

            function Ni(e) {
                return e[Pi] || null
            }
            const Ps = "http://www.w3.org/2000/svg";
            let si;

            function Fi(e) {
                si = e
            }

            function y(e) {
                return !!e.listen
            }
            const I = {
                createRenderer: (e, t) => void 0 !== si ? si : "undefined" != typeof document ? document : void 0
            };

            function q(e) {
                for (; Array.isArray(e);) e = e[0];
                return e
            }

            function Tt(e, t) {
                return q(t[e])
            }

            function wt(e, t) {
                return q(t[e.index])
            }

            function yt(e, t) {
                return e.data[t]
            }

            function ht(e, t) {
                const n = t[e];
                return Sn(n) ? n : n[0]
            }

            function en(e) {
                return 4 == (4 & e[2])
            }

            function Sr(e) {
                return 128 == (128 & e[2])
            }

            function Bn(e, t) {
                return null == t ? null : e[t]
            }

            function Or(e) {
                e[18] = 0
            }

            function Os(e, t) {
                e[5] += t;
                let n = e,
                    r = e[3];
                for (; null !== r && (1 === t && 1 === n[5] || -1 === t && 0 === n[5]);) r[5] += t, n = r, r = r[3]
            }
            const Je = {
                lFrame: Wr(null),
                bindingsEnabled: !0,
                isInCheckNoChangesMode: !1
            };

            function xs() {
                return Je.bindingsEnabled
            }

            function Ee() {
                return Je.lFrame.lView
            }

            function v() {
                return Je.lFrame.tView
            }

            function l(e) {
                return Je.lFrame.contextLView = e, e[8]
            }

            function u() {
                let e = p();
                for (; null !== e && 64 === e.type;) e = e.parent;
                return e
            }

            function p() {
                return Je.lFrame.currentTNode
            }

            function M(e, t) {
                const n = Je.lFrame;
                n.currentTNode = e, n.isParent = t
            }

            function F() {
                return Je.lFrame.isParent
            }

            function V() {
                Je.lFrame.isParent = !1
            }

            function Ae() {
                return Je.isInCheckNoChangesMode
            }

            function Be(e) {
                Je.isInCheckNoChangesMode = e
            }

            function Ge() {
                const e = Je.lFrame;
                let t = e.bindingRootIndex;
                return -1 === t && (t = e.bindingRootIndex = e.tView.bindingStartIndex), t
            }

            function et() {
                return Je.lFrame.bindingIndex++
            }

            function ut(e) {
                const t = Je.lFrame,
                    n = t.bindingIndex;
                return t.bindingIndex = t.bindingIndex + e, n
            }

            function fn(e, t) {
                const n = Je.lFrame;
                n.bindingIndex = n.bindingRootIndex = e, qn(t)
            }

            function qn(e) {
                Je.lFrame.currentDirectiveIndex = e
            }

            function Zn(e) {
                const t = Je.lFrame.currentDirectiveIndex;
                return -1 === t ? null : e[t]
            }

            function Dn() {
                return Je.lFrame.currentQueryIndex
            }

            function In(e) {
                Je.lFrame.currentQueryIndex = e
            }

            function xr(e) {
                const t = e[1];
                return 2 === t.type ? t.declTNode : 1 === t.type ? e[6] : null
            }

            function Ir(e, t, n) {
                if (n & N.SkipSelf) {
                    let s = t,
                        i = e;
                    for (; !(s = s.parent, null !== s || n & N.Host || (s = xr(i), null === s || (i = i[15], 10 & s.type))););
                    if (null === s) return !1;
                    t = s, e = i
                }
                const r = Je.lFrame = Fs();
                return r.currentTNode = t, r.lView = e, !0
            }

            function oi(e) {
                const t = Fs(),
                    n = e[1];
                Je.lFrame = t, t.currentTNode = n.firstChild, t.lView = e, t.tView = n, t.contextLView = e, t.bindingIndex = n.bindingStartIndex, t.inI18n = !1
            }

            function Fs() {
                const e = Je.lFrame,
                    t = null === e ? null : e.child;
                return null === t ? Wr(e) : t
            }

            function Wr(e) {
                const t = {
                    currentTNode: null,
                    isParent: !0,
                    lView: null,
                    tView: null,
                    selectedIndex: -1,
                    contextLView: null,
                    elementDepthCount: 0,
                    currentNamespace: null,
                    currentDirectiveIndex: -1,
                    bindingRootIndex: -1,
                    bindingIndex: -1,
                    currentQueryIndex: 0,
                    parent: e,
                    child: null,
                    inI18n: !1
                };
                return null !== e && (e.child = t), t
            }

            function Li() {
                const e = Je.lFrame;
                return Je.lFrame = e.parent, e.currentTNode = null, e.lView = null, e
            }
            const ki = Li;

            function ke() {
                const e = Li();
                e.isParent = !0, e.tView = null, e.selectedIndex = -1, e.contextLView = null, e.elementDepthCount = 0, e.currentDirectiveIndex = -1, e.currentNamespace = null, e.bindingRootIndex = -1, e.bindingIndex = -1, e.currentQueryIndex = 0
            }

            function at() {
                return Je.lFrame.selectedIndex
            }

            function $t(e) {
                Je.lFrame.selectedIndex = e
            }

            function Mt() {
                const e = Je.lFrame;
                return yt(e.tView, e.selectedIndex)
            }

            function Un() {
                Je.lFrame.currentNamespace = Ps
            }

            function Kr(e, t) {
                for (let n = t.directiveStart, r = t.directiveEnd; n < r; n++) {
                    const i = e.data[n].type.prototype,
                        {
                            ngAfterContentInit: o,
                            ngAfterContentChecked: a,
                            ngAfterViewInit: f,
                            ngAfterViewChecked: g,
                            ngOnDestroy: D
                        } = i;
                    o && (e.contentHooks || (e.contentHooks = [])).push(-n, o), a && ((e.contentHooks || (e.contentHooks = [])).push(n, a), (e.contentCheckHooks || (e.contentCheckHooks = [])).push(n, a)), f && (e.viewHooks || (e.viewHooks = [])).push(-n, f), g && ((e.viewHooks || (e.viewHooks = [])).push(n, g), (e.viewCheckHooks || (e.viewCheckHooks = [])).push(n, g)), null != D && (e.destroyHooks || (e.destroyHooks = [])).push(n, D)
                }
            }

            function hr(e, t, n) {
                el(e, t, 3, n)
            }

            function ks(e, t, n, r) {
                (3 & e[2]) === n && el(e, t, n, r)
            }

            function sa(e, t) {
                let n = e[2];
                (3 & n) === t && (n &= 2047, n += 1, e[2] = n)
            }

            function el(e, t, n, r) {
                const i = null != r ? r : -1,
                    o = t.length - 1;
                let a = 0;
                for (let f = void 0 !== r ? 65535 & e[18] : 0; f < o; f++)
                    if ("number" == typeof t[f + 1]) {
                        if (a = t[f], null != r && a >= r) break
                    } else t[f] < 0 && (e[18] += 65536), (a < i || -1 == i) && (gu(e, n, t, f), e[18] = (4294901760 & e[18]) + f + 2), f++
            }

            function gu(e, t, n, r) {
                const s = n[r] < 0,
                    i = n[r + 1],
                    a = e[s ? -n[r] : n[r]];
                if (s) {
                    if (e[2] >> 11 < e[18] >> 16 && (3 & e[2]) === t) {
                        e[2] += 2048;
                        try {
                            i.call(a)
                        } finally {}
                    }
                } else try {
                    i.call(a)
                } finally {}
            }
            class ai {
                constructor(t, n, r) {
                    this.factory = t, this.resolving = !1, this.canSeeViewProviders = n, this.injectImpl = r
                }
            }

            function io(e, t, n) {
                const r = y(e);
                let s = 0;
                for (; s < n.length;) {
                    const i = n[s];
                    if ("number" == typeof i) {
                        if (0 !== i) break;
                        s++;
                        const o = n[s++],
                            a = n[s++],
                            f = n[s++];
                        r ? e.setAttribute(t, a, f, o) : t.setAttributeNS(o, a, f)
                    } else {
                        const o = i,
                            a = n[++s];
                        oa(o) ? r && e.setProperty(t, o, a) : r ? e.setAttribute(t, o, a) : t.setAttribute(o, a), s++
                    }
                }
                return s
            }

            function ia(e) {
                return 3 === e || 4 === e || 6 === e
            }

            function oa(e) {
                return 64 === e.charCodeAt(0)
            }

            function oo(e, t) {
                if (null !== t && 0 !== t.length)
                    if (null === e || 0 === e.length) e = t.slice();
                    else {
                        let n = -1;
                        for (let r = 0; r < t.length; r++) {
                            const s = t[r];
                            "number" == typeof s ? n = s : 0 === n || Wn(e, n, s, null, -1 === n || 2 === n ? t[++r] : null)
                        }
                    } return e
            }

            function Wn(e, t, n, r, s) {
                let i = 0,
                    o = e.length;
                if (-1 === t) o = -1;
                else
                    for (; i < e.length;) {
                        const a = e[i++];
                        if ("number" == typeof a) {
                            if (a === t) {
                                o = -1;
                                break
                            }
                            if (a > t) {
                                o = i - 1;
                                break
                            }
                        }
                    }
                for (; i < e.length;) {
                    const a = e[i];
                    if ("number" == typeof a) break;
                    if (a === n) {
                        if (null === r) return void(null !== s && (e[i + 1] = s));
                        if (r === e[i + 1]) return void(e[i + 2] = s)
                    }
                    i++, null !== r && i++, null !== s && i++
                } - 1 !== o && (e.splice(o, 0, t), i = o + 1), e.splice(i++, 0, n), null !== r && e.splice(i++, 0, r), null !== s && e.splice(i++, 0, s)
            }

            function nl(e) {
                return -1 !== e
            }

            function cs(e) {
                return 32767 & e
            }

            function Bs(e, t) {
                let n = function(e) {
                        return e >> 16
                    }(e),
                    r = t;
                for (; n > 0;) r = r[15], n--;
                return r
            }
            let js = !0;

            function ao(e) {
                const t = js;
                return js = e, t
            }
            let sl = 0;

            function li(e, t) {
                const n = ds(e, t);
                if (-1 !== n) return n;
                const r = t[1];
                r.firstCreatePass && (e.injectorIndex = t.length, ol(r.data, e), ol(t, null), ol(r.blueprint, null));
                const s = ji(e, t),
                    i = e.injectorIndex;
                if (nl(s)) {
                    const o = cs(s),
                        a = Bs(s, t),
                        f = a[1].data;
                    for (let g = 0; g < 8; g++) t[i + g] = a[o + g] | f[o + g]
                }
                return t[i + 8] = s, i
            }

            function ol(e, t) {
                e.push(0, 0, 0, 0, 0, 0, 0, 0, t)
            }

            function ds(e, t) {
                return -1 === e.injectorIndex || e.parent && e.parent.injectorIndex === e.injectorIndex || null === t[e.injectorIndex + 8] ? -1 : e.injectorIndex
            }

            function ji(e, t) {
                if (e.parent && -1 !== e.parent.injectorIndex) return e.parent.injectorIndex;
                let n = 0,
                    r = null,
                    s = t;
                for (; null !== s;) {
                    const i = s[1],
                        o = i.type;
                    if (r = 2 === o ? i.declTNode : 1 === o ? s[6] : null, null === r) return -1;
                    if (n++, s = s[15], -1 !== r.injectorIndex) return r.injectorIndex | n << 16
                }
                return -1
            }

            function lo(e, t, n) {
                ! function(e, t, n) {
                    let r;
                    "string" == typeof n ? r = n.charCodeAt(0) || 0 : n.hasOwnProperty(ar) && (r = n[ar]), null == r && (r = n[ar] = sl++);
                    const s = 255 & r;
                    t.data[e + (s >> 5)] |= 1 << s
                }(e, t, n)
            }

            function al(e, t, n) {
                if (n & N.Optional) return e;
                ve(t, "NodeInjector")
            }

            function ll(e, t, n, r) {
                if (n & N.Optional && void 0 === r && (r = null), 0 == (n & (N.Self | N.Host))) {
                    const s = e[9],
                        i = fe(void 0);
                    try {
                        return s ? s.get(t, r, n & N.Optional) : Ie(t, r, n & N.Optional)
                    } finally {
                        fe(i)
                    }
                }
                return al(r, t, n)
            }

            function ul(e, t, n, r = N.Default, s) {
                if (null !== e) {
                    const i = function(e) {
                        if ("string" == typeof e) return e.charCodeAt(0) || 0;
                        const t = e.hasOwnProperty(ar) ? e[ar] : void 0;
                        return "number" == typeof t ? t >= 0 ? 255 & t : dl : t
                    }(n);
                    if ("function" == typeof i) {
                        if (!Ir(t, e, r)) return r & N.Host ? al(s, n, r) : ll(t, n, r, s);
                        try {
                            const o = i(r);
                            if (null != o || r & N.Optional) return o;
                            ve(n)
                        } finally {
                            ki()
                        }
                    } else if ("number" == typeof i) {
                        let o = null,
                            a = ds(e, t),
                            f = -1,
                            g = r & N.Host ? t[16][6] : null;
                        for ((-1 === a || r & N.SkipSelf) && (f = -1 === a ? ji(e, t) : t[a + 8], -1 !== f && hl(r, !1) ? (o = t[1], a = cs(f), t = Bs(f, t)) : a = -1); - 1 !== a;) {
                            const D = t[1];
                            if (fl(i, a, D.data)) {
                                const S = Du(a, t, n, o, r, g);
                                if (S !== cl) return S
                            }
                            f = t[a + 8], -1 !== f && hl(r, t[1].data[a + 8] === g) && fl(i, a, t) ? (o = D, a = cs(f), t = Bs(f, t)) : a = -1
                        }
                    }
                }
                return ll(t, n, r, s)
            }
            const cl = {};

            function dl() {
                return new ui(u(), Ee())
            }

            function Du(e, t, n, r, s, i) {
                const o = t[1],
                    a = o.data[e + 8],
                    D = uo(a, o, n, null == r ? on(a) && js : r != o && 0 != (3 & a.type), s & N.Host && i === a);
                return null !== D ? Ui(t, o, D, a) : cl
            }

            function uo(e, t, n, r, s) {
                const i = e.providerIndexes,
                    o = t.data,
                    a = 1048575 & i,
                    f = e.directiveStart,
                    D = i >> 20,
                    R = s ? a + D : e.directiveEnd;
                for (let L = r ? a : a + D; L < R; L++) {
                    const H = o[L];
                    if (L < f && n === H || L >= f && H.type === n) return L
                }
                if (s) {
                    const L = o[f];
                    if (L && Tn(L) && L.type === n) return f
                }
                return null
            }

            function Ui(e, t, n, r) {
                let s = e[n];
                const i = t.data;
                if (function(e) {
                        return e instanceof ai
                    }(s)) {
                    const o = s;
                    o.resolving && function(e, t) {
                        throw new St("200", `Circular dependency in DI detected for ${e}`)
                    }(Dt(i[n]));
                    const a = ao(o.canSeeViewProviders);
                    o.resolving = !0;
                    const f = o.injectImpl ? fe(o.injectImpl) : null;
                    Ir(e, r, N.Default);
                    try {
                        s = e[n] = o.factory(void 0, i, e, r), t.firstCreatePass && n >= r.directiveStart && function(e, t, n) {
                            const {
                                ngOnChanges: r,
                                ngOnInit: s,
                                ngDoCheck: i
                            } = t.type.prototype;
                            if (r) {
                                const o = ni(t);
                                (n.preOrderHooks || (n.preOrderHooks = [])).push(e, o), (n.preOrderCheckHooks || (n.preOrderCheckHooks = [])).push(e, o)
                            }
                            s && (n.preOrderHooks || (n.preOrderHooks = [])).push(0 - e, s), i && ((n.preOrderHooks || (n.preOrderHooks = [])).push(e, i), (n.preOrderCheckHooks || (n.preOrderCheckHooks = [])).push(e, i))
                        }(n, i[n], t)
                    } finally {
                        null !== f && fe(f), ao(a), o.resolving = !1, ki()
                    }
                }
                return s
            }

            function fl(e, t, n) {
                return !!(n[t + (e >> 5)] & 1 << e)
            }

            function hl(e, t) {
                return !(e & N.Self || e & N.Host && t)
            }
            class ui {
                constructor(t, n) {
                    this._tNode = t, this._lView = n
                }
                get(t, n, r) {
                    return ul(this._tNode, this._lView, t, r, n)
                }
            }

            function pl(e) {
                return Fe(() => {
                    const t = e.prototype.constructor,
                        n = t[Ye] || gl(t),
                        r = Object.prototype;
                    let s = Object.getPrototypeOf(e.prototype).constructor;
                    for (; s && s !== r;) {
                        const i = s[Ye] || gl(s);
                        if (i && i !== n) return i;
                        s = Object.getPrototypeOf(s)
                    }
                    return i => new i
                })
            }

            function gl(e) {
                return gt(e) ? () => {
                    const t = gl(me(e));
                    return t && t()
                } : dr(e)
            }

            function h(e) {
                return function(e, t) {
                    if ("class" === t) return e.classes;
                    if ("style" === t) return e.styles;
                    const n = e.attrs;
                    if (n) {
                        const r = n.length;
                        let s = 0;
                        for (; s < r;) {
                            const i = n[s];
                            if (ia(i)) break;
                            if (0 === i) s += 2;
                            else if ("number" == typeof i)
                                for (s++; s < r && "string" == typeof n[s];) s++;
                            else {
                                if (i === t) return n[s + 1];
                                s += 2
                            }
                        }
                    }
                    return null
                }(u(), e)
            }
            const c = "__parameters__",
                m = "__prop__metadata__";

            function w(e) {
                return function(...n) {
                    if (e) {
                        const r = e(...n);
                        for (const s in r) this[s] = r[s]
                    }
                }
            }

            function x(e, t, n) {
                return Fe(() => {
                    const r = w(t);

                    function s(...i) {
                        if (this instanceof s) return r.apply(this, i), this;
                        const o = new s(...i);
                        return a.annotation = o, a;

                        function a(f, g, D) {
                            const S = f.hasOwnProperty(c) ? f[c] : Object.defineProperty(f, c, {
                                value: []
                            })[c];
                            for (; S.length <= D;) S.push(null);
                            return (S[D] = S[D] || []).push(o), f
                        }
                    }
                    return n && (s.prototype = Object.create(n.prototype)), s.prototype.ngMetadataName = e, s.annotationCls = s, s
                })
            }

            function j(e, t, n, r) {
                return Fe(() => {
                    const s = w(t);

                    function i(...o) {
                        if (this instanceof i) return s.apply(this, o), this;
                        const a = new i(...o);
                        return function(g, D) {
                            const S = g.constructor,
                                R = S.hasOwnProperty(m) ? S[m] : Object.defineProperty(S, m, {
                                    value: {}
                                })[m];
                            R[D] = R.hasOwnProperty(D) && R[D] || [], R[D].unshift(a), r && r(g, D, ...o)
                        }
                    }
                    return n && (i.prototype = Object.create(n.prototype)), i.prototype.ngMetadataName = e, i.annotationCls = i, i
                })
            }
            class rt {
                constructor(t, n) {
                    this._desc = t, this.ngMetadataName = "InjectionToken", this.\u0275prov = void 0, "number" == typeof n ? this.__NG_ELEMENT_ID__ = n : void 0 !== n && (this.\u0275prov = Gt({
                        token: this,
                        providedIn: n.providedIn || "root",
                        factory: n.factory
                    }))
                }
                toString() {
                    return `InjectionToken ${this._desc}`
                }
            }
            const Ft = new rt("AnalyzeForEntryComponents"),
                ml = Function;

            function qr(e, t) {
                void 0 === t && (t = e);
                for (let n = 0; n < e.length; n++) {
                    let r = e[n];
                    Array.isArray(r) ? (t === e && (t = e.slice(0, n)), qr(r, t)) : t !== e && t.push(r)
                }
                return t
            }

            function Hs(e, t) {
                e.forEach(n => Array.isArray(n) ? Hs(n, t) : t(n))
            }

            function yl(e, t, n) {
                t >= e.length ? e.push(n) : e.splice(t, 0, n)
            }

            function zi(e, t) {
                return t >= e.length - 1 ? e.pop() : e.splice(t, 1)[0]
            }

            function bi(e, t) {
                const n = [];
                for (let r = 0; r < e; r++) n.push(t);
                return n
            }

            function Fr(e, t, n) {
                let r = fo(e, t);
                return r >= 0 ? e[1 | r] = n : (r = ~r, function(e, t, n, r) {
                    let s = e.length;
                    if (s == t) e.push(n, r);
                    else if (1 === s) e.push(r, e[0]), e[0] = n;
                    else {
                        for (s--, e.push(e[s - 1], e[s]); s > t;) e[s] = e[s - 2], s--;
                        e[t] = n, e[t + 1] = r
                    }
                }(e, r, t, n)), r
            }

            function vu(e, t) {
                const n = fo(e, t);
                if (n >= 0) return e[1 | n]
            }

            function fo(e, t) {
                return function(e, t, n) {
                    let r = 0,
                        s = e.length >> n;
                    for (; s !== r;) {
                        const i = r + (s - r >> 1),
                            o = e[i << n];
                        if (t === o) return i << n;
                        o > t ? s = i : r = i + 1
                    }
                    return ~(s << n)
                }(e, t, 1)
            }
            const fa = {},
                bu = "__NG_DI_FLAG__",
                ho = "ngTempTokenPath",
                A_ = /\n/gm,
                wu = "__source",
                Su = W({
                    provide: String,
                    useValue: W
                });
            let ha;

            function po(e) {
                const t = ha;
                return ha = e, t
            }

            function R_(e, t = N.Default) {
                if (void 0 === ha) throw new Error("inject() must be called from an injection context");
                return null === ha ? Ie(e, void 0, t) : ha.get(e, t & N.Optional ? null : void 0, t)
            }

            function Mn(e, t = N.Default) {
                return ($ || R_)(me(e), t)
            }
            const P_ = Mn;

            function Wi(e) {
                const t = [];
                for (let n = 0; n < e.length; n++) {
                    const r = me(e[n]);
                    if (Array.isArray(r)) {
                        if (0 === r.length) throw new Error("Arguments array must have arguments.");
                        let s, i = N.Default;
                        for (let o = 0; o < r.length; o++) {
                            const a = r[o],
                                f = N_(a);
                            "number" == typeof f ? -1 === f ? s = a.token : i |= f : s = a
                        }
                        t.push(Mn(s, i))
                    } else t.push(Mn(r))
                }
                return t
            }

            function pa(e, t) {
                return e[bu] = t, e.prototype[bu] = t, e
            }

            function N_(e) {
                return e[bu]
            }

            function ff(e, t, n, r) {
                const s = e[ho];
                throw t[wu] && s.unshift(t[wu]), e.message = function(e, t, n, r = null) {
                    e = e && "\n" === e.charAt(0) && "\u0275" == e.charAt(1) ? e.substr(2) : e;
                    let s = Z(t);
                    if (Array.isArray(t)) s = t.map(Z).join(" -> ");
                    else if ("object" == typeof t) {
                        let i = [];
                        for (let o in t)
                            if (t.hasOwnProperty(o)) {
                                let a = t[o];
                                i.push(o + ":" + ("string" == typeof a ? JSON.stringify(a) : Z(a)))
                            } s = `{${i.join(", ")}}`
                    }
                    return `${n}${r?"("+r+")":""}[${s}]: ${e.replace(A_,"\n  ")}`
                }("\n" + e.message, s, n, r), e.ngTokenPath = s, e[ho] = null, e
            }
            const go = pa(x("Inject", e => ({
                    token: e
                })), -1),
                ci = pa(x("Optional"), 8),
                wi = pa(x("SkipSelf"), 4);
            let vl;

            function yo(e) {
                var t;
                return (null == (t = function() {
                    if (void 0 === vl && (vl = null, Ke.trustedTypes)) try {
                        vl = Ke.trustedTypes.createPolicy("angular", {
                            createHTML: e => e,
                            createScript: e => e,
                            createScriptURL: e => e
                        })
                    } catch (e) {}
                    return vl
                }()) ? void 0 : t.createHTML(e)) || e
            }
            class Gi {
                constructor(t) {
                    this.changingThisBreaksApplicationSecurity = t
                }
                toString() {
                    return `SafeValue must use [property]=binding: ${this.changingThisBreaksApplicationSecurity} (see https://g.co/ng/security#xss)`
                }
            }
            class $_ extends Gi {
                getTypeName() {
                    return "HTML"
                }
            }
            class z_ extends Gi {
                getTypeName() {
                    return "Style"
                }
            }
            class W_ extends Gi {
                getTypeName() {
                    return "Script"
                }
            }
            class G_ extends Gi {
                getTypeName() {
                    return "URL"
                }
            }
            class K_ extends Gi {
                getTypeName() {
                    return "ResourceURL"
                }
            }

            function di(e) {
                return e instanceof Gi ? e.changingThisBreaksApplicationSecurity : e
            }

            function _o(e, t) {
                const n = Df(e);
                if (null != n && n !== t) {
                    if ("ResourceURL" === n && "URL" === t) return !0;
                    throw new Error(`Required a safe ${t}, got a ${n} (see https://g.co/ng/security#xss)`)
                }
                return n === t
            }

            function Df(e) {
                return e instanceof Gi && e.getTypeName() || null
            }

            function Q_(e) {
                return new $_(e)
            }

            function Y_(e) {
                return new z_(e)
            }

            function q_(e) {
                return new W_(e)
            }

            function Z_(e) {
                return new G_(e)
            }

            function J_(e) {
                return new K_(e)
            }
            class X_ {
                constructor(t) {
                    this.inertDocumentHelper = t
                }
                getInertBodyElement(t) {
                    t = "<body><remove></remove>" + t;
                    try {
                        const n = (new window.DOMParser).parseFromString(yo(t), "text/html").body;
                        return null === n ? this.inertDocumentHelper.getInertBodyElement(t) : (n.removeChild(n.firstChild), n)
                    } catch (n) {
                        return null
                    }
                }
            }
            class eE {
                constructor(t) {
                    if (this.defaultDoc = t, this.inertDocument = this.defaultDoc.implementation.createHTMLDocument("sanitization-inert"), null == this.inertDocument.body) {
                        const n = this.inertDocument.createElement("html");
                        this.inertDocument.appendChild(n);
                        const r = this.inertDocument.createElement("body");
                        n.appendChild(r)
                    }
                }
                getInertBodyElement(t) {
                    const n = this.inertDocument.createElement("template");
                    if ("content" in n) return n.innerHTML = yo(t), n;
                    const r = this.inertDocument.createElement("body");
                    return r.innerHTML = yo(t), this.defaultDoc.documentMode && this.stripCustomNsAttrs(r), r
                }
                stripCustomNsAttrs(t) {
                    const n = t.attributes;
                    for (let s = n.length - 1; 0 < s; s--) {
                        const o = n.item(s).name;
                        ("xmlns:ns1" === o || 0 === o.indexOf("ns1:")) && t.removeAttribute(o)
                    }
                    let r = t.firstChild;
                    for (; r;) r.nodeType === Node.ELEMENT_NODE && this.stripCustomNsAttrs(r), r = r.nextSibling
                }
            }
            const nE = /^(?:(?:https?|mailto|ftp|tel|file|sms):|[^&:/?#]*(?:[/?#]|$))/gi,
                rE = /^data:(?:image\/(?:bmp|gif|jpeg|jpg|png|tiff|webp)|video\/(?:mpeg|mp4|ogg|webm)|audio\/(?:mp3|oga|ogg|opus));base64,[a-z0-9+\/]+=*$/i;

            function ma(e) {
                return (e = String(e)).match(nE) || e.match(rE) ? e : "unsafe:" + e
            }

            function $s(e) {
                const t = {};
                for (const n of e.split(",")) t[n] = !0;
                return t
            }

            function ya(...e) {
                const t = {};
                for (const n of e)
                    for (const r in n) n.hasOwnProperty(r) && (t[r] = !0);
                return t
            }
            const bf = $s("area,br,col,hr,img,wbr"),
                wf = $s("colgroup,dd,dt,li,p,tbody,td,tfoot,th,thead,tr"),
                Sf = $s("rp,rt"),
                Mu = ya(bf, ya(wf, $s("address,article,aside,blockquote,caption,center,del,details,dialog,dir,div,dl,figure,figcaption,footer,h1,h2,h3,h4,h5,h6,header,hgroup,hr,ins,main,map,menu,nav,ol,pre,section,summary,table,ul")), ya(Sf, $s("a,abbr,acronym,audio,b,bdi,bdo,big,br,cite,code,del,dfn,em,font,i,img,ins,kbd,label,map,mark,picture,q,ruby,rp,rt,s,samp,small,source,span,strike,strong,sub,sup,time,track,tt,u,var,video")), ya(Sf, wf)),
                Ru = $s("background,cite,href,itemtype,longdesc,poster,src,xlink:href"),
                Pu = $s("srcset"),
                Tf = ya(Ru, Pu, $s("abbr,accesskey,align,alt,autoplay,axis,bgcolor,border,cellpadding,cellspacing,class,clear,color,cols,colspan,compact,controls,coords,datetime,default,dir,download,face,headers,height,hidden,hreflang,hspace,ismap,itemscope,itemprop,kind,label,lang,language,loop,media,muted,nohref,nowrap,open,preload,rel,rev,role,rows,rowspan,rules,scope,scrolling,shape,size,sizes,span,srclang,start,summary,tabindex,target,title,translate,type,usemap,valign,value,vspace,width"), $s("aria-activedescendant,aria-atomic,aria-autocomplete,aria-busy,aria-checked,aria-colcount,aria-colindex,aria-colspan,aria-controls,aria-current,aria-describedby,aria-details,aria-disabled,aria-dropeffect,aria-errormessage,aria-expanded,aria-flowto,aria-grabbed,aria-haspopup,aria-hidden,aria-invalid,aria-keyshortcuts,aria-label,aria-labelledby,aria-level,aria-live,aria-modal,aria-multiline,aria-multiselectable,aria-orientation,aria-owns,aria-placeholder,aria-posinset,aria-pressed,aria-readonly,aria-relevant,aria-required,aria-roledescription,aria-rowcount,aria-rowindex,aria-rowspan,aria-selected,aria-setsize,aria-sort,aria-valuemax,aria-valuemin,aria-valuenow,aria-valuetext")),
                sE = $s("script,style,template");
            class iE {
                constructor() {
                    this.sanitizedSomething = !1, this.buf = []
                }
                sanitizeChildren(t) {
                    let n = t.firstChild,
                        r = !0;
                    for (; n;)
                        if (n.nodeType === Node.ELEMENT_NODE ? r = this.startElement(n) : n.nodeType === Node.TEXT_NODE ? this.chars(n.nodeValue) : this.sanitizedSomething = !0, r && n.firstChild) n = n.firstChild;
                        else
                            for (; n;) {
                                n.nodeType === Node.ELEMENT_NODE && this.endElement(n);
                                let s = this.checkClobberedElement(n, n.nextSibling);
                                if (s) {
                                    n = s;
                                    break
                                }
                                n = this.checkClobberedElement(n, n.parentNode)
                            }
                    return this.buf.join("")
                }
                startElement(t) {
                    const n = t.nodeName.toLowerCase();
                    if (!Mu.hasOwnProperty(n)) return this.sanitizedSomething = !0, !sE.hasOwnProperty(n);
                    this.buf.push("<"), this.buf.push(n);
                    const r = t.attributes;
                    for (let s = 0; s < r.length; s++) {
                        const i = r.item(s),
                            o = i.name,
                            a = o.toLowerCase();
                        if (!Tf.hasOwnProperty(a)) {
                            this.sanitizedSomething = !0;
                            continue
                        }
                        let f = i.value;
                        Ru[a] && (f = ma(f)), Pu[a] && (e = f, f = (e = String(e)).split(",").map(t => ma(t.trim())).join(", ")), this.buf.push(" ", o, '="', If(f), '"')
                    }
                    var e;
                    return this.buf.push(">"), !0
                }
                endElement(t) {
                    const n = t.nodeName.toLowerCase();
                    Mu.hasOwnProperty(n) && !bf.hasOwnProperty(n) && (this.buf.push("</"), this.buf.push(n), this.buf.push(">"))
                }
                chars(t) {
                    this.buf.push(If(t))
                }
                checkClobberedElement(t, n) {
                    if (n && (t.compareDocumentPosition(n) & Node.DOCUMENT_POSITION_CONTAINED_BY) === Node.DOCUMENT_POSITION_CONTAINED_BY) throw new Error(`Failed to sanitize html because the element is clobbered: ${t.outerHTML}`);
                    return n
                }
            }
            const oE = /[\uD800-\uDBFF][\uDC00-\uDFFF]/g,
                aE = /([^\#-~ |!])/g;

            function If(e) {
                return e.replace(/&/g, "&amp;").replace(oE, function(t) {
                    return "&#" + (1024 * (t.charCodeAt(0) - 55296) + (t.charCodeAt(1) - 56320) + 65536) + ";"
                }).replace(aE, function(t) {
                    return "&#" + t.charCodeAt(0) + ";"
                }).replace(/</g, "&lt;").replace(/>/g, "&gt;")
            }
            let bl;

            function Af(e, t) {
                let n = null;
                try {
                    bl = bl || function(e) {
                        const t = new eE(e);
                        return function() {
                            try {
                                return !!(new window.DOMParser).parseFromString(yo(""), "text/html")
                            } catch (e) {
                                return !1
                            }
                        }() ? new X_(t) : t
                    }(e);
                    let r = t ? String(t) : "";
                    n = bl.getInertBodyElement(r);
                    let s = 5,
                        i = r;
                    do {
                        if (0 === s) throw new Error("Failed to sanitize html because the input is unstable");
                        s--, r = i, i = n.innerHTML, n = bl.getInertBodyElement(r)
                    } while (r !== i);
                    return yo((new iE).sanitizeChildren(Nu(n) || n))
                } finally {
                    if (n) {
                        const r = Nu(n) || n;
                        for (; r.firstChild;) r.removeChild(r.firstChild)
                    }
                }
            }

            function Nu(e) {
                return "content" in e && function(e) {
                    return e.nodeType === Node.ELEMENT_NODE && "TEMPLATE" === e.nodeName
                }(e) ? e.content : null
            }
            var hn = (() => ((hn = hn || {})[hn.NONE = 0] = "NONE", hn[hn.HTML = 1] = "HTML", hn[hn.STYLE = 2] = "STYLE", hn[hn.SCRIPT = 3] = "SCRIPT", hn[hn.URL = 4] = "URL", hn[hn.RESOURCE_URL = 5] = "RESOURCE_URL", hn))();

            function Ou(e) {
                const t = function() {
                    const e = Ee();
                    return e && e[12]
                }();
                return t ? t.sanitize(hn.URL, e) || "" : _o(e, "URL") ? di(e) : ma(Me(e))
            }
            const Pf = "__ngContext__";

            function Jn(e, t) {
                e[Pf] = t
            }

            function Fu(e) {
                const t = function(e) {
                    return e[Pf] || null
                }(e);
                return t ? Array.isArray(t) ? t : t.lView : null
            }

            function wl(e) {
                return e.ngOriginalError
            }

            function SE(e, ...t) {
                e.error(...t)
            }
            class Eo {
                constructor() {
                    this._console = console
                }
                handleError(t) {
                    const n = this._findOriginalError(t),
                        r = this._findContext(t),
                        s = (e = t) && e.ngErrorLogger || SE;
                    var e;
                    s(this._console, "ERROR", t), n && s(this._console, "ORIGINAL ERROR", n), r && s(this._console, "ERROR CONTEXT", r)
                }
                _findContext(t) {
                    return t ? t.ngDebugContext || this._findContext(wl(t)) : null
                }
                _findOriginalError(t) {
                    let n = t && wl(t);
                    for (; n && wl(n);) n = wl(n);
                    return n || null
                }
            }
            const jf = (() => ("undefined" != typeof requestAnimationFrame && requestAnimationFrame || setTimeout).bind(Ke))();

            function zs(e) {
                return e instanceof Function ? e() : e
            }
            var Ws = (() => ((Ws = Ws || {})[Ws.Important = 1] = "Important", Ws[Ws.DashCase = 2] = "DashCase", Ws))();

            function Vu(e, t) {
                return undefined(e, t)
            }

            function Da(e) {
                const t = e[3];
                return Ln(t) ? t[3] : t
            }

            function Bu(e) {
                return Wf(e[13])
            }

            function ju(e) {
                return Wf(e[4])
            }

            function Wf(e) {
                for (; null !== e && !Ln(e);) e = e[4];
                return e
            }

            function vo(e, t, n, r, s) {
                if (null != r) {
                    let i, o = !1;
                    Ln(r) ? i = r : Sn(r) && (o = !0, r = r[0]);
                    const a = q(r);
                    0 === e && null !== n ? null == s ? Zf(t, n, a) : Ki(t, n, a, s || null, !0) : 1 === e && null !== n ? Ki(t, n, a, s || null, !0) : 2 === e ? function(e, t, n) {
                        const r = Tl(e, t);
                        r && function(e, t, n, r) {
                            y(e) ? e.removeChild(t, n, r) : t.removeChild(n)
                        }(e, r, t, n)
                    }(t, a, o) : 3 === e && t.destroyNode(a), null != i && function(e, t, n, r, s) {
                        const i = n[7];
                        i !== q(n) && vo(t, e, r, i, s);
                        for (let a = 10; a < n.length; a++) {
                            const f = n[a];
                            va(f[1], f, e, t, r, i)
                        }
                    }(t, e, i, n, s)
                }
            }

            function Hu(e, t, n) {
                return y(e) ? e.createElement(t, n) : null === n ? e.createElement(t) : e.createElementNS(n, t)
            }

            function Kf(e, t) {
                const n = e[9],
                    r = n.indexOf(t),
                    s = t[3];
                1024 & t[2] && (t[2] &= -1025, Os(s, -1)), n.splice(r, 1)
            }

            function $u(e, t) {
                if (e.length <= 10) return;
                const n = 10 + t,
                    r = e[n];
                if (r) {
                    const s = r[17];
                    null !== s && s !== e && Kf(s, r), t > 0 && (e[n - 1][4] = r[4]);
                    const i = zi(e, 10 + t);
                    ! function(e, t) {
                        va(e, t, t[11], 2, null, null), t[0] = null, t[6] = null
                    }(r[1], r);
                    const o = i[19];
                    null !== o && o.detachView(i[1]), r[3] = null, r[4] = null, r[2] &= -129
                }
                return r
            }

            function Qf(e, t) {
                if (!(256 & t[2])) {
                    const n = t[11];
                    y(n) && n.destroyNode && va(e, t, n, 3, null, null),
                        function(e) {
                            let t = e[13];
                            if (!t) return zu(e[1], e);
                            for (; t;) {
                                let n = null;
                                if (Sn(t)) n = t[13];
                                else {
                                    const r = t[10];
                                    r && (n = r)
                                }
                                if (!n) {
                                    for (; t && !t[4] && t !== e;) Sn(t) && zu(t[1], t), t = t[3];
                                    null === t && (t = e), Sn(t) && zu(t[1], t), n = t && t[4]
                                }
                                t = n
                            }
                        }(t)
                }
            }

            function zu(e, t) {
                if (!(256 & t[2])) {
                    t[2] &= -129, t[2] |= 256,
                        function(e, t) {
                            let n;
                            if (null != e && null != (n = e.destroyHooks))
                                for (let r = 0; r < n.length; r += 2) {
                                    const s = t[n[r]];
                                    if (!(s instanceof ai)) {
                                        const i = n[r + 1];
                                        if (Array.isArray(i))
                                            for (let o = 0; o < i.length; o += 2) {
                                                const a = s[i[o]],
                                                    f = i[o + 1];
                                                try {
                                                    f.call(a)
                                                } finally {}
                                            } else try {
                                                i.call(s)
                                            } finally {}
                                    }
                                }
                        }(e, t),
                        function(e, t) {
                            const n = e.cleanup,
                                r = t[7];
                            let s = -1;
                            if (null !== n)
                                for (let i = 0; i < n.length - 1; i += 2)
                                    if ("string" == typeof n[i]) {
                                        const o = n[i + 1],
                                            a = "function" == typeof o ? o(t) : q(t[o]),
                                            f = r[s = n[i + 2]],
                                            g = n[i + 3];
                                        "boolean" == typeof g ? a.removeEventListener(n[i], f, g) : g >= 0 ? r[s = g]() : r[s = -g].unsubscribe(), i += 2
                                    } else {
                                        const o = r[s = n[i + 1]];
                                        n[i].call(o)
                                    } if (null !== r) {
                                for (let i = s + 1; i < r.length; i++) r[i]();
                                t[7] = null
                            }
                        }(e, t), 1 === t[1].type && y(t[11]) && t[11].destroy();
                    const n = t[17];
                    if (null !== n && Ln(t[3])) {
                        n !== t[3] && Kf(n, t);
                        const r = t[19];
                        null !== r && r.detachView(e)
                    }
                }
            }

            function Yf(e, t, n) {
                return function(e, t, n) {
                    let r = t;
                    for (; null !== r && 40 & r.type;) r = (t = r).parent;
                    if (null === r) return n[0];
                    if (2 & r.flags) {
                        const s = e.data[r.directiveStart].encapsulation;
                        if (s === Ot.None || s === Ot.Emulated) return null
                    }
                    return wt(r, n)
                }(e, t.parent, n)
            }

            function Ki(e, t, n, r, s) {
                y(e) ? e.insertBefore(t, n, r, s) : t.insertBefore(n, r, s)
            }

            function Zf(e, t, n) {
                y(e) ? e.appendChild(t, n) : t.appendChild(n)
            }

            function Jf(e, t, n, r, s) {
                null !== r ? Ki(e, t, n, r, s) : Zf(e, t, n)
            }

            function Tl(e, t) {
                return y(e) ? e.parentNode(t) : t.parentNode
            }

            function Xf(e, t, n) {
                return th(e, t, n)
            }
            let th = function(e, t, n) {
                return 40 & e.type ? wt(e, n) : null
            };

            function Il(e, t, n, r) {
                const s = Yf(e, r, t),
                    i = t[11],
                    a = Xf(r.parent || t[6], r, t);
                if (null != s)
                    if (Array.isArray(n))
                        for (let f = 0; f < n.length; f++) Jf(i, s, n[f], a, !1);
                    else Jf(i, s, n, a, !1)
            }

            function Al(e, t) {
                if (null !== t) {
                    const n = t.type;
                    if (3 & n) return wt(t, e);
                    if (4 & n) return Gu(-1, e[t.index]);
                    if (8 & n) {
                        const r = t.child;
                        if (null !== r) return Al(e, r);
                        {
                            const s = e[t.index];
                            return Ln(s) ? Gu(-1, s) : q(s)
                        }
                    }
                    if (32 & n) return Vu(t, e)() || q(e[t.index]);
                    {
                        const r = rh(e, t);
                        return null !== r ? Array.isArray(r) ? r[0] : Al(Da(e[16]), r) : Al(e, t.next)
                    }
                }
                return null
            }

            function rh(e, t) {
                return null !== t ? e[16][6].projection[t.projection] : null
            }

            function Gu(e, t) {
                const n = 10 + e + 1;
                if (n < t.length) {
                    const r = t[n],
                        s = r[1].firstChild;
                    if (null !== s) return Al(r, s)
                }
                return t[7]
            }

            function Ku(e, t, n, r, s, i, o) {
                for (; null != n;) {
                    const a = r[n.index],
                        f = n.type;
                    if (o && 0 === t && (a && Jn(q(a), r), n.flags |= 4), 64 != (64 & n.flags))
                        if (8 & f) Ku(e, t, n.child, r, s, i, !1), vo(t, e, s, a, i);
                        else if (32 & f) {
                        const g = Vu(n, r);
                        let D;
                        for (; D = g();) vo(t, e, s, D, i);
                        vo(t, e, s, a, i)
                    } else 16 & f ? ih(e, t, r, n, s, i) : vo(t, e, s, a, i);
                    n = o ? n.projectionNext : n.next
                }
            }

            function va(e, t, n, r, s, i) {
                Ku(n, r, e.firstChild, t, s, i, !1)
            }

            function ih(e, t, n, r, s, i) {
                const o = n[16],
                    f = o[6].projection[r.projection];
                if (Array.isArray(f))
                    for (let g = 0; g < f.length; g++) vo(t, e, s, f[g], i);
                else Ku(e, t, f, o[3], s, i, !0)
            }

            function oh(e, t, n) {
                y(e) ? e.setAttribute(t, "style", n) : t.style.cssText = n
            }

            function Qu(e, t, n) {
                y(e) ? "" === n ? e.removeAttribute(t, "class") : e.setAttribute(t, "class", n) : t.className = n
            }

            function ah(e, t, n) {
                let r = e.length;
                for (;;) {
                    const s = e.indexOf(t, n);
                    if (-1 === s) return s;
                    if (0 === s || e.charCodeAt(s - 1) <= 32) {
                        const i = t.length;
                        if (s + i === r || e.charCodeAt(s + i) <= 32) return s
                    }
                    n = s + 1
                }
            }
            const lh = "ng-template";

            function ZE(e, t, n) {
                let r = 0;
                for (; r < e.length;) {
                    let s = e[r++];
                    if (n && "class" === s) {
                        if (s = e[r], -1 !== ah(s.toLowerCase(), t, 0)) return !0
                    } else if (1 === s) {
                        for (; r < e.length && "string" == typeof(s = e[r++]);)
                            if (s.toLowerCase() === t) return !0;
                        return !1
                    }
                }
                return !1
            }

            function uh(e) {
                return 4 === e.type && e.value !== lh
            }

            function JE(e, t, n) {
                return t === (4 !== e.type || n ? e.value : lh)
            }

            function XE(e, t, n) {
                let r = 4;
                const s = e.attrs || [],
                    i = function(e) {
                        for (let t = 0; t < e.length; t++)
                            if (ia(e[t])) return t;
                        return e.length
                    }(s);
                let o = !1;
                for (let a = 0; a < t.length; a++) {
                    const f = t[a];
                    if ("number" != typeof f) {
                        if (!o)
                            if (4 & r) {
                                if (r = 2 | 1 & r, "" !== f && !JE(e, f, n) || "" === f && 1 === t.length) {
                                    if (fs(r)) return !1;
                                    o = !0
                                }
                            } else {
                                const g = 8 & r ? f : t[++a];
                                if (8 & r && null !== e.attrs) {
                                    if (!ZE(e.attrs, g, n)) {
                                        if (fs(r)) return !1;
                                        o = !0
                                    }
                                    continue
                                }
                                const S = eD(8 & r ? "class" : f, s, uh(e), n);
                                if (-1 === S) {
                                    if (fs(r)) return !1;
                                    o = !0;
                                    continue
                                }
                                if ("" !== g) {
                                    let R;
                                    R = S > i ? "" : s[S + 1].toLowerCase();
                                    const L = 8 & r ? R : null;
                                    if (L && -1 !== ah(L, g, 0) || 2 & r && g !== R) {
                                        if (fs(r)) return !1;
                                        o = !0
                                    }
                                }
                            }
                    } else {
                        if (!o && !fs(r) && !fs(f)) return !1;
                        if (o && fs(f)) continue;
                        o = !1, r = f | 1 & r
                    }
                }
                return fs(r) || o
            }

            function fs(e) {
                return 0 == (1 & e)
            }

            function eD(e, t, n, r) {
                if (null === t) return -1;
                let s = 0;
                if (r || !n) {
                    let i = !1;
                    for (; s < t.length;) {
                        const o = t[s];
                        if (o === e) return s;
                        if (3 === o || 6 === o) i = !0;
                        else {
                            if (1 === o || 2 === o) {
                                let a = t[++s];
                                for (;
                                    "string" == typeof a;) a = t[++s];
                                continue
                            }
                            if (4 === o) break;
                            if (0 === o) {
                                s += 4;
                                continue
                            }
                        }
                        s += i ? 1 : 2
                    }
                    return -1
                }
                return function(e, t) {
                    let n = e.indexOf(4);
                    if (n > -1)
                        for (n++; n < e.length;) {
                            const r = e[n];
                            if ("number" == typeof r) return -1;
                            if (r === t) return n;
                            n++
                        }
                    return -1
                }(t, e)
            }

            function ch(e, t, n = !1) {
                for (let r = 0; r < t.length; r++)
                    if (XE(e, t[r], n)) return !0;
                return !1
            }

            function sD(e, t) {
                e: for (let n = 0; n < t.length; n++) {
                    const r = t[n];
                    if (e.length === r.length) {
                        for (let s = 0; s < e.length; s++)
                            if (e[s] !== r[s]) continue e;
                        return !0
                    }
                }
                return !1
            }

            function dh(e, t) {
                return e ? ":not(" + t.trim() + ")" : t
            }

            function iD(e) {
                let t = e[0],
                    n = 1,
                    r = 2,
                    s = "",
                    i = !1;
                for (; n < e.length;) {
                    let o = e[n];
                    if ("string" == typeof o)
                        if (2 & r) {
                            const a = e[++n];
                            s += "[" + o + (a.length > 0 ? '="' + a + '"' : "") + "]"
                        } else 8 & r ? s += "." + o : 4 & r && (s += " " + o);
                    else "" !== s && !fs(o) && (t += dh(i, s), s = ""), r = o, i = i || !fs(r);
                    n++
                }
                return "" !== s && (t += dh(i, s)), t
            }
            const Et = {};

            function fh(e) {
                hh(v(), Ee(), at() + e, Ae())
            }

            function hh(e, t, n, r) {
                if (!r)
                    if (3 == (3 & t[2])) {
                        const i = e.preOrderCheckHooks;
                        null !== i && hr(t, i, n)
                    } else {
                        const i = e.preOrderHooks;
                        null !== i && ks(t, i, 0, n)
                    } $t(n)
            }

            function Ml(e, t) {
                return e << 17 | t << 2
            }

            function hs(e) {
                return e >> 17 & 32767
            }

            function Yu(e) {
                return 2 | e
            }

            function fi(e) {
                return (131068 & e) >> 2
            }

            function qu(e, t) {
                return -131069 & e | t << 2
            }

            function Zu(e) {
                return 1 | e
            }

            function bh(e, t) {
                const n = e.contentQueries;
                if (null !== n)
                    for (let r = 0; r < n.length; r += 2) {
                        const s = n[r],
                            i = n[r + 1];
                        if (-1 !== i) {
                            const o = e.data[i];
                            In(s), o.contentQueries(2, t[i], i)
                        }
                    }
            }

            function Ca(e, t, n, r, s, i, o, a, f, g) {
                const D = t.blueprint.slice();
                return D[0] = s, D[2] = 140 | r, Or(D), D[3] = D[15] = e, D[8] = n, D[10] = o || e && e[10], D[11] = a || e && e[11], D[12] = f || e && e[12] || null, D[9] = g || e && e[9] || null, D[6] = i, D[16] = 2 == t.type ? e[16] : D, D
            }

            function Co(e, t, n, r, s) {
                let i = e.data[t];
                if (null === i) i = function(e, t, n, r, s) {
                    const i = p(),
                        o = F(),
                        f = e.data[t] = function(e, t, n, r, s, i) {
                            return {
                                type: n,
                                index: r,
                                insertBeforeIndex: null,
                                injectorIndex: t ? t.injectorIndex : -1,
                                directiveStart: -1,
                                directiveEnd: -1,
                                directiveStylingLast: -1,
                                propertyBindings: null,
                                flags: 0,
                                providerIndexes: 0,
                                value: s,
                                attrs: i,
                                mergedAttrs: null,
                                localNames: null,
                                initialInputs: void 0,
                                inputs: null,
                                outputs: null,
                                tViews: null,
                                next: null,
                                projectionNext: null,
                                child: null,
                                parent: t,
                                projection: null,
                                styles: null,
                                stylesWithoutHost: null,
                                residualStyles: void 0,
                                classes: null,
                                classesWithoutHost: null,
                                residualClasses: void 0,
                                classBindings: 0,
                                styleBindings: 0
                            }
                        }(0, o ? i : i && i.parent, n, t, r, s);
                    return null === e.firstChild && (e.firstChild = f), null !== i && (o ? null == i.child && null !== f.parent && (i.child = f) : null === i.next && (i.next = f)), f
                }(e, t, n, r, s), Je.lFrame.inI18n && (i.flags |= 64);
                else if (64 & i.type) {
                    i.type = n, i.value = r, i.attrs = s;
                    const o = function() {
                        const e = Je.lFrame,
                            t = e.currentTNode;
                        return e.isParent ? t : t.parent
                    }();
                    i.injectorIndex = null === o ? -1 : o.injectorIndex
                }
                return M(i, !0), i
            }

            function bo(e, t, n, r) {
                if (0 === n) return -1;
                const s = t.length;
                for (let i = 0; i < n; i++) t.push(r), e.blueprint.push(r), e.data.push(null);
                return s
            }

            function ba(e, t, n) {
                oi(t);
                try {
                    const r = e.viewQuery;
                    null !== r && hc(1, r, n);
                    const s = e.template;
                    null !== s && wh(e, t, s, 1, n), e.firstCreatePass && (e.firstCreatePass = !1), e.staticContentQueries && bh(e, t), e.staticViewQueries && hc(2, e.viewQuery, n);
                    const i = e.components;
                    null !== i && function(e, t) {
                        for (let n = 0; n < t.length; n++) VD(e, t[n])
                    }(t, i)
                } catch (r) {
                    throw e.firstCreatePass && (e.incompleteFirstPass = !0, e.firstCreatePass = !1), r
                } finally {
                    t[2] &= -5, ke()
                }
            }

            function wo(e, t, n, r) {
                const s = t[2];
                if (256 == (256 & s)) return;
                oi(t);
                const i = Ae();
                try {
                    Or(t),
                        function(e) {
                            Je.lFrame.bindingIndex = e
                        }(e.bindingStartIndex), null !== n && wh(e, t, n, 2, r);
                    const o = 3 == (3 & s);
                    if (!i)
                        if (o) {
                            const g = e.preOrderCheckHooks;
                            null !== g && hr(t, g, null)
                        } else {
                            const g = e.preOrderHooks;
                            null !== g && ks(t, g, 0, null), sa(t, 0)
                        } if (function(e) {
                            for (let t = Bu(e); null !== t; t = ju(t)) {
                                if (!t[2]) continue;
                                const n = t[9];
                                for (let r = 0; r < n.length; r++) {
                                    const s = n[r],
                                        i = s[3];
                                    0 == (1024 & s[2]) && Os(i, 1), s[2] |= 1024
                                }
                            }
                        }(t), function(e) {
                            for (let t = Bu(e); null !== t; t = ju(t))
                                for (let n = 10; n < t.length; n++) {
                                    const r = t[n],
                                        s = r[1];
                                    Sr(r) && wo(s, r, s.template, r[8])
                                }
                        }(t), null !== e.contentQueries && bh(e, t), !i)
                        if (o) {
                            const g = e.contentCheckHooks;
                            null !== g && hr(t, g)
                        } else {
                            const g = e.contentHooks;
                            null !== g && ks(t, g, 1), sa(t, 1)
                        }!
                    function(e, t) {
                        const n = e.hostBindingOpCodes;
                        if (null !== n) try {
                            for (let r = 0; r < n.length; r++) {
                                const s = n[r];
                                if (s < 0) $t(~s);
                                else {
                                    const i = s,
                                        o = n[++r],
                                        a = n[++r];
                                    fn(o, i), a(2, t[i])
                                }
                            }
                        } finally {
                            $t(-1)
                        }
                    }(e, t);
                    const a = e.components;
                    null !== a && function(e, t) {
                        for (let n = 0; n < t.length; n++) kD(e, t[n])
                    }(t, a);
                    const f = e.viewQuery;
                    if (null !== f && hc(2, f, r), !i)
                        if (o) {
                            const g = e.viewCheckHooks;
                            null !== g && hr(t, g)
                        } else {
                            const g = e.viewHooks;
                            null !== g && ks(t, g, 2), sa(t, 2)
                        }! 0 === e.firstUpdatePass && (e.firstUpdatePass = !1), i || (t[2] &= -73), 1024 & t[2] && (t[2] &= -1025, Os(t[3], -1))
                } finally {
                    ke()
                }
            }

            function _D(e, t, n, r) {
                const s = t[10],
                    i = !Ae(),
                    o = en(t);
                try {
                    i && !o && s.begin && s.begin(), o && ba(e, t, r), wo(e, t, n, r)
                } finally {
                    i && !o && s.end && s.end()
                }
            }

            function wh(e, t, n, r, s) {
                const i = at(),
                    o = 2 & r;
                try {
                    $t(-1), o && t.length > 20 && hh(e, t, 20, Ae()), n(r, s)
                } finally {
                    $t(i)
                }
            }

            function Sh(e, t, n) {
                if (_i(t)) {
                    const s = t.directiveEnd;
                    for (let i = t.directiveStart; i < s; i++) {
                        const o = e.data[i];
                        o.contentQueries && o.contentQueries(1, n[i], i)
                    }
                }
            }

            function ic(e, t, n) {
                !xs() || (function(e, t, n, r) {
                    const s = n.directiveStart,
                        i = n.directiveEnd;
                    e.firstCreatePass || li(n, t), Jn(r, t);
                    const o = n.initialInputs;
                    for (let a = s; a < i; a++) {
                        const f = e.data[a],
                            g = Tn(f);
                        g && ND(t, n, f);
                        const D = Ui(t, e, a, n);
                        Jn(D, t), null !== o && OD(0, a - s, D, f, 0, o), g && (ht(n.index, t)[8] = D)
                    }
                }(e, t, n, wt(n, t)), 128 == (128 & n.flags) && function(e, t, n) {
                    const r = n.directiveStart,
                        s = n.directiveEnd,
                        o = n.index,
                        a = Je.lFrame.currentDirectiveIndex;
                    try {
                        $t(o);
                        for (let f = r; f < s; f++) {
                            const g = e.data[f],
                                D = t[f];
                            qn(f), (null !== g.hostBindings || 0 !== g.hostVars || null !== g.hostAttrs) && Oh(g, D)
                        }
                    } finally {
                        $t(-1), qn(a)
                    }
                }(e, t, n))
            }

            function oc(e, t, n = wt) {
                const r = t.localNames;
                if (null !== r) {
                    let s = t.index + 1;
                    for (let i = 0; i < r.length; i += 2) {
                        const o = r[i + 1],
                            a = -1 === o ? n(t, e) : e[o];
                        e[s++] = a
                    }
                }
            }

            function Th(e) {
                const t = e.tView;
                return null === t || t.incompleteFirstPass ? e.tView = Nl(1, null, e.template, e.decls, e.vars, e.directiveDefs, e.pipeDefs, e.viewQuery, e.schemas, e.consts) : t
            }

            function Nl(e, t, n, r, s, i, o, a, f, g) {
                const D = 20 + r,
                    S = D + s,
                    R = function(e, t) {
                        const n = [];
                        for (let r = 0; r < t; r++) n.push(r < e ? null : Et);
                        return n
                    }(D, S),
                    L = "function" == typeof g ? g() : g;
                return R[1] = {
                    type: e,
                    blueprint: R,
                    template: n,
                    queries: null,
                    viewQuery: a,
                    declTNode: t,
                    data: R.slice().fill(null, D),
                    bindingStartIndex: D,
                    expandoStartIndex: S,
                    hostBindingOpCodes: null,
                    firstCreatePass: !0,
                    firstUpdatePass: !0,
                    staticViewQueries: !1,
                    staticContentQueries: !1,
                    preOrderHooks: null,
                    preOrderCheckHooks: null,
                    contentHooks: null,
                    contentCheckHooks: null,
                    viewHooks: null,
                    viewCheckHooks: null,
                    destroyHooks: null,
                    cleanup: null,
                    contentQueries: null,
                    components: null,
                    directiveRegistry: "function" == typeof i ? i() : i,
                    pipeRegistry: "function" == typeof o ? o() : o,
                    firstChild: null,
                    schemas: f,
                    consts: L,
                    incompleteFirstPass: !1
                }
            }

            function Mh(e, t, n, r) {
                const s = Bh(t);
                null === n ? s.push(r) : (s.push(n), e.firstCreatePass && jh(e).push(r, s.length - 1))
            }

            function Rh(e, t, n) {
                for (let r in e)
                    if (e.hasOwnProperty(r)) {
                        const s = e[r];
                        (n = null === n ? {} : n).hasOwnProperty(r) ? n[r].push(t, s) : n[r] = [t, s]
                    } return n
            }

            function Lr(e, t, n, r, s, i, o, a) {
                const f = wt(t, n);
                let D, g = t.inputs;
                !a && null != g && (D = g[r]) ? ($h(e, n, D, r, s), on(t) && function(e, t) {
                    const n = ht(t, e);
                    16 & n[2] || (n[2] |= 64)
                }(n, t.index)) : 3 & t.type && (r = function(e) {
                    return "class" === e ? "className" : "for" === e ? "htmlFor" : "formaction" === e ? "formAction" : "innerHtml" === e ? "innerHTML" : "readonly" === e ? "readOnly" : "tabindex" === e ? "tabIndex" : e
                }(r), s = null != o ? o(s, t.value || "", r) : s, y(i) ? i.setProperty(f, r, s) : oa(r) || (f.setProperty ? f.setProperty(r, s) : f[r] = s))
            }

            function ac(e, t, n, r) {
                let s = !1;
                if (xs()) {
                    const i = function(e, t, n) {
                            const r = e.directiveRegistry;
                            let s = null;
                            if (r)
                                for (let i = 0; i < r.length; i++) {
                                    const o = r[i];
                                    ch(n, o.selectors, !1) && (s || (s = []), lo(li(n, t), e, o.type), Tn(o) ? (xh(e, n), s.unshift(o)) : s.push(o))
                                }
                            return s
                        }(e, t, n),
                        o = null === r ? null : {
                            "": -1
                        };
                    if (null !== i) {
                        s = !0, Fh(n, e.data.length, i.length);
                        for (let D = 0; D < i.length; D++) {
                            const S = i[D];
                            S.providersResolver && S.providersResolver(S)
                        }
                        let a = !1,
                            f = !1,
                            g = bo(e, t, i.length, null);
                        for (let D = 0; D < i.length; D++) {
                            const S = i[D];
                            n.mergedAttrs = oo(n.mergedAttrs, S.hostAttrs), Lh(e, n, t, g, S), PD(g, S, o), null !== S.contentQueries && (n.flags |= 8), (null !== S.hostBindings || null !== S.hostAttrs || 0 !== S.hostVars) && (n.flags |= 128);
                            const R = S.type.prototype;
                            !a && (R.ngOnChanges || R.ngOnInit || R.ngDoCheck) && ((e.preOrderHooks || (e.preOrderHooks = [])).push(n.index), a = !0), !f && (R.ngOnChanges || R.ngDoCheck) && ((e.preOrderCheckHooks || (e.preOrderCheckHooks = [])).push(n.index), f = !0), g++
                        }! function(e, t) {
                            const r = t.directiveEnd,
                                s = e.data,
                                i = t.attrs,
                                o = [];
                            let a = null,
                                f = null;
                            for (let g = t.directiveStart; g < r; g++) {
                                const D = s[g],
                                    S = D.inputs,
                                    R = null === i || uh(t) ? null : xD(S, i);
                                o.push(R), a = Rh(S, g, a), f = Rh(D.outputs, g, f)
                            }
                            null !== a && (a.hasOwnProperty("class") && (t.flags |= 16), a.hasOwnProperty("style") && (t.flags |= 32)), t.initialInputs = o, t.inputs = a, t.outputs = f
                        }(e, n)
                    }
                    o && function(e, t, n) {
                        if (t) {
                            const r = e.localNames = [];
                            for (let s = 0; s < t.length; s += 2) {
                                const i = n[t[s + 1]];
                                if (null == i) throw new St("301", `Export of name '${t[s+1]}' not found!`);
                                r.push(t[s], i)
                            }
                        }
                    }(n, r, o)
                }
                return n.mergedAttrs = oo(n.mergedAttrs, n.attrs), s
            }

            function Nh(e, t, n, r, s, i) {
                const o = i.hostBindings;
                if (o) {
                    let a = e.hostBindingOpCodes;
                    null === a && (a = e.hostBindingOpCodes = []);
                    const f = ~t.index;
                    (function(e) {
                        let t = e.length;
                        for (; t > 0;) {
                            const n = e[--t];
                            if ("number" == typeof n && n < 0) return n
                        }
                        return 0
                    })(a) != f && a.push(f), a.push(r, s, o)
                }
            }

            function Oh(e, t) {
                null !== e.hostBindings && e.hostBindings(1, t)
            }

            function xh(e, t) {
                t.flags |= 2, (e.components || (e.components = [])).push(t.index)
            }

            function PD(e, t, n) {
                if (n) {
                    if (t.exportAs)
                        for (let r = 0; r < t.exportAs.length; r++) n[t.exportAs[r]] = e;
                    Tn(t) && (n[""] = e)
                }
            }

            function Fh(e, t, n) {
                e.flags |= 1, e.directiveStart = t, e.directiveEnd = t + n, e.providerIndexes = t
            }

            function Lh(e, t, n, r, s) {
                e.data[r] = s;
                const i = s.factory || (s.factory = dr(s.type)),
                    o = new ai(i, Tn(s), null);
                e.blueprint[r] = o, n[r] = o, Nh(e, t, 0, r, bo(e, n, s.hostVars, Et), s)
            }

            function ND(e, t, n) {
                const r = wt(t, e),
                    s = Th(n),
                    i = e[10],
                    o = Ol(e, Ca(e, s, null, n.onPush ? 64 : 16, r, t, i, i.createRenderer(r, n), null, null));
                e[t.index] = o
            }

            function Gs(e, t, n, r, s, i) {
                const o = wt(e, t);
                ! function(e, t, n, r, s, i, o) {
                    if (null == i) y(e) ? e.removeAttribute(t, s, n) : t.removeAttribute(s);
                    else {
                        const a = null == o ? Me(i) : o(i, r || "", s);
                        y(e) ? e.setAttribute(t, s, a, n) : n ? t.setAttributeNS(n, s, a) : t.setAttribute(s, a)
                    }
                }(t[11], o, i, e.value, n, r, s)
            }

            function OD(e, t, n, r, s, i) {
                const o = i[t];
                if (null !== o) {
                    const a = r.setInput;
                    for (let f = 0; f < o.length;) {
                        const g = o[f++],
                            D = o[f++],
                            S = o[f++];
                        null !== a ? r.setInput(n, S, g, D) : n[D] = S
                    }
                }
            }

            function xD(e, t) {
                let n = null,
                    r = 0;
                for (; r < t.length;) {
                    const s = t[r];
                    if (0 !== s)
                        if (5 !== s) {
                            if ("number" == typeof s) break;
                            e.hasOwnProperty(s) && (null === n && (n = []), n.push(s, e[s], t[r + 1])), r += 2
                        } else r += 2;
                    else r += 4
                }
                return n
            }

            function kh(e, t, n, r) {
                return new Array(e, !0, !1, t, null, 0, r, n, null, null)
            }

            function kD(e, t) {
                const n = ht(t, e);
                if (Sr(n)) {
                    const r = n[1];
                    80 & n[2] ? wo(r, n, r.template, n[8]) : n[5] > 0 && uc(n)
                }
            }

            function uc(e) {
                for (let r = Bu(e); null !== r; r = ju(r))
                    for (let s = 10; s < r.length; s++) {
                        const i = r[s];
                        if (1024 & i[2]) {
                            const o = i[1];
                            wo(o, i, o.template, i[8])
                        } else i[5] > 0 && uc(i)
                    }
                const n = e[1].components;
                if (null !== n)
                    for (let r = 0; r < n.length; r++) {
                        const s = ht(n[r], e);
                        Sr(s) && s[5] > 0 && uc(s)
                    }
            }

            function VD(e, t) {
                const n = ht(t, e),
                    r = n[1];
                (function(e, t) {
                    for (let n = t.length; n < e.blueprint.length; n++) t.push(e.blueprint[n])
                })(r, n), ba(r, n, n[8])
            }

            function Ol(e, t) {
                return e[13] ? e[14][4] = t : e[13] = t, e[14] = t, t
            }

            function cc(e) {
                for (; e;) {
                    e[2] |= 64;
                    const t = Da(e);
                    if (Ss(e) && !t) return e;
                    e = t
                }
                return null
            }

            function fc(e, t, n) {
                const r = t[10];
                r.begin && r.begin();
                try {
                    wo(e, t, e.template, n)
                } catch (s) {
                    throw Hh(t, s), s
                } finally {
                    r.end && r.end()
                }
            }

            function Vh(e) {
                ! function(e) {
                    for (let t = 0; t < e.components.length; t++) {
                        const n = e.components[t],
                            r = Fu(n),
                            s = r[1];
                        _D(s, r, s.template, n)
                    }
                }(e[8])
            }

            function hc(e, t, n) {
                In(0), t(e, n)
            }
            const $D = (() => Promise.resolve(null))();

            function Bh(e) {
                return e[7] || (e[7] = [])
            }

            function jh(e) {
                return e.cleanup || (e.cleanup = [])
            }

            function Uh(e, t, n) {
                return (null === e || Tn(e)) && (n = function(e) {
                    for (; Array.isArray(e);) {
                        if ("object" == typeof e[1]) return e;
                        e = e[0]
                    }
                    return null
                }(n[t.index])), n[11]
            }

            function Hh(e, t) {
                const n = e[9],
                    r = n ? n.get(Eo, null) : null;
                r && r.handleError(t)
            }

            function $h(e, t, n, r, s) {
                for (let i = 0; i < n.length;) {
                    const o = n[i++],
                        a = n[i++],
                        f = t[o],
                        g = e.data[o];
                    null !== g.setInput ? g.setInput(f, s, r, a) : f[a] = s
                }
            }

            function pi(e, t, n) {
                const r = Tt(t, e);
                ! function(e, t, n) {
                    y(e) ? e.setValue(t, n) : t.textContent = n
                }(e[11], r, n)
            }

            function xl(e, t, n) {
                let r = n ? e.styles : null,
                    s = n ? e.classes : null,
                    i = 0;
                if (null !== t)
                    for (let o = 0; o < t.length; o++) {
                        const a = t[o];
                        "number" == typeof a ? i = a : 1 == i ? s = Re(s, a) : 2 == i && (r = Re(r, a + ": " + t[++o] + ";"))
                    }
                n ? e.styles = r : e.stylesWithoutHost = r, n ? e.classes = s : e.classesWithoutHost = s
            }
            const So = new rt("INJECTOR", -1);
            class zh {
                get(t, n = fa) {
                    if (n === fa) {
                        const r = new Error(`NullInjectorError: No provider for ${Z(t)}!`);
                        throw r.name = "NullInjectorError", r
                    }
                    return n
                }
            }
            const wa = new rt("Set Injector scope."),
                Sa = {},
                GD = {};
            let pc;

            function Wh() {
                return void 0 === pc && (pc = new zh), pc
            }

            function Gh(e, t = null, n = null, r) {
                return new QD(e, n, t || Wh(), r)
            }
            class QD {
                constructor(t, n, r, s = null) {
                    this.parent = r, this.records = new Map, this.injectorDefTypes = new Set, this.onDestroy = new Set, this._destroyed = !1;
                    const i = [];
                    n && Hs(n, a => this.processProvider(a, t, n)), Hs([t], a => this.processInjectorType(a, [], i)), this.records.set(So, To(void 0, this));
                    const o = this.records.get(wa);
                    this.scope = null != o ? o.value : null, this.source = s || ("object" == typeof t ? null : Z(t))
                }
                get destroyed() {
                    return this._destroyed
                }
                destroy() {
                    this.assertNotDestroyed(), this._destroyed = !0;
                    try {
                        this.onDestroy.forEach(t => t.ngOnDestroy())
                    } finally {
                        this.records.clear(), this.onDestroy.clear(), this.injectorDefTypes.clear()
                    }
                }
                get(t, n = fa, r = N.Default) {
                    this.assertNotDestroyed();
                    const s = po(this),
                        i = fe(void 0);
                    try {
                        if (!(r & N.SkipSelf)) {
                            let a = this.records.get(t);
                            if (void 0 === a) {
                                const f = ("function" == typeof(e = t) || "object" == typeof e && e instanceof rt) && Pt(t);
                                a = f && this.injectableDefInScope(f) ? To(gc(t), Sa) : null, this.records.set(t, a)
                            }
                            if (null != a) return this.hydrate(t, a)
                        }
                        return (r & N.Self ? Wh() : this.parent).get(t, n = r & N.Optional && n === fa ? null : n)
                    } catch (o) {
                        if ("NullInjectorError" === o.name) {
                            if ((o[ho] = o[ho] || []).unshift(Z(t)), s) throw o;
                            return ff(o, t, "R3InjectorError", this.source)
                        }
                        throw o
                    } finally {
                        fe(i), po(s)
                    }
                    var e
                }
                _resolveInjectorDefTypes() {
                    this.injectorDefTypes.forEach(t => this.get(t))
                }
                toString() {
                    const t = [];
                    return this.records.forEach((r, s) => t.push(Z(s))), `R3Injector[${t.join(", ")}]`
                }
                assertNotDestroyed() {
                    if (this._destroyed) throw new Error("Injector has already been destroyed.")
                }
                processInjectorType(t, n, r) {
                    if (!(t = me(t))) return !1;
                    let s = sr(t);
                    const i = null == s && t.ngModule || void 0,
                        o = void 0 === i ? t : i,
                        a = -1 !== r.indexOf(o);
                    if (void 0 !== i && (s = sr(i)), null == s) return !1;
                    if (null != s.imports && !a) {
                        let D;
                        r.push(o);
                        try {
                            Hs(s.imports, S => {
                                this.processInjectorType(S, n, r) && (void 0 === D && (D = []), D.push(S))
                            })
                        } finally {}
                        if (void 0 !== D)
                            for (let S = 0; S < D.length; S++) {
                                const {
                                    ngModule: R,
                                    providers: L
                                } = D[S];
                                Hs(L, H => this.processProvider(H, R, L || Ct))
                            }
                    }
                    this.injectorDefTypes.add(o);
                    const f = dr(o) || (() => new o);
                    this.records.set(o, To(f, Sa));
                    const g = s.providers;
                    if (null != g && !a) {
                        const D = t;
                        Hs(g, S => this.processProvider(S, D, g))
                    }
                    return void 0 !== i && void 0 !== t.providers
                }
                processProvider(t, n, r) {
                    let s = Io(t = me(t)) ? t : me(t && t.provide);
                    const i = (e = t, Qh(e) ? To(void 0, e.useValue) : To(Kh(e), Sa));
                    var e;
                    if (Io(t) || !0 !== t.multi) this.records.get(s);
                    else {
                        let o = this.records.get(s);
                        o || (o = To(void 0, Sa, !0), o.factory = () => Wi(o.multi), this.records.set(s, o)), s = t, o.multi.push(t)
                    }
                    this.records.set(s, i)
                }
                hydrate(t, n) {
                    return n.value === Sa && (n.value = GD, n.value = n.factory()), "object" == typeof n.value && n.value && null !== (e = n.value) && "object" == typeof e && "function" == typeof e.ngOnDestroy && this.onDestroy.add(n.value), n.value;
                    var e
                }
                injectableDefInScope(t) {
                    if (!t.providedIn) return !1;
                    const n = me(t.providedIn);
                    return "string" == typeof n ? "any" === n || n === this.scope : this.injectorDefTypes.has(n)
                }
            }

            function gc(e) {
                const t = Pt(e),
                    n = null !== t ? t.factory : dr(e);
                if (null !== n) return n;
                if (e instanceof rt) throw new Error(`Token ${Z(e)} is missing a \u0275prov definition.`);
                if (e instanceof Function) return function(e) {
                    const t = e.length;
                    if (t > 0) {
                        const r = bi(t, "?");
                        throw new Error(`Can't resolve all parameters for ${Z(e)}: (${r.join(", ")}).`)
                    }
                    const n = function(e) {
                        const t = e && (e[Kt] || e[Nr]);
                        if (t) {
                            const n = function(e) {
                                if (e.hasOwnProperty("name")) return e.name;
                                const t = ("" + e).match(/^function\s*([^\s(]+)/);
                                return null === t ? "" : t[1]
                            }(e);
                            return console.warn(`DEPRECATED: DI is instantiating a token "${n}" that inherits its @Injectable decorator but does not provide one itself.\nThis will become an error in a future version of Angular. Please add @Injectable() to the "${n}" class.`), t
                        }
                        return null
                    }(e);
                    return null !== n ? () => n.factory(e) : () => new e
                }(e);
                throw new Error("unreachable")
            }

            function Kh(e, t, n) {
                let r;
                if (Io(e)) {
                    const s = me(e);
                    return dr(s) || gc(s)
                }
                if (Qh(e)) r = () => me(e.useValue);
                else if (function(e) {
                        return !(!e || !e.useFactory)
                    }(e)) r = () => e.useFactory(...Wi(e.deps || []));
                else if (function(e) {
                        return !(!e || !e.useExisting)
                    }(e)) r = () => Mn(me(e.useExisting));
                else {
                    const s = me(e && (e.useClass || e.provide));
                    if (! function(e) {
                            return !!e.deps
                        }(e)) return dr(s) || gc(s);
                    r = () => new s(...Wi(e.deps))
                }
                return r
            }

            function To(e, t, n = !1) {
                return {
                    factory: e,
                    value: t,
                    multi: n ? [] : void 0
                }
            }

            function Qh(e) {
                return null !== e && "object" == typeof e && Su in e
            }

            function Io(e) {
                return "function" == typeof e
            }
            const Yh = function(e, t, n) {
                return function(e, t = null, n = null, r) {
                    const s = Gh(e, t, n, r);
                    return s._resolveInjectorDefTypes(), s
                }({
                    name: n
                }, t, e, n)
            };
            let tn = (() => {
                class e {
                    static create(n, r) {
                        return Array.isArray(n) ? Yh(n, r, "") : Yh(n.providers, n.parent, n.name || "")
                    }
                }
                return e.THROW_IF_NOT_FOUND = fa, e.NULL = new zh, e.\u0275prov = Gt({
                    token: e,
                    providedIn: "any",
                    factory: () => Mn(So)
                }), e.__NG_ELEMENT_ID__ = -1, e
            })();

            function gv(e, t) {
                Kr(Fu(e)[1], u())
            }

            function vc(e) {
                let t = function(e) {
                        return Object.getPrototypeOf(e.prototype).constructor
                    }(e.type),
                    n = !0;
                const r = [e];
                for (; t;) {
                    let s;
                    if (Tn(e)) s = t.\u0275cmp || t.\u0275dir;
                    else {
                        if (t.\u0275cmp) throw new Error("Directives cannot inherit Components");
                        s = t.\u0275dir
                    }
                    if (s) {
                        if (n) {
                            r.push(s);
                            const o = e;
                            o.inputs = Cc(e.inputs), o.declaredInputs = Cc(e.declaredInputs), o.outputs = Cc(e.outputs);
                            const a = s.hostBindings;
                            a && Ev(e, a);
                            const f = s.viewQuery,
                                g = s.contentQueries;
                            if (f && yv(e, f), g && _v(e, g), Y(e.inputs, s.inputs), Y(e.declaredInputs, s.declaredInputs), Y(e.outputs, s.outputs), Tn(s) && s.data.animation) {
                                const D = e.data;
                                D.animation = (D.animation || []).concat(s.data.animation)
                            }
                        }
                        const i = s.features;
                        if (i)
                            for (let o = 0; o < i.length; o++) {
                                const a = i[o];
                                a && a.ngInherit && a(e), a === vc && (n = !1)
                            }
                    }
                    t = Object.getPrototypeOf(t)
                }! function(e) {
                    let t = 0,
                        n = null;
                    for (let r = e.length - 1; r >= 0; r--) {
                        const s = e[r];
                        s.hostVars = t += s.hostVars, s.hostAttrs = oo(s.hostAttrs, n = oo(n, s.hostAttrs))
                    }
                }(r)
            }

            function Cc(e) {
                return e === zn ? {} : e === Ct ? [] : e
            }

            function yv(e, t) {
                const n = e.viewQuery;
                e.viewQuery = n ? (r, s) => {
                    t(r, s), n(r, s)
                } : t
            }

            function _v(e, t) {
                const n = e.contentQueries;
                e.contentQueries = n ? (r, s, i) => {
                    t(r, s, i), n(r, s, i)
                } : t
            }

            function Ev(e, t) {
                const n = e.hostBindings;
                e.hostBindings = n ? (r, s) => {
                    t(r, s), n(r, s)
                } : t
            }
            let Fl = null;

            function Ao() {
                if (!Fl) {
                    const e = Ke.Symbol;
                    if (e && e.iterator) Fl = e.iterator;
                    else {
                        const t = Object.getOwnPropertyNames(Map.prototype);
                        for (let n = 0; n < t.length; ++n) {
                            const r = t[n];
                            "entries" !== r && "size" !== r && Map.prototype[r] === Map.prototype.entries && (Fl = r)
                        }
                    }
                }
                return Fl
            }

            function Ia(e) {
                return !!bc(e) && (Array.isArray(e) || !(e instanceof Map) && Ao() in e)
            }

            function bc(e) {
                return null !== e && ("function" == typeof e || "object" == typeof e)
            }

            function Ks(e, t, n) {
                return e[t] = n
            }

            function Xn(e, t, n) {
                return !Object.is(e[t], n) && (e[t] = n, !0)
            }

            function Qi(e, t, n, r) {
                const s = Xn(e, t, n);
                return Xn(e, t + 1, r) || s
            }

            function wc(e, t, n, r) {
                const s = Ee();
                return Xn(s, et(), t) && (v(), Gs(Mt(), s, e, t, n, r)), wc
            }

            function Cp(e, t, n, r, s, i, o, a) {
                const f = Ee(),
                    g = v(),
                    D = e + 20,
                    S = g.firstCreatePass ? function(e, t, n, r, s, i, o, a, f) {
                        const g = t.consts,
                            D = Co(t, e, 4, o || null, Bn(g, a));
                        ac(t, n, D, Bn(g, f)), Kr(t, D);
                        const S = D.tViews = Nl(2, D, r, s, i, t.directiveRegistry, t.pipeRegistry, null, t.schemas, g);
                        return null !== t.queries && (t.queries.template(t, D), S.queries = t.queries.embeddedTView(D)), D
                    }(D, g, f, t, n, r, s, i, o) : g.data[D];
                M(S, !1);
                const R = f[11].createComment("");
                Il(g, f, R, S), Jn(R, f), Ol(f, f[D] = kh(R, f, R, S)), ws(S) && ic(g, f, S), null != o && oc(f, S, a)
            }

            function Ma(e, t = N.Default) {
                const n = Ee();
                return null === n ? Mn(e, t) : ul(u(), n, me(e), t)
            }

            function xp() {
                throw new Error("invalid")
            }

            function Mc(e, t, n) {
                const r = Ee();
                return Xn(r, et(), t) && Lr(v(), Mt(), r, e, t, r[11], n, !1), Mc
            }

            function Rc(e, t, n, r, s) {
                const o = s ? "class" : "style";
                $h(e, n, t.inputs[o], o, r)
            }

            function Pc(e, t, n, r) {
                const s = Ee(),
                    i = v(),
                    o = 20 + e,
                    a = s[11],
                    f = s[o] = Hu(a, t, Je.lFrame.currentNamespace),
                    g = i.firstCreatePass ? function(e, t, n, r, s, i, o) {
                        const a = t.consts,
                            g = Co(t, e, 2, s, Bn(a, i));
                        return ac(t, n, g, Bn(a, o)), null !== g.attrs && xl(g, g.attrs, !1), null !== g.mergedAttrs && xl(g, g.mergedAttrs, !0), null !== t.queries && t.queries.elementStart(t, g), g
                    }(o, i, s, 0, t, n, r) : i.data[o];
                M(g, !0);
                const D = g.mergedAttrs;
                null !== D && io(a, f, D);
                const S = g.classes;
                null !== S && Qu(a, f, S);
                const R = g.styles;
                null !== R && oh(a, f, R), 64 != (64 & g.flags) && Il(i, s, f, g), 0 === Je.lFrame.elementDepthCount && Jn(f, s), Je.lFrame.elementDepthCount++, ws(g) && (ic(i, s, g), Sh(i, g, s)), null !== r && oc(s, g)
            }

            function Nc() {
                let e = u();
                F() ? V() : (e = e.parent, M(e, !1));
                const t = e;
                Je.lFrame.elementDepthCount--;
                const n = v();
                n.firstCreatePass && (Kr(n, e), _i(e) && n.queries.elementEnd(e)), null != t.classesWithoutHost && function(e) {
                    return 0 != (16 & e.flags)
                }(t) && Rc(n, t, Ee(), t.classesWithoutHost, !0), null != t.stylesWithoutHost && function(e) {
                    return 0 != (32 & e.flags)
                }(t) && Rc(n, t, Ee(), t.stylesWithoutHost, !1)
            }

            function Fp(e, t, n, r) {
                Pc(e, t, n, r), Nc()
            }

            function Vp(e, t, n) {
                (function(e, t, n) {
                    const r = Ee(),
                        s = v(),
                        i = e + 20,
                        o = s.firstCreatePass ? function(e, t, n, r, s) {
                            const i = t.consts,
                                o = Bn(i, r),
                                a = Co(t, e, 8, "ng-container", o);
                            return null !== o && xl(a, o, !0), ac(t, n, a, Bn(i, s)), null !== t.queries && t.queries.elementStart(t, a), a
                        }(i, s, r, t, n) : s.data[i];
                    M(o, !0);
                    const a = r[i] = r[11].createComment("");
                    Il(s, r, a, o), Jn(a, r), ws(o) && (ic(s, r, o), Sh(s, o, r)), null != n && oc(r, o)
                })(e, t, n),
                function() {
                    let e = u();
                    const t = v();
                    F() ? V() : (e = e.parent, M(e, !1)), t.firstCreatePass && (Kr(t, e), _i(e) && t.queries.elementEnd(e))
                }()
            }

            function Bp() {
                return Ee()
            }

            function Oc(e) {
                return !!e && "function" == typeof e.then
            }

            function jp(e) {
                return !!e && "function" == typeof e.subscribe
            }
            const xc = jp;

            function Fc(e, t, n, r) {
                const s = Ee(),
                    i = v(),
                    o = u();
                return Up(i, s, s[11], o, e, t, !!n, r), Fc
            }

            function Lc(e, t) {
                const n = u(),
                    r = Ee(),
                    s = v();
                return Up(s, r, Uh(Zn(s.data), n, r), n, e, t, !1), Lc
            }

            function Up(e, t, n, r, s, i, o, a) {
                const f = ws(r),
                    D = e.firstCreatePass && jh(e),
                    S = t[8],
                    R = Bh(t);
                let L = !0;
                if (3 & r.type || a) {
                    const K = wt(r, t),
                        Se = a ? a(K) : K,
                        le = R.length,
                        Qe = a ? ft => a(q(ft[r.index])) : r.index;
                    if (y(n)) {
                        let ft = null;
                        if (!a && f && (ft = function(e, t, n, r) {
                                const s = e.cleanup;
                                if (null != s)
                                    for (let i = 0; i < s.length - 1; i += 2) {
                                        const o = s[i];
                                        if (o === n && s[i + 1] === r) {
                                            const a = t[7],
                                                f = s[i + 2];
                                            return a.length > f ? a[f] : null
                                        }
                                        "string" == typeof o && (i += 2)
                                    }
                                return null
                            }(e, t, s, r.index)), null !== ft)(ft.__ngLastListenerFn__ || ft).__ngNextListenerFn__ = i, ft.__ngLastListenerFn__ = i, L = !1;
                        else {
                            i = kc(r, t, S, i, !1);
                            const It = n.listen(Se, s, i);
                            R.push(i, It), D && D.push(s, Qe, le, le + 1)
                        }
                    } else i = kc(r, t, S, i, !0), Se.addEventListener(s, i, o), R.push(i), D && D.push(s, Qe, le, o)
                } else i = kc(r, t, S, i, !1);
                const H = r.outputs;
                let J;
                if (L && null !== H && (J = H[s])) {
                    const K = J.length;
                    if (K)
                        for (let Se = 0; Se < K; Se += 2) {
                            const Pn = t[J[Se]][J[Se + 1]].subscribe(i),
                                ts = R.length;
                            R.push(i, Pn), D && D.push(s, r.index, ts, -(ts + 1))
                        }
                }
            }

            function Hp(e, t, n, r) {
                try {
                    return !1 !== n(r)
                } catch (s) {
                    return Hh(e, s), !1
                }
            }

            function kc(e, t, n, r, s) {
                return function i(o) {
                    if (o === Function) return r;
                    const a = 2 & e.flags ? ht(e.index, t) : t;
                    0 == (32 & t[2]) && cc(a);
                    let f = Hp(t, 0, r, o),
                        g = i.__ngNextListenerFn__;
                    for (; g;) f = Hp(t, 0, g, o) && f, g = g.__ngNextListenerFn__;
                    return s && !1 === f && (o.preventDefault(), o.returnValue = !1), f
                }
            }

            function $p(e = 1) {
                return function(e) {
                    return (Je.lFrame.contextLView = function(e, t) {
                        for (; e > 0;) t = t[15], e--;
                        return t
                    }(e, Je.lFrame.contextLView))[8]
                }(e)
            }

            function Xv(e, t) {
                let n = null;
                const r = function(e) {
                    const t = e.attrs;
                    if (null != t) {
                        const n = t.indexOf(5);
                        if (0 == (1 & n)) return t[n + 1]
                    }
                    return null
                }(e);
                for (let s = 0; s < t.length; s++) {
                    const i = t[s];
                    if ("*" !== i) {
                        if (null === r ? ch(e, i, !0) : sD(r, i)) return s
                    } else n = s
                }
                return n
            }

            function zp(e) {
                const t = Ee()[16][6];
                if (!t.projection) {
                    const r = t.projection = bi(e ? e.length : 1, null),
                        s = r.slice();
                    let i = t.child;
                    for (; null !== i;) {
                        const o = e ? Xv(i, e) : 0;
                        null !== o && (s[o] ? s[o].projectionNext = i : r[o] = i, s[o] = i), i = i.next
                    }
                }
            }

            function Wp(e, t = 0, n) {
                const r = Ee(),
                    s = v(),
                    i = Co(s, 20 + e, 16, null, n || null);
                null === i.projection && (i.projection = t), V(), 64 != (64 & i.flags) && function(e, t, n) {
                    ih(t[11], 0, t, n, Yf(e, n, t), Xf(n.parent || t[6], n, t))
                }(s, r, i)
            }

            function tg(e, t, n, r, s) {
                const i = e[n + 1],
                    o = null === t;
                let a = r ? hs(i) : fi(i),
                    f = !1;
                for (; 0 !== a && (!1 === f || o);) {
                    const D = e[a + 1];
                    nC(e[a], t) && (f = !0, e[a + 1] = r ? Zu(D) : Yu(D)), a = r ? hs(D) : fi(D)
                }
                f && (e[n + 1] = r ? Yu(i) : Zu(i))
            }

            function nC(e, t) {
                return null === e || null == t || (Array.isArray(e) ? e[1] : e) === t || !(!Array.isArray(e) || "string" != typeof t) && fo(e, t) >= 0
            }
            const Rn = {
                textEnd: 0,
                key: 0,
                keyEnd: 0,
                value: 0,
                valueEnd: 0
            };

            function ng(e) {
                return e.substring(Rn.key, Rn.keyEnd)
            }

            function rg(e, t) {
                const n = Rn.textEnd;
                return n === t ? -1 : (t = Rn.keyEnd = function(e, t, n) {
                    for (; t < n && e.charCodeAt(t) > 32;) t++;
                    return t
                }(e, Rn.key = t, n), Bo(e, t, n))
            }

            function Bo(e, t, n) {
                for (; t < n && e.charCodeAt(t) <= 32;) t++;
                return t
            }

            function Bc(e, t, n) {
                return gs(e, t, n, !1), Bc
            }

            function jc(e, t) {
                return gs(e, t, null, !0), jc
            }

            function lg(e) {
                ! function(e, t, n, r) {
                    const s = v(),
                        i = ut(2);
                    s.firstUpdatePass && cg(s, null, i, r);
                    const o = Ee();
                    if (n !== Et && Xn(o, i, n)) {
                        const a = s.data[at()];
                        if (pg(a, r) && !ug(s, i)) {
                            let f = r ? a.classesWithoutHost : a.stylesWithoutHost;
                            null !== f && (n = Re(f, n || "")), Rc(s, a, o, n, r)
                        } else ! function(e, t, n, r, s, i, o, a) {
                            s === Et && (s = Ct);
                            let f = 0,
                                g = 0,
                                D = 0 < s.length ? s[0] : null,
                                S = 0 < i.length ? i[0] : null;
                            for (; null !== D || null !== S;) {
                                const R = f < s.length ? s[f + 1] : void 0,
                                    L = g < i.length ? i[g + 1] : void 0;
                                let J, H = null;
                                D === S ? (f += 2, g += 2, R !== L && (H = S, J = L)) : null === S || null !== D && D < S ? (f += 2, H = D) : (g += 2, H = S, J = L), null !== H && fg(e, t, n, r, H, J, o, a), D = f < s.length ? s[f] : null, S = g < i.length ? i[g] : null
                            }
                        }(s, a, o, o[11], o[i + 1], o[i + 1] = function(e, t, n) {
                            if (null == n || "" === n) return Ct;
                            const r = [],
                                s = di(n);
                            if (Array.isArray(s))
                                for (let i = 0; i < s.length; i++) e(r, s[i], !0);
                            else if ("object" == typeof s)
                                for (const i in s) s.hasOwnProperty(i) && e(r, i, s[i]);
                            else "string" == typeof s && t(r, s);
                            return r
                        }(e, t, n), r, i)
                    }
                }(Fr, Ys, e, !0)
            }

            function Ys(e, t) {
                for (let n = function(e) {
                        return function(e) {
                            Rn.key = 0, Rn.keyEnd = 0, Rn.value = 0, Rn.valueEnd = 0, Rn.textEnd = e.length
                        }(e), rg(e, Bo(e, 0, Rn.textEnd))
                    }(t); n >= 0; n = rg(t, n)) Fr(e, ng(t), !0)
            }

            function gs(e, t, n, r) {
                const s = Ee(),
                    i = v(),
                    o = ut(2);
                i.firstUpdatePass && cg(i, e, o, r), t !== Et && Xn(s, o, t) && fg(i, i.data[at()], s, s[11], e, s[o + 1] = function(e, t) {
                    return null == e || ("string" == typeof t ? e += t : "object" == typeof e && (e = Z(di(e)))), e
                }(t, n), r, o)
            }

            function ug(e, t) {
                return t >= e.expandoStartIndex
            }

            function cg(e, t, n, r) {
                const s = e.data;
                if (null === s[n + 1]) {
                    const i = s[at()],
                        o = ug(e, n);
                    pg(i, r) && null === t && !o && (t = !1), t = function(e, t, n, r) {
                            const s = Zn(e);
                            let i = r ? t.residualClasses : t.residualStyles;
                            if (null === s) 0 === (r ? t.classBindings : t.styleBindings) && (n = Ra(n = Uc(null, e, t, n, r), t.attrs, r), i = null);
                            else {
                                const o = t.directiveStylingLast;
                                if (-1 === o || e[o] !== s)
                                    if (n = Uc(s, e, t, n, r), null === i) {
                                        let f = function(e, t, n) {
                                            const r = n ? t.classBindings : t.styleBindings;
                                            if (0 !== fi(r)) return e[hs(r)]
                                        }(e, t, r);
                                        void 0 !== f && Array.isArray(f) && (f = Uc(null, e, t, f[1], r), f = Ra(f, t.attrs, r), function(e, t, n, r) {
                                            e[hs(n ? t.classBindings : t.styleBindings)] = r
                                        }(e, t, r, f))
                                    } else i = function(e, t, n) {
                                        let r;
                                        const s = t.directiveEnd;
                                        for (let i = 1 + t.directiveStylingLast; i < s; i++) r = Ra(r, e[i].hostAttrs, n);
                                        return Ra(r, t.attrs, n)
                                    }(e, t, r)
                            }
                            return void 0 !== i && (r ? t.residualClasses = i : t.residualStyles = i), n
                        }(s, i, t, r),
                        function(e, t, n, r, s, i) {
                            let o = i ? t.classBindings : t.styleBindings,
                                a = hs(o),
                                f = fi(o);
                            e[r] = n;
                            let D, g = !1;
                            if (Array.isArray(n)) {
                                const S = n;
                                D = S[1], (null === D || fo(S, D) > 0) && (g = !0)
                            } else D = n;
                            if (s)
                                if (0 !== f) {
                                    const R = hs(e[a + 1]);
                                    e[r + 1] = Ml(R, a), 0 !== R && (e[R + 1] = qu(e[R + 1], r)), e[a + 1] = function(e, t) {
                                        return 131071 & e | t << 17
                                    }(e[a + 1], r)
                                } else e[r + 1] = Ml(a, 0), 0 !== a && (e[a + 1] = qu(e[a + 1], r)), a = r;
                            else e[r + 1] = Ml(f, 0), 0 === a ? a = r : e[f + 1] = qu(e[f + 1], r), f = r;
                            g && (e[r + 1] = Yu(e[r + 1])), tg(e, D, r, !0), tg(e, D, r, !1),
                                function(e, t, n, r, s) {
                                    const i = s ? e.residualClasses : e.residualStyles;
                                    null != i && "string" == typeof t && fo(i, t) >= 0 && (n[r + 1] = Zu(n[r + 1]))
                                }(t, D, e, r, i), o = Ml(a, f), i ? t.classBindings = o : t.styleBindings = o
                        }(s, i, t, n, o, r)
                }
            }

            function Uc(e, t, n, r, s) {
                let i = null;
                const o = n.directiveEnd;
                let a = n.directiveStylingLast;
                for (-1 === a ? a = n.directiveStart : a++; a < o && (i = t[a], r = Ra(r, i.hostAttrs, s), i !== e);) a++;
                return null !== e && (n.directiveStylingLast = a), r
            }

            function Ra(e, t, n) {
                const r = n ? 1 : 2;
                let s = -1;
                if (null !== t)
                    for (let i = 0; i < t.length; i++) {
                        const o = t[i];
                        "number" == typeof o ? s = o : s === r && (Array.isArray(e) || (e = void 0 === e ? [] : ["", e]), Fr(e, o, !!n || t[++i]))
                    }
                return void 0 === e ? null : e
            }

            function fg(e, t, n, r, s, i, o, a) {
                if (!(3 & t.type)) return;
                const f = e.data,
                    g = f[a + 1];
                Vl(function(e) {
                    return 1 == (1 & e)
                }(g) ? hg(f, t, n, s, fi(g), o) : void 0) || (Vl(i) || function(e) {
                    return 2 == (2 & e)
                }(g) && (i = hg(f, null, n, s, a, o)), function(e, t, n, r, s) {
                    const i = y(e);
                    if (t) s ? i ? e.addClass(n, r) : n.classList.add(r) : i ? e.removeClass(n, r) : n.classList.remove(r);
                    else {
                        let o = -1 === r.indexOf("-") ? void 0 : Ws.DashCase;
                        if (null == s) i ? e.removeStyle(n, r, o) : n.style.removeProperty(r);
                        else {
                            const a = "string" == typeof s && s.endsWith("!important");
                            a && (s = s.slice(0, -10), o |= Ws.Important), i ? e.setStyle(n, r, s, o) : n.style.setProperty(r, s, a ? "important" : "")
                        }
                    }
                }(r, o, Tt(at(), n), s, i))
            }

            function hg(e, t, n, r, s, i) {
                const o = null === t;
                let a;
                for (; s > 0;) {
                    const f = e[s],
                        g = Array.isArray(f),
                        D = g ? f[1] : f,
                        S = null === D;
                    let R = n[s + 1];
                    R === Et && (R = S ? Ct : void 0);
                    let L = S ? vu(R, r) : D === r ? R : void 0;
                    if (g && !Vl(L) && (L = vu(f, r)), Vl(L) && (a = L, o)) return a;
                    const H = e[s + 1];
                    s = o ? hs(H) : fi(H)
                }
                if (null !== t) {
                    let f = i ? t.residualClasses : t.residualStyles;
                    null != f && (a = vu(f, r))
                }
                return a
            }

            function Vl(e) {
                return void 0 !== e
            }

            function pg(e, t) {
                return 0 != (e.flags & (t ? 16 : 32))
            }

            function gg(e, t = "") {
                const n = Ee(),
                    r = v(),
                    s = e + 20,
                    i = r.firstCreatePass ? Co(r, s, 1, t, null) : r.data[s],
                    o = n[s] = function(e, t) {
                        return y(e) ? e.createText(t) : e.createTextNode(t)
                    }(n[11], t);
                Il(r, n, o, i), M(i, !1)
            }

            function Hc(e) {
                return Bl("", e, ""), Hc
            }

            function Bl(e, t, n) {
                const r = Ee(),
                    s = function(e, t, n, r) {
                        return Xn(e, et(), n) ? t + Me(n) + r : Et
                    }(r, e, t, n);
                return s !== Et && pi(r, at(), s), Bl
            }

            function $c(e, t, n) {
                const r = Ee();
                return Xn(r, et(), t) && Lr(v(), Mt(), r, e, t, r[11], n, !0), $c
            }

            function zc(e, t, n) {
                const r = Ee();
                if (Xn(r, et(), t)) {
                    const i = v(),
                        o = Mt();
                    Lr(i, o, r, e, t, Uh(Zn(i.data), o, r), n, !0)
                }
                return zc
            }
            const Yi = void 0;
            var LC = ["en", [
                    ["a", "p"],
                    ["AM", "PM"], Yi
                ],
                [
                    ["AM", "PM"], Yi, Yi
                ],
                [
                    ["S", "M", "T", "W", "T", "F", "S"],
                    ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
                    ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
                    ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
                ], Yi, [
                    ["J", "F", "M", "A", "M", "J", "J", "A", "S", "O", "N", "D"],
                    ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
                ], Yi, [
                    ["B", "A"],
                    ["BC", "AD"],
                    ["Before Christ", "Anno Domini"]
                ], 0, [6, 0],
                ["M/d/yy", "MMM d, y", "MMMM d, y", "EEEE, MMMM d, y"],
                ["h:mm a", "h:mm:ss a", "h:mm:ss a z", "h:mm:ss a zzzz"],
                ["{1}, {0}", Yi, "{1} 'at' {0}", Yi],
                [".", ",", ";", "%", "+", "-", "E", "\xd7", "\u2030", "\u221e", "NaN", ":"],
                ["#,##0.###", "#,##0%", "\xa4#,##0.00", "#E0"], "USD", "$", "US Dollar", {}, "ltr",
                function(e) {
                    const n = Math.floor(Math.abs(e)),
                        r = e.toString().replace(/^[^.]*\.?/, "").length;
                    return 1 === n && 0 === r ? 1 : 5
                }
            ];
            let jo = {};

            function Wc(e) {
                const t = function(e) {
                    return e.toLowerCase().replace(/_/g, "-")
                }(e);
                let n = xg(t);
                if (n) return n;
                const r = t.split("-")[0];
                if (n = xg(r), n) return n;
                if ("en" === r) return LC;
                throw new Error(`Missing locale data for the locale "${e}".`)
            }

            function Og(e) {
                return Wc(e)[it.PluralCase]
            }

            function xg(e) {
                return e in jo || (jo[e] = Ke.ng && Ke.ng.common && Ke.ng.common.locales && Ke.ng.common.locales[e]), jo[e]
            }
            var it = (() => ((it = it || {})[it.LocaleId = 0] = "LocaleId", it[it.DayPeriodsFormat = 1] = "DayPeriodsFormat", it[it.DayPeriodsStandalone = 2] = "DayPeriodsStandalone", it[it.DaysFormat = 3] = "DaysFormat", it[it.DaysStandalone = 4] = "DaysStandalone", it[it.MonthsFormat = 5] = "MonthsFormat", it[it.MonthsStandalone = 6] = "MonthsStandalone", it[it.Eras = 7] = "Eras", it[it.FirstDayOfWeek = 8] = "FirstDayOfWeek", it[it.WeekendRange = 9] = "WeekendRange", it[it.DateFormat = 10] = "DateFormat", it[it.TimeFormat = 11] = "TimeFormat", it[it.DateTimeFormat = 12] = "DateTimeFormat", it[it.NumberSymbols = 13] = "NumberSymbols", it[it.NumberFormats = 14] = "NumberFormats", it[it.CurrencyCode = 15] = "CurrencyCode", it[it.CurrencySymbol = 16] = "CurrencySymbol", it[it.CurrencyName = 17] = "CurrencyName", it[it.Currencies = 18] = "Currencies", it[it.Directionality = 19] = "Directionality", it[it.PluralCase = 20] = "PluralCase", it[it.ExtraData = 21] = "ExtraData", it))();
            const jl = "en-US";
            let Fg = jl;

            function Qc(e, t, n, r, s) {
                if (e = me(e), Array.isArray(e))
                    for (let i = 0; i < e.length; i++) Qc(e[i], t, n, r, s);
                else {
                    const i = v(),
                        o = Ee();
                    let a = Io(e) ? e : me(e.provide),
                        f = Kh(e);
                    const g = u(),
                        D = 1048575 & g.providerIndexes,
                        S = g.directiveStart,
                        R = g.providerIndexes >> 20;
                    if (Io(e) || !e.multi) {
                        const L = new ai(f, s, Ma),
                            H = qc(a, t, s ? D : D + R, S); - 1 === H ? (lo(li(g, o), i, a), Yc(i, e, t.length), t.push(a), g.directiveStart++, g.directiveEnd++, s && (g.providerIndexes += 1048576), n.push(L), o.push(L)) : (n[H] = L, o[H] = L)
                    } else {
                        const L = qc(a, t, D + R, S),
                            H = qc(a, t, D, D + R),
                            J = L >= 0 && n[L],
                            K = H >= 0 && n[H];
                        if (s && !K || !s && !J) {
                            lo(li(g, o), i, a);
                            const Se = function(e, t, n, r, s) {
                                const i = new ai(e, n, Ma);
                                return i.multi = [], i.index = t, i.componentProviders = 0, im(i, s, r && !n), i
                            }(s ? xb : Ob, n.length, s, r, f);
                            !s && K && (n[H].providerFactory = Se), Yc(i, e, t.length, 0), t.push(a), g.directiveStart++, g.directiveEnd++, s && (g.providerIndexes += 1048576), n.push(Se), o.push(Se)
                        } else Yc(i, e, L > -1 ? L : H, im(n[s ? H : L], f, !s && r));
                        !s && r && K && n[H].componentProviders++
                    }
                }
            }

            function Yc(e, t, n, r) {
                const s = Io(t);
                if (s || function(e) {
                        return !!e.useClass
                    }(t)) {
                    const o = (t.useClass || t).prototype.ngOnDestroy;
                    if (o) {
                        const a = e.destroyHooks || (e.destroyHooks = []);
                        if (!s && t.multi) {
                            const f = a.indexOf(n); - 1 === f ? a.push(n, [r, o]) : a[f + 1].push(r, o)
                        } else a.push(n, o)
                    }
                }
            }

            function im(e, t, n) {
                return n && e.componentProviders++, e.multi.push(t) - 1
            }

            function qc(e, t, n, r) {
                for (let s = n; s < r; s++)
                    if (t[s] === e) return s;
                return -1
            }

            function Ob(e, t, n, r) {
                return Zc(this.multi, [])
            }

            function xb(e, t, n, r) {
                const s = this.multi;
                let i;
                if (this.providerFactory) {
                    const o = this.providerFactory.componentProviders,
                        a = Ui(n, n[1], this.providerFactory.index, r);
                    i = a.slice(0, o), Zc(s, i);
                    for (let f = o; f < a.length; f++) i.push(a[f])
                } else i = [], Zc(s, i);
                return i
            }

            function Zc(e, t) {
                for (let n = 0; n < e.length; n++) t.push((0, e[n])());
                return t
            }

            function om(e, t = []) {
                return n => {
                    n.providersResolver = (r, s) => function(e, t, n) {
                        const r = v();
                        if (r.firstCreatePass) {
                            const s = Tn(e);
                            Qc(n, r.data, r.blueprint, s, !0), Qc(t, r.data, r.blueprint, s, !1)
                        }
                    }(r, s ? s(e) : e, t)
                }
            }
            class am {}
            const um = "ngComponent";
            class kb {
                resolveComponentFactory(t) {
                    throw function(e) {
                        const t = Error(`No component factory found for ${Z(e)}. Did you add it to @NgModule.entryComponents?`);
                        return t[um] = e, t
                    }(t)
                }
            }
            let Ho = (() => {
                class e {}
                return e.NULL = new kb, e
            })();

            function Wl(...e) {}

            function $o(e, t) {
                return new qs(wt(e, t))
            }
            const jb = function() {
                return $o(u(), Ee())
            };
            let qs = (() => {
                class e {
                    constructor(n) {
                        this.nativeElement = n
                    }
                }
                return e.__NG_ELEMENT_ID__ = jb, e
            })();

            function cm(e) {
                return e instanceof qs ? e.nativeElement : e
            }
            class Gl {}
            let Ub = (() => {
                class e {}
                return e.__NG_ELEMENT_ID__ = () => $b(), e
            })();
            const $b = function() {
                const e = Ee(),
                    n = ht(u().index, e);
                return function(e) {
                    return e[11]
                }(Sn(n) ? n : e)
            };
            let Xc = (() => {
                class e {}
                return e.\u0275prov = Gt({
                    token: e,
                    providedIn: "root",
                    factory: () => null
                }), e
            })();
            class dm {
                constructor(t) {
                    this.full = t, this.major = t.split(".")[0], this.minor = t.split(".")[1], this.patch = t.split(".").slice(2).join(".")
                }
            }
            const fm = new dm("13.0.0"),
                zo = {};

            function Kl(e, t, n, r, s = !1) {
                for (; null !== n;) {
                    const i = t[n.index];
                    if (null !== i && r.push(q(i)), Ln(i))
                        for (let a = 10; a < i.length; a++) {
                            const f = i[a],
                                g = f[1].firstChild;
                            null !== g && Kl(f[1], f, g, r)
                        }
                    const o = n.type;
                    if (8 & o) Kl(e, t, n.child, r);
                    else if (32 & o) {
                        const a = Vu(n, t);
                        let f;
                        for (; f = a();) r.push(f)
                    } else if (16 & o) {
                        const a = rh(t, n);
                        if (Array.isArray(a)) r.push(...a);
                        else {
                            const f = Da(t[16]);
                            Kl(f[1], f, a, r, !0)
                        }
                    }
                    n = s ? n.projectionNext : n.next
                }
                return r
            }
            class Fa {
                constructor(t, n) {
                    this._lView = t, this._cdRefInjectingView = n, this._appRef = null, this._attachedToViewContainer = !1
                }
                get rootNodes() {
                    const t = this._lView,
                        n = t[1];
                    return Kl(n, t, n.firstChild, [])
                }
                get context() {
                    return this._lView[8]
                }
                set context(t) {
                    this._lView[8] = t
                }
                get destroyed() {
                    return 256 == (256 & this._lView[2])
                }
                destroy() {
                    if (this._appRef) this._appRef.detachView(this);
                    else if (this._attachedToViewContainer) {
                        const t = this._lView[3];
                        if (Ln(t)) {
                            const n = t[8],
                                r = n ? n.indexOf(this) : -1;
                            r > -1 && ($u(t, r), zi(n, r))
                        }
                        this._attachedToViewContainer = !1
                    }
                    Qf(this._lView[1], this._lView)
                }
                onDestroy(t) {
                    Mh(this._lView[1], this._lView, null, t)
                }
                markForCheck() {
                    cc(this._cdRefInjectingView || this._lView)
                }
                detach() {
                    this._lView[2] &= -129
                }
                reattach() {
                    this._lView[2] |= 128
                }
                detectChanges() {
                    fc(this._lView[1], this._lView, this.context)
                }
                checkNoChanges() {
                    ! function(e, t, n) {
                        Be(!0);
                        try {
                            fc(e, t, n)
                        } finally {
                            Be(!1)
                        }
                    }(this._lView[1], this._lView, this.context)
                }
                attachToViewContainerRef() {
                    if (this._appRef) throw new Error("This view is already attached directly to the ApplicationRef!");
                    this._attachedToViewContainer = !0
                }
                detachFromAppRef() {
                    var t;
                    this._appRef = null, va(this._lView[1], t = this._lView, t[11], 2, null, null)
                }
                attachToAppRef(t) {
                    if (this._attachedToViewContainer) throw new Error("This view is already attached to a ViewContainer!");
                    this._appRef = t
                }
            }
            class Gb extends Fa {
                constructor(t) {
                    super(t), this._view = t
                }
                detectChanges() {
                    Vh(this._view)
                }
                checkNoChanges() {
                    ! function(e) {
                        Be(!0);
                        try {
                            Vh(e)
                        } finally {
                            Be(!1)
                        }
                    }(this._view)
                }
                get context() {
                    return null
                }
            }
            class hm extends Ho {
                constructor(t) {
                    super(), this.ngModule = t
                }
                resolveComponentFactory(t) {
                    const n = bt(t);
                    return new ed(n, this.ngModule)
                }
            }

            function pm(e) {
                const t = [];
                for (let n in e) e.hasOwnProperty(n) && t.push({
                    propName: e[n],
                    templateName: n
                });
                return t
            }
            const Qb = new rt("SCHEDULER_TOKEN", {
                providedIn: "root",
                factory: () => jf
            });
            class ed extends am {
                constructor(t, n) {
                    super(), this.componentDef = t, this.ngModule = n, this.componentType = t.type, this.selector = t.selectors.map(iD).join(","), this.ngContentSelectors = t.ngContentSelectors ? t.ngContentSelectors : [], this.isBoundToModule = !!n
                }
                get inputs() {
                    return pm(this.componentDef.inputs)
                }
                get outputs() {
                    return pm(this.componentDef.outputs)
                }
                create(t, n, r, s) {
                    const i = (s = s || this.ngModule) ? function(e, t) {
                            return {
                                get: (n, r, s) => {
                                    const i = e.get(n, zo, s);
                                    return i !== zo || r === zo ? i : t.get(n, r, s)
                                }
                            }
                        }(t, s.injector) : t,
                        o = i.get(Gl, I),
                        a = i.get(Xc, null),
                        f = o.createRenderer(null, this.componentDef),
                        g = this.componentDef.selectors[0][0] || "div",
                        D = r ? function(e, t, n) {
                            if (y(e)) return e.selectRootElement(t, n === Ot.ShadowDom);
                            let r = "string" == typeof t ? e.querySelector(t) : t;
                            return r.textContent = "", r
                        }(f, r, this.componentDef.encapsulation) : Hu(o.createRenderer(null, this.componentDef), g, function(e) {
                            const t = e.toLowerCase();
                            return "svg" === t ? Ps : "math" === t ? "http://www.w3.org/1998/MathML/" : null
                        }(g)),
                        S = this.componentDef.onPush ? 576 : 528,
                        R = function(e, t) {
                            return {
                                components: [],
                                scheduler: e || jf,
                                clean: $D,
                                playerHandler: t || null,
                                flags: 0
                            }
                        }(),
                        L = Nl(0, null, null, 1, 0, null, null, null, null, null),
                        H = Ca(null, L, R, S, null, null, o, f, a, i);
                    let J, K;
                    oi(H);
                    try {
                        const Se = function(e, t, n, r, s, i) {
                            const o = n[1];
                            n[20] = e;
                            const f = Co(o, 20, 2, "#host", null),
                                g = f.mergedAttrs = t.hostAttrs;
                            null !== g && (xl(f, g, !0), null !== e && (io(s, e, g), null !== f.classes && Qu(s, e, f.classes), null !== f.styles && oh(s, e, f.styles)));
                            const D = r.createRenderer(e, t),
                                S = Ca(n, Th(t), null, t.onPush ? 64 : 16, n[20], f, r, D, i || null, null);
                            return o.firstCreatePass && (lo(li(f, n), o, t.type), xh(o, f), Fh(f, n.length, 1)), Ol(n, S), n[20] = S
                        }(D, this.componentDef, H, o, f);
                        if (D)
                            if (r) io(f, D, ["ng-version", fm.full]);
                            else {
                                const {
                                    attrs: le,
                                    classes: Qe
                                } = function(e) {
                                    const t = [],
                                        n = [];
                                    let r = 1,
                                        s = 2;
                                    for (; r < e.length;) {
                                        let i = e[r];
                                        if ("string" == typeof i) 2 === s ? "" !== i && t.push(i, e[++r]) : 8 === s && n.push(i);
                                        else {
                                            if (!fs(s)) break;
                                            s = i
                                        }
                                        r++
                                    }
                                    return {
                                        attrs: t,
                                        classes: n
                                    }
                                }(this.componentDef.selectors[0]);
                                le && io(f, D, le), Qe && Qe.length > 0 && Qu(f, D, Qe.join(" "))
                            } if (K = yt(L, 20), void 0 !== n) {
                            const le = K.projection = [];
                            for (let Qe = 0; Qe < this.ngContentSelectors.length; Qe++) {
                                const ft = n[Qe];
                                le.push(null != ft ? Array.from(ft) : null)
                            }
                        }
                        J = function(e, t, n, r, s) {
                            const i = n[1],
                                o = function(e, t, n) {
                                    const r = u();
                                    e.firstCreatePass && (n.providersResolver && n.providersResolver(n), Lh(e, r, t, bo(e, t, 1, null), n));
                                    const s = Ui(t, e, r.directiveStart, r);
                                    Jn(s, t);
                                    const i = wt(r, t);
                                    return i && Jn(i, t), s
                                }(i, n, t);
                            if (r.components.push(o), e[8] = o, s && s.forEach(f => f(o, t)), t.contentQueries) {
                                const f = u();
                                t.contentQueries(1, o, f.directiveStart)
                            }
                            const a = u();
                            return !i.firstCreatePass || null === t.hostBindings && null === t.hostAttrs || ($t(a.index), Nh(n[1], a, 0, a.directiveStart, a.directiveEnd, t), Oh(t, o)), o
                        }(Se, this.componentDef, H, R, [gv]), ba(L, H, null)
                    } finally {
                        ke()
                    }
                    return new Zb(this.componentType, J, $o(K, H), H, K)
                }
            }
            class Zb extends class {} {
                constructor(t, n, r, s, i) {
                    super(), this.location = r, this._rootLView = s, this._tNode = i, this.instance = n, this.hostView = this.changeDetectorRef = new Gb(s), this.componentType = t
                }
                get injector() {
                    return new ui(this._tNode, this._rootLView)
                }
                destroy() {
                    this.hostView.destroy()
                }
                onDestroy(t) {
                    this.hostView.onDestroy(t)
                }
            }
            class qi {}
            class gm {}
            const Wo = new Map;
            class ym extends qi {
                constructor(t, n) {
                    super(), this._parent = n, this._bootstrapComponents = [], this.injector = this, this.destroyCbs = [], this.componentFactoryResolver = new hm(this);
                    const r = mn(t);
                    this._bootstrapComponents = zs(r.bootstrap), this._r3Injector = Gh(t, n, [{
                        provide: qi,
                        useValue: this
                    }, {
                        provide: Ho,
                        useValue: this.componentFactoryResolver
                    }], Z(t)), this._r3Injector._resolveInjectorDefTypes(), this.instance = this.get(t)
                }
                get(t, n = tn.THROW_IF_NOT_FOUND, r = N.Default) {
                    return t === tn || t === qi || t === So ? this : this._r3Injector.get(t, n, r)
                }
                destroy() {
                    const t = this._r3Injector;
                    !t.destroyed && t.destroy(), this.destroyCbs.forEach(n => n()), this.destroyCbs = null
                }
                onDestroy(t) {
                    this.destroyCbs.push(t)
                }
            }
            class nd extends gm {
                constructor(t) {
                    super(), this.moduleType = t, null !== mn(t) && function(e) {
                        const t = new Set;
                        ! function n(r) {
                            const s = mn(r, !0),
                                i = s.id;
                            null !== i && (function(e, t, n) {
                                if (t && t !== n) throw new Error(`Duplicate module registered for ${e} - ${Z(t)} vs ${Z(t.name)}`)
                            }(i, Wo.get(i), r), Wo.set(i, r));
                            const o = zs(s.imports);
                            for (const a of o) t.has(a) || (t.add(a), n(a))
                        }(e)
                    }(t)
                }
                create(t) {
                    return new ym(this.moduleType, t)
                }
            }

            function _m(e, t, n, r) {
                return function(e, t, n, r, s, i) {
                    const o = t + n;
                    return Xn(e, o, s) ? Ks(e, o + 1, i ? r.call(i, s) : r(s)) : La(e, o + 1)
                }(Ee(), Ge(), e, t, n, r)
            }

            function Em(e, t, n, r, s) {
                return Cm(Ee(), Ge(), e, t, n, r, s)
            }

            function Dm(e, t, n, r, s, i) {
                return function(e, t, n, r, s, i, o, a) {
                    const f = t + n;
                    return function(e, t, n, r, s) {
                        const i = Qi(e, t, n, r);
                        return Xn(e, t + 2, s) || i
                    }(e, f, s, i, o) ? Ks(e, f + 3, a ? r.call(a, s, i, o) : r(s, i, o)) : La(e, f + 3)
                }(Ee(), Ge(), e, t, n, r, s, i)
            }

            function La(e, t) {
                const n = e[t];
                return n === Et ? void 0 : n
            }

            function Cm(e, t, n, r, s, i, o) {
                const a = t + n;
                return Qi(e, a, s, i) ? Ks(e, a + 2, o ? r.call(o, s, i) : r(s, i)) : La(e, a + 2)
            }

            function Tm(e, t) {
                const n = v();
                let r;
                const s = e + 20;
                n.firstCreatePass ? (r = function(e, t) {
                    if (t)
                        for (let n = t.length - 1; n >= 0; n--) {
                            const r = t[n];
                            if (e === r.name) return r
                        }
                    throw new St("302", `The pipe '${e}' could not be found!`)
                }(t, n.pipeRegistry), n.data[s] = r, r.onDestroy && (n.destroyHooks || (n.destroyHooks = [])).push(s, r.onDestroy)) : r = n.data[s];
                const i = r.factory || (r.factory = dr(r.type)),
                    o = fe(Ma);
                try {
                    const a = ao(!1),
                        f = i();
                    return ao(a),
                        function(e, t, n, r) {
                            n >= e.data.length && (e.data[n] = null, e.blueprint[n] = null), t[n] = r
                        }(n, Ee(), s, f), f
                } finally {
                    fe(o)
                }
            }

            function Im(e, t, n, r) {
                const s = e + 20,
                    i = Ee(),
                    o = function(e, t) {
                        return e[t]
                    }(i, s);
                return function(e, t) {
                    return e[1].data[t].pure
                }(i, s) ? Cm(i, Ge(), t, o.transform, n, r, o) : o.transform(n, r)
            }

            function rd(e) {
                return t => {
                    setTimeout(e, void 0, t)
                }
            }
            const Zs = class extends A.xQ {
                constructor(t = !1) {
                    super(), this.__isAsync = t
                }
                emit(t) {
                    super.next(t)
                }
                subscribe(t, n, r) {
                    var f, g, D;
                    let s = t,
                        i = n || (() => null),
                        o = r;
                    if (t && "object" == typeof t) {
                        const S = t;
                        s = null == (f = S.next) ? void 0 : f.bind(S), i = null == (g = S.error) ? void 0 : g.bind(S), o = null == (D = S.complete) ? void 0 : D.bind(S)
                    }
                    this.__isAsync && (i = rd(i), s && (s = rd(s)), o && (o = rd(o)));
                    const a = super.subscribe({
                        next: s,
                        error: i,
                        complete: o
                    });
                    return t instanceof T.w && t.add(a), a
                }
            };

            function hw() {
                return this._results[Ao()]()
            }
            class Ql {
                constructor(t = !1) {
                    this._emitDistinctChangesOnly = t, this.dirty = !0, this._results = [], this._changesDetected = !1, this._changes = null, this.length = 0, this.first = void 0, this.last = void 0;
                    const n = Ao(),
                        r = Ql.prototype;
                    r[n] || (r[n] = hw)
                }
                get changes() {
                    return this._changes || (this._changes = new Zs)
                }
                get(t) {
                    return this._results[t]
                }
                map(t) {
                    return this._results.map(t)
                }
                filter(t) {
                    return this._results.filter(t)
                }
                find(t) {
                    return this._results.find(t)
                }
                reduce(t, n) {
                    return this._results.reduce(t, n)
                }
                forEach(t) {
                    this._results.forEach(t)
                }
                some(t) {
                    return this._results.some(t)
                }
                toArray() {
                    return this._results.slice()
                }
                toString() {
                    return this._results.toString()
                }
                reset(t, n) {
                    const r = this;
                    r.dirty = !1;
                    const s = qr(t);
                    (this._changesDetected = ! function(e, t, n) {
                        if (e.length !== t.length) return !1;
                        for (let r = 0; r < e.length; r++) {
                            let s = e[r],
                                i = t[r];
                            if (n && (s = n(s), i = n(i)), i !== s) return !1
                        }
                        return !0
                    }(r._results, s, n)) && (r._results = s, r.length = s.length, r.last = s[this.length - 1], r.first = s[0])
                }
                notifyOnChanges() {
                    this._changes && (this._changesDetected || !this._emitDistinctChangesOnly) && this._changes.emit(this)
                }
                setDirty() {
                    this.dirty = !0
                }
                destroy() {
                    this.changes.complete(), this.changes.unsubscribe()
                }
            }
            Symbol;
            const gw = function() {
                return Yl(u(), Ee())
            };
            let Va = (() => {
                class e {}
                return e.__NG_ELEMENT_ID__ = gw, e
            })();
            const mw = Va,
                yw = class extends mw {
                    constructor(t, n, r) {
                        super(), this._declarationLView = t, this._declarationTContainer = n, this.elementRef = r
                    }
                    createEmbeddedView(t) {
                        const n = this._declarationTContainer.tViews,
                            r = Ca(this._declarationLView, n, t, 16, null, n.declTNode, null, null, null, null);
                        r[17] = this._declarationLView[this._declarationTContainer.index];
                        const i = this._declarationLView[19];
                        return null !== i && (r[19] = i.createEmbeddedView(n)), ba(n, r, t), new Fa(r)
                    }
                };

            function Yl(e, t) {
                return 4 & e.type ? new yw(t, e, $o(e, t)) : null
            }
            const Dw = function() {
                return Rm(u(), Ee())
            };
            let ql = (() => {
                class e {}
                return e.__NG_ELEMENT_ID__ = Dw, e
            })();
            const Cw = ql,
                Am = class extends Cw {
                    constructor(t, n, r) {
                        super(), this._lContainer = t, this._hostTNode = n, this._hostLView = r
                    }
                    get element() {
                        return $o(this._hostTNode, this._hostLView)
                    }
                    get injector() {
                        return new ui(this._hostTNode, this._hostLView)
                    }
                    get parentInjector() {
                        const t = ji(this._hostTNode, this._hostLView);
                        if (nl(t)) {
                            const n = Bs(t, this._hostLView),
                                r = cs(t);
                            return new ui(n[1].data[r + 8], n)
                        }
                        return new ui(null, this._hostLView)
                    }
                    clear() {
                        for (; this.length > 0;) this.remove(this.length - 1)
                    }
                    get(t) {
                        const n = Mm(this._lContainer);
                        return null !== n && n[t] || null
                    }
                    get length() {
                        return this._lContainer.length - 10
                    }
                    createEmbeddedView(t, n, r) {
                        const s = t.createEmbeddedView(n || {});
                        return this.insert(s, r), s
                    }
                    createComponent(t, n, r, s, i) {
                        const o = t && !("function" == typeof t);
                        let a;
                        if (o) a = n;
                        else {
                            const S = n || {};
                            a = S.index, r = S.injector, s = S.projectableNodes, i = S.ngModuleRef
                        }
                        const f = o ? t : new ed(bt(t)),
                            g = r || this.parentInjector;
                        if (!i && null == f.ngModule && g) {
                            const S = g.get(qi, null);
                            S && (i = S)
                        }
                        const D = f.create(g, s, void 0, i);
                        return this.insert(D.hostView, a), D
                    }
                    insert(t, n) {
                        const r = t._lView,
                            s = r[1];
                        if (Ln(r[3])) {
                            const D = this.indexOf(t);
                            if (-1 !== D) this.detach(D);
                            else {
                                const S = r[3],
                                    R = new Am(S, S[6], S[3]);
                                R.detach(R.indexOf(t))
                            }
                        }
                        const i = this._adjustIndex(n),
                            o = this._lContainer;
                        ! function(e, t, n, r) {
                            const s = 10 + r,
                                i = n.length;
                            r > 0 && (n[s - 1][4] = t), r < i - 10 ? (t[4] = n[s], yl(n, 10 + r, t)) : (n.push(t), t[4] = null), t[3] = n;
                            const o = t[17];
                            null !== o && n !== o && function(e, t) {
                                const n = e[9];
                                t[16] !== t[3][3][16] && (e[2] = !0), null === n ? e[9] = [t] : n.push(t)
                            }(o, t);
                            const a = t[19];
                            null !== a && a.insertView(e), t[2] |= 128
                        }(s, r, o, i);
                        const a = Gu(i, o),
                            f = r[11],
                            g = Tl(f, o[7]);
                        return null !== g && function(e, t, n, r, s, i) {
                            r[0] = s, r[6] = t, va(e, r, n, 1, s, i)
                        }(s, o[6], f, r, g, a), t.attachToViewContainerRef(), yl(sd(o), i, t), t
                    }
                    move(t, n) {
                        return this.insert(t, n)
                    }
                    indexOf(t) {
                        const n = Mm(this._lContainer);
                        return null !== n ? n.indexOf(t) : -1
                    }
                    remove(t) {
                        const n = this._adjustIndex(t, -1),
                            r = $u(this._lContainer, n);
                        r && (zi(sd(this._lContainer), n), Qf(r[1], r))
                    }
                    detach(t) {
                        const n = this._adjustIndex(t, -1),
                            r = $u(this._lContainer, n);
                        return r && null != zi(sd(this._lContainer), n) ? new Fa(r) : null
                    }
                    _adjustIndex(t, n = 0) {
                        return null == t ? this.length + n : t
                    }
                };

            function Mm(e) {
                return e[8]
            }

            function sd(e) {
                return e[8] || (e[8] = [])
            }

            function Rm(e, t) {
                let n;
                const r = t[e.index];
                if (Ln(r)) n = r;
                else {
                    let s;
                    if (8 & e.type) s = q(r);
                    else {
                        const i = t[11];
                        s = i.createComment("");
                        const o = wt(e, t);
                        Ki(i, Tl(i, o), s, function(e, t) {
                            return y(e) ? e.nextSibling(t) : t.nextSibling
                        }(i, o), !1)
                    }
                    t[e.index] = n = kh(r, t, s, e), Ol(t, n)
                }
                return new Am(n, e, t)
            }
            class id {
                constructor(t) {
                    this.queryList = t, this.matches = null
                }
                clone() {
                    return new id(this.queryList)
                }
                setDirty() {
                    this.queryList.setDirty()
                }
            }
            class od {
                constructor(t = []) {
                    this.queries = t
                }
                createEmbeddedView(t) {
                    const n = t.queries;
                    if (null !== n) {
                        const r = null !== t.contentQueries ? t.contentQueries[0] : n.length,
                            s = [];
                        for (let i = 0; i < r; i++) {
                            const o = n.getByIndex(i);
                            s.push(this.queries[o.indexInDeclarationView].clone())
                        }
                        return new od(s)
                    }
                    return null
                }
                insertView(t) {
                    this.dirtyQueriesWithMatches(t)
                }
                detachView(t) {
                    this.dirtyQueriesWithMatches(t)
                }
                dirtyQueriesWithMatches(t) {
                    for (let n = 0; n < this.queries.length; n++) null !== Bm(t, n).matches && this.queries[n].setDirty()
                }
            }
            class Pm {
                constructor(t, n, r = null) {
                    this.predicate = t, this.flags = n, this.read = r
                }
            }
            class ad {
                constructor(t = []) {
                    this.queries = t
                }
                elementStart(t, n) {
                    for (let r = 0; r < this.queries.length; r++) this.queries[r].elementStart(t, n)
                }
                elementEnd(t) {
                    for (let n = 0; n < this.queries.length; n++) this.queries[n].elementEnd(t)
                }
                embeddedTView(t) {
                    let n = null;
                    for (let r = 0; r < this.length; r++) {
                        const s = null !== n ? n.length : 0,
                            i = this.getByIndex(r).embeddedTView(t, s);
                        i && (i.indexInDeclarationView = r, null !== n ? n.push(i) : n = [i])
                    }
                    return null !== n ? new ad(n) : null
                }
                template(t, n) {
                    for (let r = 0; r < this.queries.length; r++) this.queries[r].template(t, n)
                }
                getByIndex(t) {
                    return this.queries[t]
                }
                get length() {
                    return this.queries.length
                }
                track(t) {
                    this.queries.push(t)
                }
            }
            class ld {
                constructor(t, n = -1) {
                    this.metadata = t, this.matches = null, this.indexInDeclarationView = -1, this.crossesNgTemplate = !1, this._appliesToNextNode = !0, this._declarationNodeIndex = n
                }
                elementStart(t, n) {
                    this.isApplyingToNode(n) && this.matchTNode(t, n)
                }
                elementEnd(t) {
                    this._declarationNodeIndex === t.index && (this._appliesToNextNode = !1)
                }
                template(t, n) {
                    this.elementStart(t, n)
                }
                embeddedTView(t, n) {
                    return this.isApplyingToNode(t) ? (this.crossesNgTemplate = !0, this.addMatch(-t.index, n), new ld(this.metadata)) : null
                }
                isApplyingToNode(t) {
                    if (this._appliesToNextNode && 1 != (1 & this.metadata.flags)) {
                        const n = this._declarationNodeIndex;
                        let r = t.parent;
                        for (; null !== r && 8 & r.type && r.index !== n;) r = r.parent;
                        return n === (null !== r ? r.index : -1)
                    }
                    return this._appliesToNextNode
                }
                matchTNode(t, n) {
                    const r = this.metadata.predicate;
                    if (Array.isArray(r))
                        for (let s = 0; s < r.length; s++) {
                            const i = r[s];
                            this.matchTNodeWithReadOption(t, n, Sw(n, i)), this.matchTNodeWithReadOption(t, n, uo(n, t, i, !1, !1))
                        } else r === Va ? 4 & n.type && this.matchTNodeWithReadOption(t, n, -1) : this.matchTNodeWithReadOption(t, n, uo(n, t, r, !1, !1))
                }
                matchTNodeWithReadOption(t, n, r) {
                    if (null !== r) {
                        const s = this.metadata.read;
                        if (null !== s)
                            if (s === qs || s === ql || s === Va && 4 & n.type) this.addMatch(n.index, -2);
                            else {
                                const i = uo(n, t, s, !1, !1);
                                null !== i && this.addMatch(n.index, i)
                            }
                        else this.addMatch(n.index, r)
                    }
                }
                addMatch(t, n) {
                    null === this.matches ? this.matches = [t, n] : this.matches.push(t, n)
                }
            }

            function Sw(e, t) {
                const n = e.localNames;
                if (null !== n)
                    for (let r = 0; r < n.length; r += 2)
                        if (n[r] === t) return n[r + 1];
                return null
            }

            function Iw(e, t, n, r) {
                return -1 === n ? function(e, t) {
                    return 11 & e.type ? $o(e, t) : 4 & e.type ? Yl(e, t) : null
                }(t, e) : -2 === n ? function(e, t, n) {
                    return n === qs ? $o(t, e) : n === Va ? Yl(t, e) : n === ql ? Rm(t, e) : void 0
                }(e, t, r) : Ui(e, e[1], n, t)
            }

            function Nm(e, t, n, r) {
                const s = t[19].queries[r];
                if (null === s.matches) {
                    const i = e.data,
                        o = n.matches,
                        a = [];
                    for (let f = 0; f < o.length; f += 2) {
                        const g = o[f];
                        a.push(g < 0 ? null : Iw(t, i[g], o[f + 1], n.metadata.read))
                    }
                    s.matches = a
                }
                return s.matches
            }

            function ud(e, t, n, r) {
                const s = e.queries.getByIndex(n),
                    i = s.matches;
                if (null !== i) {
                    const o = Nm(e, t, s, n);
                    for (let a = 0; a < i.length; a += 2) {
                        const f = i[a];
                        if (f > 0) r.push(o[a / 2]);
                        else {
                            const g = i[a + 1],
                                D = t[-f];
                            for (let S = 10; S < D.length; S++) {
                                const R = D[S];
                                R[17] === R[3] && ud(R[1], R, g, r)
                            }
                            if (null !== D[9]) {
                                const S = D[9];
                                for (let R = 0; R < S.length; R++) {
                                    const L = S[R];
                                    ud(L[1], L, g, r)
                                }
                            }
                        }
                    }
                }
                return r
            }

            function Om(e) {
                const t = Ee(),
                    n = v(),
                    r = Dn();
                In(r + 1);
                const s = Bm(n, r);
                if (e.dirty && en(t) === (2 == (2 & s.metadata.flags))) {
                    if (null === s.matches) e.reset([]);
                    else {
                        const i = s.crossesNgTemplate ? ud(n, t, r, []) : Nm(n, t, s, r);
                        e.reset(i, cm), e.notifyOnChanges()
                    }
                    return !0
                }
                return !1
            }

            function xm(e, t, n) {
                const r = v();
                r.firstCreatePass && (Vm(r, new Pm(e, t, n), -1), 2 == (2 & t) && (r.staticViewQueries = !0)), km(r, Ee(), t)
            }

            function Fm(e, t, n, r) {
                const s = v();
                if (s.firstCreatePass) {
                    const i = u();
                    Vm(s, new Pm(t, n, r), i.index),
                        function(e, t) {
                            const n = e.contentQueries || (e.contentQueries = []);
                            t !== (n.length ? n[n.length - 1] : -1) && n.push(e.queries.length - 1, t)
                        }(s, e), 2 == (2 & n) && (s.staticContentQueries = !0)
                }
                km(s, Ee(), n)
            }

            function Lm() {
                return e = Ee(), t = Dn(), e[19].queries[t].queryList;
                var e, t
            }

            function km(e, t, n) {
                const r = new Ql(4 == (4 & n));
                Mh(e, t, r, r.destroy), null === t[19] && (t[19] = new od), t[19].queries.push(new id(r))
            }

            function Vm(e, t, n) {
                null === e.queries && (e.queries = new ad), e.queries.track(new ld(t, n))
            }

            function Bm(e, t) {
                return e.queries.getByIndex(t)
            }
            const Yw = j("Input", e => ({
                    bindingPropertyName: e
                })),
                qw = j("Output", e => ({
                    bindingPropertyName: e
                })),
                gd = new rt("Application Initializer");
            let Ko = (() => {
                class e {
                    constructor(n) {
                        this.appInits = n, this.resolve = Wl, this.reject = Wl, this.initialized = !1, this.done = !1, this.donePromise = new Promise((r, s) => {
                            this.resolve = r, this.reject = s
                        })
                    }
                    runInitializers() {
                        if (this.initialized) return;
                        const n = [],
                            r = () => {
                                this.done = !0, this.resolve()
                            };
                        if (this.appInits)
                            for (let s = 0; s < this.appInits.length; s++) {
                                const i = this.appInits[s]();
                                if (Oc(i)) n.push(i);
                                else if (xc(i)) {
                                    const o = new Promise((a, f) => {
                                        i.subscribe({
                                            complete: a,
                                            error: f
                                        })
                                    });
                                    n.push(o)
                                }
                            }
                        Promise.all(n).then(() => {
                            r()
                        }).catch(s => {
                            this.reject(s)
                        }), 0 === n.length && r(), this.initialized = !0
                    }
                }
                return e.\u0275fac = function(n) {
                    return new(n || e)(Mn(gd, 8))
                }, e.\u0275prov = Gt({
                    token: e,
                    factory: e.\u0275fac
                }), e
            })();
            const ry = new rt("AppId"),
                a0 = {
                    provide: ry,
                    useFactory: function() {
                        return `${md()}${md()}${md()}`
                    },
                    deps: []
                };

            function md() {
                return String.fromCharCode(97 + Math.floor(25 * Math.random()))
            }
            const sy = new rt("Platform Initializer"),
                iy = new rt("Platform ID"),
                oy = new rt("appBootstrapListener");
            let ay = (() => {
                class e {
                    log(n) {
                        console.log(n)
                    }
                    warn(n) {
                        console.warn(n)
                    }
                }
                return e.\u0275fac = function(n) {
                    return new(n || e)
                }, e.\u0275prov = Gt({
                    token: e,
                    factory: e.\u0275fac
                }), e
            })();
            const Xl = new rt("LocaleId"),
                ly = new rt("DefaultCurrencyCode");
            class u0 {
                constructor(t, n) {
                    this.ngModuleFactory = t, this.componentFactories = n
                }
            }
            const yd = function(e) {
                    return new nd(e)
                },
                c0 = yd,
                d0 = function(e) {
                    return Promise.resolve(yd(e))
                },
                cy = function(e) {
                    const t = yd(e),
                        r = zs(mn(e).declarations).reduce((s, i) => {
                            const o = bt(i);
                            return o && s.push(new ed(o)), s
                        }, []);
                    return new u0(t, r)
                },
                f0 = cy,
                h0 = function(e) {
                    return Promise.resolve(cy(e))
                };
            let _d = (() => {
                class e {
                    constructor() {
                        this.compileModuleSync = c0, this.compileModuleAsync = d0, this.compileModuleAndAllComponentsSync = f0, this.compileModuleAndAllComponentsAsync = h0
                    }
                    clearCache() {}
                    clearCacheFor(n) {}
                    getModuleId(n) {}
                }
                return e.\u0275fac = function(n) {
                    return new(n || e)
                }, e.\u0275prov = Gt({
                    token: e,
                    factory: e.\u0275fac
                }), e
            })();
            const m0 = (() => Promise.resolve(0))();

            function Ed(e) {
                "undefined" == typeof Zone ? m0.then(() => {
                    e && e.apply(null, null)
                }) : Zone.current.scheduleMicroTask("scheduleMicrotask", e)
            }
            class kr {
                constructor({
                    enableLongStackTrace: t = !1,
                    shouldCoalesceEventChangeDetection: n = !1,
                    shouldCoalesceRunChangeDetection: r = !1
                }) {
                    if (this.hasPendingMacrotasks = !1, this.hasPendingMicrotasks = !1, this.isStable = !0, this.onUnstable = new Zs(!1), this.onMicrotaskEmpty = new Zs(!1), this.onStable = new Zs(!1), this.onError = new Zs(!1), "undefined" == typeof Zone) throw new Error("In this configuration Angular requires Zone.js");
                    Zone.assertZonePatched();
                    const s = this;
                    s._nesting = 0, s._outer = s._inner = Zone.current, Zone.TaskTrackingZoneSpec && (s._inner = s._inner.fork(new Zone.TaskTrackingZoneSpec)), t && Zone.longStackTraceZoneSpec && (s._inner = s._inner.fork(Zone.longStackTraceZoneSpec)), s.shouldCoalesceEventChangeDetection = !r && n, s.shouldCoalesceRunChangeDetection = r, s.lastRequestAnimationFrameId = -1, s.nativeRequestAnimationFrame = function() {
                            let e = Ke.requestAnimationFrame,
                                t = Ke.cancelAnimationFrame;
                            if ("undefined" != typeof Zone && e && t) {
                                const n = e[Zone.__symbol__("OriginalDelegate")];
                                n && (e = n);
                                const r = t[Zone.__symbol__("OriginalDelegate")];
                                r && (t = r)
                            }
                            return {
                                nativeRequestAnimationFrame: e,
                                nativeCancelAnimationFrame: t
                            }
                        }().nativeRequestAnimationFrame,
                        function(e) {
                            const t = () => {
                                ! function(e) {
                                    e.isCheckStableRunning || -1 !== e.lastRequestAnimationFrameId || (e.lastRequestAnimationFrameId = e.nativeRequestAnimationFrame.call(Ke, () => {
                                        e.fakeTopEventTask || (e.fakeTopEventTask = Zone.root.scheduleEventTask("fakeTopEventTask", () => {
                                            e.lastRequestAnimationFrameId = -1, vd(e), e.isCheckStableRunning = !0, Dd(e), e.isCheckStableRunning = !1
                                        }, void 0, () => {}, () => {})), e.fakeTopEventTask.invoke()
                                    }), vd(e))
                                }(e)
                            };
                            e._inner = e._inner.fork({
                                name: "angular",
                                properties: {
                                    isAngularZone: !0
                                },
                                onInvokeTask: (n, r, s, i, o, a) => {
                                    try {
                                        return dy(e), n.invokeTask(s, i, o, a)
                                    } finally {
                                        (e.shouldCoalesceEventChangeDetection && "eventTask" === i.type || e.shouldCoalesceRunChangeDetection) && t(), fy(e)
                                    }
                                },
                                onInvoke: (n, r, s, i, o, a, f) => {
                                    try {
                                        return dy(e), n.invoke(s, i, o, a, f)
                                    } finally {
                                        e.shouldCoalesceRunChangeDetection && t(), fy(e)
                                    }
                                },
                                onHasTask: (n, r, s, i) => {
                                    n.hasTask(s, i), r === s && ("microTask" == i.change ? (e._hasPendingMicrotasks = i.microTask, vd(e), Dd(e)) : "macroTask" == i.change && (e.hasPendingMacrotasks = i.macroTask))
                                },
                                onHandleError: (n, r, s, i) => (n.handleError(s, i), e.runOutsideAngular(() => e.onError.emit(i)), !1)
                            })
                        }(s)
                }
                static isInAngularZone() {
                    return !0 === Zone.current.get("isAngularZone")
                }
                static assertInAngularZone() {
                    if (!kr.isInAngularZone()) throw new Error("Expected to be in Angular Zone, but it is not!")
                }
                static assertNotInAngularZone() {
                    if (kr.isInAngularZone()) throw new Error("Expected to not be in Angular Zone, but it is!")
                }
                run(t, n, r) {
                    return this._inner.run(t, n, r)
                }
                runTask(t, n, r, s) {
                    const i = this._inner,
                        o = i.scheduleEventTask("NgZoneEvent: " + s, t, _0, Wl, Wl);
                    try {
                        return i.runTask(o, n, r)
                    } finally {
                        i.cancelTask(o)
                    }
                }
                runGuarded(t, n, r) {
                    return this._inner.runGuarded(t, n, r)
                }
                runOutsideAngular(t) {
                    return this._outer.run(t)
                }
            }
            const _0 = {};

            function Dd(e) {
                if (0 == e._nesting && !e.hasPendingMicrotasks && !e.isStable) try {
                    e._nesting++, e.onMicrotaskEmpty.emit(null)
                } finally {
                    if (e._nesting--, !e.hasPendingMicrotasks) try {
                        e.runOutsideAngular(() => e.onStable.emit(null))
                    } finally {
                        e.isStable = !0
                    }
                }
            }

            function vd(e) {
                e.hasPendingMicrotasks = !!(e._hasPendingMicrotasks || (e.shouldCoalesceEventChangeDetection || e.shouldCoalesceRunChangeDetection) && -1 !== e.lastRequestAnimationFrameId)
            }

            function dy(e) {
                e._nesting++, e.isStable && (e.isStable = !1, e.onUnstable.emit(null))
            }

            function fy(e) {
                e._nesting--, Dd(e)
            }
            class v0 {
                constructor() {
                    this.hasPendingMicrotasks = !1, this.hasPendingMacrotasks = !1, this.isStable = !0, this.onUnstable = new Zs, this.onMicrotaskEmpty = new Zs, this.onStable = new Zs, this.onError = new Zs
                }
                run(t, n, r) {
                    return t.apply(n, r)
                }
                runGuarded(t, n, r) {
                    return t.apply(n, r)
                }
                runOutsideAngular(t) {
                    return t()
                }
                runTask(t, n, r, s) {
                    return t.apply(n, r)
                }
            }
            let hy = (() => {
                    class e {
                        constructor(n) {
                            this._ngZone = n, this._pendingCount = 0, this._isZoneStable = !0, this._didWork = !1, this._callbacks = [], this.taskTrackingZone = null, this._watchAngularEvents(), n.run(() => {
                                this.taskTrackingZone = "undefined" == typeof Zone ? null : Zone.current.get("TaskTrackingZone")
                            })
                        }
                        _watchAngularEvents() {
                            this._ngZone.onUnstable.subscribe({
                                next: () => {
                                    this._didWork = !0, this._isZoneStable = !1
                                }
                            }), this._ngZone.runOutsideAngular(() => {
                                this._ngZone.onStable.subscribe({
                                    next: () => {
                                        kr.assertNotInAngularZone(), Ed(() => {
                                            this._isZoneStable = !0, this._runCallbacksIfReady()
                                        })
                                    }
                                })
                            })
                        }
                        increasePendingRequestCount() {
                            return this._pendingCount += 1, this._didWork = !0, this._pendingCount
                        }
                        decreasePendingRequestCount() {
                            if (this._pendingCount -= 1, this._pendingCount < 0) throw new Error("pending async requests below zero");
                            return this._runCallbacksIfReady(), this._pendingCount
                        }
                        isStable() {
                            return this._isZoneStable && 0 === this._pendingCount && !this._ngZone.hasPendingMacrotasks
                        }
                        _runCallbacksIfReady() {
                            if (this.isStable()) Ed(() => {
                                for (; 0 !== this._callbacks.length;) {
                                    let n = this._callbacks.pop();
                                    clearTimeout(n.timeoutId), n.doneCb(this._didWork)
                                }
                                this._didWork = !1
                            });
                            else {
                                let n = this.getPendingTasks();
                                this._callbacks = this._callbacks.filter(r => !r.updateCb || !r.updateCb(n) || (clearTimeout(r.timeoutId), !1)), this._didWork = !0
                            }
                        }
                        getPendingTasks() {
                            return this.taskTrackingZone ? this.taskTrackingZone.macroTasks.map(n => ({
                                source: n.source,
                                creationLocation: n.creationLocation,
                                data: n.data
                            })) : []
                        }
                        addCallback(n, r, s) {
                            let i = -1;
                            r && r > 0 && (i = setTimeout(() => {
                                this._callbacks = this._callbacks.filter(o => o.timeoutId !== i), n(this._didWork, this.getPendingTasks())
                            }, r)), this._callbacks.push({
                                doneCb: n,
                                timeoutId: i,
                                updateCb: s
                            })
                        }
                        whenStable(n, r, s) {
                            if (s && !this.taskTrackingZone) throw new Error('Task tracking zone is required when passing an update callback to whenStable(). Is "zone.js/plugins/task-tracking" loaded?');
                            this.addCallback(n, r, s), this._runCallbacksIfReady()
                        }
                        getPendingRequestCount() {
                            return this._pendingCount
                        }
                        findProviders(n, r, s) {
                            return []
                        }
                    }
                    return e.\u0275fac = function(n) {
                        return new(n || e)(Mn(kr))
                    }, e.\u0275prov = Gt({
                        token: e,
                        factory: e.\u0275fac
                    }), e
                })(),
                py = (() => {
                    class e {
                        constructor() {
                            this._applications = new Map, Cd.addToWindow(this)
                        }
                        registerApplication(n, r) {
                            this._applications.set(n, r)
                        }
                        unregisterApplication(n) {
                            this._applications.delete(n)
                        }
                        unregisterAllApplications() {
                            this._applications.clear()
                        }
                        getTestability(n) {
                            return this._applications.get(n) || null
                        }
                        getAllTestabilities() {
                            return Array.from(this._applications.values())
                        }
                        getAllRootElements() {
                            return Array.from(this._applications.keys())
                        }
                        findTestabilityInTree(n, r = !0) {
                            return Cd.findTestabilityInTree(this, n, r)
                        }
                    }
                    return e.\u0275fac = function(n) {
                        return new(n || e)
                    }, e.\u0275prov = Gt({
                        token: e,
                        factory: e.\u0275fac
                    }), e
                })();
            class C0 {
                addToWindow(t) {}
                findTestabilityInTree(t, n, r) {
                    return null
                }
            }

            function b0(e) {
                Cd = e
            }
            let Cd = new C0,
                gy = !0,
                my = !1;

            function bd() {
                return my = !0, gy
            }

            function w0() {
                if (my) throw new Error("Cannot enable prod mode after platform setup.");
                gy = !1
            }
            let ys;
            const yy = new rt("AllowMultipleToken");
            class P0 {
                constructor(t, n) {
                    this.name = t, this.token = n
                }
            }

            function _y(e, t, n = []) {
                const r = `Platform: ${t}`,
                    s = new rt(r);
                return (i = []) => {
                    let o = Ey();
                    if (!o || o.injector.get(yy, !1))
                        if (e) e(n.concat(i).concat({
                            provide: s,
                            useValue: !0
                        }));
                        else {
                            const a = n.concat(i).concat({
                                provide: s,
                                useValue: !0
                            }, {
                                provide: wa,
                                useValue: "platform"
                            });
                            ! function(e) {
                                if (ys && !ys.destroyed && !ys.injector.get(yy, !1)) throw new Error("There can be only one platform. Destroy the previous one to create a new one.");
                                ys = e.get(Dy);
                                const t = e.get(sy, null);
                                t && t.forEach(n => n())
                            }(tn.create({
                                providers: a,
                                name: r
                            }))
                        } return function(e) {
                        const t = Ey();
                        if (!t) throw new Error("No platform exists!");
                        if (!t.injector.get(e, null)) throw new Error("A platform with a different configuration has been created. Please destroy it first.");
                        return t
                    }(s)
                }
            }

            function Ey() {
                return ys && !ys.destroyed ? ys : null
            }
            let Dy = (() => {
                class e {
                    constructor(n) {
                        this._injector = n, this._modules = [], this._destroyListeners = [], this._destroyed = !1
                    }
                    bootstrapModuleFactory(n, r) {
                        const a = function(e, t) {
                                let n;
                                return n = "noop" === e ? new v0 : ("zone.js" === e ? void 0 : e) || new kr({
                                    enableLongStackTrace: bd(),
                                    shouldCoalesceEventChangeDetection: !!(null == t ? void 0 : t.ngZoneEventCoalescing),
                                    shouldCoalesceRunChangeDetection: !!(null == t ? void 0 : t.ngZoneRunCoalescing)
                                }), n
                            }(r ? r.ngZone : void 0, {
                                ngZoneEventCoalescing: r && r.ngZoneEventCoalescing || !1,
                                ngZoneRunCoalescing: r && r.ngZoneRunCoalescing || !1
                            }),
                            f = [{
                                provide: kr,
                                useValue: a
                            }];
                        return a.run(() => {
                            const g = tn.create({
                                    providers: f,
                                    parent: this.injector,
                                    name: n.moduleType.name
                                }),
                                D = n.create(g),
                                S = D.injector.get(Eo, null);
                            if (!S) throw new Error("No ErrorHandler. Is platform module (BrowserModule) included?");
                            return a.runOutsideAngular(() => {
                                    const R = a.onError.subscribe({
                                        next: L => {
                                            S.handleError(L)
                                        }
                                    });
                                    D.onDestroy(() => {
                                        wd(this._modules, D), R.unsubscribe()
                                    })
                                }),
                                function(e, t, n) {
                                    try {
                                        const r = n();
                                        return Oc(r) ? r.catch(s => {
                                            throw t.runOutsideAngular(() => e.handleError(s)), s
                                        }) : r
                                    } catch (r) {
                                        throw t.runOutsideAngular(() => e.handleError(r)), r
                                    }
                                }(S, a, () => {
                                    const R = D.injector.get(Ko);
                                    return R.runInitializers(), R.donePromise.then(() => (function(e) {
                                        Wt(e, "Expected localeId to be defined"), "string" == typeof e && (Fg = e.toLowerCase().replace(/_/g, "-"))
                                    }(D.injector.get(Xl, jl) || jl), this._moduleDoBootstrap(D), D))
                                })
                        })
                    }
                    bootstrapModule(n, r = []) {
                        const s = vy({}, r);
                        return function(e, t, n) {
                            const r = new nd(n);
                            return Promise.resolve(r)
                        }(0, 0, n).then(i => this.bootstrapModuleFactory(i, s))
                    }
                    _moduleDoBootstrap(n) {
                        const r = n.injector.get(ja);
                        if (n._bootstrapComponents.length > 0) n._bootstrapComponents.forEach(s => r.bootstrap(s));
                        else {
                            if (!n.instance.ngDoBootstrap) throw new Error(`The module ${Z(n.instance.constructor)} was bootstrapped, but it does not declare "@NgModule.bootstrap" components nor a "ngDoBootstrap" method. Please define one of these.`);
                            n.instance.ngDoBootstrap(r)
                        }
                        this._modules.push(n)
                    }
                    onDestroy(n) {
                        this._destroyListeners.push(n)
                    }
                    get injector() {
                        return this._injector
                    }
                    destroy() {
                        if (this._destroyed) throw new Error("The platform has already been destroyed!");
                        this._modules.slice().forEach(n => n.destroy()), this._destroyListeners.forEach(n => n()), this._destroyed = !0
                    }
                    get destroyed() {
                        return this._destroyed
                    }
                }
                return e.\u0275fac = function(n) {
                    return new(n || e)(Mn(tn))
                }, e.\u0275prov = Gt({
                    token: e,
                    factory: e.\u0275fac
                }), e
            })();

            function vy(e, t) {
                return Array.isArray(t) ? t.reduce(vy, e) : st(st({}, e), t)
            }
            let ja = (() => {
                class e {
                    constructor(n, r, s, i, o) {
                        this._zone = n, this._injector = r, this._exceptionHandler = s, this._componentFactoryResolver = i, this._initStatus = o, this._bootstrapListeners = [], this._views = [], this._runningTick = !1, this._stable = !0, this.componentTypes = [], this.components = [], this._onMicrotaskEmptySubscription = this._zone.onMicrotaskEmpty.subscribe({
                            next: () => {
                                this._zone.run(() => {
                                    this.tick()
                                })
                            }
                        });
                        const a = new ne.y(g => {
                                this._stable = this._zone.isStable && !this._zone.hasPendingMacrotasks && !this._zone.hasPendingMicrotasks, this._zone.runOutsideAngular(() => {
                                    g.next(this._stable), g.complete()
                                })
                            }),
                            f = new ne.y(g => {
                                let D;
                                this._zone.runOutsideAngular(() => {
                                    D = this._zone.onStable.subscribe(() => {
                                        kr.assertNotInAngularZone(), Ed(() => {
                                            !this._stable && !this._zone.hasPendingMacrotasks && !this._zone.hasPendingMicrotasks && (this._stable = !0, g.next(!0))
                                        })
                                    })
                                });
                                const S = this._zone.onUnstable.subscribe(() => {
                                    kr.assertInAngularZone(), this._stable && (this._stable = !1, this._zone.runOutsideAngular(() => {
                                        g.next(!1)
                                    }))
                                });
                                return () => {
                                    D.unsubscribe(), S.unsubscribe()
                                }
                            });
                        this.isStable = (0, be.T)(a, f.pipe(e => (0, se.x)()(function(e, t) {
                            return function(r) {
                                let s;
                                s = "function" == typeof e ? e : function() {
                                    return e
                                };
                                const i = Object.create(r, he.N);
                                return i.source = r, i.subjectFactory = s, i
                            }
                        }(ee)(e))))
                    }
                    bootstrap(n, r) {
                        if (!this._initStatus.done) throw new Error("Cannot bootstrap as there are still asynchronous initializers running. Bootstrap components in the `ngDoBootstrap` method of the root module.");
                        let s;
                        s = n instanceof am ? n : this._componentFactoryResolver.resolveComponentFactory(n), this.componentTypes.push(s.componentType);
                        const i = function(e) {
                                return e.isBoundToModule
                            }(s) ? void 0 : this._injector.get(qi),
                            a = s.create(tn.NULL, [], r || s.selector, i),
                            f = a.location.nativeElement,
                            g = a.injector.get(hy, null),
                            D = g && a.injector.get(py);
                        return g && D && D.registerApplication(f, g), a.onDestroy(() => {
                            this.detachView(a.hostView), wd(this.components, a), D && D.unregisterApplication(f)
                        }), this._loadComponent(a), a
                    }
                    tick() {
                        if (this._runningTick) throw new Error("ApplicationRef.tick is called recursively");
                        try {
                            this._runningTick = !0;
                            for (let n of this._views) n.detectChanges()
                        } catch (n) {
                            this._zone.runOutsideAngular(() => this._exceptionHandler.handleError(n))
                        } finally {
                            this._runningTick = !1
                        }
                    }
                    attachView(n) {
                        const r = n;
                        this._views.push(r), r.attachToAppRef(this)
                    }
                    detachView(n) {
                        const r = n;
                        wd(this._views, r), r.detachFromAppRef()
                    }
                    _loadComponent(n) {
                        this.attachView(n.hostView), this.tick(), this.components.push(n), this._injector.get(oy, []).concat(this._bootstrapListeners).forEach(s => s(n))
                    }
                    ngOnDestroy() {
                        this._views.slice().forEach(n => n.destroy()), this._onMicrotaskEmptySubscription.unsubscribe()
                    }
                    get viewCount() {
                        return this._views.length
                    }
                }
                return e.\u0275fac = function(n) {
                    return new(n || e)(Mn(kr), Mn(tn), Mn(Eo), Mn(Ho), Mn(Ko))
                }, e.\u0275prov = Gt({
                    token: e,
                    factory: e.\u0275fac
                }), e
            })();

            function wd(e, t) {
                const n = e.indexOf(t);
                n > -1 && e.splice(n, 1)
            }
            const V0 = function(e) {
                return function(e, t, n) {
                    if (on(e) && !n) {
                        const r = ht(e.index, t);
                        return new Fa(r, r)
                    }
                    return 47 & e.type ? new Fa(t[16], t) : null
                }(u(), Ee(), 16 == (16 & e))
            };
            let B0 = (() => {
                class e {}
                return e.__NG_ELEMENT_ID__ = V0, e
            })();
            const Y0 = function(e) {
                return null
            };
            class Ay {
                constructor() {}
                supports(t) {
                    return Ia(t)
                }
                create(t) {
                    return new J0(t)
                }
            }
            const Z0 = (e, t) => t;
            class J0 {
                constructor(t) {
                    this.length = 0, this._linkedRecords = null, this._unlinkedRecords = null, this._previousItHead = null, this._itHead = null, this._itTail = null, this._additionsHead = null, this._additionsTail = null, this._movesHead = null, this._movesTail = null, this._removalsHead = null, this._removalsTail = null, this._identityChangesHead = null, this._identityChangesTail = null, this._trackByFn = t || Z0
                }
                forEachItem(t) {
                    let n;
                    for (n = this._itHead; null !== n; n = n._next) t(n)
                }
                forEachOperation(t) {
                    let n = this._itHead,
                        r = this._removalsHead,
                        s = 0,
                        i = null;
                    for (; n || r;) {
                        const o = !r || n && n.currentIndex < Ry(r, s, i) ? n : r,
                            a = Ry(o, s, i),
                            f = o.currentIndex;
                        if (o === r) s--, r = r._nextRemoved;
                        else if (n = n._next, null == o.previousIndex) s++;
                        else {
                            i || (i = []);
                            const g = a - s,
                                D = f - s;
                            if (g != D) {
                                for (let R = 0; R < g; R++) {
                                    const L = R < i.length ? i[R] : i[R] = 0,
                                        H = L + R;
                                    D <= H && H < g && (i[R] = L + 1)
                                }
                                i[o.previousIndex] = D - g
                            }
                        }
                        a !== f && t(o, a, f)
                    }
                }
                forEachPreviousItem(t) {
                    let n;
                    for (n = this._previousItHead; null !== n; n = n._nextPrevious) t(n)
                }
                forEachAddedItem(t) {
                    let n;
                    for (n = this._additionsHead; null !== n; n = n._nextAdded) t(n)
                }
                forEachMovedItem(t) {
                    let n;
                    for (n = this._movesHead; null !== n; n = n._nextMoved) t(n)
                }
                forEachRemovedItem(t) {
                    let n;
                    for (n = this._removalsHead; null !== n; n = n._nextRemoved) t(n)
                }
                forEachIdentityChange(t) {
                    let n;
                    for (n = this._identityChangesHead; null !== n; n = n._nextIdentityChange) t(n)
                }
                diff(t) {
                    if (null == t && (t = []), !Ia(t)) throw new Error(`Error trying to diff '${Z(t)}'. Only arrays and iterables are allowed`);
                    return this.check(t) ? this : null
                }
                onDestroy() {}
                check(t) {
                    this._reset();
                    let s, i, o, n = this._itHead,
                        r = !1;
                    if (Array.isArray(t)) {
                        this.length = t.length;
                        for (let a = 0; a < this.length; a++) i = t[a], o = this._trackByFn(a, i), null !== n && Object.is(n.trackById, o) ? (r && (n = this._verifyReinsertion(n, i, o, a)), Object.is(n.item, i) || this._addIdentityChange(n, i)) : (n = this._mismatch(n, i, o, a), r = !0), n = n._next
                    } else s = 0,
                        function(e, t) {
                            if (Array.isArray(e))
                                for (let n = 0; n < e.length; n++) t(e[n]);
                            else {
                                const n = e[Ao()]();
                                let r;
                                for (; !(r = n.next()).done;) t(r.value)
                            }
                        }(t, a => {
                            o = this._trackByFn(s, a), null !== n && Object.is(n.trackById, o) ? (r && (n = this._verifyReinsertion(n, a, o, s)), Object.is(n.item, a) || this._addIdentityChange(n, a)) : (n = this._mismatch(n, a, o, s), r = !0), n = n._next, s++
                        }), this.length = s;
                    return this._truncate(n), this.collection = t, this.isDirty
                }
                get isDirty() {
                    return null !== this._additionsHead || null !== this._movesHead || null !== this._removalsHead || null !== this._identityChangesHead
                }
                _reset() {
                    if (this.isDirty) {
                        let t;
                        for (t = this._previousItHead = this._itHead; null !== t; t = t._next) t._nextPrevious = t._next;
                        for (t = this._additionsHead; null !== t; t = t._nextAdded) t.previousIndex = t.currentIndex;
                        for (this._additionsHead = this._additionsTail = null, t = this._movesHead; null !== t; t = t._nextMoved) t.previousIndex = t.currentIndex;
                        this._movesHead = this._movesTail = null, this._removalsHead = this._removalsTail = null, this._identityChangesHead = this._identityChangesTail = null
                    }
                }
                _mismatch(t, n, r, s) {
                    let i;
                    return null === t ? i = this._itTail : (i = t._prev, this._remove(t)), null !== (t = null === this._unlinkedRecords ? null : this._unlinkedRecords.get(r, null)) ? (Object.is(t.item, n) || this._addIdentityChange(t, n), this._reinsertAfter(t, i, s)) : null !== (t = null === this._linkedRecords ? null : this._linkedRecords.get(r, s)) ? (Object.is(t.item, n) || this._addIdentityChange(t, n), this._moveAfter(t, i, s)) : t = this._addAfter(new X0(n, r), i, s), t
                }
                _verifyReinsertion(t, n, r, s) {
                    let i = null === this._unlinkedRecords ? null : this._unlinkedRecords.get(r, null);
                    return null !== i ? t = this._reinsertAfter(i, t._prev, s) : t.currentIndex != s && (t.currentIndex = s, this._addToMoves(t, s)), t
                }
                _truncate(t) {
                    for (; null !== t;) {
                        const n = t._next;
                        this._addToRemovals(this._unlink(t)), t = n
                    }
                    null !== this._unlinkedRecords && this._unlinkedRecords.clear(), null !== this._additionsTail && (this._additionsTail._nextAdded = null), null !== this._movesTail && (this._movesTail._nextMoved = null), null !== this._itTail && (this._itTail._next = null), null !== this._removalsTail && (this._removalsTail._nextRemoved = null), null !== this._identityChangesTail && (this._identityChangesTail._nextIdentityChange = null)
                }
                _reinsertAfter(t, n, r) {
                    null !== this._unlinkedRecords && this._unlinkedRecords.remove(t);
                    const s = t._prevRemoved,
                        i = t._nextRemoved;
                    return null === s ? this._removalsHead = i : s._nextRemoved = i, null === i ? this._removalsTail = s : i._prevRemoved = s, this._insertAfter(t, n, r), this._addToMoves(t, r), t
                }
                _moveAfter(t, n, r) {
                    return this._unlink(t), this._insertAfter(t, n, r), this._addToMoves(t, r), t
                }
                _addAfter(t, n, r) {
                    return this._insertAfter(t, n, r), this._additionsTail = null === this._additionsTail ? this._additionsHead = t : this._additionsTail._nextAdded = t, t
                }
                _insertAfter(t, n, r) {
                    const s = null === n ? this._itHead : n._next;
                    return t._next = s, t._prev = n, null === s ? this._itTail = t : s._prev = t, null === n ? this._itHead = t : n._next = t, null === this._linkedRecords && (this._linkedRecords = new My), this._linkedRecords.put(t), t.currentIndex = r, t
                }
                _remove(t) {
                    return this._addToRemovals(this._unlink(t))
                }
                _unlink(t) {
                    null !== this._linkedRecords && this._linkedRecords.remove(t);
                    const n = t._prev,
                        r = t._next;
                    return null === n ? this._itHead = r : n._next = r, null === r ? this._itTail = n : r._prev = n, t
                }
                _addToMoves(t, n) {
                    return t.previousIndex === n || (this._movesTail = null === this._movesTail ? this._movesHead = t : this._movesTail._nextMoved = t), t
                }
                _addToRemovals(t) {
                    return null === this._unlinkedRecords && (this._unlinkedRecords = new My), this._unlinkedRecords.put(t), t.currentIndex = null, t._nextRemoved = null, null === this._removalsTail ? (this._removalsTail = this._removalsHead = t, t._prevRemoved = null) : (t._prevRemoved = this._removalsTail, this._removalsTail = this._removalsTail._nextRemoved = t), t
                }
                _addIdentityChange(t, n) {
                    return t.item = n, this._identityChangesTail = null === this._identityChangesTail ? this._identityChangesHead = t : this._identityChangesTail._nextIdentityChange = t, t
                }
            }
            class X0 {
                constructor(t, n) {
                    this.item = t, this.trackById = n, this.currentIndex = null, this.previousIndex = null, this._nextPrevious = null, this._prev = null, this._next = null, this._prevDup = null, this._nextDup = null, this._prevRemoved = null, this._nextRemoved = null, this._nextAdded = null, this._nextMoved = null, this._nextIdentityChange = null
                }
            }
            class eS {
                constructor() {
                    this._head = null, this._tail = null
                }
                add(t) {
                    null === this._head ? (this._head = this._tail = t, t._nextDup = null, t._prevDup = null) : (this._tail._nextDup = t, t._prevDup = this._tail, t._nextDup = null, this._tail = t)
                }
                get(t, n) {
                    let r;
                    for (r = this._head; null !== r; r = r._nextDup)
                        if ((null === n || n <= r.currentIndex) && Object.is(r.trackById, t)) return r;
                    return null
                }
                remove(t) {
                    const n = t._prevDup,
                        r = t._nextDup;
                    return null === n ? this._head = r : n._nextDup = r, null === r ? this._tail = n : r._prevDup = n, null === this._head
                }
            }
            class My {
                constructor() {
                    this.map = new Map
                }
                put(t) {
                    const n = t.trackById;
                    let r = this.map.get(n);
                    r || (r = new eS, this.map.set(n, r)), r.add(t)
                }
                get(t, n) {
                    const s = this.map.get(t);
                    return s ? s.get(t, n) : null
                }
                remove(t) {
                    const n = t.trackById;
                    return this.map.get(n).remove(t) && this.map.delete(n), t
                }
                get isEmpty() {
                    return 0 === this.map.size
                }
                clear() {
                    this.map.clear()
                }
            }

            function Ry(e, t, n) {
                const r = e.previousIndex;
                if (null === r) return r;
                let s = 0;
                return n && r < n.length && (s = n[r]), r + t + s
            }
            class Py {
                constructor() {}
                supports(t) {
                    return t instanceof Map || bc(t)
                }
                create() {
                    return new tS
                }
            }
            class tS {
                constructor() {
                    this._records = new Map, this._mapHead = null, this._appendAfter = null, this._previousMapHead = null, this._changesHead = null, this._changesTail = null, this._additionsHead = null, this._additionsTail = null, this._removalsHead = null, this._removalsTail = null
                }
                get isDirty() {
                    return null !== this._additionsHead || null !== this._changesHead || null !== this._removalsHead
                }
                forEachItem(t) {
                    let n;
                    for (n = this._mapHead; null !== n; n = n._next) t(n)
                }
                forEachPreviousItem(t) {
                    let n;
                    for (n = this._previousMapHead; null !== n; n = n._nextPrevious) t(n)
                }
                forEachChangedItem(t) {
                    let n;
                    for (n = this._changesHead; null !== n; n = n._nextChanged) t(n)
                }
                forEachAddedItem(t) {
                    let n;
                    for (n = this._additionsHead; null !== n; n = n._nextAdded) t(n)
                }
                forEachRemovedItem(t) {
                    let n;
                    for (n = this._removalsHead; null !== n; n = n._nextRemoved) t(n)
                }
                diff(t) {
                    if (t) {
                        if (!(t instanceof Map || bc(t))) throw new Error(`Error trying to diff '${Z(t)}'. Only maps and objects are allowed`)
                    } else t = new Map;
                    return this.check(t) ? this : null
                }
                onDestroy() {}
                check(t) {
                    this._reset();
                    let n = this._mapHead;
                    if (this._appendAfter = null, this._forEach(t, (r, s) => {
                            if (n && n.key === s) this._maybeAddToChanges(n, r), this._appendAfter = n, n = n._next;
                            else {
                                const i = this._getOrCreateRecordForKey(s, r);
                                n = this._insertBeforeOrAppend(n, i)
                            }
                        }), n) {
                        n._prev && (n._prev._next = null), this._removalsHead = n;
                        for (let r = n; null !== r; r = r._nextRemoved) r === this._mapHead && (this._mapHead = null), this._records.delete(r.key), r._nextRemoved = r._next, r.previousValue = r.currentValue, r.currentValue = null, r._prev = null, r._next = null
                    }
                    return this._changesTail && (this._changesTail._nextChanged = null), this._additionsTail && (this._additionsTail._nextAdded = null), this.isDirty
                }
                _insertBeforeOrAppend(t, n) {
                    if (t) {
                        const r = t._prev;
                        return n._next = t, n._prev = r, t._prev = n, r && (r._next = n), t === this._mapHead && (this._mapHead = n), this._appendAfter = t, t
                    }
                    return this._appendAfter ? (this._appendAfter._next = n, n._prev = this._appendAfter) : this._mapHead = n, this._appendAfter = n, null
                }
                _getOrCreateRecordForKey(t, n) {
                    if (this._records.has(t)) {
                        const s = this._records.get(t);
                        this._maybeAddToChanges(s, n);
                        const i = s._prev,
                            o = s._next;
                        return i && (i._next = o), o && (o._prev = i), s._next = null, s._prev = null, s
                    }
                    const r = new nS(t);
                    return this._records.set(t, r), r.currentValue = n, this._addToAdditions(r), r
                }
                _reset() {
                    if (this.isDirty) {
                        let t;
                        for (this._previousMapHead = this._mapHead, t = this._previousMapHead; null !== t; t = t._next) t._nextPrevious = t._next;
                        for (t = this._changesHead; null !== t; t = t._nextChanged) t.previousValue = t.currentValue;
                        for (t = this._additionsHead; null != t; t = t._nextAdded) t.previousValue = t.currentValue;
                        this._changesHead = this._changesTail = null, this._additionsHead = this._additionsTail = null, this._removalsHead = null
                    }
                }
                _maybeAddToChanges(t, n) {
                    Object.is(n, t.currentValue) || (t.previousValue = t.currentValue, t.currentValue = n, this._addToChanges(t))
                }
                _addToAdditions(t) {
                    null === this._additionsHead ? this._additionsHead = this._additionsTail = t : (this._additionsTail._nextAdded = t, this._additionsTail = t)
                }
                _addToChanges(t) {
                    null === this._changesHead ? this._changesHead = this._changesTail = t : (this._changesTail._nextChanged = t, this._changesTail = t)
                }
                _forEach(t, n) {
                    t instanceof Map ? t.forEach(n) : Object.keys(t).forEach(r => n(t[r], r))
                }
            }
            class nS {
                constructor(t) {
                    this.key = t, this.previousValue = null, this.currentValue = null, this._nextPrevious = null, this._next = null, this._prev = null, this._nextAdded = null, this._nextRemoved = null, this._nextChanged = null
                }
            }

            function Ny() {
                return new ru([new Ay])
            }
            let ru = (() => {
                class e {
                    constructor(n) {
                        this.factories = n
                    }
                    static create(n, r) {
                        if (null != r) {
                            const s = r.factories.slice();
                            n = n.concat(s)
                        }
                        return new e(n)
                    }
                    static extend(n) {
                        return {
                            provide: e,
                            useFactory: r => e.create(n, r || Ny()),
                            deps: [
                                [e, new wi, new ci]
                            ]
                        }
                    }
                    find(n) {
                        const r = this.factories.find(s => s.supports(n));
                        if (null != r) return r;
                        throw new Error(`Cannot find a differ supporting object '${n}' of type '${function(e){return e.name||typeof e}(n)}'`)
                    }
                }
                return e.\u0275prov = Gt({
                    token: e,
                    providedIn: "root",
                    factory: Ny
                }), e
            })();

            function Oy() {
                return new su([new Py])
            }
            let su = (() => {
                class e {
                    constructor(n) {
                        this.factories = n
                    }
                    static create(n, r) {
                        if (r) {
                            const s = r.factories.slice();
                            n = n.concat(s)
                        }
                        return new e(n)
                    }
                    static extend(n) {
                        return {
                            provide: e,
                            useFactory: r => e.create(n, r || Oy()),
                            deps: [
                                [e, new wi, new ci]
                            ]
                        }
                    }
                    find(n) {
                        const r = this.factories.find(s => s.supports(n));
                        if (r) return r;
                        throw new Error(`Cannot find a differ supporting object '${n}'`)
                    }
                }
                return e.\u0275prov = Gt({
                    token: e,
                    providedIn: "root",
                    factory: Oy
                }), e
            })();
            const sS = [new Py],
                oS = new ru([new Ay]),
                aS = new su(sS),
                lS = _y(null, "core", [{
                    provide: iy,
                    useValue: "unknown"
                }, {
                    provide: Dy,
                    deps: [tn]
                }, {
                    provide: py,
                    deps: []
                }, {
                    provide: ay,
                    deps: []
                }]),
                hS = [{
                    provide: ja,
                    useClass: ja,
                    deps: [kr, tn, Eo, Ho, Ko]
                }, {
                    provide: Qb,
                    deps: [kr],
                    useFactory: function(e) {
                        let t = [];
                        return e.onStable.subscribe(() => {
                                for (; t.length;) t.pop()()
                            }),
                            function(n) {
                                t.push(n)
                            }
                    }
                }, {
                    provide: Ko,
                    useClass: Ko,
                    deps: [
                        [new ci, gd]
                    ]
                }, {
                    provide: _d,
                    useClass: _d,
                    deps: []
                }, a0, {
                    provide: ru,
                    useFactory: function() {
                        return oS
                    },
                    deps: []
                }, {
                    provide: su,
                    useFactory: function() {
                        return aS
                    },
                    deps: []
                }, {
                    provide: Xl,
                    useFactory: function(e) {
                        return e || "undefined" != typeof $localize && $localize.locale || jl
                    },
                    deps: [
                        [new go(Xl), new ci, new wi]
                    ]
                }, {
                    provide: ly,
                    useValue: "USD"
                }];
            let gS = (() => {
                class e {
                    constructor(n) {}
                }
                return e.\u0275fac = function(n) {
                    return new(n || e)(Mn(ja))
                }, e.\u0275mod = wn({
                    type: e
                }), e.\u0275inj = Yt({
                    providers: hS
                }), e
            })()
        },
        9555: (He, ce, O) => {
            O.d(ce, {
                Qb: () => vi,
                PW: () => ra
            });
            var A = O(9619),
                T = O(5427),
                ne = O(9814);

            function be() {
                return "undefined" != typeof window && void 0 !== window.document
            }

            function he() {
                return "undefined" != typeof process && "[object process]" === {}.toString.call(process)
            }

            function te(v) {
                switch (v.length) {
                    case 0:
                        return new ne.ZN;
                    case 1:
                        return v[0];
                    default:
                        return new ne.ZE(v)
                }
            }

            function ye(v, l, u, p, C = {}, M = {}) {
                const F = [],
                    V = [];
                let Q = -1,
                    ie = null;
                if (p.forEach(Ae => {
                        const Be = Ae.offset,
                            Ge = Be == Q,
                            dt = Ge && ie || {};
                        Object.keys(Ae).forEach(qe => {
                            let et = qe,
                                ut = Ae[qe];
                            if ("offset" !== qe) switch (et = l.normalizePropertyName(et, F), ut) {
                                case ne.k1:
                                    ut = C[qe];
                                    break;
                                case ne.l3:
                                    ut = M[qe];
                                    break;
                                default:
                                    ut = l.normalizeStyleValue(qe, et, ut, F)
                            }
                            dt[et] = ut
                        }), Ge || V.push(dt), ie = dt, Q = Be
                    }), F.length) {
                    const Ae = "\n - ";
                    throw new Error(`Unable to animate due to the following errors:${Ae}${F.join(Ae)}`)
                }
                return V
            }

            function se(v, l, u, p) {
                switch (l) {
                    case "start":
                        v.onStart(() => p(u && ee(u, "start", v)));
                        break;
                    case "done":
                        v.onDone(() => p(u && ee(u, "done", v)));
                        break;
                    case "destroy":
                        v.onDestroy(() => p(u && ee(u, "destroy", v)))
                }
            }

            function ee(v, l, u) {
                const p = u.totalTime,
                    M = z(v.element, v.triggerName, v.fromState, v.toState, l || v.phaseName, null == p ? v.totalTime : p, !!u.disabled),
                    F = v._data;
                return null != F && (M._data = F), M
            }

            function z(v, l, u, p, C = "", M = 0, F) {
                return {
                    element: v,
                    triggerName: l,
                    fromState: u,
                    toState: p,
                    phaseName: C,
                    totalTime: M,
                    disabled: !!F
                }
            }

            function W(v, l, u) {
                let p;
                return v instanceof Map ? (p = v.get(l), p || v.set(l, p = u)) : (p = v[l], p || (p = v[l] = u)), p
            }

            function Y(v) {
                const l = v.indexOf(":");
                return [v.substring(1, l), v.substr(l + 1)]
            }
            let Z = (v, l) => !1,
                Re = (v, l) => !1,
                xe = (v, l, u) => [];
            const we = he();
            (we || "undefined" != typeof Element) && (Z = be() ? (v, l) => {
                for (; l && l !== document.documentElement;) {
                    if (l === v) return !0;
                    l = l.parentNode || l.host
                }
                return !1
            } : (v, l) => v.contains(l), Re = (() => {
                if (we || Element.prototype.matches) return (v, l) => v.matches(l);
                {
                    const v = Element.prototype,
                        l = v.matchesSelector || v.mozMatchesSelector || v.msMatchesSelector || v.oMatchesSelector || v.webkitMatchesSelector;
                    return l ? (u, p) => l.apply(u, [p]) : Re
                }
            })(), xe = (v, l, u) => {
                let p = [];
                if (u) {
                    const C = v.querySelectorAll(l);
                    for (let M = 0; M < C.length; M++) p.push(C[M])
                } else {
                    const C = v.querySelector(l);
                    C && p.push(C)
                }
                return p
            });
            let gt = null,
                tt = !1;

            function St(v) {
                gt || (gt = ("undefined" != typeof document ? document.body : null) || {}, tt = !!gt.style && "WebkitAppearance" in gt.style);
                let l = !0;
                return gt.style && ! function(v) {
                    return "ebkit" == v.substring(1, 6)
                }(v) && (l = v in gt.style, !l && tt && (l = "Webkit" + v.charAt(0).toUpperCase() + v.substr(1) in gt.style)), l
            }
            const X = Re,
                Me = Z,
                Dt = xe;

            function ue(v) {
                const l = {};
                return Object.keys(v).forEach(u => {
                    const p = u.replace(/([a-z])([A-Z])/g, "$1-$2");
                    l[p] = v[u]
                }), l
            }
            let _e = (() => {
                    class v {
                        validateStyleProperty(u) {
                            return St(u)
                        }
                        matchesElement(u, p) {
                            return X(u, p)
                        }
                        containsElement(u, p) {
                            return Me(u, p)
                        }
                        query(u, p, C) {
                            return Dt(u, p, C)
                        }
                        computeStyle(u, p, C) {
                            return C || ""
                        }
                        animate(u, p, C, M, F, V = [], Q) {
                            return new ne.ZN(C, M)
                        }
                    }
                    return v.\u0275fac = function(u) {
                        return new(u || v)
                    }, v.\u0275prov = A.Yz7({
                        token: v,
                        factory: v.\u0275fac
                    }), v
                })(),
                de = (() => {
                    class v {}
                    return v.NOOP = new _e, v
                })();
            const Ne = "ng-enter",
                Te = "ng-leave",
                Ht = "ng-trigger",
                ln = ".ng-trigger",
                zt = "ng-animating",
                vn = ".ng-animating";

            function Cn(v) {
                if ("number" == typeof v) return v;
                const l = v.match(/^(-?[\.\d]+)(m?s)/);
                return !l || l.length < 2 ? 0 : Mr(parseFloat(l[1]), l[2])
            }

            function Mr(v, l) {
                return "s" === l ? 1e3 * v : v
            }

            function nr(v, l, u) {
                return v.hasOwnProperty("duration") ? v : function(v, l, u) {
                    let C, M = 0,
                        F = "";
                    if ("string" == typeof v) {
                        const V = v.match(/^(-?[\.\d]+)(m?s)(?:\s+(-?[\.\d]+)(m?s))?(?:\s+([-a-z]+(?:\(.+?\))?))?$/i);
                        if (null === V) return l.push(`The provided timing value "${v}" is invalid.`), {
                            duration: 0,
                            delay: 0,
                            easing: ""
                        };
                        C = Mr(parseFloat(V[1]), V[2]);
                        const Q = V[3];
                        null != Q && (M = Mr(parseFloat(Q), V[4]));
                        const ie = V[5];
                        ie && (F = ie)
                    } else C = v;
                    if (!u) {
                        let V = !1,
                            Q = l.length;
                        C < 0 && (l.push("Duration values below 0 are not allowed for this animation step."), V = !0), M < 0 && (l.push("Delay values below 0 are not allowed for this animation step."), V = !0), V && l.splice(Q, 0, `The provided timing value "${v}" is invalid.`)
                    }
                    return {
                        duration: C,
                        delay: M,
                        easing: F
                    }
                }(v, l, u)
            }

            function mt(v, l = {}) {
                return Object.keys(v).forEach(u => {
                    l[u] = v[u]
                }), l
            }

            function nn(v, l, u = {}) {
                if (l)
                    for (let p in v) u[p] = v[p];
                else mt(v, u);
                return u
            }

            function rr(v, l, u) {
                return u ? l + ":" + u + ";" : ""
            }

            function Gt(v) {
                let l = "";
                for (let u = 0; u < v.style.length; u++) {
                    const p = v.style.item(u);
                    l += rr(0, p, v.style.getPropertyValue(p))
                }
                for (const u in v.style) v.style.hasOwnProperty(u) && !u.startsWith("_") && (l += rr(0, pe(u), v.style[u]));
                v.setAttribute("style", l)
            }

            function un(v, l, u) {
                v.style && (Object.keys(l).forEach(p => {
                    const C = Nr(p);
                    u && !u.hasOwnProperty(p) && (u[p] = v.style[C]), v.style[C] = l[p]
                }), he() && Gt(v))
            }

            function Yt(v, l) {
                v.style && (Object.keys(l).forEach(u => {
                    const p = Nr(u);
                    v.style[p] = ""
                }), he() && Gt(v))
            }

            function Pt(v) {
                return Array.isArray(v) ? 1 == v.length ? v[0] : (0, ne.vP)(v) : v
            }
            const Xt = new RegExp("{{\\s*(.+?)\\s*}}", "g");

            function Pr(v) {
                let l = [];
                if ("string" == typeof v) {
                    let u;
                    for (; u = Xt.exec(v);) l.push(u[1]);
                    Xt.lastIndex = 0
                }
                return l
            }

            function sr(v, l, u) {
                const p = v.toString(),
                    C = p.replace(Xt, (M, F) => {
                        let V = l[F];
                        return l.hasOwnProperty(F) || (u.push(`Please provide a value for the animation param ${F}`), V = ""), V.toString()
                    });
                return C == p ? v : C
            }

            function Kt(v) {
                const l = [];
                let u = v.next();
                for (; !u.done;) l.push(u.value), u = v.next();
                return l
            }
            const yr = /-+([a-z0-9])/g;

            function Nr(v) {
                return v.replace(yr, (...l) => l[1].toUpperCase())
            }

            function pe(v) {
                return v.replace(/([a-z])([A-Z])/g, "$1-$2").toLowerCase()
            }

            function N(v, l) {
                return 0 === v || 0 === l
            }

            function $(v, l, u) {
                const p = Object.keys(u);
                if (p.length && l.length) {
                    let M = l[0],
                        F = [];
                    if (p.forEach(V => {
                            M.hasOwnProperty(V) || F.push(V), M[V] = u[V]
                        }), F.length)
                        for (var C = 1; C < l.length; C++) {
                            let V = l[C];
                            F.forEach(function(Q) {
                                V[Q] = fe(v, Q)
                            })
                        }
                }
                return l
            }

            function ge(v, l, u) {
                switch (l.type) {
                    case 7:
                        return v.visitTrigger(l, u);
                    case 0:
                        return v.visitState(l, u);
                    case 1:
                        return v.visitTransition(l, u);
                    case 2:
                        return v.visitSequence(l, u);
                    case 3:
                        return v.visitGroup(l, u);
                    case 4:
                        return v.visitAnimate(l, u);
                    case 5:
                        return v.visitKeyframes(l, u);
                    case 6:
                        return v.visitStyle(l, u);
                    case 8:
                        return v.visitReference(l, u);
                    case 9:
                        return v.visitAnimateChild(l, u);
                    case 10:
                        return v.visitAnimateRef(l, u);
                    case 11:
                        return v.visitQuery(l, u);
                    case 12:
                        return v.visitStagger(l, u);
                    default:
                        throw new Error(`Unable to resolve animation metadata node #${l.type}`)
                }
            }

            function fe(v, l) {
                return window.getComputedStyle(v)[l]
            }

            function Pe(v, l) {
                const u = [];
                return "string" == typeof v ? v.split(/\s*,\s*/).forEach(p => function(v, l, u) {
                    if (":" == v[0]) {
                        const Q = function(v, l) {
                            switch (v) {
                                case ":enter":
                                    return "void => *";
                                case ":leave":
                                    return "* => void";
                                case ":increment":
                                    return (u, p) => parseFloat(p) > parseFloat(u);
                                case ":decrement":
                                    return (u, p) => parseFloat(p) < parseFloat(u);
                                default:
                                    return l.push(`The transition alias value "${v}" is not supported`), "* => *"
                            }
                        }(v, u);
                        if ("function" == typeof Q) return void l.push(Q);
                        v = Q
                    }
                    const p = v.match(/^(\*|[-\w]+)\s*(<?[=-]>)\s*(\*|[-\w]+)$/);
                    if (null == p || p.length < 4) return u.push(`The provided transition expression "${v}" is not supported`), l;
                    const C = p[1],
                        M = p[2],
                        F = p[3];
                    l.push(Ot(C, F));
                    "<" == M[0] && !("*" == C && "*" == F) && l.push(Ot(F, C))
                }(p, u, l)) : u.push(v), u
            }
            const Nt = new Set(["true", "1"]),
                Lt = new Set(["false", "0"]);

            function Ot(v, l) {
                const u = Nt.has(v) || Lt.has(v),
                    p = Nt.has(l) || Lt.has(l);
                return (C, M) => {
                    let F = "*" == v || v == C,
                        V = "*" == l || l == M;
                    return !F && u && "boolean" == typeof C && (F = C ? Nt.has(v) : Lt.has(v)), !V && p && "boolean" == typeof M && (V = M ? Nt.has(l) : Lt.has(l)), F && V
                }
            }
            const vt = new RegExp("s*:selfs*,?", "g");

            function ot(v, l, u) {
                return new Ke(v).build(l, u)
            }
            class Ke {
                constructor(l) {
                    this._driver = l
                }
                build(l, u) {
                    const p = new zn(u);
                    return this._resetContextStyleTimingState(p), ge(this, Pt(l), p)
                }
                _resetContextStyleTimingState(l) {
                    l.currentQuerySelector = "", l.collectedStyles = {}, l.collectedStyles[""] = {}, l.currentTime = 0
                }
                visitTrigger(l, u) {
                    let p = u.queryCount = 0,
                        C = u.depCount = 0;
                    const M = [],
                        F = [];
                    return "@" == l.name.charAt(0) && u.errors.push("animation triggers cannot be prefixed with an `@` sign (e.g. trigger('@foo', [...]))"), l.definitions.forEach(V => {
                        if (this._resetContextStyleTimingState(u), 0 == V.type) {
                            const Q = V,
                                ie = Q.name;
                            ie.toString().split(/\s*,\s*/).forEach(Ae => {
                                Q.name = Ae, M.push(this.visitState(Q, u))
                            }), Q.name = ie
                        } else if (1 == V.type) {
                            const Q = this.visitTransition(V, u);
                            p += Q.queryCount, C += Q.depCount, F.push(Q)
                        } else u.errors.push("only state() and transition() definitions can sit inside of a trigger()")
                    }), {
                        type: 7,
                        name: l.name,
                        states: M,
                        transitions: F,
                        queryCount: p,
                        depCount: C,
                        options: null
                    }
                }
                visitState(l, u) {
                    const p = this.visitStyle(l.styles, u),
                        C = l.options && l.options.params || null;
                    if (p.containsDynamicStyles) {
                        const M = new Set,
                            F = C || {};
                        if (p.styles.forEach(V => {
                                if (or(V)) {
                                    const Q = V;
                                    Object.keys(Q).forEach(ie => {
                                        Pr(Q[ie]).forEach(Ae => {
                                            F.hasOwnProperty(Ae) || M.add(Ae)
                                        })
                                    })
                                }
                            }), M.size) {
                            const V = Kt(M.values());
                            u.errors.push(`state("${l.name}", ...) must define default values for all the following style substitutions: ${V.join(", ")}`)
                        }
                    }
                    return {
                        type: 0,
                        name: l.name,
                        style: p,
                        options: C ? {
                            params: C
                        } : null
                    }
                }
                visitTransition(l, u) {
                    u.queryCount = 0, u.depCount = 0;
                    const p = ge(this, Pt(l.animation), u);
                    return {
                        type: 1,
                        matchers: Pe(l.expr, u.errors),
                        animation: p,
                        queryCount: u.queryCount,
                        depCount: u.depCount,
                        options: Nn(l.options)
                    }
                }
                visitSequence(l, u) {
                    return {
                        type: 2,
                        steps: l.steps.map(p => ge(this, p, u)),
                        options: Nn(l.options)
                    }
                }
                visitGroup(l, u) {
                    const p = u.currentTime;
                    let C = 0;
                    const M = l.steps.map(F => {
                        u.currentTime = p;
                        const V = ge(this, F, u);
                        return C = Math.max(C, u.currentTime), V
                    });
                    return u.currentTime = C, {
                        type: 3,
                        steps: M,
                        options: Nn(l.options)
                    }
                }
                visitAnimate(l, u) {
                    const p = function(v, l) {
                        let u = null;
                        if (v.hasOwnProperty("duration")) u = v;
                        else if ("number" == typeof v) return Kn(nr(v, l).duration, 0, "");
                        const p = v;
                        if (p.split(/\s+/).some(M => "{" == M.charAt(0) && "{" == M.charAt(1))) {
                            const M = Kn(0, 0, "");
                            return M.dynamic = !0, M.strValue = p, M
                        }
                        return u = u || nr(p, l), Kn(u.duration, u.delay, u.easing)
                    }(l.timings, u.errors);
                    u.currentAnimateTimings = p;
                    let C, M = l.styles ? l.styles : (0, ne.oB)({});
                    if (5 == M.type) C = this.visitKeyframes(M, u);
                    else {
                        let F = l.styles,
                            V = !1;
                        if (!F) {
                            V = !0;
                            const ie = {};
                            p.easing && (ie.easing = p.easing), F = (0, ne.oB)(ie)
                        }
                        u.currentTime += p.duration + p.delay;
                        const Q = this.visitStyle(F, u);
                        Q.isEmptyStep = V, C = Q
                    }
                    return u.currentAnimateTimings = null, {
                        type: 4,
                        timings: p,
                        style: C,
                        options: null
                    }
                }
                visitStyle(l, u) {
                    const p = this._makeStyleAst(l, u);
                    return this._validateStyleAst(p, u), p
                }
                _makeStyleAst(l, u) {
                    const p = [];
                    Array.isArray(l.styles) ? l.styles.forEach(F => {
                        "string" == typeof F ? F == ne.l3 ? p.push(F) : u.errors.push(`The provided style string value ${F} is not allowed.`) : p.push(F)
                    }) : p.push(l.styles);
                    let C = !1,
                        M = null;
                    return p.forEach(F => {
                        if (or(F)) {
                            const V = F,
                                Q = V.easing;
                            if (Q && (M = Q, delete V.easing), !C)
                                for (let ie in V)
                                    if (V[ie].toString().indexOf("{{") >= 0) {
                                        C = !0;
                                        break
                                    }
                        }
                    }), {
                        type: 6,
                        styles: p,
                        easing: M,
                        offset: l.offset,
                        containsDynamicStyles: C,
                        options: null
                    }
                }
                _validateStyleAst(l, u) {
                    const p = u.currentAnimateTimings;
                    let C = u.currentTime,
                        M = u.currentTime;
                    p && M > 0 && (M -= p.duration + p.delay), l.styles.forEach(F => {
                        "string" != typeof F && Object.keys(F).forEach(V => {
                            if (!this._driver.validateStyleProperty(V)) return void u.errors.push(`The provided animation property "${V}" is not a supported CSS property for animations`);
                            const Q = u.collectedStyles[u.currentQuerySelector],
                                ie = Q[V];
                            let Ae = !0;
                            ie && (M != C && M >= ie.startTime && C <= ie.endTime && (u.errors.push(`The CSS property "${V}" that exists between the times of "${ie.startTime}ms" and "${ie.endTime}ms" is also being animated in a parallel animation between the times of "${M}ms" and "${C}ms"`), Ae = !1), M = ie.startTime), Ae && (Q[V] = {
                                startTime: M,
                                endTime: C
                            }), u.options && function(v, l, u) {
                                const p = l.params || {},
                                    C = Pr(v);
                                C.length && C.forEach(M => {
                                    p.hasOwnProperty(M) || u.push(`Unable to resolve the local animation param ${M} in the given list of values`)
                                })
                            }(F[V], u.options, u.errors)
                        })
                    })
                }
                visitKeyframes(l, u) {
                    const p = {
                        type: 5,
                        styles: [],
                        options: null
                    };
                    if (!u.currentAnimateTimings) return u.errors.push("keyframes() must be placed inside of a call to animate()"), p;
                    let M = 0;
                    const F = [];
                    let V = !1,
                        Q = !1,
                        ie = 0;
                    const Ae = l.steps.map(Zt => {
                        const Jt = this._makeStyleAst(Zt, u);
                        let fn = null != Jt.offset ? Jt.offset : function(v) {
                                if ("string" == typeof v) return null;
                                let l = null;
                                if (Array.isArray(v)) v.forEach(u => {
                                    if (or(u) && u.hasOwnProperty("offset")) {
                                        const p = u;
                                        l = parseFloat(p.offset), delete p.offset
                                    }
                                });
                                else if (or(v) && v.hasOwnProperty("offset")) {
                                    const u = v;
                                    l = parseFloat(u.offset), delete u.offset
                                }
                                return l
                            }(Jt.styles),
                            yn = 0;
                        return null != fn && (M++, yn = Jt.offset = fn), Q = Q || yn < 0 || yn > 1, V = V || yn < ie, ie = yn, F.push(yn), Jt
                    });
                    Q && u.errors.push("Please ensure that all keyframe offsets are between 0 and 1"), V && u.errors.push("Please ensure that all keyframe offsets are in order");
                    const Be = l.steps.length;
                    let Ge = 0;
                    M > 0 && M < Be ? u.errors.push("Not all style() steps within the declared keyframes() contain offsets") : 0 == M && (Ge = 1 / (Be - 1));
                    const dt = Be - 1,
                        qe = u.currentTime,
                        et = u.currentAnimateTimings,
                        ut = et.duration;
                    return Ae.forEach((Zt, Jt) => {
                        const fn = Ge > 0 ? Jt == dt ? 1 : Ge * Jt : F[Jt],
                            yn = fn * ut;
                        u.currentTime = qe + et.delay + yn, et.duration = yn, this._validateStyleAst(Zt, u), Zt.offset = fn, p.styles.push(Zt)
                    }), p
                }
                visitReference(l, u) {
                    return {
                        type: 8,
                        animation: ge(this, Pt(l.animation), u),
                        options: Nn(l.options)
                    }
                }
                visitAnimateChild(l, u) {
                    return u.depCount++, {
                        type: 9,
                        options: Nn(l.options)
                    }
                }
                visitAnimateRef(l, u) {
                    return {
                        type: 10,
                        animation: this.visitReference(l.animation, u),
                        options: Nn(l.options)
                    }
                }
                visitQuery(l, u) {
                    const p = u.currentQuerySelector,
                        C = l.options || {};
                    u.queryCount++, u.currentQuery = l;
                    const [M, F] = function(v) {
                        const l = !!v.split(/\s*,\s*/).find(u => ":self" == u);
                        return l && (v = v.replace(vt, "")), v = v.replace(/@\*/g, ln).replace(/@\w+/g, u => ln + "-" + u.substr(1)).replace(/:animating/g, vn), [v, l]
                    }(l.selector);
                    u.currentQuerySelector = p.length ? p + " " + M : M, W(u.collectedStyles, u.currentQuerySelector, {});
                    const V = ge(this, Pt(l.animation), u);
                    return u.currentQuery = null, u.currentQuerySelector = p, {
                        type: 11,
                        selector: M,
                        limit: C.limit || 0,
                        optional: !!C.optional,
                        includeSelf: F,
                        animation: V,
                        originalSelector: l.selector,
                        options: Nn(l.options)
                    }
                }
                visitStagger(l, u) {
                    u.currentQuery || u.errors.push("stagger() can only be used inside of query()");
                    const p = "full" === l.timings ? {
                        duration: 0,
                        delay: 0,
                        easing: "full"
                    } : nr(l.timings, u.errors, !0);
                    return {
                        type: 12,
                        animation: ge(this, Pt(l.animation), u),
                        timings: p,
                        options: null
                    }
                }
            }
            class zn {
                constructor(l) {
                    this.errors = l, this.queryCount = 0, this.depCount = 0, this.currentTransition = null, this.currentQuery = null, this.currentQuerySelector = null, this.currentAnimateTimings = null, this.currentTime = 0, this.collectedStyles = {}, this.options = null
                }
            }

            function or(v) {
                return !Array.isArray(v) && "object" == typeof v
            }

            function Nn(v) {
                return v ? (v = mt(v)).params && (v.params = function(v) {
                    return v ? mt(v) : null
                }(v.params)) : v = {}, v
            }

            function Kn(v, l, u) {
                return {
                    duration: v,
                    delay: l,
                    easing: u
                }
            }

            function Ye(v, l, u, p, C, M, F = null, V = !1) {
                return {
                    type: 1,
                    element: v,
                    keyframes: l,
                    preStyleProps: u,
                    postStyleProps: p,
                    duration: C,
                    delay: M,
                    totalTime: C + M,
                    easing: F,
                    subTimeline: V
                }
            }
            class ar {
                constructor() {
                    this._map = new Map
                }
                consume(l) {
                    let u = this._map.get(l);
                    return u ? this._map.delete(l) : u = [], u
                }
                append(l, u) {
                    let p = this._map.get(l);
                    p || this._map.set(l, p = []), p.push(...u)
                }
                has(l) {
                    return this._map.has(l)
                }
                clear() {
                    this._map.clear()
                }
            }
            const ns = new RegExp(":enter", "g"),
                Br = new RegExp(":leave", "g");

            function _r(v, l, u, p, C, M = {}, F = {}, V, Q, ie = []) {
                return (new wn).buildKeyframes(v, l, u, p, C, M, F, V, Q, ie)
            }
            class wn {
                buildKeyframes(l, u, p, C, M, F, V, Q, ie, Ae = []) {
                    ie = ie || new ar;
                    const Be = new ur(l, u, ie, C, M, Ae, []);
                    Be.options = Q, Be.currentTimeline.setStyles([F], null, Be.errors, Q), ge(this, p, Be);
                    const Ge = Be.timelines.filter(dt => dt.containsAnimation());
                    if (Ge.length && Object.keys(V).length) {
                        const dt = Ge[Ge.length - 1];
                        dt.allowOnlyTimelineStyles() || dt.setStyles([V], null, Be.errors, Q)
                    }
                    return Ge.length ? Ge.map(dt => dt.buildKeyframes()) : [Ye(u, [], [], [], 0, 0, "", !1)]
                }
                visitTrigger(l, u) {}
                visitState(l, u) {}
                visitTransition(l, u) {}
                visitAnimateChild(l, u) {
                    const p = u.subInstructions.consume(u.element);
                    if (p) {
                        const C = u.createSubContext(l.options),
                            M = u.currentTimeline.currentTime,
                            F = this._visitSubInstructions(p, C, C.options);
                        M != F && u.transformIntoNewTimeline(F)
                    }
                    u.previousNode = l
                }
                visitAnimateRef(l, u) {
                    const p = u.createSubContext(l.options);
                    p.transformIntoNewTimeline(), this.visitReference(l.animation, p), u.transformIntoNewTimeline(p.currentTimeline.currentTime), u.previousNode = l
                }
                _visitSubInstructions(l, u, p) {
                    let M = u.currentTimeline.currentTime;
                    const F = null != p.duration ? Cn(p.duration) : null,
                        V = null != p.delay ? Cn(p.delay) : null;
                    return 0 !== F && l.forEach(Q => {
                        const ie = u.appendInstructionToTimeline(Q, F, V);
                        M = Math.max(M, ie.duration + ie.delay)
                    }), M
                }
                visitReference(l, u) {
                    u.updateOptions(l.options, !0), ge(this, l.animation, u), u.previousNode = l
                }
                visitSequence(l, u) {
                    const p = u.subContextCount;
                    let C = u;
                    const M = l.options;
                    if (M && (M.params || M.delay) && (C = u.createSubContext(M), C.transformIntoNewTimeline(), null != M.delay)) {
                        6 == C.previousNode.type && (C.currentTimeline.snapshotCurrentStyles(), C.previousNode = Er);
                        const F = Cn(M.delay);
                        C.delayNextStep(F)
                    }
                    l.steps.length && (l.steps.forEach(F => ge(this, F, C)), C.currentTimeline.applyStylesToKeyframe(), C.subContextCount > p && C.transformIntoNewTimeline()), u.previousNode = l
                }
                visitGroup(l, u) {
                    const p = [];
                    let C = u.currentTimeline.currentTime;
                    const M = l.options && l.options.delay ? Cn(l.options.delay) : 0;
                    l.steps.forEach(F => {
                        const V = u.createSubContext(l.options);
                        M && V.delayNextStep(M), ge(this, F, V), C = Math.max(C, V.currentTimeline.currentTime), p.push(V.currentTimeline)
                    }), p.forEach(F => u.currentTimeline.mergeTimelineCollectedStyles(F)), u.transformIntoNewTimeline(C), u.previousNode = l
                }
                _visitTiming(l, u) {
                    if (l.dynamic) {
                        const p = l.strValue;
                        return nr(u.params ? sr(p, u.params, u.errors) : p, u.errors)
                    }
                    return {
                        duration: l.duration,
                        delay: l.delay,
                        easing: l.easing
                    }
                }
                visitAnimate(l, u) {
                    const p = u.currentAnimateTimings = this._visitTiming(l.timings, u),
                        C = u.currentTimeline;
                    p.delay && (u.incrementTime(p.delay), C.snapshotCurrentStyles());
                    const M = l.style;
                    5 == M.type ? this.visitKeyframes(M, u) : (u.incrementTime(p.duration), this.visitStyle(M, u), C.applyStylesToKeyframe()), u.currentAnimateTimings = null, u.previousNode = l
                }
                visitStyle(l, u) {
                    const p = u.currentTimeline,
                        C = u.currentAnimateTimings;
                    !C && p.getCurrentStyleProperties().length && p.forwardFrame();
                    const M = C && C.easing || l.easing;
                    l.isEmptyStep ? p.applyEmptyStep(M) : p.setStyles(l.styles, M, u.errors, u.options), u.previousNode = l
                }
                visitKeyframes(l, u) {
                    const p = u.currentAnimateTimings,
                        C = u.currentTimeline.duration,
                        M = p.duration,
                        V = u.createSubContext().currentTimeline;
                    V.easing = p.easing, l.styles.forEach(Q => {
                        V.forwardTime((Q.offset || 0) * M), V.setStyles(Q.styles, Q.easing, u.errors, u.options), V.applyStylesToKeyframe()
                    }), u.currentTimeline.mergeTimelineCollectedStyles(V), u.transformIntoNewTimeline(C + M), u.previousNode = l
                }
                visitQuery(l, u) {
                    const p = u.currentTimeline.currentTime,
                        C = l.options || {},
                        M = C.delay ? Cn(C.delay) : 0;
                    M && (6 === u.previousNode.type || 0 == p && u.currentTimeline.getCurrentStyleProperties().length) && (u.currentTimeline.snapshotCurrentStyles(), u.previousNode = Er);
                    let F = p;
                    const V = u.invokeQuery(l.selector, l.originalSelector, l.limit, l.includeSelf, !!C.optional, u.errors);
                    u.currentQueryTotal = V.length;
                    let Q = null;
                    V.forEach((ie, Ae) => {
                        u.currentQueryIndex = Ae;
                        const Be = u.createSubContext(l.options, ie);
                        M && Be.delayNextStep(M), ie === u.element && (Q = Be.currentTimeline), ge(this, l.animation, Be), Be.currentTimeline.applyStylesToKeyframe(), F = Math.max(F, Be.currentTimeline.currentTime)
                    }), u.currentQueryIndex = 0, u.currentQueryTotal = 0, u.transformIntoNewTimeline(F), Q && (u.currentTimeline.mergeTimelineCollectedStyles(Q), u.currentTimeline.snapshotCurrentStyles()), u.previousNode = l
                }
                visitStagger(l, u) {
                    const p = u.parentContext,
                        C = u.currentTimeline,
                        M = l.timings,
                        F = Math.abs(M.duration),
                        V = F * (u.currentQueryTotal - 1);
                    let Q = F * u.currentQueryIndex;
                    switch (M.duration < 0 ? "reverse" : M.easing) {
                        case "reverse":
                            Q = V - Q;
                            break;
                        case "full":
                            Q = p.currentStaggerTime
                    }
                    const Ae = u.currentTimeline;
                    Q && Ae.delayNextStep(Q);
                    const Be = Ae.currentTime;
                    ge(this, l.animation, u), u.previousNode = l, p.currentStaggerTime = C.currentTime - Be + (C.startTime - p.currentTimeline.startTime)
                }
            }
            const Er = {};
            class ur {
                constructor(l, u, p, C, M, F, V, Q) {
                    this._driver = l, this.element = u, this.subInstructions = p, this._enterClassName = C, this._leaveClassName = M, this.errors = F, this.timelines = V, this.parentContext = null, this.currentAnimateTimings = null, this.previousNode = Er, this.subContextCount = 0, this.options = {}, this.currentQueryIndex = 0, this.currentQueryTotal = 0, this.currentStaggerTime = 0, this.currentTimeline = Q || new On(this._driver, u, 0), V.push(this.currentTimeline)
                }
                get params() {
                    return this.options.params
                }
                updateOptions(l, u) {
                    if (!l) return;
                    const p = l;
                    let C = this.options;
                    null != p.duration && (C.duration = Cn(p.duration)), null != p.delay && (C.delay = Cn(p.delay));
                    const M = p.params;
                    if (M) {
                        let F = C.params;
                        F || (F = this.options.params = {}), Object.keys(M).forEach(V => {
                            (!u || !F.hasOwnProperty(V)) && (F[V] = sr(M[V], F, this.errors))
                        })
                    }
                }
                _copyOptions() {
                    const l = {};
                    if (this.options) {
                        const u = this.options.params;
                        if (u) {
                            const p = l.params = {};
                            Object.keys(u).forEach(C => {
                                p[C] = u[C]
                            })
                        }
                    }
                    return l
                }
                createSubContext(l = null, u, p) {
                    const C = u || this.element,
                        M = new ur(this._driver, C, this.subInstructions, this._enterClassName, this._leaveClassName, this.errors, this.timelines, this.currentTimeline.fork(C, p || 0));
                    return M.previousNode = this.previousNode, M.currentAnimateTimings = this.currentAnimateTimings, M.options = this._copyOptions(), M.updateOptions(l), M.currentQueryIndex = this.currentQueryIndex, M.currentQueryTotal = this.currentQueryTotal, M.parentContext = this, this.subContextCount++, M
                }
                transformIntoNewTimeline(l) {
                    return this.previousNode = Er, this.currentTimeline = this.currentTimeline.fork(this.element, l), this.timelines.push(this.currentTimeline), this.currentTimeline
                }
                appendInstructionToTimeline(l, u, p) {
                    const C = {
                            duration: null != u ? u : l.duration,
                            delay: this.currentTimeline.currentTime + (null != p ? p : 0) + l.delay,
                            easing: ""
                        },
                        M = new yi(this._driver, l.element, l.keyframes, l.preStyleProps, l.postStyleProps, C, l.stretchStartingKeyframe);
                    return this.timelines.push(M), C
                }
                incrementTime(l) {
                    this.currentTimeline.forwardTime(this.currentTimeline.duration + l)
                }
                delayNextStep(l) {
                    l > 0 && this.currentTimeline.delayNextStep(l)
                }
                invokeQuery(l, u, p, C, M, F) {
                    let V = [];
                    if (C && V.push(this.element), l.length > 0) {
                        l = (l = l.replace(ns, "." + this._enterClassName)).replace(Br, "." + this._leaveClassName);
                        let ie = this._driver.query(this.element, l, 1 != p);
                        0 !== p && (ie = p < 0 ? ie.slice(ie.length + p, ie.length) : ie.slice(0, p)), V.push(...ie)
                    }
                    return !M && 0 == V.length && F.push(`\`query("${u}")\` returned zero elements. (Use \`query("${u}", { optional: true })\` if you wish to allow this.)`), V
                }
            }
            class On {
                constructor(l, u, p, C) {
                    this._driver = l, this.element = u, this.startTime = p, this._elementTimelineStylesLookup = C, this.duration = 0, this._previousKeyframe = {}, this._currentKeyframe = {}, this._keyframes = new Map, this._styleSummary = {}, this._pendingStyles = {}, this._backFill = {}, this._currentEmptyStepKeyframe = null, this._elementTimelineStylesLookup || (this._elementTimelineStylesLookup = new Map), this._localTimelineStyles = Object.create(this._backFill, {}), this._globalTimelineStyles = this._elementTimelineStylesLookup.get(u), this._globalTimelineStyles || (this._globalTimelineStyles = this._localTimelineStyles, this._elementTimelineStylesLookup.set(u, this._localTimelineStyles)), this._loadKeyframe()
                }
                containsAnimation() {
                    switch (this._keyframes.size) {
                        case 0:
                            return !1;
                        case 1:
                            return this.getCurrentStyleProperties().length > 0;
                        default:
                            return !0
                    }
                }
                getCurrentStyleProperties() {
                    return Object.keys(this._currentKeyframe)
                }
                get currentTime() {
                    return this.startTime + this.duration
                }
                delayNextStep(l) {
                    const u = 1 == this._keyframes.size && Object.keys(this._pendingStyles).length;
                    this.duration || u ? (this.forwardTime(this.currentTime + l), u && this.snapshotCurrentStyles()) : this.startTime += l
                }
                fork(l, u) {
                    return this.applyStylesToKeyframe(), new On(this._driver, l, u || this.currentTime, this._elementTimelineStylesLookup)
                }
                _loadKeyframe() {
                    this._currentKeyframe && (this._previousKeyframe = this._currentKeyframe), this._currentKeyframe = this._keyframes.get(this.duration), this._currentKeyframe || (this._currentKeyframe = Object.create(this._backFill, {}), this._keyframes.set(this.duration, this._currentKeyframe))
                }
                forwardFrame() {
                    this.duration += 1, this._loadKeyframe()
                }
                forwardTime(l) {
                    this.applyStylesToKeyframe(), this.duration = l, this._loadKeyframe()
                }
                _updateStyle(l, u) {
                    this._localTimelineStyles[l] = u, this._globalTimelineStyles[l] = u, this._styleSummary[l] = {
                        time: this.currentTime,
                        value: u
                    }
                }
                allowOnlyTimelineStyles() {
                    return this._currentEmptyStepKeyframe !== this._currentKeyframe
                }
                applyEmptyStep(l) {
                    l && (this._previousKeyframe.easing = l), Object.keys(this._globalTimelineStyles).forEach(u => {
                        this._backFill[u] = this._globalTimelineStyles[u] || ne.l3, this._currentKeyframe[u] = ne.l3
                    }), this._currentEmptyStepKeyframe = this._currentKeyframe
                }
                setStyles(l, u, p, C) {
                    u && (this._previousKeyframe.easing = u);
                    const M = C && C.params || {},
                        F = function(v, l) {
                            const u = {};
                            let p;
                            return v.forEach(C => {
                                "*" === C ? (p = p || Object.keys(l), p.forEach(M => {
                                    u[M] = ne.l3
                                })) : nn(C, !1, u)
                            }), u
                        }(l, this._globalTimelineStyles);
                    Object.keys(F).forEach(V => {
                        const Q = sr(F[V], M, p);
                        this._pendingStyles[V] = Q, this._localTimelineStyles.hasOwnProperty(V) || (this._backFill[V] = this._globalTimelineStyles.hasOwnProperty(V) ? this._globalTimelineStyles[V] : ne.l3), this._updateStyle(V, Q)
                    })
                }
                applyStylesToKeyframe() {
                    const l = this._pendingStyles,
                        u = Object.keys(l);
                    0 != u.length && (this._pendingStyles = {}, u.forEach(p => {
                        this._currentKeyframe[p] = l[p]
                    }), Object.keys(this._localTimelineStyles).forEach(p => {
                        this._currentKeyframe.hasOwnProperty(p) || (this._currentKeyframe[p] = this._localTimelineStyles[p])
                    }))
                }
                snapshotCurrentStyles() {
                    Object.keys(this._localTimelineStyles).forEach(l => {
                        const u = this._localTimelineStyles[l];
                        this._pendingStyles[l] = u, this._updateStyle(l, u)
                    })
                }
                getFinalKeyframe() {
                    return this._keyframes.get(this.duration)
                }
                get properties() {
                    const l = [];
                    for (let u in this._currentKeyframe) l.push(u);
                    return l
                }
                mergeTimelineCollectedStyles(l) {
                    Object.keys(l._styleSummary).forEach(u => {
                        const p = this._styleSummary[u],
                            C = l._styleSummary[u];
                        (!p || C.time > p.time) && this._updateStyle(u, C.value)
                    })
                }
                buildKeyframes() {
                    this.applyStylesToKeyframe();
                    const l = new Set,
                        u = new Set,
                        p = 1 === this._keyframes.size && 0 === this.duration;
                    let C = [];
                    this._keyframes.forEach((V, Q) => {
                        const ie = nn(V, !0);
                        Object.keys(ie).forEach(Ae => {
                            const Be = ie[Ae];
                            Be == ne.k1 ? l.add(Ae) : Be == ne.l3 && u.add(Ae)
                        }), p || (ie.offset = Q / this.duration), C.push(ie)
                    });
                    const M = l.size ? Kt(l.values()) : [],
                        F = u.size ? Kt(u.values()) : [];
                    if (p) {
                        const V = C[0],
                            Q = mt(V);
                        V.offset = 0, Q.offset = 1, C = [V, Q]
                    }
                    return Ye(this.element, C, M, F, this.duration, this.startTime, this.easing, !1)
                }
            }
            class yi extends On {
                constructor(l, u, p, C, M, F, V = !1) {
                    super(l, u, F.delay), this.keyframes = p, this.preStyleProps = C, this.postStyleProps = M, this._stretchStartingKeyframe = V, this.timings = {
                        duration: F.duration,
                        delay: F.delay,
                        easing: F.easing
                    }
                }
                containsAnimation() {
                    return this.keyframes.length > 1
                }
                buildKeyframes() {
                    let l = this.keyframes,
                        {
                            delay: u,
                            duration: p,
                            easing: C
                        } = this.timings;
                    if (this._stretchStartingKeyframe && u) {
                        const M = [],
                            F = p + u,
                            V = u / F,
                            Q = nn(l[0], !1);
                        Q.offset = 0, M.push(Q);
                        const ie = nn(l[0], !1);
                        ie.offset = bt(V), M.push(ie);
                        const Ae = l.length - 1;
                        for (let Be = 1; Be <= Ae; Be++) {
                            let Ge = nn(l[Be], !1);
                            Ge.offset = bt((u + Ge.offset * p) / F), M.push(Ge)
                        }
                        p = F, u = 0, C = "", l = M
                    }
                    return Ye(this.element, l, this.preStyleProps, this.postStyleProps, p, u, C, !0)
                }
            }

            function bt(v, l = 3) {
                const u = Math.pow(10, l - 1);
                return Math.round(v * u) / u
            }
            class mn {}
            class Oe extends mn {
                normalizePropertyName(l, u) {
                    return Nr(l)
                }
                normalizeStyleValue(l, u, p, C) {
                    let M = "";
                    const F = p.toString().trim();
                    if (U[u] && 0 !== p && "0" !== p)
                        if ("number" == typeof p) M = "px";
                        else {
                            const V = p.match(/^[+-]?[\d\.]+([a-z]*)$/);
                            V && 0 == V[1].length && C.push(`Please provide a CSS unit value for ${l}:${p}`)
                        } return F + M
                }
            }
            const U = (() => function(v) {
                const l = {};
                return v.forEach(u => l[u] = !0), l
            }("width,height,minWidth,minHeight,maxWidth,maxHeight,left,top,bottom,right,fontSize,outlineWidth,outlineOffset,paddingTop,paddingLeft,paddingBottom,paddingRight,marginTop,marginLeft,marginBottom,marginRight,borderRadius,borderWidth,borderTopWidth,borderLeftWidth,borderRightWidth,borderBottomWidth,textIndent,perspective".split(",")))();

            function P(v, l, u, p, C, M, F, V, Q, ie, Ae, Be, Ge) {
                return {
                    type: 0,
                    element: v,
                    triggerName: l,
                    isRemovalTransition: C,
                    fromState: u,
                    fromStyles: M,
                    toState: p,
                    toStyles: F,
                    timelines: V,
                    queriedElements: Q,
                    preStyleProps: ie,
                    postStyleProps: Ae,
                    totalTime: Be,
                    errors: Ge
                }
            }
            const G = {};
            class re {
                constructor(l, u, p) {
                    this._triggerName = l, this.ast = u, this._stateStyles = p
                }
                match(l, u, p, C) {
                    return function(v, l, u, p, C) {
                        return v.some(M => M(l, u, p, C))
                    }(this.ast.matchers, l, u, p, C)
                }
                buildStyles(l, u, p) {
                    const C = this._stateStyles["*"],
                        M = this._stateStyles[l],
                        F = C ? C.buildStyles(u, p) : {};
                    return M ? M.buildStyles(u, p) : F
                }
                build(l, u, p, C, M, F, V, Q, ie, Ae) {
                    const Be = [],
                        Ge = this.ast.options && this.ast.options.params || G,
                        qe = this.buildStyles(p, V && V.params || G, Be),
                        et = Q && Q.params || G,
                        ut = this.buildStyles(C, et, Be),
                        Zt = new Set,
                        Jt = new Map,
                        fn = new Map,
                        yn = "void" === C,
                        qn = {
                            params: st(st({}, Ge), et)
                        },
                        Zn = Ae ? [] : _r(l, u, this.ast.animation, M, F, qe, ut, qn, ie, Be);
                    let Dn = 0;
                    if (Zn.forEach(xr => {
                            Dn = Math.max(xr.duration + xr.delay, Dn)
                        }), Be.length) return P(u, this._triggerName, p, C, yn, qe, ut, [], [], Jt, fn, Dn, Be);
                    Zn.forEach(xr => {
                        const Ir = xr.element,
                            oi = W(Jt, Ir, {});
                        xr.preStyleProps.forEach(Wr => oi[Wr] = !0);
                        const Fs = W(fn, Ir, {});
                        xr.postStyleProps.forEach(Wr => Fs[Wr] = !0), Ir !== u && Zt.add(Ir)
                    });
                    const In = Kt(Zt.values());
                    return P(u, this._triggerName, p, C, yn, qe, ut, Zn, In, Jt, fn, Dn)
                }
            }
            class Le {
                constructor(l, u, p) {
                    this.styles = l, this.defaultParams = u, this.normalizer = p
                }
                buildStyles(l, u) {
                    const p = {},
                        C = mt(this.defaultParams);
                    return Object.keys(l).forEach(M => {
                        const F = l[M];
                        null != F && (C[M] = F)
                    }), this.styles.styles.forEach(M => {
                        if ("string" != typeof M) {
                            const F = M;
                            Object.keys(F).forEach(V => {
                                let Q = F[V];
                                Q.length > 1 && (Q = sr(Q, C, u));
                                const ie = this.normalizer.normalizePropertyName(V, u);
                                Q = this.normalizer.normalizeStyleValue(V, ie, Q, u), p[ie] = Q
                            })
                        }
                    }), p
                }
            }
            class Vt {
                constructor(l, u, p) {
                    this.name = l, this.ast = u, this._normalizer = p, this.transitionFactories = [], this.states = {}, u.states.forEach(C => {
                        this.states[C.name] = new Le(C.style, C.options && C.options.params || {}, p)
                    }), Qn(this.states, "true", "1"), Qn(this.states, "false", "0"), u.transitions.forEach(C => {
                        this.transitionFactories.push(new re(l, C, this.states))
                    }), this.fallbackTransition = function(v, l, u) {
                        return new re(v, {
                            type: 1,
                            animation: {
                                type: 2,
                                steps: [],
                                options: null
                            },
                            matchers: [(F, V) => !0],
                            options: null,
                            queryCount: 0,
                            depCount: 0
                        }, l)
                    }(l, this.states)
                }
                get containsQueries() {
                    return this.ast.queryCount > 0
                }
                matchTransition(l, u, p, C) {
                    return this.transitionFactories.find(F => F.match(l, u, p, C)) || null
                }
                matchStyles(l, u, p) {
                    return this.fallbackTransition.buildStyles(l, u, p)
                }
            }

            function Qn(v, l, u) {
                v.hasOwnProperty(l) ? v.hasOwnProperty(u) || (v[u] = v[l]) : v.hasOwnProperty(u) && (v[l] = v[u])
            }
            const jr = new ar;
            class rs {
                constructor(l, u, p) {
                    this.bodyNode = l, this._driver = u, this._normalizer = p, this._animations = {}, this._playersById = {}, this.players = []
                }
                register(l, u) {
                    const p = [],
                        C = ot(this._driver, u, p);
                    if (p.length) throw new Error(`Unable to build the animation due to the following errors: ${p.join("\n")}`);
                    this._animations[l] = C
                }
                _buildPlayer(l, u, p) {
                    const C = l.element,
                        M = ye(0, this._normalizer, 0, l.keyframes, u, p);
                    return this._driver.animate(C, M, l.duration, l.delay, l.easing, [], !0)
                }
                create(l, u, p = {}) {
                    const C = [],
                        M = this._animations[l];
                    let F;
                    const V = new Map;
                    if (M ? (F = _r(this._driver, u, M, Ne, Te, {}, {}, p, jr, C), F.forEach(Ae => {
                            const Be = W(V, Ae.element, {});
                            Ae.postStyleProps.forEach(Ge => Be[Ge] = null)
                        })) : (C.push("The requested animation doesn't exist or has already been destroyed"), F = []), C.length) throw new Error(`Unable to create the animation due to the following errors: ${C.join("\n")}`);
                    V.forEach((Ae, Be) => {
                        Object.keys(Ae).forEach(Ge => {
                            Ae[Ge] = this._driver.computeStyle(Be, Ge, ne.l3)
                        })
                    });
                    const ie = te(F.map(Ae => {
                        const Be = V.get(Ae.element);
                        return this._buildPlayer(Ae, {}, Be)
                    }));
                    return this._playersById[l] = ie, ie.onDestroy(() => this.destroy(l)), this.players.push(ie), ie
                }
                destroy(l) {
                    const u = this._getPlayer(l);
                    u.destroy(), delete this._playersById[l];
                    const p = this.players.indexOf(u);
                    p >= 0 && this.players.splice(p, 1)
                }
                _getPlayer(l) {
                    const u = this._playersById[l];
                    if (!u) throw new Error(`Unable to find the timeline player referenced by ${l}`);
                    return u
                }
                listen(l, u, p, C) {
                    const M = z(u, "", "", "");
                    return se(this._getPlayer(l), p, M, C), () => {}
                }
                command(l, u, p, C) {
                    if ("register" == p) return void this.register(l, C[0]);
                    if ("create" == p) return void this.create(l, u, C[0] || {});
                    const M = this._getPlayer(l);
                    switch (p) {
                        case "play":
                            M.play();
                            break;
                        case "pause":
                            M.pause();
                            break;
                        case "reset":
                            M.reset();
                            break;
                        case "restart":
                            M.restart();
                            break;
                        case "finish":
                            M.finish();
                            break;
                        case "init":
                            M.init();
                            break;
                        case "setPosition":
                            M.setPosition(parseFloat(C[0]));
                            break;
                        case "destroy":
                            this.destroy(l)
                    }
                }
            }
            const vr = "ng-animate-queued",
                Yn = "ng-animate-disabled",
                xn = ".ng-animate-disabled",
                Mi = [],
                ss = {
                    namespaceId: "",
                    setForRemoval: !1,
                    setForMove: !1,
                    hasAnimation: !1,
                    removedBeforeQueried: !1
                },
                cr = {
                    namespaceId: "",
                    setForMove: !1,
                    setForRemoval: !1,
                    hasAnimation: !1,
                    removedBeforeQueried: !0
                },
                rn = "__ng_removed";
            class Cr {
                constructor(l, u = "") {
                    this.namespaceId = u;
                    const p = l && l.hasOwnProperty("value");
                    if (this.value = null != (v = p ? l.value : l) ? v : null, p) {
                        const M = mt(l);
                        delete M.value, this.options = M
                    } else this.options = {};
                    var v;
                    this.options.params || (this.options.params = {})
                }
                get params() {
                    return this.options.params
                }
                absorbOptions(l) {
                    const u = l.params;
                    if (u) {
                        const p = this.options.params;
                        Object.keys(u).forEach(C => {
                            null == p[C] && (p[C] = u[C])
                        })
                    }
                }
            }
            const br = "void",
                wr = new Cr(br);
            class sn {
                constructor(l, u, p) {
                    this.id = l, this.hostElement = u, this._engine = p, this.players = [], this._triggers = {}, this._queue = [], this._elementListeners = new Map, this._hostClassName = "ng-tns-" + l, Vn(u, this._hostClassName)
                }
                listen(l, u, p, C) {
                    if (!this._triggers.hasOwnProperty(u)) throw new Error(`Unable to listen on the animation trigger event "${p}" because the animation trigger "${u}" doesn't exist!`);
                    if (null == p || 0 == p.length) throw new Error(`Unable to listen on the animation trigger "${u}" because the provided event is undefined!`);
                    if ("start" != (v = p) && "done" != v) throw new Error(`The provided animation trigger event "${p}" for the animation trigger "${u}" is not supported!`);
                    var v;
                    const M = W(this._elementListeners, l, []),
                        F = {
                            name: u,
                            phase: p,
                            callback: C
                        };
                    M.push(F);
                    const V = W(this._engine.statesByElement, l, {});
                    return V.hasOwnProperty(u) || (Vn(l, Ht), Vn(l, Ht + "-" + u), V[u] = wr), () => {
                        this._engine.afterFlush(() => {
                            const Q = M.indexOf(F);
                            Q >= 0 && M.splice(Q, 1), this._triggers[u] || delete V[u]
                        })
                    }
                }
                register(l, u) {
                    return !this._triggers[l] && (this._triggers[l] = u, !0)
                }
                _getTrigger(l) {
                    const u = this._triggers[l];
                    if (!u) throw new Error(`The provided animation trigger "${l}" has not been registered!`);
                    return u
                }
                trigger(l, u, p, C = !0) {
                    const M = this._getTrigger(u),
                        F = new Sn(this.id, u, l);
                    let V = this._engine.statesByElement.get(l);
                    V || (Vn(l, Ht), Vn(l, Ht + "-" + u), this._engine.statesByElement.set(l, V = {}));
                    let Q = V[u];
                    const ie = new Cr(p, this.id);
                    if (!(p && p.hasOwnProperty("value")) && Q && ie.absorbOptions(Q.options), V[u] = ie, Q || (Q = wr), ie.value !== br && Q.value === ie.value) {
                        if (! function(v, l) {
                                const u = Object.keys(v),
                                    p = Object.keys(l);
                                if (u.length != p.length) return !1;
                                for (let C = 0; C < u.length; C++) {
                                    const M = u[C];
                                    if (!l.hasOwnProperty(M) || v[M] !== l[M]) return !1
                                }
                                return !0
                            }(Q.params, ie.params)) {
                            const et = [],
                                ut = M.matchStyles(Q.value, Q.params, et),
                                Zt = M.matchStyles(ie.value, ie.params, et);
                            et.length ? this._engine.reportError(et) : this._engine.afterFlush(() => {
                                Yt(l, ut), un(l, Zt)
                            })
                        }
                        return
                    }
                    const Ge = W(this._engine.playersByElement, l, []);
                    Ge.forEach(et => {
                        et.namespaceId == this.id && et.triggerName == u && et.queued && et.destroy()
                    });
                    let dt = M.matchTransition(Q.value, ie.value, l, ie.params),
                        qe = !1;
                    if (!dt) {
                        if (!C) return;
                        dt = M.fallbackTransition, qe = !0
                    }
                    return this._engine.totalQueuedPlayers++, this._queue.push({
                        element: l,
                        triggerName: u,
                        transition: dt,
                        fromState: Q,
                        toState: ie,
                        player: F,
                        isFallbackTransition: qe
                    }), qe || (Vn(l, vr), F.onStart(() => {
                        Ur(l, vr)
                    })), F.onDone(() => {
                        let et = this.players.indexOf(F);
                        et >= 0 && this.players.splice(et, 1);
                        const ut = this._engine.playersByElement.get(l);
                        if (ut) {
                            let Zt = ut.indexOf(F);
                            Zt >= 0 && ut.splice(Zt, 1)
                        }
                    }), this.players.push(F), Ge.push(F), F
                }
                deregister(l) {
                    delete this._triggers[l], this._engine.statesByElement.forEach((u, p) => {
                        delete u[l]
                    }), this._elementListeners.forEach((u, p) => {
                        this._elementListeners.set(p, u.filter(C => C.name != l))
                    })
                }
                clearElementCache(l) {
                    this._engine.statesByElement.delete(l), this._elementListeners.delete(l);
                    const u = this._engine.playersByElement.get(l);
                    u && (u.forEach(p => p.destroy()), this._engine.playersByElement.delete(l))
                }
                _signalRemovalForInnerTriggers(l, u) {
                    const p = this._engine.driver.query(l, ln, !0);
                    p.forEach(C => {
                        if (C[rn]) return;
                        const M = this._engine.fetchNamespacesByElement(C);
                        M.size ? M.forEach(F => F.triggerLeaveAnimation(C, u, !1, !0)) : this.clearElementCache(C)
                    }), this._engine.afterFlushAnimationsDone(() => p.forEach(C => this.clearElementCache(C)))
                }
                triggerLeaveAnimation(l, u, p, C) {
                    const M = this._engine.statesByElement.get(l);
                    if (M) {
                        const F = [];
                        if (Object.keys(M).forEach(V => {
                                if (this._triggers[V]) {
                                    const Q = this.trigger(l, V, br, C);
                                    Q && F.push(Q)
                                }
                            }), F.length) return this._engine.markElementAsRemoved(this.id, l, !0, u), p && te(F).onDone(() => this._engine.processLeaveNode(l)), !0
                    }
                    return !1
                }
                prepareLeaveAnimationListeners(l) {
                    const u = this._elementListeners.get(l),
                        p = this._engine.statesByElement.get(l);
                    if (u && p) {
                        const C = new Set;
                        u.forEach(M => {
                            const F = M.name;
                            if (C.has(F)) return;
                            C.add(F);
                            const Q = this._triggers[F].fallbackTransition,
                                ie = p[F] || wr,
                                Ae = new Cr(br),
                                Be = new Sn(this.id, F, l);
                            this._engine.totalQueuedPlayers++, this._queue.push({
                                element: l,
                                triggerName: F,
                                transition: Q,
                                fromState: ie,
                                toState: Ae,
                                player: Be,
                                isFallbackTransition: !0
                            })
                        })
                    }
                }
                removeNode(l, u) {
                    const p = this._engine;
                    if (l.childElementCount && this._signalRemovalForInnerTriggers(l, u), this.triggerLeaveAnimation(l, u, !0)) return;
                    let C = !1;
                    if (p.totalAnimations) {
                        const M = p.players.length ? p.playersByQueriedElement.get(l) : [];
                        if (M && M.length) C = !0;
                        else {
                            let F = l;
                            for (; F = F.parentNode;)
                                if (p.statesByElement.get(F)) {
                                    C = !0;
                                    break
                                }
                        }
                    }
                    if (this.prepareLeaveAnimationListeners(l), C) p.markElementAsRemoved(this.id, l, !1, u);
                    else {
                        const M = l[rn];
                        (!M || M === ss) && (p.afterFlush(() => this.clearElementCache(l)), p.destroyInnerAnimations(l), p._onRemovalComplete(l, u))
                    }
                }
                insertNode(l, u) {
                    Vn(l, this._hostClassName)
                }
                drainQueuedTransitions(l) {
                    const u = [];
                    return this._queue.forEach(p => {
                        const C = p.player;
                        if (C.destroyed) return;
                        const M = p.element,
                            F = this._elementListeners.get(M);
                        F && F.forEach(V => {
                            if (V.name == p.triggerName) {
                                const Q = z(M, p.triggerName, p.fromState.value, p.toState.value);
                                Q._data = l, se(p.player, V.phase, Q, V.callback)
                            }
                        }), C.markedForDestroy ? this._engine.afterFlush(() => {
                            C.destroy()
                        }) : u.push(p)
                    }), this._queue = [], u.sort((p, C) => {
                        const M = p.transition.ast.depCount,
                            F = C.transition.ast.depCount;
                        return 0 == M || 0 == F ? M - F : this._engine.driver.containsElement(p.element, C.element) ? 1 : -1
                    })
                }
                destroy(l) {
                    this.players.forEach(u => u.destroy()), this._signalRemovalForInnerTriggers(this.hostElement, l)
                }
                elementContainsData(l) {
                    let u = !1;
                    return this._elementListeners.has(l) && (u = !0), u = !!this._queue.find(p => p.element === l) || u, u
                }
            }
            class bs {
                constructor(l, u, p) {
                    this.bodyNode = l, this.driver = u, this._normalizer = p, this.players = [], this.newHostElements = new Map, this.playersByElement = new Map, this.playersByQueriedElement = new Map, this.statesByElement = new Map, this.disabledNodes = new Set, this.totalAnimations = 0, this.totalQueuedPlayers = 0, this._namespaceLookup = {}, this._namespaceList = [], this._flushFns = [], this._whenQuietFns = [], this.namespacesByHostElement = new Map, this.collectedEnterElements = [], this.collectedLeaveElements = [], this.onRemovalComplete = (C, M) => {}
                }
                _onRemovalComplete(l, u) {
                    this.onRemovalComplete(l, u)
                }
                get queuedPlayers() {
                    const l = [];
                    return this._namespaceList.forEach(u => {
                        u.players.forEach(p => {
                            p.queued && l.push(p)
                        })
                    }), l
                }
                createNamespace(l, u) {
                    const p = new sn(l, u, this);
                    return this.bodyNode && this.driver.containsElement(this.bodyNode, u) ? this._balanceNamespaceList(p, u) : (this.newHostElements.set(u, p), this.collectEnterElement(u)), this._namespaceLookup[l] = p
                }
                _balanceNamespaceList(l, u) {
                    const p = this._namespaceList.length - 1;
                    if (p >= 0) {
                        let C = !1;
                        for (let M = p; M >= 0; M--)
                            if (this.driver.containsElement(this._namespaceList[M].hostElement, u)) {
                                this._namespaceList.splice(M + 1, 0, l), C = !0;
                                break
                            } C || this._namespaceList.splice(0, 0, l)
                    } else this._namespaceList.push(l);
                    return this.namespacesByHostElement.set(u, l), l
                }
                register(l, u) {
                    let p = this._namespaceLookup[l];
                    return p || (p = this.createNamespace(l, u)), p
                }
                registerTrigger(l, u, p) {
                    let C = this._namespaceLookup[l];
                    C && C.register(u, p) && this.totalAnimations++
                }
                destroy(l, u) {
                    if (!l) return;
                    const p = this._fetchNamespace(l);
                    this.afterFlush(() => {
                        this.namespacesByHostElement.delete(p.hostElement), delete this._namespaceLookup[l];
                        const C = this._namespaceList.indexOf(p);
                        C >= 0 && this._namespaceList.splice(C, 1)
                    }), this.afterFlushAnimationsDone(() => p.destroy(u))
                }
                _fetchNamespace(l) {
                    return this._namespaceLookup[l]
                }
                fetchNamespacesByElement(l) {
                    const u = new Set,
                        p = this.statesByElement.get(l);
                    if (p) {
                        const C = Object.keys(p);
                        for (let M = 0; M < C.length; M++) {
                            const F = p[C[M]].namespaceId;
                            if (F) {
                                const V = this._fetchNamespace(F);
                                V && u.add(V)
                            }
                        }
                    }
                    return u
                }
                trigger(l, u, p, C) {
                    if (on(u)) {
                        const M = this._fetchNamespace(l);
                        if (M) return M.trigger(u, p, C), !0
                    }
                    return !1
                }
                insertNode(l, u, p, C) {
                    if (!on(u)) return;
                    const M = u[rn];
                    if (M && M.setForRemoval) {
                        M.setForRemoval = !1, M.setForMove = !0;
                        const F = this.collectedLeaveElements.indexOf(u);
                        F >= 0 && this.collectedLeaveElements.splice(F, 1)
                    }
                    if (l) {
                        const F = this._fetchNamespace(l);
                        F && F.insertNode(u, p)
                    }
                    C && this.collectEnterElement(u)
                }
                collectEnterElement(l) {
                    this.collectedEnterElements.push(l)
                }
                markElementAsDisabled(l, u) {
                    u ? this.disabledNodes.has(l) || (this.disabledNodes.add(l), Vn(l, Yn)) : this.disabledNodes.has(l) && (this.disabledNodes.delete(l), Ur(l, Yn))
                }
                removeNode(l, u, p, C) {
                    if (on(u)) {
                        const M = l ? this._fetchNamespace(l) : null;
                        if (M ? M.removeNode(u, C) : this.markElementAsRemoved(l, u, !1, C), p) {
                            const F = this.namespacesByHostElement.get(u);
                            F && F.id !== l && F.removeNode(u, C)
                        }
                    } else this._onRemovalComplete(u, C)
                }
                markElementAsRemoved(l, u, p, C) {
                    this.collectedLeaveElements.push(u), u[rn] = {
                        namespaceId: l,
                        setForRemoval: C,
                        hasAnimation: p,
                        removedBeforeQueried: !1
                    }
                }
                listen(l, u, p, C, M) {
                    return on(u) ? this._fetchNamespace(l).listen(u, p, C, M) : () => {}
                }
                _buildInstruction(l, u, p, C, M) {
                    return l.transition.build(this.driver, l.element, l.fromState.value, l.toState.value, p, C, l.fromState.options, l.toState.options, u, M)
                }
                destroyInnerAnimations(l) {
                    let u = this.driver.query(l, ln, !0);
                    u.forEach(p => this.destroyActiveAnimationsForElement(p)), 0 != this.playersByQueriedElement.size && (u = this.driver.query(l, vn, !0), u.forEach(p => this.finishActiveQueriedAnimationOnElement(p)))
                }
                destroyActiveAnimationsForElement(l) {
                    const u = this.playersByElement.get(l);
                    u && u.forEach(p => {
                        p.queued ? p.markedForDestroy = !0 : p.destroy()
                    })
                }
                finishActiveQueriedAnimationOnElement(l) {
                    const u = this.playersByQueriedElement.get(l);
                    u && u.forEach(p => p.finish())
                }
                whenRenderingDone() {
                    return new Promise(l => {
                        if (this.players.length) return te(this.players).onDone(() => l());
                        l()
                    })
                }
                processLeaveNode(l) {
                    const u = l[rn];
                    if (u && u.setForRemoval) {
                        if (l[rn] = ss, u.namespaceId) {
                            this.destroyInnerAnimations(l);
                            const p = this._fetchNamespace(u.namespaceId);
                            p && p.clearElementCache(l)
                        }
                        this._onRemovalComplete(l, u.setForRemoval)
                    }
                    this.driver.matchesElement(l, xn) && this.markElementAsDisabled(l, !1), this.driver.query(l, xn, !0).forEach(p => {
                        this.markElementAsDisabled(p, !1)
                    })
                }
                flush(l = -1) {
                    let u = [];
                    if (this.newHostElements.size && (this.newHostElements.forEach((p, C) => this._balanceNamespaceList(p, C)), this.newHostElements.clear()), this.totalAnimations && this.collectedEnterElements.length)
                        for (let p = 0; p < this.collectedEnterElements.length; p++) Vn(this.collectedEnterElements[p], "ng-star-inserted");
                    if (this._namespaceList.length && (this.totalQueuedPlayers || this.collectedLeaveElements.length)) {
                        const p = [];
                        try {
                            u = this._flushAnimations(p, l)
                        } finally {
                            for (let C = 0; C < p.length; C++) p[C]()
                        }
                    } else
                        for (let p = 0; p < this.collectedLeaveElements.length; p++) this.processLeaveNode(this.collectedLeaveElements[p]);
                    if (this.totalQueuedPlayers = 0, this.collectedEnterElements.length = 0, this.collectedLeaveElements.length = 0, this._flushFns.forEach(p => p()), this._flushFns = [], this._whenQuietFns.length) {
                        const p = this._whenQuietFns;
                        this._whenQuietFns = [], u.length ? te(u).onDone(() => {
                            p.forEach(C => C())
                        }) : p.forEach(C => C())
                    }
                }
                reportError(l) {
                    throw new Error(`Unable to process animations due to the following failed trigger transitions\n ${l.join("\n")}`)
                }
                _flushAnimations(l, u) {
                    const p = new ar,
                        C = [],
                        M = new Map,
                        F = [],
                        V = new Map,
                        Q = new Map,
                        ie = new Map,
                        Ae = new Set;
                    this.disabledNodes.forEach(ke => {
                        Ae.add(ke);
                        const Ze = this.driver.query(ke, ".ng-animate-queued", !0);
                        for (let ct = 0; ct < Ze.length; ct++) Ae.add(Ze[ct])
                    });
                    const Be = this.bodyNode,
                        Ge = Array.from(this.statesByElement.keys()),
                        dt = Js(Ge, this.collectedEnterElements),
                        qe = new Map;
                    let et = 0;
                    dt.forEach((ke, Ze) => {
                        const ct = Ne + et++;
                        qe.set(Ze, ct), ke.forEach(at => Vn(at, ct))
                    });
                    const ut = [],
                        Zt = new Set,
                        Jt = new Set;
                    for (let ke = 0; ke < this.collectedLeaveElements.length; ke++) {
                        const Ze = this.collectedLeaveElements[ke],
                            ct = Ze[rn];
                        ct && ct.setForRemoval && (ut.push(Ze), Zt.add(Ze), ct.hasAnimation ? this.driver.query(Ze, ".ng-star-inserted", !0).forEach(at => Zt.add(at)) : Jt.add(Ze))
                    }
                    const fn = new Map,
                        yn = Js(Ge, Array.from(Zt));
                    yn.forEach((ke, Ze) => {
                        const ct = Te + et++;
                        fn.set(Ze, ct), ke.forEach(at => Vn(at, ct))
                    }), l.push(() => {
                        dt.forEach((ke, Ze) => {
                            const ct = qe.get(Ze);
                            ke.forEach(at => Ur(at, ct))
                        }), yn.forEach((ke, Ze) => {
                            const ct = fn.get(Ze);
                            ke.forEach(at => Ur(at, ct))
                        }), ut.forEach(ke => {
                            this.processLeaveNode(ke)
                        })
                    });
                    const qn = [],
                        Zn = [];
                    for (let ke = this._namespaceList.length - 1; ke >= 0; ke--) this._namespaceList[ke].drainQueuedTransitions(u).forEach(ct => {
                        const at = ct.player,
                            $t = ct.element;
                        if (qn.push(at), this.collectedEnterElements.length) {
                            const fr = $t[rn];
                            if (fr && fr.setForMove) return void at.destroy()
                        }
                        const Mt = !Be || !this.driver.containsElement(Be, $t),
                            Un = fn.get($t),
                            Gr = qe.get($t),
                            Qt = this._buildInstruction(ct, p, Gr, Un, Mt);
                        if (Qt.errors && Qt.errors.length) Zn.push(Qt);
                        else {
                            if (Mt) return at.onStart(() => Yt($t, Qt.fromStyles)), at.onDestroy(() => un($t, Qt.toStyles)), void C.push(at);
                            if (ct.isFallbackTransition) return at.onStart(() => Yt($t, Qt.fromStyles)), at.onDestroy(() => un($t, Qt.toStyles)), void C.push(at);
                            Qt.timelines.forEach(fr => fr.stretchStartingKeyframe = !0), p.append($t, Qt.timelines), F.push({
                                instruction: Qt,
                                player: at,
                                element: $t
                            }), Qt.queriedElements.forEach(fr => W(V, fr, []).push(at)), Qt.preStyleProps.forEach((fr, Ls) => {
                                const Kr = Object.keys(fr);
                                if (Kr.length) {
                                    let hr = Q.get(Ls);
                                    hr || Q.set(Ls, hr = new Set), Kr.forEach(ks => hr.add(ks))
                                }
                            }), Qt.postStyleProps.forEach((fr, Ls) => {
                                const Kr = Object.keys(fr);
                                let hr = ie.get(Ls);
                                hr || ie.set(Ls, hr = new Set), Kr.forEach(ks => hr.add(ks))
                            })
                        }
                    });
                    if (Zn.length) {
                        const ke = [];
                        Zn.forEach(Ze => {
                            ke.push(`@${Ze.triggerName} has failed due to:\n`), Ze.errors.forEach(ct => ke.push(`- ${ct}\n`))
                        }), qn.forEach(Ze => Ze.destroy()), this.reportError(ke)
                    }
                    const Dn = new Map,
                        In = new Map;
                    F.forEach(ke => {
                        const Ze = ke.element;
                        p.has(Ze) && (In.set(Ze, Ze), this._beforeAnimationBuild(ke.player.namespaceId, ke.instruction, Dn))
                    }), C.forEach(ke => {
                        const Ze = ke.element;
                        this._getPreviousPlayers(Ze, !1, ke.namespaceId, ke.triggerName, null).forEach(at => {
                            W(Dn, Ze, []).push(at), at.destroy()
                        })
                    });
                    const xr = ut.filter(ke => Ts(ke, Q, ie)),
                        Ir = new Map;
                    Ss(Ir, this.driver, Jt, ie, ne.l3).forEach(ke => {
                        Ts(ke, Q, ie) && xr.push(ke)
                    });
                    const Fs = new Map;
                    dt.forEach((ke, Ze) => {
                        Ss(Fs, this.driver, new Set(ke), Q, ne.k1)
                    }), xr.forEach(ke => {
                        const Ze = Ir.get(ke),
                            ct = Fs.get(ke);
                        Ir.set(ke, st(st({}, Ze), ct))
                    });
                    const Wr = [],
                        Li = [],
                        ki = {};
                    F.forEach(ke => {
                        const {
                            element: Ze,
                            player: ct,
                            instruction: at
                        } = ke;
                        if (p.has(Ze)) {
                            if (Ae.has(Ze)) return ct.onDestroy(() => un(Ze, at.toStyles)), ct.disabled = !0, ct.overrideTotalTime(at.totalTime), void C.push(ct);
                            let $t = ki;
                            if (In.size > 1) {
                                let Un = Ze;
                                const Gr = [];
                                for (; Un = Un.parentNode;) {
                                    const Qt = In.get(Un);
                                    if (Qt) {
                                        $t = Qt;
                                        break
                                    }
                                    Gr.push(Un)
                                }
                                Gr.forEach(Qt => In.set(Qt, $t))
                            }
                            const Mt = this._buildAnimation(ct.namespaceId, at, Dn, M, Fs, Ir);
                            if (ct.setRealPlayer(Mt), $t === ki) Wr.push(ct);
                            else {
                                const Un = this.playersByElement.get($t);
                                Un && Un.length && (ct.parentPlayer = te(Un)), C.push(ct)
                            }
                        } else Yt(Ze, at.fromStyles), ct.onDestroy(() => un(Ze, at.toStyles)), Li.push(ct), Ae.has(Ze) && C.push(ct)
                    }), Li.forEach(ke => {
                        const Ze = M.get(ke.element);
                        if (Ze && Ze.length) {
                            const ct = te(Ze);
                            ke.setRealPlayer(ct)
                        }
                    }), C.forEach(ke => {
                        ke.parentPlayer ? ke.syncPlayerEvents(ke.parentPlayer) : ke.destroy()
                    });
                    for (let ke = 0; ke < ut.length; ke++) {
                        const Ze = ut[ke],
                            ct = Ze[rn];
                        if (Ur(Ze, Te), ct && ct.hasAnimation) continue;
                        let at = [];
                        if (V.size) {
                            let Mt = V.get(Ze);
                            Mt && Mt.length && at.push(...Mt);
                            let Un = this.driver.query(Ze, vn, !0);
                            for (let Gr = 0; Gr < Un.length; Gr++) {
                                let Qt = V.get(Un[Gr]);
                                Qt && Qt.length && at.push(...Qt)
                            }
                        }
                        const $t = at.filter(Mt => !Mt.destroyed);
                        $t.length ? to(this, Ze, $t) : this.processLeaveNode(Ze)
                    }
                    return ut.length = 0, Wr.forEach(ke => {
                        this.players.push(ke), ke.onDone(() => {
                            ke.destroy();
                            const Ze = this.players.indexOf(ke);
                            this.players.splice(Ze, 1)
                        }), ke.play()
                    }), Wr
                }
                elementContainsData(l, u) {
                    let p = !1;
                    const C = u[rn];
                    return C && C.setForRemoval && (p = !0), this.playersByElement.has(u) && (p = !0), this.playersByQueriedElement.has(u) && (p = !0), this.statesByElement.has(u) && (p = !0), this._fetchNamespace(l).elementContainsData(u) || p
                }
                afterFlush(l) {
                    this._flushFns.push(l)
                }
                afterFlushAnimationsDone(l) {
                    this._whenQuietFns.push(l)
                }
                _getPreviousPlayers(l, u, p, C, M) {
                    let F = [];
                    if (u) {
                        const V = this.playersByQueriedElement.get(l);
                        V && (F = V)
                    } else {
                        const V = this.playersByElement.get(l);
                        if (V) {
                            const Q = !M || M == br;
                            V.forEach(ie => {
                                ie.queued || !Q && ie.triggerName != C || F.push(ie)
                            })
                        }
                    }
                    return (p || C) && (F = F.filter(V => !(p && p != V.namespaceId || C && C != V.triggerName))), F
                }
                _beforeAnimationBuild(l, u, p) {
                    const M = u.element,
                        F = u.isRemovalTransition ? void 0 : l,
                        V = u.isRemovalTransition ? void 0 : u.triggerName;
                    for (const Q of u.timelines) {
                        const ie = Q.element,
                            Ae = ie !== M,
                            Be = W(p, ie, []);
                        this._getPreviousPlayers(ie, Ae, F, V, u.toState).forEach(dt => {
                            const qe = dt.getRealPlayer();
                            qe.beforeDestroy && qe.beforeDestroy(), dt.destroy(), Be.push(dt)
                        })
                    }
                    Yt(M, u.fromStyles)
                }
                _buildAnimation(l, u, p, C, M, F) {
                    const V = u.triggerName,
                        Q = u.element,
                        ie = [],
                        Ae = new Set,
                        Be = new Set,
                        Ge = u.timelines.map(qe => {
                            const et = qe.element;
                            Ae.add(et);
                            const ut = et[rn];
                            if (ut && ut.removedBeforeQueried) return new ne.ZN(qe.duration, qe.delay);
                            const Zt = et !== Q,
                                Jt = function(v) {
                                    const l = [];
                                    return Ei(v, l), l
                                }((p.get(et) || Mi).map(Dn => Dn.getRealPlayer())).filter(Dn => !!Dn.element && Dn.element === et),
                                fn = M.get(et),
                                yn = F.get(et),
                                qn = ye(0, this._normalizer, 0, qe.keyframes, fn, yn),
                                Zn = this._buildPlayer(qe, qn, Jt);
                            if (qe.subTimeline && C && Be.add(et), Zt) {
                                const Dn = new Sn(l, V, et);
                                Dn.setRealPlayer(Zn), ie.push(Dn)
                            }
                            return Zn
                        });
                    ie.forEach(qe => {
                        W(this.playersByQueriedElement, qe.element, []).push(qe), qe.onDone(() => function(v, l, u) {
                            let p;
                            if (v instanceof Map) {
                                if (p = v.get(l), p) {
                                    if (p.length) {
                                        const C = p.indexOf(u);
                                        p.splice(C, 1)
                                    }
                                    0 == p.length && v.delete(l)
                                }
                            } else if (p = v[l], p) {
                                if (p.length) {
                                    const C = p.indexOf(u);
                                    p.splice(C, 1)
                                }
                                0 == p.length && delete v[l]
                            }
                            return p
                        }(this.playersByQueriedElement, qe.element, qe))
                    }), Ae.forEach(qe => Vn(qe, zt));
                    const dt = te(Ge);
                    return dt.onDestroy(() => {
                        Ae.forEach(qe => Ur(qe, zt)), un(Q, u.toStyles)
                    }), Be.forEach(qe => {
                        W(C, qe, []).push(dt)
                    }), dt
                }
                _buildPlayer(l, u, p) {
                    return u.length > 0 ? this.driver.animate(l.element, u, l.duration, l.delay, l.easing, p) : new ne.ZN(l.duration, l.delay)
                }
            }
            class Sn {
                constructor(l, u, p) {
                    this.namespaceId = l, this.triggerName = u, this.element = p, this._player = new ne.ZN, this._containsRealPlayer = !1, this._queuedCallbacks = {}, this.destroyed = !1, this.markedForDestroy = !1, this.disabled = !1, this.queued = !0, this.totalTime = 0
                }
                setRealPlayer(l) {
                    this._containsRealPlayer || (this._player = l, Object.keys(this._queuedCallbacks).forEach(u => {
                        this._queuedCallbacks[u].forEach(p => se(l, u, void 0, p))
                    }), this._queuedCallbacks = {}, this._containsRealPlayer = !0, this.overrideTotalTime(l.totalTime), this.queued = !1)
                }
                getRealPlayer() {
                    return this._player
                }
                overrideTotalTime(l) {
                    this.totalTime = l
                }
                syncPlayerEvents(l) {
                    const u = this._player;
                    u.triggerCallback && l.onStart(() => u.triggerCallback("start")), l.onDone(() => this.finish()), l.onDestroy(() => this.destroy())
                }
                _queueEvent(l, u) {
                    W(this._queuedCallbacks, l, []).push(u)
                }
                onDone(l) {
                    this.queued && this._queueEvent("done", l), this._player.onDone(l)
                }
                onStart(l) {
                    this.queued && this._queueEvent("start", l), this._player.onStart(l)
                }
                onDestroy(l) {
                    this.queued && this._queueEvent("destroy", l), this._player.onDestroy(l)
                }
                init() {
                    this._player.init()
                }
                hasStarted() {
                    return !this.queued && this._player.hasStarted()
                }
                play() {
                    !this.queued && this._player.play()
                }
                pause() {
                    !this.queued && this._player.pause()
                }
                restart() {
                    !this.queued && this._player.restart()
                }
                finish() {
                    this._player.finish()
                }
                destroy() {
                    this.destroyed = !0, this._player.destroy()
                }
                reset() {
                    !this.queued && this._player.reset()
                }
                setPosition(l) {
                    this.queued || this._player.setPosition(l)
                }
                getPosition() {
                    return this.queued ? 0 : this._player.getPosition()
                }
                triggerCallback(l) {
                    const u = this._player;
                    u.triggerCallback && u.triggerCallback(l)
                }
            }

            function on(v) {
                return v && 1 === v.nodeType
            }

            function Tn(v, l) {
                const u = v.style.display;
                return v.style.display = null != l ? l : "none", u
            }

            function Ss(v, l, u, p, C) {
                const M = [];
                u.forEach(Q => M.push(Tn(Q)));
                const F = [];
                p.forEach((Q, ie) => {
                    const Ae = {};
                    Q.forEach(Be => {
                        const Ge = Ae[Be] = l.computeStyle(ie, Be, C);
                        (!Ge || 0 == Ge.length) && (ie[rn] = cr, F.push(ie))
                    }), v.set(ie, Ae)
                });
                let V = 0;
                return u.forEach(Q => Tn(Q, M[V++])), F
            }

            function Js(v, l) {
                const u = new Map;
                if (v.forEach(V => u.set(V, [])), 0 == l.length) return u;
                const C = new Set(l),
                    M = new Map;

                function F(V) {
                    if (!V) return 1;
                    let Q = M.get(V);
                    if (Q) return Q;
                    const ie = V.parentNode;
                    return Q = u.has(ie) ? ie : C.has(ie) ? 1 : F(ie), M.set(V, Q), Q
                }
                return l.forEach(V => {
                    const Q = F(V);
                    1 !== Q && u.get(Q).push(V)
                }), u
            }
            const kn = "$$classes";

            function Vn(v, l) {
                if (v.classList) v.classList.add(l);
                else {
                    let u = v[kn];
                    u || (u = v[kn] = {}), u[l] = !0
                }
            }

            function Ur(v, l) {
                if (v.classList) v.classList.remove(l);
                else {
                    let u = v[kn];
                    u && delete u[l]
                }
            }

            function to(v, l, u) {
                te(u).onDone(() => v.processLeaveNode(l))
            }

            function Ei(v, l) {
                for (let u = 0; u < v.length; u++) {
                    const p = v[u];
                    p instanceof ne.ZE ? Ei(p.players, l) : l.push(p)
                }
            }

            function Ts(v, l, u) {
                const p = u.get(v);
                if (!p) return !1;
                let C = l.get(v);
                return C ? p.forEach(M => C.add(M)) : l.set(v, p), u.delete(v), !0
            }
            class Is {
                constructor(l, u, p) {
                    this.bodyNode = l, this._driver = u, this._normalizer = p, this._triggerCache = {}, this.onRemovalComplete = (C, M) => {}, this._transitionEngine = new bs(l, u, p), this._timelineEngine = new rs(l, u, p), this._transitionEngine.onRemovalComplete = (C, M) => this.onRemovalComplete(C, M)
                }
                registerTrigger(l, u, p, C, M) {
                    const F = l + "-" + C;
                    let V = this._triggerCache[F];
                    if (!V) {
                        const Q = [],
                            ie = ot(this._driver, M, Q);
                        if (Q.length) throw new Error(`The animation trigger "${C}" has failed to build due to the following errors:\n - ${Q.join("\n - ")}`);
                        V = function(v, l, u) {
                            return new Vt(v, l, u)
                        }(C, ie, this._normalizer), this._triggerCache[F] = V
                    }
                    this._transitionEngine.registerTrigger(u, C, V)
                }
                register(l, u) {
                    this._transitionEngine.register(l, u)
                }
                destroy(l, u) {
                    this._transitionEngine.destroy(l, u)
                }
                onInsert(l, u, p, C) {
                    this._transitionEngine.insertNode(l, u, p, C)
                }
                onRemove(l, u, p, C) {
                    this._transitionEngine.removeNode(l, u, C || !1, p)
                }
                disableAnimations(l, u) {
                    this._transitionEngine.markElementAsDisabled(l, u)
                }
                process(l, u, p, C) {
                    if ("@" == p.charAt(0)) {
                        const [M, F] = Y(p);
                        this._timelineEngine.command(M, u, F, C)
                    } else this._transitionEngine.trigger(l, u, p, C)
                }
                listen(l, u, p, C, M) {
                    if ("@" == p.charAt(0)) {
                        const [F, V] = Y(p);
                        return this._timelineEngine.listen(F, u, V, M)
                    }
                    return this._transitionEngine.listen(l, u, p, C, M)
                }
                flush(l = -1) {
                    this._transitionEngine.flush(l)
                }
                get players() {
                    return this._transitionEngine.players.concat(this._timelineEngine.players)
                }
                whenRenderingDone() {
                    return this._transitionEngine.whenRenderingDone()
                }
            }

            function Xs(v, l) {
                let u = null,
                    p = null;
                return Array.isArray(l) && l.length ? (u = As(l[0]), l.length > 1 && (p = As(l[l.length - 1]))) : l && (u = As(l)), u || p ? new Ri(v, u, p) : null
            }
            let Ri = (() => {
                class v {
                    constructor(u, p, C) {
                        this._element = u, this._startStyles = p, this._endStyles = C, this._state = 0;
                        let M = v.initialStylesByElement.get(u);
                        M || v.initialStylesByElement.set(u, M = {}), this._initialStyles = M
                    }
                    start() {
                        this._state < 1 && (this._startStyles && un(this._element, this._startStyles, this._initialStyles), this._state = 1)
                    }
                    finish() {
                        this.start(), this._state < 2 && (un(this._element, this._initialStyles), this._endStyles && (un(this._element, this._endStyles), this._endStyles = null), this._state = 1)
                    }
                    destroy() {
                        this.finish(), this._state < 3 && (v.initialStylesByElement.delete(this._element), this._startStyles && (Yt(this._element, this._startStyles), this._endStyles = null), this._endStyles && (Yt(this._element, this._endStyles), this._endStyles = null), un(this._element, this._initialStyles), this._state = 3)
                    }
                }
                return v.initialStylesByElement = new WeakMap, v
            })();

            function As(v) {
                let l = null;
                const u = Object.keys(v);
                for (let p = 0; p < u.length; p++) {
                    const C = u[p];
                    ei(C) && (l = l || {}, l[C] = v[C])
                }
                return l
            }

            function ei(v) {
                return "display" === v || "position" === v
            }
            const as = "animation",
                Ms = "animationend";
            class Di {
                constructor(l, u, p, C, M, F, V) {
                    this._element = l, this._name = u, this._duration = p, this._delay = C, this._easing = M, this._fillMode = F, this._onDoneFn = V, this._finished = !1, this._destroyed = !1, this._startTime = 0, this._position = 0, this._eventFn = Q => this._handleCallback(Q)
                }
                apply() {
                    (function(v, l) {
                        const u = ri(v, "").trim();
                        let p = 0;
                        u.length && (function(v, l) {
                            let u = 0;
                            for (let p = 0; p < v.length; p++) "," === v.charAt(p) && u++;
                            return u
                        }(u) + 1, l = `${u}, ${l}`), $r(v, "", l)
                    })(this._element, `${this._duration}ms ${this._easing} ${this._delay}ms 1 normal ${this._fillMode} ${this._name}`), ni(this._element, this._eventFn, !1), this._startTime = Date.now()
                }
                pause() {
                    Rs(this._element, this._name, "paused")
                }
                resume() {
                    Rs(this._element, this._name, "running")
                }
                setPosition(l) {
                    const u = us(this._element, this._name);
                    this._position = l * this._duration, $r(this._element, "Delay", `-${this._position}ms`, u)
                }
                getPosition() {
                    return this._position
                }
                _handleCallback(l) {
                    const u = l._ngTestManualTimestamp || Date.now(),
                        p = 1e3 * parseFloat(l.elapsedTime.toFixed(3));
                    l.animationName == this._name && Math.max(u - this._startTime, 0) >= this._delay && p >= this._duration && this.finish()
                }
                finish() {
                    this._finished || (this._finished = !0, this._onDoneFn(), ni(this._element, this._eventFn, !0))
                }
                destroy() {
                    this._destroyed || (this._destroyed = !0, this.finish(), function(v, l) {
                        const p = ri(v, "").split(","),
                            C = Hr(p, l);
                        C >= 0 && (p.splice(C, 1), $r(v, "", p.join(",")))
                    }(this._element, this._name))
                }
            }

            function Rs(v, l, u) {
                $r(v, "PlayState", u, us(v, l))
            }

            function us(v, l) {
                const u = ri(v, "");
                return u.indexOf(",") > 0 ? Hr(u.split(","), l) : Hr([u], l)
            }

            function Hr(v, l) {
                for (let u = 0; u < v.length; u++)
                    if (v[u].indexOf(l) >= 0) return u;
                return -1
            }

            function ni(v, l, u) {
                u ? v.removeEventListener(Ms, l) : v.addEventListener(Ms, l)
            }

            function $r(v, l, u, p) {
                const C = as + l;
                if (null != p) {
                    const M = v.style[C];
                    if (M.length) {
                        const F = M.split(",");
                        F[p] = u, u = F.join(",")
                    }
                }
                v.style[C] = u
            }

            function ri(v, l) {
                return v.style[as + l] || ""
            }
            class zr {
                constructor(l, u, p, C, M, F, V, Q) {
                    this.element = l, this.keyframes = u, this.animationName = p, this._duration = C, this._delay = M, this._finalStyles = V, this._specialStyles = Q, this._onDoneFns = [], this._onStartFns = [], this._onDestroyFns = [], this.currentSnapshot = {}, this._state = 0, this.easing = F || "linear", this.totalTime = C + M, this._buildStyler()
                }
                onStart(l) {
                    this._onStartFns.push(l)
                }
                onDone(l) {
                    this._onDoneFns.push(l)
                }
                onDestroy(l) {
                    this._onDestroyFns.push(l)
                }
                destroy() {
                    this.init(), !(this._state >= 4) && (this._state = 4, this._styler.destroy(), this._flushStartFns(), this._flushDoneFns(), this._specialStyles && this._specialStyles.destroy(), this._onDestroyFns.forEach(l => l()), this._onDestroyFns = [])
                }
                _flushDoneFns() {
                    this._onDoneFns.forEach(l => l()), this._onDoneFns = []
                }
                _flushStartFns() {
                    this._onStartFns.forEach(l => l()), this._onStartFns = []
                }
                finish() {
                    this.init(), !(this._state >= 3) && (this._state = 3, this._styler.finish(), this._flushStartFns(), this._specialStyles && this._specialStyles.finish(), this._flushDoneFns())
                }
                setPosition(l) {
                    this._styler.setPosition(l)
                }
                getPosition() {
                    return this._styler.getPosition()
                }
                hasStarted() {
                    return this._state >= 2
                }
                init() {
                    this._state >= 1 || (this._state = 1, this._styler.apply(), this._delay && this._styler.pause())
                }
                play() {
                    this.init(), this.hasStarted() || (this._flushStartFns(), this._state = 2, this._specialStyles && this._specialStyles.start()), this._styler.resume()
                }
                pause() {
                    this.init(), this._styler.pause()
                }
                restart() {
                    this.reset(), this.play()
                }
                reset() {
                    this._state = 0, this._styler.destroy(), this._buildStyler(), this._styler.apply()
                }
                _buildStyler() {
                    this._styler = new Di(this.element, this.animationName, this._duration, this._delay, this.easing, "forwards", () => this.finish())
                }
                triggerCallback(l) {
                    const u = "start" == l ? this._onStartFns : this._onDoneFns;
                    u.forEach(p => p()), u.length = 0
                }
                beforeDestroy() {
                    this.init();
                    const l = {};
                    if (this.hasStarted()) {
                        const u = this._state >= 3;
                        Object.keys(this._finalStyles).forEach(p => {
                            "offset" != p && (l[p] = u ? this._finalStyles[p] : fe(this.element, p))
                        })
                    }
                    this.currentSnapshot = l
                }
            }
            class xi extends ne.ZN {
                constructor(l, u) {
                    super(), this.element = l, this._startingStyles = {}, this.__initialized = !1, this._styles = ue(u)
                }
                init() {
                    this.__initialized || !this._startingStyles || (this.__initialized = !0, Object.keys(this._styles).forEach(l => {
                        this._startingStyles[l] = this.element.style[l]
                    }), super.init())
                }
                play() {
                    !this._startingStyles || (this.init(), Object.keys(this._styles).forEach(l => this.element.style.setProperty(l, this._styles[l])), super.play())
                }
                destroy() {
                    !this._startingStyles || (Object.keys(this._startingStyles).forEach(l => {
                        const u = this._startingStyles[l];
                        u ? this.element.style.setProperty(l, u) : this.element.style.removeProperty(l)
                    }), this._startingStyles = null, super.destroy())
                }
            }
            class Ns {
                constructor() {
                    this._count = 0
                }
                validateStyleProperty(l) {
                    return St(l)
                }
                matchesElement(l, u) {
                    return X(l, u)
                }
                containsElement(l, u) {
                    return Me(l, u)
                }
                query(l, u, p) {
                    return Dt(l, u, p)
                }
                computeStyle(l, u, p) {
                    return window.getComputedStyle(l)[u]
                }
                buildKeyframeElement(l, u, p) {
                    p = p.map(V => ue(V));
                    let C = `@keyframes ${u} {\n`,
                        M = "";
                    p.forEach(V => {
                        M = " ";
                        const Q = parseFloat(V.offset);
                        C += `${M}${100*Q}% {\n`, M += " ", Object.keys(V).forEach(ie => {
                            const Ae = V[ie];
                            switch (ie) {
                                case "offset":
                                    return;
                                case "easing":
                                    return void(Ae && (C += `${M}animation-timing-function: ${Ae};\n`));
                                default:
                                    return void(C += `${M}${ie}: ${Ae};\n`)
                            }
                        }), C += `${M}}\n`
                    }), C += "}\n";
                    const F = document.createElement("style");
                    return F.textContent = C, F
                }
                animate(l, u, p, C, M, F = [], V) {
                    const Q = F.filter(ut => ut instanceof zr),
                        ie = {};
                    N(p, C) && Q.forEach(ut => {
                        let Zt = ut.currentSnapshot;
                        Object.keys(Zt).forEach(Jt => ie[Jt] = Zt[Jt])
                    });
                    const Ae = function(v) {
                        let l = {};
                        return v && (Array.isArray(v) ? v : [v]).forEach(p => {
                            Object.keys(p).forEach(C => {
                                "offset" == C || "easing" == C || (l[C] = p[C])
                            })
                        }), l
                    }(u = $(l, u, ie));
                    if (0 == p) return new xi(l, Ae);
                    const Be = "gen_css_kf_" + this._count++,
                        Ge = this.buildKeyframeElement(l, Be, u);
                    (function(v) {
                        var u;
                        const l = null == (u = v.getRootNode) ? void 0 : u.call(v);
                        return "undefined" != typeof ShadowRoot && l instanceof ShadowRoot ? l : document.head
                    })(l).appendChild(Ge);
                    const qe = Xs(l, u),
                        et = new zr(l, u, Be, p, C, M, Ae, qe);
                    return et.onDestroy(() => {
                        var v;
                        (v = Ge).parentNode.removeChild(v)
                    }), et
                }
            }
            class I {
                constructor(l, u, p, C) {
                    this.element = l, this.keyframes = u, this.options = p, this._specialStyles = C, this._onDoneFns = [], this._onStartFns = [], this._onDestroyFns = [], this._initialized = !1, this._finished = !1, this._started = !1, this._destroyed = !1, this.time = 0, this.parentPlayer = null, this.currentSnapshot = {}, this._duration = p.duration, this._delay = p.delay || 0, this.time = this._duration + this._delay
                }
                _onFinish() {
                    this._finished || (this._finished = !0, this._onDoneFns.forEach(l => l()), this._onDoneFns = [])
                }
                init() {
                    this._buildPlayer(), this._preparePlayerBeforeStart()
                }
                _buildPlayer() {
                    if (this._initialized) return;
                    this._initialized = !0;
                    const l = this.keyframes;
                    this.domPlayer = this._triggerWebAnimation(this.element, l, this.options), this._finalKeyframe = l.length ? l[l.length - 1] : {}, this.domPlayer.addEventListener("finish", () => this._onFinish())
                }
                _preparePlayerBeforeStart() {
                    this._delay ? this._resetDomPlayerState() : this.domPlayer.pause()
                }
                _triggerWebAnimation(l, u, p) {
                    return l.animate(u, p)
                }
                onStart(l) {
                    this._onStartFns.push(l)
                }
                onDone(l) {
                    this._onDoneFns.push(l)
                }
                onDestroy(l) {
                    this._onDestroyFns.push(l)
                }
                play() {
                    this._buildPlayer(), this.hasStarted() || (this._onStartFns.forEach(l => l()), this._onStartFns = [], this._started = !0, this._specialStyles && this._specialStyles.start()), this.domPlayer.play()
                }
                pause() {
                    this.init(), this.domPlayer.pause()
                }
                finish() {
                    this.init(), this._specialStyles && this._specialStyles.finish(), this._onFinish(), this.domPlayer.finish()
                }
                reset() {
                    this._resetDomPlayerState(), this._destroyed = !1, this._finished = !1, this._started = !1
                }
                _resetDomPlayerState() {
                    this.domPlayer && this.domPlayer.cancel()
                }
                restart() {
                    this.reset(), this.play()
                }
                hasStarted() {
                    return this._started
                }
                destroy() {
                    this._destroyed || (this._destroyed = !0, this._resetDomPlayerState(), this._onFinish(), this._specialStyles && this._specialStyles.destroy(), this._onDestroyFns.forEach(l => l()), this._onDestroyFns = [])
                }
                setPosition(l) {
                    void 0 === this.domPlayer && this.init(), this.domPlayer.currentTime = l * this.time
                }
                getPosition() {
                    return this.domPlayer.currentTime / this.time
                }
                get totalTime() {
                    return this._delay + this._duration
                }
                beforeDestroy() {
                    const l = {};
                    this.hasStarted() && Object.keys(this._finalKeyframe).forEach(u => {
                        "offset" != u && (l[u] = this._finished ? this._finalKeyframe[u] : fe(this.element, u))
                    }), this.currentSnapshot = l
                }
                triggerCallback(l) {
                    const u = "start" == l ? this._onStartFns : this._onDoneFns;
                    u.forEach(p => p()), u.length = 0
                }
            }
            class B {
                constructor() {
                    this._isNativeImpl = /\{\s*\[native\s+code\]\s*\}/.test(De().toString()), this._cssKeyframesDriver = new Ns
                }
                validateStyleProperty(l) {
                    return St(l)
                }
                matchesElement(l, u) {
                    return X(l, u)
                }
                containsElement(l, u) {
                    return Me(l, u)
                }
                query(l, u, p) {
                    return Dt(l, u, p)
                }
                computeStyle(l, u, p) {
                    return window.getComputedStyle(l)[u]
                }
                overrideWebAnimationsSupport(l) {
                    this._isNativeImpl = l
                }
                animate(l, u, p, C, M, F = [], V) {
                    if (!V && !this._isNativeImpl) return this._cssKeyframesDriver.animate(l, u, p, C, M, F);
                    const Ae = {
                        duration: p,
                        delay: C,
                        fill: 0 == C ? "both" : "forwards"
                    };
                    M && (Ae.easing = M);
                    const Be = {},
                        Ge = F.filter(qe => qe instanceof I);
                    N(p, C) && Ge.forEach(qe => {
                        let et = qe.currentSnapshot;
                        Object.keys(et).forEach(ut => Be[ut] = et[ut])
                    });
                    const dt = Xs(l, u = $(l, u = u.map(qe => nn(qe, !1)), Be));
                    return new I(l, u, Ae, dt)
                }
            }

            function De() {
                return be() && Element.prototype.animate || {}
            }
            var We = O(6019);
            let Tt = (() => {
                class v extends ne._j {
                    constructor(u, p) {
                        super(), this._nextAnimationId = 0, this._renderer = u.createRenderer(p.body, {
                            id: "0",
                            encapsulation: A.ifc.None,
                            styles: [],
                            data: {
                                animation: []
                            }
                        })
                    }
                    build(u) {
                        const p = this._nextAnimationId.toString();
                        this._nextAnimationId++;
                        const C = Array.isArray(u) ? (0, ne.vP)(u) : u;
                        return yt(this._renderer, null, p, "register", [C]), new wt(p, this._renderer)
                    }
                }
                return v.\u0275fac = function(u) {
                    return new(u || v)(A.LFG(A.FYo), A.LFG(We.K0))
                }, v.\u0275prov = A.Yz7({
                    token: v,
                    factory: v.\u0275fac
                }), v
            })();
            class wt extends ne.LC {
                constructor(l, u) {
                    super(), this._id = l, this._renderer = u
                }
                create(l, u) {
                    return new Rt(this._id, l, u || {}, this._renderer)
                }
            }
            class Rt {
                constructor(l, u, p, C) {
                    this.id = l, this.element = u, this._renderer = C, this.parentPlayer = null, this._started = !1, this.totalTime = 0, this._command("create", p)
                }
                _listen(l, u) {
                    return this._renderer.listen(this.element, `@@${this.id}:${l}`, u)
                }
                _command(l, ...u) {
                    return yt(this._renderer, this.element, this.id, l, u)
                }
                onDone(l) {
                    this._listen("done", l)
                }
                onStart(l) {
                    this._listen("start", l)
                }
                onDestroy(l) {
                    this._listen("destroy", l)
                }
                init() {
                    this._command("init")
                }
                hasStarted() {
                    return this._started
                }
                play() {
                    this._command("play"), this._started = !0
                }
                pause() {
                    this._command("pause")
                }
                restart() {
                    this._command("restart")
                }
                finish() {
                    this._command("finish")
                }
                destroy() {
                    this._command("destroy")
                }
                reset() {
                    this._command("reset"), this._started = !1
                }
                setPosition(l) {
                    this._command("setPosition", l)
                }
                getPosition() {
                    var l, u;
                    return null != (u = null == (l = this._renderer.engine.players[+this.id]) ? void 0 : l.getPosition()) ? u : 0
                }
            }

            function yt(v, l, u, p, C) {
                return v.setProperty(l, `@@${u}:${p}`, C)
            }
            const ht = "@.disabled";
            let en = (() => {
                class v {
                    constructor(u, p, C) {
                        this.delegate = u, this.engine = p, this._zone = C, this._currentId = 0, this._microtaskId = 1, this._animationCallbacksBuffer = [], this._rendererCache = new Map, this._cdRecurDepth = 0, this.promise = Promise.resolve(0), p.onRemovalComplete = (M, F) => {
                            F && F.parentNode(M) && F.removeChild(M.parentNode, M)
                        }
                    }
                    createRenderer(u, p) {
                        const M = this.delegate.createRenderer(u, p);
                        if (!(u && p && p.data && p.data.animation)) {
                            let Ae = this._rendererCache.get(M);
                            return Ae || (Ae = new Sr("", M, this.engine), this._rendererCache.set(M, Ae)), Ae
                        }
                        const F = p.id,
                            V = p.id + "-" + this._currentId;
                        this._currentId++, this.engine.register(V, u);
                        const Q = Ae => {
                            Array.isArray(Ae) ? Ae.forEach(Q) : this.engine.registerTrigger(F, V, u, Ae.name, Ae)
                        };
                        return p.data.animation.forEach(Q), new Tr(this, V, M, this.engine)
                    }
                    begin() {
                        this._cdRecurDepth++, this.delegate.begin && this.delegate.begin()
                    }
                    _scheduleCountTask() {
                        this.promise.then(() => {
                            this._microtaskId++
                        })
                    }
                    scheduleListenerCallback(u, p, C) {
                        u >= 0 && u < this._microtaskId ? this._zone.run(() => p(C)) : (0 == this._animationCallbacksBuffer.length && Promise.resolve(null).then(() => {
                            this._zone.run(() => {
                                this._animationCallbacksBuffer.forEach(M => {
                                    const [F, V] = M;
                                    F(V)
                                }), this._animationCallbacksBuffer = []
                            })
                        }), this._animationCallbacksBuffer.push([p, C]))
                    }
                    end() {
                        this._cdRecurDepth--, 0 == this._cdRecurDepth && this._zone.runOutsideAngular(() => {
                            this._scheduleCountTask(), this.engine.flush(this._microtaskId)
                        }), this.delegate.end && this.delegate.end()
                    }
                    whenRenderingDone() {
                        return this.engine.whenRenderingDone()
                    }
                }
                return v.\u0275fac = function(u) {
                    return new(u || v)(A.LFG(A.FYo), A.LFG(Is), A.LFG(A.R0b))
                }, v.\u0275prov = A.Yz7({
                    token: v,
                    factory: v.\u0275fac
                }), v
            })();
            class Sr {
                constructor(l, u, p) {
                    this.namespaceId = l, this.delegate = u, this.engine = p, this.destroyNode = this.delegate.destroyNode ? C => u.destroyNode(C) : null
                }
                get data() {
                    return this.delegate.data
                }
                destroy() {
                    this.engine.destroy(this.namespaceId, this.delegate), this.delegate.destroy()
                }
                createElement(l, u) {
                    return this.delegate.createElement(l, u)
                }
                createComment(l) {
                    return this.delegate.createComment(l)
                }
                createText(l) {
                    return this.delegate.createText(l)
                }
                appendChild(l, u) {
                    this.delegate.appendChild(l, u), this.engine.onInsert(this.namespaceId, u, l, !1)
                }
                insertBefore(l, u, p, C = !0) {
                    this.delegate.insertBefore(l, u, p), this.engine.onInsert(this.namespaceId, u, l, C)
                }
                removeChild(l, u, p) {
                    this.engine.onRemove(this.namespaceId, u, this.delegate, p)
                }
                selectRootElement(l, u) {
                    return this.delegate.selectRootElement(l, u)
                }
                parentNode(l) {
                    return this.delegate.parentNode(l)
                }
                nextSibling(l) {
                    return this.delegate.nextSibling(l)
                }
                setAttribute(l, u, p, C) {
                    this.delegate.setAttribute(l, u, p, C)
                }
                removeAttribute(l, u, p) {
                    this.delegate.removeAttribute(l, u, p)
                }
                addClass(l, u) {
                    this.delegate.addClass(l, u)
                }
                removeClass(l, u) {
                    this.delegate.removeClass(l, u)
                }
                setStyle(l, u, p, C) {
                    this.delegate.setStyle(l, u, p, C)
                }
                removeStyle(l, u, p) {
                    this.delegate.removeStyle(l, u, p)
                }
                setProperty(l, u, p) {
                    "@" == u.charAt(0) && u == ht ? this.disableAnimations(l, !!p) : this.delegate.setProperty(l, u, p)
                }
                setValue(l, u) {
                    this.delegate.setValue(l, u)
                }
                listen(l, u, p) {
                    return this.delegate.listen(l, u, p)
                }
                disableAnimations(l, u) {
                    this.engine.disableAnimations(l, u)
                }
            }
            class Tr extends Sr {
                constructor(l, u, p, C) {
                    super(u, p, C), this.factory = l, this.namespaceId = u
                }
                setProperty(l, u, p) {
                    "@" == u.charAt(0) ? "." == u.charAt(1) && u == ht ? this.disableAnimations(l, p = void 0 === p || !!p) : this.engine.process(this.namespaceId, l, u.substr(1), p) : this.delegate.setProperty(l, u, p)
                }
                listen(l, u, p) {
                    if ("@" == u.charAt(0)) {
                        const C = function(v) {
                            switch (v) {
                                case "body":
                                    return document.body;
                                case "document":
                                    return document;
                                case "window":
                                    return window;
                                default:
                                    return v
                            }
                        }(l);
                        let M = u.substr(1),
                            F = "";
                        return "@" != M.charAt(0) && ([M, F] = function(v) {
                            const l = v.indexOf(".");
                            return [v.substring(0, l), v.substr(l + 1)]
                        }(M)), this.engine.listen(this.namespaceId, C, M, F, V => {
                            this.factory.scheduleListenerCallback(V._data || -1, p, V)
                        })
                    }
                    return this.delegate.listen(l, u, p)
                }
            }
            let Os = (() => {
                class v extends Is {
                    constructor(u, p, C) {
                        super(u.body, p, C)
                    }
                    ngOnDestroy() {
                        this.flush()
                    }
                }
                return v.\u0275fac = function(u) {
                    return new(u || v)(A.LFG(We.K0), A.LFG(de), A.LFG(mn))
                }, v.\u0275prov = A.Yz7({
                    token: v,
                    factory: v.\u0275fac
                }), v
            })();
            const vi = new A.OlP("AnimationModuleType"),
                ii = [{
                    provide: ne._j,
                    useClass: Tt
                }, {
                    provide: mn,
                    useFactory: function() {
                        return new Oe
                    }
                }, {
                    provide: Is,
                    useClass: Os
                }, {
                    provide: A.FYo,
                    useFactory: function(v, l, u) {
                        return new en(v, l, u)
                    },
                    deps: [T.se, Is, A.R0b]
                }],
                xs = [{
                    provide: de,
                    useFactory: function() {
                        return "function" == typeof De() ? new B : new Ns
                    }
                }, {
                    provide: vi,
                    useValue: "BrowserAnimations"
                }, ...ii],
                na = [{
                    provide: de,
                    useClass: _e
                }, {
                    provide: vi,
                    useValue: "NoopAnimations"
                }, ...ii];
            let ra = (() => {
                class v {
                    static withConfig(u) {
                        return {
                            ngModule: v,
                            providers: u.disableAnimations ? na : xs
                        }
                    }
                }
                return v.\u0275fac = function(u) {
                    return new(u || v)
                }, v.\u0275mod = A.oAB({
                    type: v
                }), v.\u0275inj = A.cJS({
                    providers: xs,
                    imports: [T.b2]
                }), v
            })()
        },
        5427: (He, ce, O) => {
            O.d(ce, {
                b2: () => Vr,
                q6: () => Ct,
                se: () => nn
            });
            var A = O(6019),
                T = O(9619);
            class ne extends A.w_ {
                constructor() {
                    super(...arguments), this.supportsDOMEvents = !0
                }
            }
            class be extends ne {
                static makeCurrent() {
                    (0, A.HT)(new be)
                }
                onAndCancel(k, P, G) {
                    return k.addEventListener(P, G, !1), () => {
                        k.removeEventListener(P, G, !1)
                    }
                }
                dispatchEvent(k, P) {
                    k.dispatchEvent(P)
                }
                remove(k) {
                    k.parentNode && k.parentNode.removeChild(k)
                }
                createElement(k, P) {
                    return (P = P || this.getDefaultDocument()).createElement(k)
                }
                createHtmlDocument() {
                    return document.implementation.createHTMLDocument("fakeTitle")
                }
                getDefaultDocument() {
                    return document
                }
                isElementNode(k) {
                    return k.nodeType === Node.ELEMENT_NODE
                }
                isShadowRoot(k) {
                    return k instanceof DocumentFragment
                }
                getGlobalEventTarget(k, P) {
                    return "window" === P ? window : "document" === P ? k : "body" === P ? k.body : null
                }
                getBaseHref(k) {
                    const P = (he = he || document.querySelector("base"), he ? he.getAttribute("href") : null);
                    return null == P ? null : function(U) {
                        ye = ye || document.createElement("a"), ye.setAttribute("href", U);
                        const k = ye.pathname;
                        return "/" === k.charAt(0) ? k : `/${k}`
                    }(P)
                }
                resetBaseElement() {
                    he = null
                }
                getUserAgent() {
                    return window.navigator.userAgent
                }
                getCookie(k) {
                    return (0, A.Mx)(document.cookie, k)
                }
            }
            let ye, he = null;
            const ee = new T.OlP("TRANSITION_ID"),
                W = [{
                    provide: T.ip1,
                    useFactory: function(U, k, P) {
                        return () => {
                            P.get(T.CZH).donePromise.then(() => {
                                const G = (0, A.q)(),
                                    re = k.querySelectorAll(`style[ng-transition="${U}"]`);
                                for (let je = 0; je < re.length; je++) G.remove(re[je])
                            })
                        }
                    },
                    deps: [ee, A.K0, T.zs3],
                    multi: !0
                }];
            class Y {
                static init() {
                    (0, T.VLi)(new Y)
                }
                addToWindow(k) {
                    T.dqk.getAngularTestability = (G, re = !0) => {
                        const je = k.findTestabilityInTree(G, re);
                        if (null == je) throw new Error("Could not find testability for element.");
                        return je
                    }, T.dqk.getAllAngularTestabilities = () => k.getAllTestabilities(), T.dqk.getAllAngularRootElements = () => k.getAllRootElements(), T.dqk.frameworkStabilizers || (T.dqk.frameworkStabilizers = []), T.dqk.frameworkStabilizers.push(G => {
                        const re = T.dqk.getAllAngularTestabilities();
                        let je = re.length,
                            Le = !1;
                        const Ve = function(Vt) {
                            Le = Le || Vt, je--, 0 == je && G(Le)
                        };
                        re.forEach(function(Vt) {
                            Vt.whenStable(Ve)
                        })
                    })
                }
                findTestabilityInTree(k, P, G) {
                    if (null == P) return null;
                    const re = k.getTestability(P);
                    return null != re ? re : G ? (0, A.q)().isShadowRoot(P) ? this.findTestabilityInTree(k, P.host, !0) : this.findTestabilityInTree(k, P.parentElement, !0) : null
                }
            }
            let Z = (() => {
                class U {
                    build() {
                        return new XMLHttpRequest
                    }
                }
                return U.\u0275fac = function(P) {
                    return new(P || U)
                }, U.\u0275prov = T.Yz7({
                    token: U,
                    factory: U.\u0275fac
                }), U
            })();
            const ve = new T.OlP("EventManagerPlugins");
            let Ce = (() => {
                class U {
                    constructor(P, G) {
                        this._zone = G, this._eventNameToPlugin = new Map, P.forEach(re => re.manager = this), this._plugins = P.slice().reverse()
                    }
                    addEventListener(P, G, re) {
                        return this._findPluginFor(G).addEventListener(P, G, re)
                    }
                    addGlobalEventListener(P, G, re) {
                        return this._findPluginFor(G).addGlobalEventListener(P, G, re)
                    }
                    getZone() {
                        return this._zone
                    }
                    _findPluginFor(P) {
                        const G = this._eventNameToPlugin.get(P);
                        if (G) return G;
                        const re = this._plugins;
                        for (let je = 0; je < re.length; je++) {
                            const Le = re[je];
                            if (Le.supports(P)) return this._eventNameToPlugin.set(P, Le), Le
                        }
                        throw new Error(`No event manager plugin found for event ${P}`)
                    }
                }
                return U.\u0275fac = function(P) {
                    return new(P || U)(T.LFG(ve), T.LFG(T.R0b))
                }, U.\u0275prov = T.Yz7({
                    token: U,
                    factory: U.\u0275fac
                }), U
            })();
            class ae {
                constructor(k) {
                    this._doc = k
                }
                addGlobalEventListener(k, P, G) {
                    const re = (0, A.q)().getGlobalEventTarget(this._doc, k);
                    if (!re) throw new Error(`Unsupported event target ${re} for event ${P}`);
                    return this.addEventListener(re, P, G)
                }
            }
            let Ne = (() => {
                    class U {
                        constructor() {
                            this._stylesSet = new Set
                        }
                        addStyles(P) {
                            const G = new Set;
                            P.forEach(re => {
                                this._stylesSet.has(re) || (this._stylesSet.add(re), G.add(re))
                            }), this.onStylesAdded(G)
                        }
                        onStylesAdded(P) {}
                        getAllStyles() {
                            return Array.from(this._stylesSet)
                        }
                    }
                    return U.\u0275fac = function(P) {
                        return new(P || U)
                    }, U.\u0275prov = T.Yz7({
                        token: U,
                        factory: U.\u0275fac
                    }), U
                })(),
                Te = (() => {
                    class U extends Ne {
                        constructor(P) {
                            super(), this._doc = P, this._hostNodes = new Map, this._hostNodes.set(P.head, [])
                        }
                        _addStylesToHost(P, G, re) {
                            P.forEach(je => {
                                const Le = this._doc.createElement("style");
                                Le.textContent = je, re.push(G.appendChild(Le))
                            })
                        }
                        addHost(P) {
                            const G = [];
                            this._addStylesToHost(this._stylesSet, P, G), this._hostNodes.set(P, G)
                        }
                        removeHost(P) {
                            const G = this._hostNodes.get(P);
                            G && G.forEach(Ut), this._hostNodes.delete(P)
                        }
                        onStylesAdded(P) {
                            this._hostNodes.forEach((G, re) => {
                                this._addStylesToHost(P, re, G)
                            })
                        }
                        ngOnDestroy() {
                            this._hostNodes.forEach(P => P.forEach(Ut))
                        }
                    }
                    return U.\u0275fac = function(P) {
                        return new(P || U)(T.LFG(A.K0))
                    }, U.\u0275prov = T.Yz7({
                        token: U,
                        factory: U.\u0275fac
                    }), U
                })();

            function Ut(U) {
                (0, A.q)().remove(U)
            }
            const Xe = {
                    svg: "http://www.w3.org/2000/svg",
                    xhtml: "http://www.w3.org/1999/xhtml",
                    xlink: "http://www.w3.org/1999/xlink",
                    xml: "http://www.w3.org/XML/1998/namespace",
                    xmlns: "http://www.w3.org/2000/xmlns/"
                },
                Ht = /%COMP%/g;

            function Wt(U, k, P) {
                for (let G = 0; G < k.length; G++) {
                    let re = k[G];
                    Array.isArray(re) ? Wt(U, re, P) : (re = re.replace(Ht, U), P.push(re))
                }
                return P
            }

            function mt(U) {
                return k => {
                    if ("__ngUnwrap__" === k) return U;
                    !1 === U(k) && (k.preventDefault(), k.returnValue = !1)
                }
            }
            let nn = (() => {
                class U {
                    constructor(P, G, re) {
                        this.eventManager = P, this.sharedStylesHost = G, this.appId = re, this.rendererByCompId = new Map, this.defaultRenderer = new rr(P)
                    }
                    createRenderer(P, G) {
                        if (!P || !G) return this.defaultRenderer;
                        switch (G.encapsulation) {
                            case T.ifc.Emulated: {
                                let re = this.rendererByCompId.get(G.id);
                                return re || (re = new Yt(this.eventManager, this.sharedStylesHost, G, this.appId), this.rendererByCompId.set(G.id, re)), re.applyToHost(P), re
                            }
                            case 1:
                            case T.ifc.ShadowDom:
                                return new Pt(this.eventManager, this.sharedStylesHost, P, G);
                            default:
                                if (!this.rendererByCompId.has(G.id)) {
                                    const re = Wt(G.id, G.styles, []);
                                    this.sharedStylesHost.addStyles(re), this.rendererByCompId.set(G.id, this.defaultRenderer)
                                }
                                return this.defaultRenderer
                        }
                    }
                    begin() {}
                    end() {}
                }
                return U.\u0275fac = function(P) {
                    return new(P || U)(T.LFG(Ce), T.LFG(Te), T.LFG(T.AFp))
                }, U.\u0275prov = T.Yz7({
                    token: U,
                    factory: U.\u0275fac
                }), U
            })();
            class rr {
                constructor(k) {
                    this.eventManager = k, this.data = Object.create(null), this.destroyNode = null
                }
                destroy() {}
                createElement(k, P) {
                    return P ? document.createElementNS(Xe[P] || P, k) : document.createElement(k)
                }
                createComment(k) {
                    return document.createComment(k)
                }
                createText(k) {
                    return document.createTextNode(k)
                }
                appendChild(k, P) {
                    k.appendChild(P)
                }
                insertBefore(k, P, G) {
                    k && k.insertBefore(P, G)
                }
                removeChild(k, P) {
                    k && k.removeChild(P)
                }
                selectRootElement(k, P) {
                    let G = "string" == typeof k ? document.querySelector(k) : k;
                    if (!G) throw new Error(`The selector "${k}" did not match any elements`);
                    return P || (G.textContent = ""), G
                }
                parentNode(k) {
                    return k.parentNode
                }
                nextSibling(k) {
                    return k.nextSibling
                }
                setAttribute(k, P, G, re) {
                    if (re) {
                        P = re + ":" + P;
                        const je = Xe[re];
                        je ? k.setAttributeNS(je, P, G) : k.setAttribute(P, G)
                    } else k.setAttribute(P, G)
                }
                removeAttribute(k, P, G) {
                    if (G) {
                        const re = Xe[G];
                        re ? k.removeAttributeNS(re, P) : k.removeAttribute(`${G}:${P}`)
                    } else k.removeAttribute(P)
                }
                addClass(k, P) {
                    k.classList.add(P)
                }
                removeClass(k, P) {
                    k.classList.remove(P)
                }
                setStyle(k, P, G, re) {
                    re & (T.JOm.DashCase | T.JOm.Important) ? k.style.setProperty(P, G, re & T.JOm.Important ? "important" : "") : k.style[P] = G
                }
                removeStyle(k, P, G) {
                    G & T.JOm.DashCase ? k.style.removeProperty(P) : k.style[P] = ""
                }
                setProperty(k, P, G) {
                    k[P] = G
                }
                setValue(k, P) {
                    k.nodeValue = P
                }
                listen(k, P, G) {
                    return "string" == typeof k ? this.eventManager.addGlobalEventListener(k, P, mt(G)) : this.eventManager.addEventListener(k, P, mt(G))
                }
            }
            class Yt extends rr {
                constructor(k, P, G, re) {
                    super(k), this.component = G;
                    const je = Wt(re + "-" + G.id, G.styles, []);
                    P.addStyles(je), this.contentAttr = "_ngcontent-%COMP%".replace(Ht, re + "-" + G.id), this.hostAttr = "_nghost-%COMP%".replace(Ht, re + "-" + G.id)
                }
                applyToHost(k) {
                    super.setAttribute(k, this.hostAttr, "")
                }
                createElement(k, P) {
                    const G = super.createElement(k, P);
                    return super.setAttribute(G, this.contentAttr, ""), G
                }
            }
            class Pt extends rr {
                constructor(k, P, G, re) {
                    super(k), this.sharedStylesHost = P, this.hostEl = G, this.shadowRoot = G.attachShadow({
                        mode: "open"
                    }), this.sharedStylesHost.addHost(this.shadowRoot);
                    const je = Wt(re.id, re.styles, []);
                    for (let Le = 0; Le < je.length; Le++) {
                        const Ve = document.createElement("style");
                        Ve.textContent = je[Le], this.shadowRoot.appendChild(Ve)
                    }
                }
                nodeOrShadowRoot(k) {
                    return k === this.hostEl ? this.shadowRoot : k
                }
                destroy() {
                    this.sharedStylesHost.removeHost(this.shadowRoot)
                }
                appendChild(k, P) {
                    return super.appendChild(this.nodeOrShadowRoot(k), P)
                }
                insertBefore(k, P, G) {
                    return super.insertBefore(this.nodeOrShadowRoot(k), P, G)
                }
                removeChild(k, P) {
                    return super.removeChild(this.nodeOrShadowRoot(k), P)
                }
                parentNode(k) {
                    return this.nodeOrShadowRoot(super.parentNode(this.nodeOrShadowRoot(k)))
                }
            }
            let Rr = (() => {
                class U extends ae {
                    constructor(P) {
                        super(P)
                    }
                    supports(P) {
                        return !0
                    }
                    addEventListener(P, G, re) {
                        return P.addEventListener(G, re, !1), () => this.removeEventListener(P, G, re)
                    }
                    removeEventListener(P, G, re) {
                        return P.removeEventListener(G, re)
                    }
                }
                return U.\u0275fac = function(P) {
                    return new(P || U)(T.LFG(A.K0))
                }, U.\u0275prov = T.Yz7({
                    token: U,
                    factory: U.\u0275fac
                }), U
            })();
            const ge = ["alt", "control", "meta", "shift"],
                Ie = {
                    "\b": "Backspace",
                    "\t": "Tab",
                    "\x7f": "Delete",
                    "\x1b": "Escape",
                    Del: "Delete",
                    Esc: "Escape",
                    Left: "ArrowLeft",
                    Right: "ArrowRight",
                    Up: "ArrowUp",
                    Down: "ArrowDown",
                    Menu: "ContextMenu",
                    Scroll: "ScrollLock",
                    Win: "OS"
                },
                Pe = {
                    A: "1",
                    B: "2",
                    C: "3",
                    D: "4",
                    E: "5",
                    F: "6",
                    G: "7",
                    H: "8",
                    I: "9",
                    J: "*",
                    K: "+",
                    M: "-",
                    N: ".",
                    O: "/",
                    "`": "0",
                    "\x90": "NumLock"
                },
                Fe = {
                    alt: U => U.altKey,
                    control: U => U.ctrlKey,
                    meta: U => U.metaKey,
                    shift: U => U.shiftKey
                };
            let ze = (() => {
                class U extends ae {
                    constructor(P) {
                        super(P)
                    }
                    supports(P) {
                        return null != U.parseEventName(P)
                    }
                    addEventListener(P, G, re) {
                        const je = U.parseEventName(G),
                            Le = U.eventCallback(je.fullKey, re, this.manager.getZone());
                        return this.manager.getZone().runOutsideAngular(() => (0, A.q)().onAndCancel(P, je.domEventName, Le))
                    }
                    static parseEventName(P) {
                        const G = P.toLowerCase().split("."),
                            re = G.shift();
                        if (0 === G.length || "keydown" !== re && "keyup" !== re) return null;
                        const je = U._normalizeKey(G.pop());
                        let Le = "";
                        if (ge.forEach(Vt => {
                                const lt = G.indexOf(Vt);
                                lt > -1 && (G.splice(lt, 1), Le += Vt + ".")
                            }), Le += je, 0 != G.length || 0 === je.length) return null;
                        const Ve = {};
                        return Ve.domEventName = re, Ve.fullKey = Le, Ve
                    }
                    static getEventFullKey(P) {
                        let G = "",
                            re = function(U) {
                                let k = U.key;
                                if (null == k) {
                                    if (k = U.keyIdentifier, null == k) return "Unidentified";
                                    k.startsWith("U+") && (k = String.fromCharCode(parseInt(k.substring(2), 16)), 3 === U.location && Pe.hasOwnProperty(k) && (k = Pe[k]))
                                }
                                return Ie[k] || k
                            }(P);
                        return re = re.toLowerCase(), " " === re ? re = "space" : "." === re && (re = "dot"), ge.forEach(je => {
                            je != re && Fe[je](P) && (G += je + ".")
                        }), G += re, G
                    }
                    static eventCallback(P, G, re) {
                        return je => {
                            U.getEventFullKey(je) === P && re.runGuarded(() => G(je))
                        }
                    }
                    static _normalizeKey(P) {
                        return "esc" === P ? "escape" : P
                    }
                }
                return U.\u0275fac = function(P) {
                    return new(P || U)(T.LFG(A.K0))
                }, U.\u0275prov = T.Yz7({
                    token: U,
                    factory: U.\u0275fac
                }), U
            })();
            const Ct = (0, T.eFA)(T._c5, "browser", [{
                    provide: T.Lbi,
                    useValue: A.bD
                }, {
                    provide: T.g9A,
                    useValue: function() {
                        be.makeCurrent(), Y.init()
                    },
                    multi: !0
                }, {
                    provide: A.K0,
                    useFactory: function() {
                        return (0, T.RDi)(document), document
                    },
                    deps: []
                }]),
                or = [
                    [], {
                        provide: T.zSh,
                        useValue: "root"
                    }, {
                        provide: T.qLn,
                        useFactory: function() {
                            return new T.qLn
                        },
                        deps: []
                    }, {
                        provide: ve,
                        useClass: Rr,
                        multi: !0,
                        deps: [A.K0, T.R0b, T.Lbi]
                    }, {
                        provide: ve,
                        useClass: ze,
                        multi: !0,
                        deps: [A.K0]
                    },
                    [], {
                        provide: nn,
                        useClass: nn,
                        deps: [Ce, Te, T.AFp]
                    }, {
                        provide: T.FYo,
                        useExisting: nn
                    }, {
                        provide: Ne,
                        useExisting: Te
                    }, {
                        provide: Te,
                        useClass: Te,
                        deps: [A.K0]
                    }, {
                        provide: T.dDg,
                        useClass: T.dDg,
                        deps: [T.R0b]
                    }, {
                        provide: Ce,
                        useClass: Ce,
                        deps: [ve, T.R0b]
                    }, {
                        provide: A.JF,
                        useClass: Z,
                        deps: []
                    },
                    []
                ];
            let Vr = (() => {
                class U {
                    constructor(P) {
                        if (P) throw new Error("BrowserModule has already been loaded. If you need access to common directives such as NgIf and NgFor from a lazy loaded module, import CommonModule instead.")
                    }
                    static withServerTransition(P) {
                        return {
                            ngModule: U,
                            providers: [{
                                provide: T.AFp,
                                useValue: P.appId
                            }, {
                                provide: ee,
                                useExisting: T.AFp
                            }, W]
                        }
                    }
                }
                return U.\u0275fac = function(P) {
                    return new(P || U)(T.LFG(U, 12))
                }, U.\u0275mod = T.oAB({
                    type: U
                }), U.\u0275inj = T.cJS({
                    providers: or,
                    imports: [A.ez, T.hGG]
                }), U
            })();
            "undefined" != typeof window && window
        },
        6706: (He, ce, O) => {
            O.d(ce, {
                F0: () => Wn,
                Bz: () => al,
                lC: () => en
            });
            var A = O(6019),
                T = O(9619),
                ne = O(3405),
                be = O(2108);
            class he extends ne.xQ {
                constructor(d) {
                    super(), this._value = d
                }
                get value() {
                    return this.getValue()
                }
                _subscribe(d) {
                    const c = super._subscribe(d);
                    return c && !c.closed && d.next(this._value), c
                }
                getValue() {
                    if (this.hasError) throw this.thrownError;
                    if (this.closed) throw new be.N;
                    return this._value
                }
                next(d) {
                    super.next(this._value = d)
                }
            }
            var te = O(8151),
                ye = O(5894),
                se = O(4168);
            class ee extends se.L {
                notifyNext(d, c, m, E, w) {
                    this.destination.next(c)
                }
                notifyError(d, c) {
                    this.destination.error(d)
                }
                notifyComplete(d) {
                    this.destination.complete()
                }
            }
            class z extends se.L {
                constructor(d, c, m) {
                    super(), this.parent = d, this.outerValue = c, this.outerIndex = m, this.index = 0
                }
                _next(d) {
                    this.parent.notifyNext(this.outerValue, d, this.outerIndex, this.index++, this)
                }
                _error(d) {
                    this.parent.notifyError(d, this), this.unsubscribe()
                }
                _complete() {
                    this.parent.notifyComplete(this), this.unsubscribe()
                }
            }
            var W = O(4651),
                Y = O(5548);

            function Z(h, d, c, m, E = new z(h, c, m)) {
                if (!E.closed) return d instanceof Y.y ? d.subscribe(E) : (0, W.s)(d)(E)
            }
            var Re = O(5433);
            const xe = {};
            class me {
                constructor(d) {
                    this.resultSelector = d
                }
                call(d, c) {
                    return c.subscribe(new gt(d, this.resultSelector))
                }
            }
            class gt extends ee {
                constructor(d, c) {
                    super(d), this.resultSelector = c, this.active = 0, this.values = [], this.observables = []
                }
                _next(d) {
                    this.values.push(xe), this.observables.push(d)
                }
                _complete() {
                    const d = this.observables,
                        c = d.length;
                    if (0 === c) this.destination.complete();
                    else {
                        this.active = c, this.toRespond = c;
                        for (let m = 0; m < c; m++) this.add(Z(this, d[m], void 0, m))
                    }
                }
                notifyComplete(d) {
                    0 == (this.active -= 1) && this.destination.complete()
                }
                notifyNext(d, c, m) {
                    const E = this.values,
                        x = this.toRespond ? E[m] === xe ? --this.toRespond : this.toRespond : 0;
                    E[m] = c, 0 === x && (this.resultSelector ? this._tryResultSelector(E) : this.destination.next(E.slice()))
                }
                _tryResultSelector(d) {
                    let c;
                    try {
                        c = this.resultSelector.apply(this, d)
                    } catch (m) {
                        return void this.destination.error(m)
                    }
                    this.destination.next(c)
                }
            }
            const St = (() => {
                function h() {
                    return Error.call(this), this.message = "no elements in sequence", this.name = "EmptyError", this
                }
                return h.prototype = Object.create(Error.prototype), h
            })();
            var $e = O(1915),
                X = O(2411),
                Me = O(3596),
                Dt = O(5476),
                ue = O(172),
                _e = O(5783);

            function de(h, d) {
                let c = !1;
                return arguments.length >= 2 && (c = !0),
                    function(E) {
                        return E.lift(new ve(h, d, c))
                    }
            }
            class ve {
                constructor(d, c, m = !1) {
                    this.accumulator = d, this.seed = c, this.hasSeed = m
                }
                call(d, c) {
                    return c.subscribe(new Ce(d, this.accumulator, this.seed, this.hasSeed))
                }
            }
            class Ce extends se.L {
                constructor(d, c, m, E) {
                    super(d), this.accumulator = c, this._seed = m, this.hasSeed = E, this.index = 0
                }
                get seed() {
                    return this._seed
                }
                set seed(d) {
                    this.hasSeed = !0, this._seed = d
                }
                _next(d) {
                    if (this.hasSeed) return this._tryNext(d);
                    this.seed = d, this.destination.next(d)
                }
                _tryNext(d) {
                    const c = this.index++;
                    let m;
                    try {
                        m = this.accumulator(this.seed, d, c)
                    } catch (E) {
                        this.destination.error(E)
                    }
                    this.seed = m, this.destination.next(m)
                }
            }
            var ae = O(8345);

            function Ne(h) {
                return function(c) {
                    const m = new Te(h),
                        E = c.lift(m);
                    return m.caught = E
                }
            }
            class Te {
                constructor(d) {
                    this.selector = d
                }
                call(d, c) {
                    return c.subscribe(new Ut(d, this.selector, this.caught))
                }
            }
            class Ut extends ae.Ds {
                constructor(d, c, m) {
                    super(d), this.selector = c, this.caught = m
                }
                error(d) {
                    if (!this.isStopped) {
                        let c;
                        try {
                            c = this.selector(d, this.caught)
                        } catch (w) {
                            return void super.error(w)
                        }
                        this._unsubscribeAndRecycle();
                        const m = new ae.IY(this);
                        this.add(m);
                        const E = (0, ae.ft)(c, m);
                        E !== m && this.add(E)
                    }
                }
            }
            var Xe = O(8735),
                Ht = O(523);

            function ln(h) {
                return function(c) {
                    return 0 === h ? (0, ue.c)() : c.lift(new zt(h))
                }
            }
            class zt {
                constructor(d) {
                    if (this.total = d, this.total < 0) throw new Ht.W
                }
                call(d, c) {
                    return c.subscribe(new vn(d, this.total))
                }
            }
            class vn extends se.L {
                constructor(d, c) {
                    super(d), this.total = c, this.ring = new Array, this.count = 0
                }
                _next(d) {
                    const c = this.ring,
                        m = this.total,
                        E = this.count++;
                    c.length < m ? c.push(d) : c[E % m] = d
                }
                _complete() {
                    const d = this.destination;
                    let c = this.count;
                    if (c > 0) {
                        const m = this.count >= this.total ? this.total : this.count,
                            E = this.ring;
                        for (let w = 0; w < m; w++) {
                            const x = c++ % m;
                            d.next(E[x])
                        }
                    }
                    d.complete()
                }
            }

            function Cn(h = Wt) {
                return d => d.lift(new Mr(h))
            }
            class Mr {
                constructor(d) {
                    this.errorFactory = d
                }
                call(d, c) {
                    return c.subscribe(new nr(d, this.errorFactory))
                }
            }
            class nr extends se.L {
                constructor(d, c) {
                    super(d), this.errorFactory = c, this.hasValue = !1
                }
                _next(d) {
                    this.hasValue = !0, this.destination.next(d)
                }
                _complete() {
                    if (this.hasValue) return this.destination.complete();
                    {
                        let d;
                        try {
                            d = this.errorFactory()
                        } catch (c) {
                            d = c
                        }
                        this.destination.error(d)
                    }
                }
            }

            function Wt() {
                return new St
            }

            function mt(h = null) {
                return d => d.lift(new gn(h))
            }
            class gn {
                constructor(d) {
                    this.defaultValue = d
                }
                call(d, c) {
                    return c.subscribe(new nn(d, this.defaultValue))
                }
            }
            class nn extends se.L {
                constructor(d, c) {
                    super(d), this.defaultValue = c, this.isEmpty = !0
                }
                _next(d) {
                    this.isEmpty = !1, this.destination.next(d)
                }
                _complete() {
                    this.isEmpty && this.destination.next(this.defaultValue), this.destination.complete()
                }
            }
            var rr = O(7255),
                un = O(6636);

            function Yt(h, d) {
                const c = arguments.length >= 2;
                return m => m.pipe(h ? (0, Xe.h)((E, w) => h(E, w, m)) : rr.y, (0, un.q)(1), c ? mt(d) : Cn(() => new St))
            }

            function Pt() {}
            var Rr = O(6783);

            function Xt(h, d, c) {
                return function(E) {
                    return E.lift(new Pr(h, d, c))
                }
            }
            class Pr {
                constructor(d, c, m) {
                    this.nextOrObserver = d, this.error = c, this.complete = m
                }
                call(d, c) {
                    return c.subscribe(new sr(d, this.nextOrObserver, this.error, this.complete))
                }
            }
            class sr extends se.L {
                constructor(d, c, m, E) {
                    super(d), this._tapNext = Pt, this._tapError = Pt, this._tapComplete = Pt, this._tapError = m || Pt, this._tapComplete = E || Pt, (0, Rr.m)(c) ? (this._context = this, this._tapNext = c) : c && (this._context = c, this._tapNext = c.next || Pt, this._tapError = c.error || Pt, this._tapComplete = c.complete || Pt)
                }
                _next(d) {
                    try {
                        this._tapNext.call(this._context, d)
                    } catch (c) {
                        return void this.destination.error(c)
                    }
                    this.destination.next(d)
                }
                _error(d) {
                    try {
                        this._tapError.call(this._context, d)
                    } catch (c) {
                        return void this.destination.error(c)
                    }
                    this.destination.error(d)
                }
                _complete() {
                    try {
                        this._tapComplete.call(this._context)
                    } catch (d) {
                        return void this.destination.error(d)
                    }
                    return this.destination.complete()
                }
            }
            var Kt = O(1346);
            class Nr {
                constructor(d) {
                    this.callback = d
                }
                call(d, c) {
                    return c.subscribe(new pe(d, this.callback))
                }
            }
            class pe extends se.L {
                constructor(d, c) {
                    super(d), this.add(new Kt.w(c))
                }
            }
            var N = O(8053),
                $ = O(9204),
                ge = O(1125),
                fe = O(6700),
                Ie = O(4421),
                Pe = O(5234),
                Fe = O(2225);
            class ze {
                constructor(d, c) {
                    this.id = d, this.url = c
                }
            }
            class Nt extends ze {
                constructor(d, c, m = "imperative", E = null) {
                    super(d, c), this.navigationTrigger = m, this.restoredState = E
                }
                toString() {
                    return `NavigationStart(id: ${this.id}, url: '${this.url}')`
                }
            }
            class Lt extends ze {
                constructor(d, c, m) {
                    super(d, c), this.urlAfterRedirects = m
                }
                toString() {
                    return `NavigationEnd(id: ${this.id}, url: '${this.url}', urlAfterRedirects: '${this.urlAfterRedirects}')`
                }
            }
            class Ot extends ze {
                constructor(d, c, m) {
                    super(d, c), this.reason = m
                }
                toString() {
                    return `NavigationCancel(id: ${this.id}, url: '${this.url}')`
                }
            }
            class kt extends ze {
                constructor(d, c, m) {
                    super(d, c), this.error = m
                }
                toString() {
                    return `NavigationError(id: ${this.id}, url: '${this.url}', error: ${this.error})`
                }
            }
            class vt extends ze {
                constructor(d, c, m, E) {
                    super(d, c), this.urlAfterRedirects = m, this.state = E
                }
                toString() {
                    return `RoutesRecognized(id: ${this.id}, url: '${this.url}', urlAfterRedirects: '${this.urlAfterRedirects}', state: ${this.state})`
                }
            }
            class ot extends ze {
                constructor(d, c, m, E) {
                    super(d, c), this.urlAfterRedirects = m, this.state = E
                }
                toString() {
                    return `GuardsCheckStart(id: ${this.id}, url: '${this.url}', urlAfterRedirects: '${this.urlAfterRedirects}', state: ${this.state})`
                }
            }
            class Gn extends ze {
                constructor(d, c, m, E, w) {
                    super(d, c), this.urlAfterRedirects = m, this.state = E, this.shouldActivate = w
                }
                toString() {
                    return `GuardsCheckEnd(id: ${this.id}, url: '${this.url}', urlAfterRedirects: '${this.urlAfterRedirects}', state: ${this.state}, shouldActivate: ${this.shouldActivate})`
                }
            }
            class Ke extends ze {
                constructor(d, c, m, E) {
                    super(d, c), this.urlAfterRedirects = m, this.state = E
                }
                toString() {
                    return `ResolveStart(id: ${this.id}, url: '${this.url}', urlAfterRedirects: '${this.urlAfterRedirects}', state: ${this.state})`
                }
            }
            class cn extends ze {
                constructor(d, c, m, E) {
                    super(d, c), this.urlAfterRedirects = m, this.state = E
                }
                toString() {
                    return `ResolveEnd(id: ${this.id}, url: '${this.url}', urlAfterRedirects: '${this.urlAfterRedirects}', state: ${this.state})`
                }
            }
            class ir {
                constructor(d) {
                    this.route = d
                }
                toString() {
                    return `RouteConfigLoadStart(path: ${this.route.path})`
                }
            }
            class zn {
                constructor(d) {
                    this.route = d
                }
                toString() {
                    return `RouteConfigLoadEnd(path: ${this.route.path})`
                }
            }
            class Ct {
                constructor(d) {
                    this.snapshot = d
                }
                toString() {
                    return `ChildActivationStart(path: '${this.snapshot.routeConfig&&this.snapshot.routeConfig.path||""}')`
                }
            }
            class or {
                constructor(d) {
                    this.snapshot = d
                }
                toString() {
                    return `ChildActivationEnd(path: '${this.snapshot.routeConfig&&this.snapshot.routeConfig.path||""}')`
                }
            }
            class Vr {
                constructor(d) {
                    this.snapshot = d
                }
                toString() {
                    return `ActivationStart(path: '${this.snapshot.routeConfig&&this.snapshot.routeConfig.path||""}')`
                }
            }
            class Nn {
                constructor(d) {
                    this.snapshot = d
                }
                toString() {
                    return `ActivationEnd(path: '${this.snapshot.routeConfig&&this.snapshot.routeConfig.path||""}')`
                }
            }
            class Kn {
                constructor(d, c, m) {
                    this.routerEvent = d, this.position = c, this.anchor = m
                }
                toString() {
                    return `Scroll(anchor: '${this.anchor}', position: '${this.position?`${this.position[0]}, ${this.position[1]}`:null}')`
                }
            }
            const Ye = "primary";
            class ar {
                constructor(d) {
                    this.params = d || {}
                }
                has(d) {
                    return Object.prototype.hasOwnProperty.call(this.params, d)
                }
                get(d) {
                    if (this.has(d)) {
                        const c = this.params[d];
                        return Array.isArray(c) ? c[0] : c
                    }
                    return null
                }
                getAll(d) {
                    if (this.has(d)) {
                        const c = this.params[d];
                        return Array.isArray(c) ? c : [c]
                    }
                    return []
                }
                get keys() {
                    return Object.keys(this.params)
                }
            }

            function lr(h) {
                return new ar(h)
            }
            const bn = "ngNavigationCancelingError";

            function ns(h) {
                const d = Error("NavigationCancelingError: " + h);
                return d[bn] = !0, d
            }

            function Br(h, d, c) {
                const m = c.path.split("/");
                if (m.length > h.length || "full" === c.pathMatch && (d.hasChildren() || m.length < h.length)) return null;
                const E = {};
                for (let w = 0; w < m.length; w++) {
                    const x = m[w],
                        j = h[w];
                    if (x.startsWith(":")) E[x.substring(1)] = j;
                    else if (x !== j.path) return null
                }
                return {
                    consumed: h.slice(0, m.length),
                    posParams: E
                }
            }

            function wn(h, d) {
                const c = h ? Object.keys(h) : void 0,
                    m = d ? Object.keys(d) : void 0;
                if (!c || !m || c.length != m.length) return !1;
                let E;
                for (let w = 0; w < c.length; w++)
                    if (E = c[w], !Er(h[E], d[E])) return !1;
                return !0
            }

            function Er(h, d) {
                if (Array.isArray(h) && Array.isArray(d)) {
                    if (h.length !== d.length) return !1;
                    const c = [...h].sort(),
                        m = [...d].sort();
                    return c.every((E, w) => m[w] === E)
                }
                return h === d
            }

            function ur(h) {
                return Array.prototype.concat.apply([], h)
            }

            function On(h) {
                return h.length > 0 ? h[h.length - 1] : null
            }

            function bt(h, d) {
                for (const c in h) h.hasOwnProperty(c) && d(h[c], c)
            }

            function qt(h) {
                return (0, T.CqO)(h) ? h : (0, T.QGY)(h) ? (0, $e.D)(Promise.resolve(h)) : (0, X.of)(h)
            }
            const mn = {
                    exact: function k(h, d, c) {
                        if (!Qn(h.segments, d.segments) || !je(h.segments, d.segments, c) || h.numberOfChildren !== d.numberOfChildren) return !1;
                        for (const m in d.children)
                            if (!h.children[m] || !k(h.children[m], d.children[m], c)) return !1;
                        return !0
                    },
                    subset: G
                },
                dn = {
                    exact: function(h, d) {
                        return wn(h, d)
                    },
                    subset: function(h, d) {
                        return Object.keys(d).length <= Object.keys(h).length && Object.keys(d).every(c => Er(h[c], d[c]))
                    },
                    ignored: () => !0
                };

            function Oe(h, d, c) {
                return mn[c.paths](h.root, d.root, c.matrixParams) && dn[c.queryParams](h.queryParams, d.queryParams) && !("exact" === c.fragment && h.fragment !== d.fragment)
            }

            function G(h, d, c) {
                return re(h, d, d.segments, c)
            }

            function re(h, d, c, m) {
                if (h.segments.length > c.length) {
                    const E = h.segments.slice(0, c.length);
                    return !(!Qn(E, c) || d.hasChildren() || !je(E, c, m))
                }
                if (h.segments.length === c.length) {
                    if (!Qn(h.segments, c) || !je(h.segments, c, m)) return !1;
                    for (const E in d.children)
                        if (!h.children[E] || !G(h.children[E], d.children[E], m)) return !1;
                    return !0
                } {
                    const E = c.slice(0, h.segments.length),
                        w = c.slice(h.segments.length);
                    return !!(Qn(h.segments, E) && je(h.segments, E, m) && h.children[Ye]) && re(h.children[Ye], d, w, m)
                }
            }

            function je(h, d, c) {
                return d.every((m, E) => dn[c](h[E].parameters, m.parameters))
            }
            class Le {
                constructor(d, c, m) {
                    this.root = d, this.queryParams = c, this.fragment = m
                }
                get queryParamMap() {
                    return this._queryParamMap || (this._queryParamMap = lr(this.queryParams)), this._queryParamMap
                }
                toString() {
                    return _n.serialize(this)
                }
            }
            class Ve {
                constructor(d, c) {
                    this.segments = d, this.children = c, this.parent = null, bt(c, (m, E) => m.parent = this)
                }
                hasChildren() {
                    return this.numberOfChildren > 0
                }
                get numberOfChildren() {
                    return Object.keys(this.children).length
                }
                toString() {
                    return Yn(this)
                }
            }
            class Vt {
                constructor(d, c) {
                    this.path = d, this.parameters = c
                }
                get parameterMap() {
                    return this._parameterMap || (this._parameterMap = lr(this.parameters)), this._parameterMap
                }
                toString() {
                    return Cr(this)
                }
            }

            function Qn(h, d) {
                return h.length === d.length && h.every((c, m) => c.path === d[m].path)
            }
            class rs {}
            class vr {
                parse(d) {
                    const c = new ws(d);
                    return new Le(c.parseRootSegment(), c.parseQueryParams(), c.parseFragment())
                }
                serialize(d) {
                    const c = `/${xn(d.root,!0)}`,
                        m = function(h) {
                            const d = Object.keys(h).map(c => {
                                const m = h[c];
                                return Array.isArray(m) ? m.map(E => `${At(c)}=${At(E)}`).join("&") : `${At(c)}=${At(m)}`
                            }).filter(c => !!c);
                            return d.length ? `?${d.join("&")}` : ""
                        }(d.queryParams);
                    var h;
                    return `${c}${m}${"string"==typeof d.fragment?`#${h=d.fragment,encodeURI(h)}`:""}`
                }
            }
            const _n = new vr;

            function Yn(h) {
                return h.segments.map(d => Cr(d)).join("/")
            }

            function xn(h, d) {
                if (!h.hasChildren()) return Yn(h);
                if (d) {
                    const c = h.children[Ye] ? xn(h.children[Ye], !1) : "",
                        m = [];
                    return bt(h.children, (E, w) => {
                        w !== Ye && m.push(`${w}:${xn(E,!1)}`)
                    }), m.length > 0 ? `${c}(${m.join("//")})` : c
                } {
                    const c = function(h, d) {
                        let c = [];
                        return bt(h.children, (m, E) => {
                            E === Ye && (c = c.concat(d(m, E)))
                        }), bt(h.children, (m, E) => {
                            E !== Ye && (c = c.concat(d(m, E)))
                        }), c
                    }(h, (m, E) => E === Ye ? [xn(h.children[Ye], !1)] : [`${E}:${xn(m,!1)}`]);
                    return 1 === Object.keys(h.children).length && null != h.children[Ye] ? `${Yn(h)}/${c[0]}` : `${Yn(h)}/(${c.join("//")})`
                }
            }

            function Fn(h) {
                return encodeURIComponent(h).replace(/%40/g, "@").replace(/%3A/gi, ":").replace(/%24/g, "$").replace(/%2C/gi, ",")
            }

            function At(h) {
                return Fn(h).replace(/%3B/gi, ";")
            }

            function ss(h) {
                return Fn(h).replace(/\(/g, "%28").replace(/\)/g, "%29").replace(/%26/gi, "&")
            }

            function cr(h) {
                return decodeURIComponent(h)
            }

            function rn(h) {
                return cr(h.replace(/\+/g, "%20"))
            }

            function Cr(h) {
                return `${ss(h.path)}${function(h){return Object.keys(h).map(d=>`;${ss(d)}=${ss(h[d])}`).join("")}(h.parameters)}`
            }
            const sn = /^[^\/()?;=#]+/;

            function bs(h) {
                const d = h.match(sn);
                return d ? d[0] : ""
            }
            const Sn = /^[^=?&#]+/,
                _i = /^[^&#]+/;
            class ws {
                constructor(d) {
                    this.url = d, this.remaining = d
                }
                parseRootSegment() {
                    return this.consumeOptional("/"), "" === this.remaining || this.peekStartsWith("?") || this.peekStartsWith("#") ? new Ve([], {}) : new Ve([], this.parseChildren())
                }
                parseQueryParams() {
                    const d = {};
                    if (this.consumeOptional("?"))
                        do {
                            this.parseQueryParam(d)
                        } while (this.consumeOptional("&"));
                    return d
                }
                parseFragment() {
                    return this.consumeOptional("#") ? decodeURIComponent(this.remaining) : null
                }
                parseChildren() {
                    if ("" === this.remaining) return {};
                    this.consumeOptional("/");
                    const d = [];
                    for (this.peekStartsWith("(") || d.push(this.parseSegment()); this.peekStartsWith("/") && !this.peekStartsWith("//") && !this.peekStartsWith("/(");) this.capture("/"), d.push(this.parseSegment());
                    let c = {};
                    this.peekStartsWith("/(") && (this.capture("/"), c = this.parseParens(!0));
                    let m = {};
                    return this.peekStartsWith("(") && (m = this.parseParens(!1)), (d.length > 0 || Object.keys(c).length > 0) && (m[Ye] = new Ve(d, c)), m
                }
                parseSegment() {
                    const d = bs(this.remaining);
                    if ("" === d && this.peekStartsWith(";")) throw new Error(`Empty path url segment cannot have parameters: '${this.remaining}'.`);
                    return this.capture(d), new Vt(cr(d), this.parseMatrixParams())
                }
                parseMatrixParams() {
                    const d = {};
                    for (; this.consumeOptional(";");) this.parseParam(d);
                    return d
                }
                parseParam(d) {
                    const c = bs(this.remaining);
                    if (!c) return;
                    this.capture(c);
                    let m = "";
                    if (this.consumeOptional("=")) {
                        const E = bs(this.remaining);
                        E && (m = E, this.capture(m))
                    }
                    d[cr(c)] = cr(m)
                }
                parseQueryParam(d) {
                    const c = function(h) {
                        const d = h.match(Sn);
                        return d ? d[0] : ""
                    }(this.remaining);
                    if (!c) return;
                    this.capture(c);
                    let m = "";
                    if (this.consumeOptional("=")) {
                        const x = function(h) {
                            const d = h.match(_i);
                            return d ? d[0] : ""
                        }(this.remaining);
                        x && (m = x, this.capture(m))
                    }
                    const E = rn(c),
                        w = rn(m);
                    if (d.hasOwnProperty(E)) {
                        let x = d[E];
                        Array.isArray(x) || (x = [x], d[E] = x), x.push(w)
                    } else d[E] = w
                }
                parseParens(d) {
                    const c = {};
                    for (this.capture("("); !this.consumeOptional(")") && this.remaining.length > 0;) {
                        const m = bs(this.remaining),
                            E = this.remaining[m.length];
                        if ("/" !== E && ")" !== E && ";" !== E) throw new Error(`Cannot parse url '${this.url}'`);
                        let w;
                        m.indexOf(":") > -1 ? (w = m.substr(0, m.indexOf(":")), this.capture(w), this.capture(":")) : d && (w = Ye);
                        const x = this.parseChildren();
                        c[w] = 1 === Object.keys(x).length ? x[Ye] : new Ve([], x), this.consumeOptional("//")
                    }
                    return c
                }
                peekStartsWith(d) {
                    return this.remaining.startsWith(d)
                }
                consumeOptional(d) {
                    return !!this.peekStartsWith(d) && (this.remaining = this.remaining.substring(d.length), !0)
                }
                capture(d) {
                    if (!this.consumeOptional(d)) throw new Error(`Expected "${d}".`)
                }
            }
            class Tn {
                constructor(d) {
                    this._root = d
                }
                get root() {
                    return this._root.value
                }
                parent(d) {
                    const c = this.pathFromRoot(d);
                    return c.length > 1 ? c[c.length - 2] : null
                }
                children(d) {
                    const c = Ss(d, this._root);
                    return c ? c.children.map(m => m.value) : []
                }
                firstChild(d) {
                    const c = Ss(d, this._root);
                    return c && c.children.length > 0 ? c.children[0].value : null
                }
                siblings(d) {
                    const c = Js(d, this._root);
                    return c.length < 2 ? [] : c[c.length - 2].children.map(E => E.value).filter(E => E !== d)
                }
                pathFromRoot(d) {
                    return Js(d, this._root).map(c => c.value)
                }
            }

            function Ss(h, d) {
                if (h === d.value) return d;
                for (const c of d.children) {
                    const m = Ss(h, c);
                    if (m) return m
                }
                return null
            }

            function Js(h, d) {
                if (h === d.value) return [d];
                for (const c of d.children) {
                    const m = Js(h, c);
                    if (m.length) return m.unshift(d), m
                }
                return []
            }
            class kn {
                constructor(d, c) {
                    this.value = d, this.children = c
                }
                toString() {
                    return `TreeNode(${this.value})`
                }
            }

            function is(h) {
                const d = {};
                return h && h.children.forEach(c => d[c.value.outlet] = c), d
            }
            class Vn extends Tn {
                constructor(d, c) {
                    super(d), this.snapshot = c, Xs(this, d)
                }
                toString() {
                    return this.snapshot.toString()
                }
            }

            function Ur(h, d) {
                const c = function(h, d) {
                        const x = new Ts([], {}, {}, "", {}, Ye, d, null, h.root, -1, {});
                        return new Is("", new kn(x, []))
                    }(h, d),
                    m = new he([new Vt("", {})]),
                    E = new he({}),
                    w = new he({}),
                    x = new he({}),
                    j = new he(""),
                    oe = new os(m, E, x, j, w, Ye, d, c.root);
                return oe.snapshot = c.root, new Vn(new kn(oe, []), c)
            }
            class os {
                constructor(d, c, m, E, w, x, j, oe) {
                    this.url = d, this.params = c, this.queryParams = m, this.fragment = E, this.data = w, this.outlet = x, this.component = j, this._futureSnapshot = oe
                }
                get routeConfig() {
                    return this._futureSnapshot.routeConfig
                }
                get root() {
                    return this._routerState.root
                }
                get parent() {
                    return this._routerState.parent(this)
                }
                get firstChild() {
                    return this._routerState.firstChild(this)
                }
                get children() {
                    return this._routerState.children(this)
                }
                get pathFromRoot() {
                    return this._routerState.pathFromRoot(this)
                }
                get paramMap() {
                    return this._paramMap || (this._paramMap = this.params.pipe((0, N.U)(d => lr(d)))), this._paramMap
                }
                get queryParamMap() {
                    return this._queryParamMap || (this._queryParamMap = this.queryParams.pipe((0, N.U)(d => lr(d)))), this._queryParamMap
                }
                toString() {
                    return this.snapshot ? this.snapshot.toString() : `Future(${this._futureSnapshot})`
                }
            }

            function Ei(h, d = "emptyOnly") {
                const c = h.pathFromRoot;
                let m = 0;
                if ("always" !== d)
                    for (m = c.length - 1; m >= 1;) {
                        const E = c[m],
                            w = c[m - 1];
                        if (E.routeConfig && "" === E.routeConfig.path) m--;
                        else {
                            if (w.component) break;
                            m--
                        }
                    }
                return function(h) {
                    return h.reduce((d, c) => ({
                        params: st(st({}, d.params), c.params),
                        data: st(st({}, d.data), c.data),
                        resolve: st(st({}, d.resolve), c._resolvedData)
                    }), {
                        params: {},
                        data: {},
                        resolve: {}
                    })
                }(c.slice(m))
            }
            class Ts {
                constructor(d, c, m, E, w, x, j, oe, Ue, xt, nt) {
                    this.url = d, this.params = c, this.queryParams = m, this.fragment = E, this.data = w, this.outlet = x, this.component = j, this.routeConfig = oe, this._urlSegment = Ue, this._lastPathIndex = xt, this._resolve = nt
                }
                get root() {
                    return this._routerState.root
                }
                get parent() {
                    return this._routerState.parent(this)
                }
                get firstChild() {
                    return this._routerState.firstChild(this)
                }
                get children() {
                    return this._routerState.children(this)
                }
                get pathFromRoot() {
                    return this._routerState.pathFromRoot(this)
                }
                get paramMap() {
                    return this._paramMap || (this._paramMap = lr(this.params)), this._paramMap
                }
                get queryParamMap() {
                    return this._queryParamMap || (this._queryParamMap = lr(this.queryParams)), this._queryParamMap
                }
                toString() {
                    return `Route(url:'${this.url.map(m=>m.toString()).join("/")}', path:'${this.routeConfig?this.routeConfig.path:""}')`
                }
            }
            class Is extends Tn {
                constructor(d, c) {
                    super(c), this.url = d, Xs(this, c)
                }
                toString() {
                    return Ri(this._root)
                }
            }

            function Xs(h, d) {
                d.value._routerState = h, d.children.forEach(c => Xs(h, c))
            }

            function Ri(h) {
                const d = h.children.length > 0 ? ` { ${h.children.map(Ri).join(", ")} } ` : "";
                return `${h.value}${d}`
            }

            function As(h) {
                if (h.snapshot) {
                    const d = h.snapshot,
                        c = h._futureSnapshot;
                    h.snapshot = c, wn(d.queryParams, c.queryParams) || h.queryParams.next(c.queryParams), d.fragment !== c.fragment && h.fragment.next(c.fragment), wn(d.params, c.params) || h.params.next(c.params),
                        function(h, d) {
                            if (h.length !== d.length) return !1;
                            for (let c = 0; c < h.length; ++c)
                                if (!wn(h[c], d[c])) return !1;
                            return !0
                        }(d.url, c.url) || h.url.next(c.url), wn(d.data, c.data) || h.data.next(c.data)
                } else h.snapshot = h._futureSnapshot, h.data.next(h._futureSnapshot.data)
            }

            function ei(h, d) {
                const c = wn(h.params, d.params) && function(h, d) {
                    return Qn(h, d) && h.every((c, m) => wn(c.parameters, d[m].parameters))
                }(h.url, d.url);
                return c && !(!h.parent != !d.parent) && (!h.parent || ei(h.parent, d.parent))
            }

            function as(h, d, c) {
                if (c && h.shouldReuseRoute(d.value, c.value.snapshot)) {
                    const m = c.value;
                    m._futureSnapshot = d.value;
                    const E = function(h, d, c) {
                        return d.children.map(m => {
                            for (const E of c.children)
                                if (h.shouldReuseRoute(m.value, E.value.snapshot)) return as(h, m, E);
                            return as(h, m)
                        })
                    }(h, d, c);
                    return new kn(m, E)
                } {
                    if (h.shouldAttach(d.value)) {
                        const w = h.retrieve(d.value);
                        if (null !== w) {
                            const x = w.route;
                            return x.value._futureSnapshot = d.value, x.children = d.children.map(j => as(h, j)), x
                        }
                    }
                    const m = function(h) {
                            return new os(new he(h.url), new he(h.params), new he(h.queryParams), new he(h.fragment), new he(h.data), h.outlet, h.component, h)
                        }(d.value),
                        E = d.children.map(w => as(h, w));
                    return new kn(m, E)
                }
            }

            function Rs(h) {
                return "object" == typeof h && null != h && !h.outlets && !h.segmentPath
            }

            function ti(h) {
                return "object" == typeof h && null != h && h.outlets
            }

            function dr(h, d, c, m, E) {
                let w = {};
                return m && bt(m, (x, j) => {
                    w[j] = Array.isArray(x) ? x.map(oe => `${oe}`) : `${x}`
                }), new Le(c.root === h ? d : us(c.root, h, d), w, E)
            }

            function us(h, d, c) {
                const m = {};
                return bt(h.children, (E, w) => {
                    m[w] = E === d ? c : us(E, d, c)
                }), new Ve(h.segments, m)
            }
            class Hr {
                constructor(d, c, m) {
                    if (this.isAbsolute = d, this.numberOfDoubleDots = c, this.commands = m, d && m.length > 0 && Rs(m[0])) throw new Error("Root segment cannot have matrix parameters");
                    const E = m.find(ti);
                    if (E && E !== On(m)) throw new Error("{outlets:{}} has to be the last command")
                }
                toRoot() {
                    return this.isAbsolute && 1 === this.commands.length && "/" == this.commands[0]
                }
            }
            class $r {
                constructor(d, c, m) {
                    this.segmentGroup = d, this.processChildren = c, this.index = m
                }
            }

            function Oi(h, d, c) {
                if (h || (h = new Ve([], {})), 0 === h.segments.length && h.hasChildren()) return zr(h, d, c);
                const m = function(h, d, c) {
                        let m = 0,
                            E = d;
                        const w = {
                            match: !1,
                            pathIndex: 0,
                            commandIndex: 0
                        };
                        for (; E < h.segments.length;) {
                            if (m >= c.length) return w;
                            const x = h.segments[E],
                                j = c[m];
                            if (ti(j)) break;
                            const oe = `${j}`,
                                Ue = m < c.length - 1 ? c[m + 1] : null;
                            if (E > 0 && void 0 === oe) break;
                            if (oe && Ue && "object" == typeof Ue && void 0 === Ue.outlets) {
                                if (!si(oe, Ue, x)) return w;
                                m += 2
                            } else {
                                if (!si(oe, {}, x)) return w;
                                m++
                            }
                            E++
                        }
                        return {
                            match: !0,
                            pathIndex: E,
                            commandIndex: m
                        }
                    }(h, d, c),
                    E = c.slice(m.commandIndex);
                if (m.match && m.pathIndex < h.segments.length) {
                    const w = new Ve(h.segments.slice(0, m.pathIndex), {});
                    return w.children[Ye] = new Ve(h.segments.slice(m.pathIndex), h.children), zr(w, 0, E)
                }
                return m.match && 0 === E.length ? new Ve(h.segments, {}) : m.match && !h.hasChildren() ? En(h, d, c) : m.match ? zr(h, 0, E) : En(h, d, c)
            }

            function zr(h, d, c) {
                if (0 === c.length) return new Ve(h.segments, {});
                {
                    const m = function(h) {
                            return ti(h[0]) ? h[0].outlets : {
                                [Ye]: h
                            }
                        }(c),
                        E = {};
                    return bt(m, (w, x) => {
                        "string" == typeof w && (w = [w]), null !== w && (E[x] = Oi(h.children[x], d, w))
                    }), bt(h.children, (w, x) => {
                        void 0 === m[x] && (E[x] = w)
                    }), new Ve(h.segments, E)
                }
            }

            function En(h, d, c) {
                const m = h.segments.slice(0, d);
                let E = 0;
                for (; E < c.length;) {
                    const w = c[E];
                    if (ti(w)) {
                        const oe = Ps(w.outlets);
                        return new Ve(m, oe)
                    }
                    if (0 === E && Rs(c[0])) {
                        m.push(new Vt(h.segments[d].path, Ns(c[0]))), E++;
                        continue
                    }
                    const x = ti(w) ? w.outlets[Ye] : `${w}`,
                        j = E < c.length - 1 ? c[E + 1] : null;
                    x && j && Rs(j) ? (m.push(new Vt(x, Ns(j))), E += 2) : (m.push(new Vt(x, {})), E++)
                }
                return new Ve(m, {})
            }

            function Ps(h) {
                const d = {};
                return bt(h, (c, m) => {
                    "string" == typeof c && (c = [c]), null !== c && (d[m] = En(new Ve([], {}), 0, c))
                }), d
            }

            function Ns(h) {
                const d = {};
                return bt(h, (c, m) => d[m] = `${c}`), d
            }

            function si(h, d, c) {
                return h == c.path && wn(d, c.parameters)
            }
            class _ {
                constructor(d, c, m, E) {
                    this.routeReuseStrategy = d, this.futureState = c, this.currState = m, this.forwardEvent = E
                }
                activate(d) {
                    const c = this.futureState._root,
                        m = this.currState ? this.currState._root : null;
                    this.deactivateChildRoutes(c, m, d), As(this.futureState.root), this.activateChildRoutes(c, m, d)
                }
                deactivateChildRoutes(d, c, m) {
                    const E = is(c);
                    d.children.forEach(w => {
                        const x = w.value.outlet;
                        this.deactivateRoutes(w, E[x], m), delete E[x]
                    }), bt(E, (w, x) => {
                        this.deactivateRouteAndItsChildren(w, m)
                    })
                }
                deactivateRoutes(d, c, m) {
                    const E = d.value,
                        w = c ? c.value : null;
                    if (E === w)
                        if (E.component) {
                            const x = m.getContext(E.outlet);
                            x && this.deactivateChildRoutes(d, c, x.children)
                        } else this.deactivateChildRoutes(d, c, m);
                    else w && this.deactivateRouteAndItsChildren(c, m)
                }
                deactivateRouteAndItsChildren(d, c) {
                    this.routeReuseStrategy.shouldDetach(d.value.snapshot) ? this.detachAndStoreRouteSubtree(d, c) : this.deactivateRouteAndOutlet(d, c)
                }
                detachAndStoreRouteSubtree(d, c) {
                    const m = c.getContext(d.value.outlet),
                        E = m && d.value.component ? m.children : c,
                        w = is(d);
                    for (const x of Object.keys(w)) this.deactivateRouteAndItsChildren(w[x], E);
                    if (m && m.outlet) {
                        const x = m.outlet.detach(),
                            j = m.children.onOutletDeactivated();
                        this.routeReuseStrategy.store(d.value.snapshot, {
                            componentRef: x,
                            route: d,
                            contexts: j
                        })
                    }
                }
                deactivateRouteAndOutlet(d, c) {
                    const m = c.getContext(d.value.outlet),
                        E = m && d.value.component ? m.children : c,
                        w = is(d);
                    for (const x of Object.keys(w)) this.deactivateRouteAndItsChildren(w[x], E);
                    m && m.outlet && (m.outlet.deactivate(), m.children.onOutletDeactivated(), m.attachRef = null, m.resolver = null, m.route = null)
                }
                activateChildRoutes(d, c, m) {
                    const E = is(c);
                    d.children.forEach(w => {
                        this.activateRoutes(w, E[w.value.outlet], m), this.forwardEvent(new Nn(w.value.snapshot))
                    }), d.children.length && this.forwardEvent(new or(d.value.snapshot))
                }
                activateRoutes(d, c, m) {
                    const E = d.value,
                        w = c ? c.value : null;
                    if (As(E), E === w)
                        if (E.component) {
                            const x = m.getOrCreateContext(E.outlet);
                            this.activateChildRoutes(d, c, x.children)
                        } else this.activateChildRoutes(d, c, m);
                    else if (E.component) {
                        const x = m.getOrCreateContext(E.outlet);
                        if (this.routeReuseStrategy.shouldAttach(E.snapshot)) {
                            const j = this.routeReuseStrategy.retrieve(E.snapshot);
                            this.routeReuseStrategy.store(E.snapshot, null), x.children.onOutletReAttached(j.contexts), x.attachRef = j.componentRef, x.route = j.route.value, x.outlet && x.outlet.attach(j.componentRef, j.route.value), As(j.route.value), this.activateChildRoutes(d, null, x.children)
                        } else {
                            const j = function(h) {
                                    for (let d = h.parent; d; d = d.parent) {
                                        const c = d.routeConfig;
                                        if (c && c._loadedConfig) return c._loadedConfig;
                                        if (c && c.component) return null
                                    }
                                    return null
                                }(E.snapshot),
                                oe = j ? j.module.componentFactoryResolver : null;
                            x.attachRef = null, x.route = E, x.resolver = oe, x.outlet && x.outlet.activateWith(E, oe), this.activateChildRoutes(d, null, x.children)
                        }
                    } else this.activateChildRoutes(d, null, m)
                }
            }
            class y {
                constructor(d, c) {
                    this.routes = d, this.module = c
                }
            }

            function I(h) {
                return "function" == typeof h
            }

            function q(h) {
                return h instanceof Le
            }
            const Rt = Symbol("INITIAL_VALUE");

            function yt() {
                return (0, $.w)(h => function(...h) {
                    let d, c;
                    return (0, te.K)(h[h.length - 1]) && (c = h.pop()), "function" == typeof h[h.length - 1] && (d = h.pop()), 1 === h.length && (0, ye.k)(h[0]) && (h = h[0]), (0, Re.n)(h, c).lift(new me(d))
                }(h.map(d => d.pipe((0, un.q)(1), (0, ge.O)(Rt)))).pipe(de((d, c) => {
                    let m = !1;
                    return c.reduce((E, w, x) => E !== Rt ? E : (w === Rt && (m = !0), m || !1 !== w && x !== c.length - 1 && !q(w) ? E : w), d)
                }, Rt), (0, Xe.h)(d => d !== Rt), (0, N.U)(d => q(d) ? d : !0 === d), (0, un.q)(1)))
            }
            class Bt {
                constructor() {
                    this.outlet = null, this.route = null, this.resolver = null, this.children = new ht, this.attachRef = null
                }
            }
            class ht {
                constructor() {
                    this.contexts = new Map
                }
                onChildOutletCreated(d, c) {
                    const m = this.getOrCreateContext(d);
                    m.outlet = c, this.contexts.set(d, m)
                }
                onChildOutletDestroyed(d) {
                    const c = this.getContext(d);
                    c && (c.outlet = null, c.attachRef = null)
                }
                onOutletDeactivated() {
                    const d = this.contexts;
                    return this.contexts = new Map, d
                }
                onOutletReAttached(d) {
                    this.contexts = d
                }
                getOrCreateContext(d) {
                    let c = this.getContext(d);
                    return c || (c = new Bt, this.contexts.set(d, c)), c
                }
                getContext(d) {
                    return this.contexts.get(d) || null
                }
            }
            let en = (() => {
                class h {
                    constructor(c, m, E, w, x) {
                        this.parentContexts = c, this.location = m, this.resolver = E, this.changeDetector = x, this.activated = null, this._activatedRoute = null, this.activateEvents = new T.vpe, this.deactivateEvents = new T.vpe, this.attachEvents = new T.vpe, this.detachEvents = new T.vpe, this.name = w || Ye, c.onChildOutletCreated(this.name, this)
                    }
                    ngOnDestroy() {
                        this.parentContexts.onChildOutletDestroyed(this.name)
                    }
                    ngOnInit() {
                        if (!this.activated) {
                            const c = this.parentContexts.getContext(this.name);
                            c && c.route && (c.attachRef ? this.attach(c.attachRef, c.route) : this.activateWith(c.route, c.resolver || null))
                        }
                    }
                    get isActivated() {
                        return !!this.activated
                    }
                    get component() {
                        if (!this.activated) throw new Error("Outlet is not activated");
                        return this.activated.instance
                    }
                    get activatedRoute() {
                        if (!this.activated) throw new Error("Outlet is not activated");
                        return this._activatedRoute
                    }
                    get activatedRouteData() {
                        return this._activatedRoute ? this._activatedRoute.snapshot.data : {}
                    }
                    detach() {
                        if (!this.activated) throw new Error("Outlet is not activated");
                        this.location.detach();
                        const c = this.activated;
                        return this.activated = null, this._activatedRoute = null, this.detachEvents.emit(c.instance), c
                    }
                    attach(c, m) {
                        this.activated = c, this._activatedRoute = m, this.location.insert(c.hostView), this.attachEvents.emit(c.instance)
                    }
                    deactivate() {
                        if (this.activated) {
                            const c = this.component;
                            this.activated.destroy(), this.activated = null, this._activatedRoute = null, this.deactivateEvents.emit(c)
                        }
                    }
                    activateWith(c, m) {
                        if (this.isActivated) throw new Error("Cannot activate an already activated outlet");
                        this._activatedRoute = c;
                        const x = (m = m || this.resolver).resolveComponentFactory(c._futureSnapshot.routeConfig.component),
                            j = this.parentContexts.getOrCreateContext(this.name).children,
                            oe = new Sr(c, j, this.location.injector);
                        this.activated = this.location.createComponent(x, this.location.length, oe), this.changeDetector.markForCheck(), this.activateEvents.emit(this.activated.instance)
                    }
                }
                return h.\u0275fac = function(c) {
                    return new(c || h)(T.Y36(ht), T.Y36(T.s_b), T.Y36(T._Vd), T.$8M("name"), T.Y36(T.sBO))
                }, h.\u0275dir = T.lG2({
                    type: h,
                    selectors: [
                        ["router-outlet"]
                    ],
                    outputs: {
                        activateEvents: "activate",
                        deactivateEvents: "deactivate",
                        attachEvents: "attach",
                        detachEvents: "detach"
                    },
                    exportAs: ["outlet"]
                }), h
            })();
            class Sr {
                constructor(d, c, m) {
                    this.route = d, this.childContexts = c, this.parent = m
                }
                get(d, c) {
                    return d === os ? this.route : d === ht ? this.childContexts : this.parent.get(d, c)
                }
            }
            let Tr = (() => {
                class h {}
                return h.\u0275fac = function(c) {
                    return new(c || h)
                }, h.\u0275cmp = T.Xpm({
                    type: h,
                    selectors: [
                        ["ng-component"]
                    ],
                    decls: 1,
                    vars: 0,
                    template: function(c, m) {
                        1 & c && T._UZ(0, "router-outlet")
                    },
                    directives: [en],
                    encapsulation: 2
                }), h
            })();

            function Bn(h, d = "") {
                for (let c = 0; c < h.length; c++) {
                    const m = h[c];
                    Or(m, Os(d, m))
                }
            }

            function Or(h, d) {
                h.children && Bn(h.children, d)
            }

            function Os(h, d) {
                return d ? h || d.path ? h && !d.path ? `${h}/` : !h && d.path ? d.path : `${h}/${d.path}` : "" : h
            }

            function Je(h) {
                const d = h.children && h.children.map(Je),
                    c = d ? Ar(st({}, h), {
                        children: d
                    }) : st({}, h);
                return !c.component && (d || c.loadChildren) && c.outlet && c.outlet !== Ye && (c.component = Tr), c
            }

            function jn(h) {
                return h.outlet || Ye
            }

            function so(h, d) {
                const c = h.filter(m => jn(m) === d);
                return c.push(...h.filter(m => jn(m) !== d)), c
            }
            const vi = {
                matched: !1,
                consumedSegments: [],
                lastChild: 0,
                parameters: {},
                positionalParamSegments: {}
            };

            function ii(h, d, c) {
                var j;
                if ("" === d.path) return "full" === d.pathMatch && (h.hasChildren() || c.length > 0) ? st({}, vi) : {
                    matched: !0,
                    consumedSegments: [],
                    lastChild: 0,
                    parameters: {},
                    positionalParamSegments: {}
                };
                const E = (d.matcher || Br)(c, h, d);
                if (!E) return st({}, vi);
                const w = {};
                bt(E.posParams, (oe, Ue) => {
                    w[Ue] = oe.path
                });
                const x = E.consumed.length > 0 ? st(st({}, w), E.consumed[E.consumed.length - 1].parameters) : w;
                return {
                    matched: !0,
                    consumedSegments: E.consumed,
                    lastChild: E.consumed.length,
                    parameters: x,
                    positionalParamSegments: null != (j = E.posParams) ? j : {}
                }
            }

            function xs(h, d, c, m, E = "corrected") {
                if (c.length > 0 && function(h, d, c) {
                        return c.some(m => l(h, d, m) && jn(m) !== Ye)
                    }(h, c, m)) {
                    const x = new Ve(d, function(h, d, c, m) {
                        const E = {};
                        E[Ye] = m, m._sourceSegment = h, m._segmentIndexShift = d.length;
                        for (const w of c)
                            if ("" === w.path && jn(w) !== Ye) {
                                const x = new Ve([], {});
                                x._sourceSegment = h, x._segmentIndexShift = d.length, E[jn(w)] = x
                            } return E
                    }(h, d, m, new Ve(c, h.children)));
                    return x._sourceSegment = h, x._segmentIndexShift = d.length, {
                        segmentGroup: x,
                        slicedSegments: []
                    }
                }
                if (0 === c.length && function(h, d, c) {
                        return c.some(m => l(h, d, m))
                    }(h, c, m)) {
                    const x = new Ve(h.segments, function(h, d, c, m, E, w) {
                        const x = {};
                        for (const j of m)
                            if (l(h, c, j) && !E[jn(j)]) {
                                const oe = new Ve([], {});
                                oe._sourceSegment = h, oe._segmentIndexShift = "legacy" === w ? h.segments.length : d.length, x[jn(j)] = oe
                            } return st(st({}, E), x)
                    }(h, d, c, m, h.children, E));
                    return x._sourceSegment = h, x._segmentIndexShift = d.length, {
                        segmentGroup: x,
                        slicedSegments: c
                    }
                }
                const w = new Ve(h.segments, h.children);
                return w._sourceSegment = h, w._segmentIndexShift = d.length, {
                    segmentGroup: w,
                    slicedSegments: c
                }
            }

            function l(h, d, c) {
                return (!(h.hasChildren() || d.length > 0) || "full" !== c.pathMatch) && "" === c.path
            }

            function u(h, d, c, m) {
                return !!(jn(h) === m || m !== Ye && l(d, c, h)) && ("**" === h.path || ii(d, h, c).matched)
            }

            function p(h, d, c) {
                return 0 === d.length && !h.children[c]
            }
            class C {
                constructor(d) {
                    this.segmentGroup = d || null
                }
            }
            class M {
                constructor(d) {
                    this.urlTree = d
                }
            }

            function F(h) {
                return new Y.y(d => d.error(new C(h)))
            }

            function V(h) {
                return new Y.y(d => d.error(new M(h)))
            }

            function Q(h) {
                return new Y.y(d => d.error(new Error(`Only absolute redirects can have named outlets. redirectTo: '${h}'`)))
            }
            class Be {
                constructor(d, c, m, E, w) {
                    this.configLoader = c, this.urlSerializer = m, this.urlTree = E, this.config = w, this.allowRedirects = !0, this.ngModule = d.get(T.h0i)
                }
                apply() {
                    const d = xs(this.urlTree.root, [], [], this.config).segmentGroup,
                        c = new Ve(d.segments, d.children);
                    return this.expandSegmentGroup(this.ngModule, this.config, c, Ye).pipe((0, N.U)(w => this.createUrlTree(dt(w), this.urlTree.queryParams, this.urlTree.fragment))).pipe(Ne(w => {
                        if (w instanceof M) return this.allowRedirects = !1, this.match(w.urlTree);
                        throw w instanceof C ? this.noMatchError(w) : w
                    }))
                }
                match(d) {
                    return this.expandSegmentGroup(this.ngModule, this.config, d.root, Ye).pipe((0, N.U)(E => this.createUrlTree(dt(E), d.queryParams, d.fragment))).pipe(Ne(E => {
                        throw E instanceof C ? this.noMatchError(E) : E
                    }))
                }
                noMatchError(d) {
                    return new Error(`Cannot match any routes. URL Segment: '${d.segmentGroup}'`)
                }
                createUrlTree(d, c, m) {
                    const E = d.segments.length > 0 ? new Ve([], {
                        [Ye]: d
                    }) : d;
                    return new Le(E, c, m)
                }
                expandSegmentGroup(d, c, m, E) {
                    return 0 === m.segments.length && m.hasChildren() ? this.expandChildren(d, c, m).pipe((0, N.U)(w => new Ve([], w))) : this.expandSegment(d, m, c, m.segments, E, !0)
                }
                expandChildren(d, c, m) {
                    const E = [];
                    for (const w of Object.keys(m.children)) "primary" === w ? E.unshift(w) : E.push(w);
                    return (0, $e.D)(E).pipe((0, fe.b)(w => {
                        const x = m.children[w],
                            j = so(c, w);
                        return this.expandSegmentGroup(d, j, x, w).pipe((0, N.U)(oe => ({
                            segment: oe,
                            outlet: w
                        })))
                    }), de((w, x) => (w[x.outlet] = x.segment, w), {}), function(h, d) {
                        const c = arguments.length >= 2;
                        return m => m.pipe(h ? (0, Xe.h)((E, w) => h(E, w, m)) : rr.y, ln(1), c ? mt(d) : Cn(() => new St))
                    }())
                }
                expandSegment(d, c, m, E, w, x) {
                    return (0, $e.D)(m).pipe((0, fe.b)(j => this.expandSegmentAgainstRoute(d, c, m, j, E, w, x).pipe(Ne(Ue => {
                        if (Ue instanceof C) return (0, X.of)(null);
                        throw Ue
                    }))), Yt(j => !!j), Ne((j, oe) => {
                        if (j instanceof St || "EmptyError" === j.name) {
                            if (p(c, E, w)) return (0, X.of)(new Ve([], {}));
                            throw new C(c)
                        }
                        throw j
                    }))
                }
                expandSegmentAgainstRoute(d, c, m, E, w, x, j) {
                    return u(E, c, w, x) ? void 0 === E.redirectTo ? this.matchSegmentAgainstRoute(d, c, E, w, x) : j && this.allowRedirects ? this.expandSegmentAgainstRouteUsingRedirect(d, c, m, E, w, x) : F(c) : F(c)
                }
                expandSegmentAgainstRouteUsingRedirect(d, c, m, E, w, x) {
                    return "**" === E.path ? this.expandWildCardWithParamsAgainstRouteUsingRedirect(d, m, E, x) : this.expandRegularSegmentAgainstRouteUsingRedirect(d, c, m, E, w, x)
                }
                expandWildCardWithParamsAgainstRouteUsingRedirect(d, c, m, E) {
                    const w = this.applyRedirectCommands([], m.redirectTo, {});
                    return m.redirectTo.startsWith("/") ? V(w) : this.lineralizeSegments(m, w).pipe((0, Ie.zg)(x => {
                        const j = new Ve(x, {});
                        return this.expandSegment(d, j, c, x, E, !1)
                    }))
                }
                expandRegularSegmentAgainstRouteUsingRedirect(d, c, m, E, w, x) {
                    const {
                        matched: j,
                        consumedSegments: oe,
                        lastChild: Ue,
                        positionalParamSegments: xt
                    } = ii(c, E, w);
                    if (!j) return F(c);
                    const nt = this.applyRedirectCommands(oe, E.redirectTo, xt);
                    return E.redirectTo.startsWith("/") ? V(nt) : this.lineralizeSegments(E, nt).pipe((0, Ie.zg)(rt => this.expandSegment(d, c, m, rt.concat(w.slice(Ue)), x, !1)))
                }
                matchSegmentAgainstRoute(d, c, m, E, w) {
                    if ("**" === m.path) return m.loadChildren ? (m._loadedConfig ? (0, X.of)(m._loadedConfig) : this.configLoader.load(d.injector, m)).pipe((0, N.U)(rt => (m._loadedConfig = rt, new Ve(E, {})))) : (0, X.of)(new Ve(E, {}));
                    const {
                        matched: x,
                        consumedSegments: j,
                        lastChild: oe
                    } = ii(c, m, E);
                    if (!x) return F(c);
                    const Ue = E.slice(oe);
                    return this.getChildConfig(d, m, E).pipe((0, Ie.zg)(nt => {
                        const rt = nt.module,
                            Ft = nt.routes,
                            {
                                segmentGroup: Us,
                                slicedSegments: Ci
                            } = xs(c, j, Ue, Ft),
                            Qr = new Ve(Us.segments, Us.children);
                        if (0 === Ci.length && Qr.hasChildren()) return this.expandChildren(rt, Ft, Qr).pipe((0, N.U)(Yr => new Ve(j, Yr)));
                        if (0 === Ft.length && 0 === Ci.length) return (0, X.of)(new Ve(j, {}));
                        const Hi = jn(m) === w;
                        return this.expandSegment(rt, Qr, Ft, Ci, Hi ? Ye : w, !0).pipe((0, N.U)($i => new Ve(j.concat($i.segments), $i.children)))
                    }))
                }
                getChildConfig(d, c, m) {
                    return c.children ? (0, X.of)(new y(c.children, d)) : c.loadChildren ? void 0 !== c._loadedConfig ? (0, X.of)(c._loadedConfig) : this.runCanLoadGuards(d.injector, c, m).pipe((0, Ie.zg)(E => {
                        return E ? this.configLoader.load(d.injector, c).pipe((0, N.U)(w => (c._loadedConfig = w, w))) : (h = c, new Y.y(d => d.error(ns(`Cannot load children because the guard of the route "path: '${h.path}'" returned false`))));
                        var h
                    })) : (0, X.of)(new y([], d))
                }
                runCanLoadGuards(d, c, m) {
                    const E = c.canLoad;
                    if (!E || 0 === E.length) return (0, X.of)(!0);
                    const w = E.map(x => {
                        const j = d.get(x);
                        let oe;
                        if ((h = j) && I(h.canLoad)) oe = j.canLoad(c, m);
                        else {
                            if (!I(j)) throw new Error("Invalid CanLoad guard");
                            oe = j(c, m)
                        }
                        var h;
                        return qt(oe)
                    });
                    return (0, X.of)(w).pipe(yt(), Xt(x => {
                        if (!q(x)) return;
                        const j = ns(`Redirecting to "${this.urlSerializer.serialize(x)}"`);
                        throw j.url = x, j
                    }), (0, N.U)(x => !0 === x))
                }
                lineralizeSegments(d, c) {
                    let m = [],
                        E = c.root;
                    for (;;) {
                        if (m = m.concat(E.segments), 0 === E.numberOfChildren) return (0, X.of)(m);
                        if (E.numberOfChildren > 1 || !E.children[Ye]) return Q(d.redirectTo);
                        E = E.children[Ye]
                    }
                }
                applyRedirectCommands(d, c, m) {
                    return this.applyRedirectCreatreUrlTree(c, this.urlSerializer.parse(c), d, m)
                }
                applyRedirectCreatreUrlTree(d, c, m, E) {
                    const w = this.createSegmentGroup(d, c.root, m, E);
                    return new Le(w, this.createQueryParams(c.queryParams, this.urlTree.queryParams), c.fragment)
                }
                createQueryParams(d, c) {
                    const m = {};
                    return bt(d, (E, w) => {
                        if ("string" == typeof E && E.startsWith(":")) {
                            const j = E.substring(1);
                            m[w] = c[j]
                        } else m[w] = E
                    }), m
                }
                createSegmentGroup(d, c, m, E) {
                    const w = this.createSegments(d, c.segments, m, E);
                    let x = {};
                    return bt(c.children, (j, oe) => {
                        x[oe] = this.createSegmentGroup(d, j, m, E)
                    }), new Ve(w, x)
                }
                createSegments(d, c, m, E) {
                    return c.map(w => w.path.startsWith(":") ? this.findPosParam(d, w, E) : this.findOrReturn(w, m))
                }
                findPosParam(d, c, m) {
                    const E = m[c.path.substring(1)];
                    if (!E) throw new Error(`Cannot redirect to '${d}'. Cannot find '${c.path}'.`);
                    return E
                }
                findOrReturn(d, c) {
                    let m = 0;
                    for (const E of c) {
                        if (E.path === d.path) return c.splice(m), E;
                        m++
                    }
                    return d
                }
            }

            function dt(h) {
                const d = {};
                for (const m of Object.keys(h.children)) {
                    const w = dt(h.children[m]);
                    (w.segments.length > 0 || w.hasChildren()) && (d[m] = w)
                }
                return function(h) {
                    if (1 === h.numberOfChildren && h.children[Ye]) {
                        const d = h.children[Ye];
                        return new Ve(h.segments.concat(d.segments), d.children)
                    }
                    return h
                }(new Ve(h.segments, d))
            }
            class et {
                constructor(d) {
                    this.path = d, this.route = this.path[this.path.length - 1]
                }
            }
            class ut {
                constructor(d, c) {
                    this.component = d, this.route = c
                }
            }

            function Zt(h, d, c) {
                const m = h._root;
                return qn(m, d ? d._root : null, c, [m.value])
            }

            function fn(h, d, c) {
                const m = function(h) {
                    if (!h) return null;
                    for (let d = h.parent; d; d = d.parent) {
                        const c = d.routeConfig;
                        if (c && c._loadedConfig) return c._loadedConfig
                    }
                    return null
                }(d);
                return (m ? m.module.injector : c).get(h)
            }

            function qn(h, d, c, m, E = {
                canDeactivateChecks: [],
                canActivateChecks: []
            }) {
                const w = is(d);
                return h.children.forEach(x => {
                    (function(h, d, c, m, E = {
                        canDeactivateChecks: [],
                        canActivateChecks: []
                    }) {
                        const w = h.value,
                            x = d ? d.value : null,
                            j = c ? c.getContext(h.value.outlet) : null;
                        if (x && w.routeConfig === x.routeConfig) {
                            const oe = function(h, d, c) {
                                if ("function" == typeof c) return c(h, d);
                                switch (c) {
                                    case "pathParamsChange":
                                        return !Qn(h.url, d.url);
                                    case "pathParamsOrQueryParamsChange":
                                        return !Qn(h.url, d.url) || !wn(h.queryParams, d.queryParams);
                                    case "always":
                                        return !0;
                                    case "paramsOrQueryParamsChange":
                                        return !ei(h, d) || !wn(h.queryParams, d.queryParams);
                                    default:
                                        return !ei(h, d)
                                }
                            }(x, w, w.routeConfig.runGuardsAndResolvers);
                            oe ? E.canActivateChecks.push(new et(m)) : (w.data = x.data, w._resolvedData = x._resolvedData), qn(h, d, w.component ? j ? j.children : null : c, m, E), oe && j && j.outlet && j.outlet.isActivated && E.canDeactivateChecks.push(new ut(j.outlet.component, x))
                        } else x && In(d, j, E), E.canActivateChecks.push(new et(m)), qn(h, null, w.component ? j ? j.children : null : c, m, E)
                    })(x, w[x.value.outlet], c, m.concat([x.value]), E), delete w[x.value.outlet]
                }), bt(w, (x, j) => In(x, c.getContext(j), E)), E
            }

            function In(h, d, c) {
                const m = is(h),
                    E = h.value;
                bt(m, (w, x) => {
                    In(w, E.component ? d ? d.children.getContext(x) : null : d, c)
                }), c.canDeactivateChecks.push(new ut(E.component && d && d.outlet && d.outlet.isActivated ? d.outlet.component : null, E))
            }
            class Ze {}

            function ct(h) {
                return new Y.y(d => d.error(h))
            }
            class $t {
                constructor(d, c, m, E, w, x) {
                    this.rootComponentType = d, this.config = c, this.urlTree = m, this.url = E, this.paramsInheritanceStrategy = w, this.relativeLinkResolution = x
                }
                recognize() {
                    const d = xs(this.urlTree.root, [], [], this.config.filter(x => void 0 === x.redirectTo), this.relativeLinkResolution).segmentGroup,
                        c = this.processSegmentGroup(this.config, d, Ye);
                    if (null === c) return null;
                    const m = new Ts([], Object.freeze({}), Object.freeze(st({}, this.urlTree.queryParams)), this.urlTree.fragment, {}, Ye, this.rootComponentType, null, this.urlTree.root, -1, {}),
                        E = new kn(m, c),
                        w = new Is(this.url, E);
                    return this.inheritParamsAndData(w._root), w
                }
                inheritParamsAndData(d) {
                    const c = d.value,
                        m = Ei(c, this.paramsInheritanceStrategy);
                    c.params = Object.freeze(m.params), c.data = Object.freeze(m.data), d.children.forEach(E => this.inheritParamsAndData(E))
                }
                processSegmentGroup(d, c, m) {
                    return 0 === c.segments.length && c.hasChildren() ? this.processChildren(d, c) : this.processSegment(d, c, c.segments, m)
                }
                processChildren(d, c) {
                    const m = [];
                    for (const w of Object.keys(c.children)) {
                        const x = c.children[w],
                            j = so(d, w),
                            oe = this.processSegmentGroup(j, x, w);
                        if (null === oe) return null;
                        m.push(...oe)
                    }
                    const E = Qt(m);
                    return E.sort((d, c) => d.value.outlet === Ye ? -1 : c.value.outlet === Ye ? 1 : d.value.outlet.localeCompare(c.value.outlet)), E
                }
                processSegment(d, c, m, E) {
                    for (const w of d) {
                        const x = this.processSegmentAgainstRoute(w, c, m, E);
                        if (null !== x) return x
                    }
                    return p(c, m, E) ? [] : null
                }
                processSegmentAgainstRoute(d, c, m, E) {
                    if (d.redirectTo || !u(d, c, m, E)) return null;
                    let w, x = [],
                        j = [];
                    if ("**" === d.path) {
                        const Ft = m.length > 0 ? On(m).parameters : {};
                        w = new Ts(m, Ft, Object.freeze(st({}, this.urlTree.queryParams)), this.urlTree.fragment, Kr(d), jn(d), d.component, d, fr(c), Ls(c) + m.length, hr(d))
                    } else {
                        const Ft = ii(c, d, m);
                        if (!Ft.matched) return null;
                        x = Ft.consumedSegments, j = m.slice(Ft.lastChild), w = new Ts(x, Ft.parameters, Object.freeze(st({}, this.urlTree.queryParams)), this.urlTree.fragment, Kr(d), jn(d), d.component, d, fr(c), Ls(c) + x.length, hr(d))
                    }
                    const oe = (h = d).children ? h.children : h.loadChildren ? h._loadedConfig.routes : [],
                        {
                            segmentGroup: Ue,
                            slicedSegments: xt
                        } = xs(c, x, j, oe.filter(Ft => void 0 === Ft.redirectTo), this.relativeLinkResolution);
                    var h;
                    if (0 === xt.length && Ue.hasChildren()) {
                        const Ft = this.processChildren(oe, Ue);
                        return null === Ft ? null : [new kn(w, Ft)]
                    }
                    if (0 === oe.length && 0 === xt.length) return [new kn(w, [])];
                    const nt = jn(d) === E,
                        rt = this.processSegment(oe, Ue, xt, nt ? Ye : E);
                    return null === rt ? null : [new kn(w, rt)]
                }
            }

            function Gr(h) {
                const d = h.value.routeConfig;
                return d && "" === d.path && void 0 === d.redirectTo
            }

            function Qt(h) {
                const d = [],
                    c = new Set;
                for (const m of h) {
                    if (!Gr(m)) {
                        d.push(m);
                        continue
                    }
                    const E = d.find(w => m.value.routeConfig === w.value.routeConfig);
                    void 0 !== E ? (E.children.push(...m.children), c.add(E)) : d.push(m)
                }
                for (const m of c) {
                    const E = Qt(m.children);
                    d.push(new kn(m.value, E))
                }
                return d.filter(m => !c.has(m))
            }

            function fr(h) {
                let d = h;
                for (; d._sourceSegment;) d = d._sourceSegment;
                return d
            }

            function Ls(h) {
                let d = h,
                    c = d._segmentIndexShift ? d._segmentIndexShift : 0;
                for (; d._sourceSegment;) d = d._sourceSegment, c += d._segmentIndexShift ? d._segmentIndexShift : 0;
                return c - 1
            }

            function Kr(h) {
                return h.data || {}
            }

            function hr(h) {
                return h.resolve || {}
            }

            function ai(h) {
                return (0, $.w)(d => {
                    const c = h(d);
                    return c ? (0, $e.D)(c).pipe((0, N.U)(() => d)) : (0, X.of)(d)
                })
            }
            class Vi extends class {
                shouldDetach(d) {
                    return !1
                }
                store(d, c) {}
                shouldAttach(d) {
                    return !1
                }
                retrieve(d) {
                    return null
                }
                shouldReuseRoute(d, c) {
                    return d.routeConfig === c.routeConfig
                }
            } {}
            const Bi = new T.OlP("ROUTES");
            class tl {
                constructor(d, c, m, E) {
                    this.injector = d, this.compiler = c, this.onLoadStartListener = m, this.onLoadEndListener = E
                }
                load(d, c) {
                    if (c._loader$) return c._loader$;
                    this.onLoadStartListener && this.onLoadStartListener(c);
                    const E = this.loadModuleFactory(c.loadChildren).pipe((0, N.U)(w => {
                        this.onLoadEndListener && this.onLoadEndListener(c);
                        const x = w.create(d);
                        return new y(ur(x.injector.get(Bi, void 0, T.XFs.Self | T.XFs.Optional)).map(Je), x)
                    }), Ne(w => {
                        throw c._loader$ = void 0, w
                    }));
                    return c._loader$ = new _e.c(E, () => new ne.xQ).pipe((0, Pe.x)()), c._loader$
                }
                loadModuleFactory(d) {
                    return qt(d()).pipe((0, Ie.zg)(c => c instanceof T.YKP ? (0, X.of)(c) : (0, $e.D)(this.compiler.compileModuleAsync(c))))
                }
            }
            class rf {
                shouldProcessUrl(d) {
                    return !0
                }
                extract(d) {
                    return d
                }
                merge(d, c) {
                    return d
                }
            }

            function sf(h) {
                throw h
            }

            function io(h, d, c) {
                return d.parse("/")
            }

            function ia(h, d) {
                return (0, X.of)(null)
            }
            const oa = {
                    paths: "exact",
                    fragment: "ignored",
                    matrixParams: "ignored",
                    queryParams: "exact"
                },
                oo = {
                    paths: "subset",
                    fragment: "ignored",
                    matrixParams: "ignored",
                    queryParams: "subset"
                };
            let Wn = (() => {
                class h {
                    constructor(c, m, E, w, x, j, oe) {
                        this.rootComponentType = c, this.urlSerializer = m, this.rootContexts = E, this.location = w, this.config = oe, this.lastSuccessfulNavigation = null, this.currentNavigation = null, this.disposed = !1, this.navigationId = 0, this.currentPageId = 0, this.isNgZoneEnabled = !1, this.events = new ne.xQ, this.errorHandler = sf, this.malformedUriErrorHandler = io, this.navigated = !1, this.lastSuccessfulId = -1, this.hooks = {
                            beforePreactivation: ia,
                            afterPreactivation: ia
                        }, this.urlHandlingStrategy = new rf, this.routeReuseStrategy = new Vi, this.onSameUrlNavigation = "ignore", this.paramsInheritanceStrategy = "emptyOnly", this.urlUpdateStrategy = "deferred", this.relativeLinkResolution = "corrected", this.canceledNavigationResolution = "replace", this.ngModule = x.get(T.h0i), this.console = x.get(T.c2e);
                        const nt = x.get(T.R0b);
                        this.isNgZoneEnabled = nt instanceof T.R0b && T.R0b.isInAngularZone(), this.resetConfig(oe), this.currentUrlTree = new Le(new Ve([], {}), {}, null), this.rawUrlTree = this.currentUrlTree, this.browserUrlTree = this.currentUrlTree, this.configLoader = new tl(x, j, rt => this.triggerEvent(new ir(rt)), rt => this.triggerEvent(new zn(rt))), this.routerState = Ur(this.currentUrlTree, this.rootComponentType), this.transitions = new he({
                            id: 0,
                            targetPageId: 0,
                            currentUrlTree: this.currentUrlTree,
                            currentRawUrl: this.currentUrlTree,
                            extractedUrl: this.urlHandlingStrategy.extract(this.currentUrlTree),
                            urlAfterRedirects: this.urlHandlingStrategy.extract(this.currentUrlTree),
                            rawUrl: this.currentUrlTree,
                            extras: {},
                            resolve: null,
                            reject: null,
                            promise: Promise.resolve(!0),
                            source: "imperative",
                            restoredState: null,
                            currentSnapshot: this.routerState.snapshot,
                            targetSnapshot: null,
                            currentRouterState: this.routerState,
                            targetRouterState: null,
                            guards: {
                                canActivateChecks: [],
                                canDeactivateChecks: []
                            },
                            guardsResult: null
                        }), this.navigations = this.setupNavigations(this.transitions), this.processNavigations()
                    }
                    get browserPageId() {
                        var c;
                        return null == (c = this.location.getState()) ? void 0 : c.\u0275routerPageId
                    }
                    setupNavigations(c) {
                        const m = this.events;
                        return c.pipe((0, Xe.h)(E => 0 !== E.id), (0, N.U)(E => Ar(st({}, E), {
                            extractedUrl: this.urlHandlingStrategy.extract(E.rawUrl)
                        })), (0, $.w)(E => {
                            let w = !1,
                                x = !1;
                            return (0, X.of)(E).pipe(Xt(j => {
                                this.currentNavigation = {
                                    id: j.id,
                                    initialUrl: j.currentRawUrl,
                                    extractedUrl: j.extractedUrl,
                                    trigger: j.source,
                                    extras: j.extras,
                                    previousNavigation: this.lastSuccessfulNavigation ? Ar(st({}, this.lastSuccessfulNavigation), {
                                        previousNavigation: null
                                    }) : null
                                }
                            }), (0, $.w)(j => {
                                const oe = this.browserUrlTree.toString(),
                                    Ue = !this.navigated || j.extractedUrl.toString() !== oe || oe !== this.currentUrlTree.toString();
                                if (("reload" === this.onSameUrlNavigation || Ue) && this.urlHandlingStrategy.shouldProcessUrl(j.rawUrl)) return cs(j.source) && (this.browserUrlTree = j.extractedUrl), (0, X.of)(j).pipe((0, $.w)(nt => {
                                    const rt = this.transitions.getValue();
                                    return m.next(new Nt(nt.id, this.serializeUrl(nt.extractedUrl), nt.source, nt.restoredState)), rt !== this.transitions.getValue() ? ue.E : Promise.resolve(nt)
                                }), function(h, d, c, m) {
                                    return (0, $.w)(E => function(h, d, c, m, E) {
                                        return new Be(h, d, c, m, E).apply()
                                    }(h, d, c, E.extractedUrl, m).pipe((0, N.U)(w => Ar(st({}, E), {
                                        urlAfterRedirects: w
                                    }))))
                                }(this.ngModule.injector, this.configLoader, this.urlSerializer, this.config), Xt(nt => {
                                    this.currentNavigation = Ar(st({}, this.currentNavigation), {
                                        finalUrl: nt.urlAfterRedirects
                                    })
                                }), function(h, d, c, m, E) {
                                    return (0, Ie.zg)(w => function(h, d, c, m, E = "emptyOnly", w = "legacy") {
                                        try {
                                            const x = new $t(h, d, c, m, E, w).recognize();
                                            return null === x ? ct(new Ze) : (0, X.of)(x)
                                        } catch (x) {
                                            return ct(x)
                                        }
                                    }(h, d, w.urlAfterRedirects, c(w.urlAfterRedirects), m, E).pipe((0, N.U)(x => Ar(st({}, w), {
                                        targetSnapshot: x
                                    }))))
                                }(this.rootComponentType, this.config, nt => this.serializeUrl(nt), this.paramsInheritanceStrategy, this.relativeLinkResolution), Xt(nt => {
                                    if ("eager" === this.urlUpdateStrategy) {
                                        if (!nt.extras.skipLocationChange) {
                                            const Ft = this.urlHandlingStrategy.merge(nt.urlAfterRedirects, nt.rawUrl);
                                            this.setBrowserUrl(Ft, nt)
                                        }
                                        this.browserUrlTree = nt.urlAfterRedirects
                                    }
                                    const rt = new vt(nt.id, this.serializeUrl(nt.extractedUrl), this.serializeUrl(nt.urlAfterRedirects), nt.targetSnapshot);
                                    m.next(rt)
                                }));
                                if (Ue && this.rawUrlTree && this.urlHandlingStrategy.shouldProcessUrl(this.rawUrlTree)) {
                                    const {
                                        id: rt,
                                        extractedUrl: Ft,
                                        source: Us,
                                        restoredState: Ci,
                                        extras: Qr
                                    } = j, Hi = new Nt(rt, this.serializeUrl(Ft), Us, Ci);
                                    m.next(Hi);
                                    const co = Ur(Ft, this.rootComponentType).snapshot;
                                    return (0, X.of)(Ar(st({}, j), {
                                        targetSnapshot: co,
                                        urlAfterRedirects: Ft,
                                        extras: Ar(st({}, Qr), {
                                            skipLocationChange: !1,
                                            replaceUrl: !1
                                        })
                                    }))
                                }
                                return this.rawUrlTree = j.rawUrl, j.resolve(null), ue.E
                            }), ai(j => {
                                const {
                                    targetSnapshot: oe,
                                    id: Ue,
                                    extractedUrl: xt,
                                    rawUrl: nt,
                                    extras: {
                                        skipLocationChange: rt,
                                        replaceUrl: Ft
                                    }
                                } = j;
                                return this.hooks.beforePreactivation(oe, {
                                    navigationId: Ue,
                                    appliedUrlTree: xt,
                                    rawUrlTree: nt,
                                    skipLocationChange: !!rt,
                                    replaceUrl: !!Ft
                                })
                            }), Xt(j => {
                                const oe = new ot(j.id, this.serializeUrl(j.extractedUrl), this.serializeUrl(j.urlAfterRedirects), j.targetSnapshot);
                                this.triggerEvent(oe)
                            }), (0, N.U)(j => Ar(st({}, j), {
                                guards: Zt(j.targetSnapshot, j.currentSnapshot, this.rootContexts)
                            })), function(h, d) {
                                return (0, Ie.zg)(c => {
                                    const {
                                        targetSnapshot: m,
                                        currentSnapshot: E,
                                        guards: {
                                            canActivateChecks: w,
                                            canDeactivateChecks: x
                                        }
                                    } = c;
                                    return 0 === x.length && 0 === w.length ? (0, X.of)(Ar(st({}, c), {
                                        guardsResult: !0
                                    })) : function(h, d, c, m) {
                                        return (0, $e.D)(h).pipe((0, Ie.zg)(E => function(h, d, c, m, E) {
                                            const w = d && d.routeConfig ? d.routeConfig.canDeactivate : null;
                                            if (!w || 0 === w.length) return (0, X.of)(!0);
                                            const x = w.map(j => {
                                                const oe = fn(j, d, E);
                                                let Ue;
                                                if (function(h) {
                                                        return h && I(h.canDeactivate)
                                                    }(oe)) Ue = qt(oe.canDeactivate(h, d, c, m));
                                                else {
                                                    if (!I(oe)) throw new Error("Invalid CanDeactivate guard");
                                                    Ue = qt(oe(h, d, c, m))
                                                }
                                                return Ue.pipe(Yt())
                                            });
                                            return (0, X.of)(x).pipe(yt())
                                        }(E.component, E.route, c, d, m)), Yt(E => !0 !== E, !0))
                                    }(x, m, E, h).pipe((0, Ie.zg)(j => j && function(h) {
                                        return "boolean" == typeof h
                                    }(j) ? function(h, d, c, m) {
                                        return (0, $e.D)(d).pipe((0, fe.b)(E => (0, Me.z)(function(h, d) {
                                            return null !== h && d && d(new Ct(h)), (0, X.of)(!0)
                                        }(E.route.parent, m), function(h, d) {
                                            return null !== h && d && d(new Vr(h)), (0, X.of)(!0)
                                        }(E.route, m), function(h, d, c) {
                                            const m = d[d.length - 1],
                                                w = d.slice(0, d.length - 1).reverse().map(x => function(h) {
                                                    const d = h.routeConfig ? h.routeConfig.canActivateChild : null;
                                                    return d && 0 !== d.length ? {
                                                        node: h,
                                                        guards: d
                                                    } : null
                                                }(x)).filter(x => null !== x).map(x => (0, Dt.P)(() => {
                                                    const j = x.guards.map(oe => {
                                                        const Ue = fn(oe, x.node, c);
                                                        let xt;
                                                        if (function(h) {
                                                                return h && I(h.canActivateChild)
                                                            }(Ue)) xt = qt(Ue.canActivateChild(m, h));
                                                        else {
                                                            if (!I(Ue)) throw new Error("Invalid CanActivateChild guard");
                                                            xt = qt(Ue(m, h))
                                                        }
                                                        return xt.pipe(Yt())
                                                    });
                                                    return (0, X.of)(j).pipe(yt())
                                                }));
                                            return (0, X.of)(w).pipe(yt())
                                        }(h, E.path, c), function(h, d, c) {
                                            const m = d.routeConfig ? d.routeConfig.canActivate : null;
                                            if (!m || 0 === m.length) return (0, X.of)(!0);
                                            const E = m.map(w => (0, Dt.P)(() => {
                                                const x = fn(w, d, c);
                                                let j;
                                                if (function(h) {
                                                        return h && I(h.canActivate)
                                                    }(x)) j = qt(x.canActivate(d, h));
                                                else {
                                                    if (!I(x)) throw new Error("Invalid CanActivate guard");
                                                    j = qt(x(d, h))
                                                }
                                                return j.pipe(Yt())
                                            }));
                                            return (0, X.of)(E).pipe(yt())
                                        }(h, E.route, c))), Yt(E => !0 !== E, !0))
                                    }(m, w, h, d) : (0, X.of)(j)), (0, N.U)(j => Ar(st({}, c), {
                                        guardsResult: j
                                    })))
                                })
                            }(this.ngModule.injector, j => this.triggerEvent(j)), Xt(j => {
                                if (q(j.guardsResult)) {
                                    const Ue = ns(`Redirecting to "${this.serializeUrl(j.guardsResult)}"`);
                                    throw Ue.url = j.guardsResult, Ue
                                }
                                const oe = new Gn(j.id, this.serializeUrl(j.extractedUrl), this.serializeUrl(j.urlAfterRedirects), j.targetSnapshot, !!j.guardsResult);
                                this.triggerEvent(oe)
                            }), (0, Xe.h)(j => !!j.guardsResult || (this.restoreHistory(j), this.cancelNavigationTransition(j, ""), !1)), ai(j => {
                                if (j.guards.canActivateChecks.length) return (0, X.of)(j).pipe(Xt(oe => {
                                    const Ue = new Ke(oe.id, this.serializeUrl(oe.extractedUrl), this.serializeUrl(oe.urlAfterRedirects), oe.targetSnapshot);
                                    this.triggerEvent(Ue)
                                }), (0, $.w)(oe => {
                                    let Ue = !1;
                                    return (0, X.of)(oe).pipe(function(h, d) {
                                        return (0, Ie.zg)(c => {
                                            const {
                                                targetSnapshot: m,
                                                guards: {
                                                    canActivateChecks: E
                                                }
                                            } = c;
                                            if (!E.length) return (0, X.of)(c);
                                            let w = 0;
                                            return (0, $e.D)(E).pipe((0, fe.b)(x => function(h, d, c, m) {
                                                return function(h, d, c, m) {
                                                    const E = Object.keys(h);
                                                    if (0 === E.length) return (0, X.of)({});
                                                    const w = {};
                                                    return (0, $e.D)(E).pipe((0, Ie.zg)(x => function(h, d, c, m) {
                                                        const E = fn(h, d, m);
                                                        return qt(E.resolve ? E.resolve(d, c) : E(d, c))
                                                    }(h[x], d, c, m).pipe(Xt(j => {
                                                        w[x] = j
                                                    }))), ln(1), (0, Ie.zg)(() => Object.keys(w).length === E.length ? (0, X.of)(w) : ue.E))
                                                }(h._resolve, h, d, m).pipe((0, N.U)(w => (h._resolvedData = w, h.data = st(st({}, h.data), Ei(h, c).resolve), null)))
                                            }(x.route, m, h, d)), Xt(() => w++), ln(1), (0, Ie.zg)(x => w === E.length ? (0, X.of)(c) : ue.E))
                                        })
                                    }(this.paramsInheritanceStrategy, this.ngModule.injector), Xt({
                                        next: () => Ue = !0,
                                        complete: () => {
                                            Ue || (this.restoreHistory(oe), this.cancelNavigationTransition(oe, "At least one route resolver didn't emit any value."))
                                        }
                                    }))
                                }), Xt(oe => {
                                    const Ue = new cn(oe.id, this.serializeUrl(oe.extractedUrl), this.serializeUrl(oe.urlAfterRedirects), oe.targetSnapshot);
                                    this.triggerEvent(Ue)
                                }))
                            }), ai(j => {
                                const {
                                    targetSnapshot: oe,
                                    id: Ue,
                                    extractedUrl: xt,
                                    rawUrl: nt,
                                    extras: {
                                        skipLocationChange: rt,
                                        replaceUrl: Ft
                                    }
                                } = j;
                                return this.hooks.afterPreactivation(oe, {
                                    navigationId: Ue,
                                    appliedUrlTree: xt,
                                    rawUrlTree: nt,
                                    skipLocationChange: !!rt,
                                    replaceUrl: !!Ft
                                })
                            }), (0, N.U)(j => {
                                const oe = function(h, d, c) {
                                    const m = as(h, d._root, c ? c._root : void 0);
                                    return new Vn(m, d)
                                }(this.routeReuseStrategy, j.targetSnapshot, j.currentRouterState);
                                return Ar(st({}, j), {
                                    targetRouterState: oe
                                })
                            }), Xt(j => {
                                this.currentUrlTree = j.urlAfterRedirects, this.rawUrlTree = this.urlHandlingStrategy.merge(j.urlAfterRedirects, j.rawUrl), this.routerState = j.targetRouterState, "deferred" === this.urlUpdateStrategy && (j.extras.skipLocationChange || this.setBrowserUrl(this.rawUrlTree, j), this.browserUrlTree = j.urlAfterRedirects)
                            }), ((h, d, c) => (0, N.U)(m => (new _(d, m.targetRouterState, m.currentRouterState, c).activate(h), m)))(this.rootContexts, this.routeReuseStrategy, j => this.triggerEvent(j)), Xt({
                                next() {
                                    w = !0
                                },
                                complete() {
                                    w = !0
                                }
                            }), function(h) {
                                return d => d.lift(new Nr(h))
                            }(() => {
                                var j;
                                w || x || this.cancelNavigationTransition(E, `Navigation ID ${E.id} is not equal to the current navigation id ${this.navigationId}`), (null == (j = this.currentNavigation) ? void 0 : j.id) === E.id && (this.currentNavigation = null)
                            }), Ne(j => {
                                if (x = !0, function(h) {
                                        return h && h[bn]
                                    }(j)) {
                                    const oe = q(j.url);
                                    oe || (this.navigated = !0, this.restoreHistory(E, !0));
                                    const Ue = new Ot(E.id, this.serializeUrl(E.extractedUrl), j.message);
                                    m.next(Ue), oe ? setTimeout(() => {
                                        const xt = this.urlHandlingStrategy.merge(j.url, this.rawUrlTree),
                                            nt = {
                                                skipLocationChange: E.extras.skipLocationChange,
                                                replaceUrl: "eager" === this.urlUpdateStrategy || cs(E.source)
                                            };
                                        this.scheduleNavigation(xt, "imperative", null, nt, {
                                            resolve: E.resolve,
                                            reject: E.reject,
                                            promise: E.promise
                                        })
                                    }, 0) : E.resolve(!1)
                                } else {
                                    this.restoreHistory(E, !0);
                                    const oe = new kt(E.id, this.serializeUrl(E.extractedUrl), j);
                                    m.next(oe);
                                    try {
                                        E.resolve(this.errorHandler(j))
                                    } catch (Ue) {
                                        E.reject(Ue)
                                    }
                                }
                                return ue.E
                            }))
                        }))
                    }
                    resetRootComponentType(c) {
                        this.rootComponentType = c, this.routerState.root.component = this.rootComponentType
                    }
                    setTransition(c) {
                        this.transitions.next(st(st({}, this.transitions.value), c))
                    }
                    initialNavigation() {
                        this.setUpLocationChangeListener(), 0 === this.navigationId && this.navigateByUrl(this.location.path(!0), {
                            replaceUrl: !0
                        })
                    }
                    setUpLocationChangeListener() {
                        this.locationSubscription || (this.locationSubscription = this.location.subscribe(c => {
                            const m = "popstate" === c.type ? "popstate" : "hashchange";
                            "popstate" === m && setTimeout(() => {
                                var j;
                                const E = {
                                        replaceUrl: !0
                                    },
                                    w = (null == (j = c.state) ? void 0 : j.navigationId) ? c.state : null;
                                if (w) {
                                    const oe = st({}, w);
                                    delete oe.navigationId, delete oe.\u0275routerPageId, 0 !== Object.keys(oe).length && (E.state = oe)
                                }
                                const x = this.parseUrl(c.url);
                                this.scheduleNavigation(x, m, w, E)
                            }, 0)
                        }))
                    }
                    get url() {
                        return this.serializeUrl(this.currentUrlTree)
                    }
                    getCurrentNavigation() {
                        return this.currentNavigation
                    }
                    triggerEvent(c) {
                        this.events.next(c)
                    }
                    resetConfig(c) {
                        Bn(c), this.config = c.map(Je), this.navigated = !1, this.lastSuccessfulId = -1
                    }
                    ngOnDestroy() {
                        this.dispose()
                    }
                    dispose() {
                        this.transitions.complete(), this.locationSubscription && (this.locationSubscription.unsubscribe(), this.locationSubscription = void 0), this.disposed = !0
                    }
                    createUrlTree(c, m = {}) {
                        const {
                            relativeTo: E,
                            queryParams: w,
                            fragment: x,
                            queryParamsHandling: j,
                            preserveFragment: oe
                        } = m, Ue = E || this.routerState.root, xt = oe ? this.currentUrlTree.fragment : x;
                        let nt = null;
                        switch (j) {
                            case "merge":
                                nt = st(st({}, this.currentUrlTree.queryParams), w);
                                break;
                            case "preserve":
                                nt = this.currentUrlTree.queryParams;
                                break;
                            default:
                                nt = w || null
                        }
                        return null !== nt && (nt = this.removeEmptyProps(nt)),
                            function(h, d, c, m, E) {
                                if (0 === c.length) return dr(d.root, d.root, d, m, E);
                                const w = function(h) {
                                    if ("string" == typeof h[0] && 1 === h.length && "/" === h[0]) return new Hr(!0, 0, h);
                                    let d = 0,
                                        c = !1;
                                    const m = h.reduce((E, w, x) => {
                                        if ("object" == typeof w && null != w) {
                                            if (w.outlets) {
                                                const j = {};
                                                return bt(w.outlets, (oe, Ue) => {
                                                    j[Ue] = "string" == typeof oe ? oe.split("/") : oe
                                                }), [...E, {
                                                    outlets: j
                                                }]
                                            }
                                            if (w.segmentPath) return [...E, w.segmentPath]
                                        }
                                        return "string" != typeof w ? [...E, w] : 0 === x ? (w.split("/").forEach((j, oe) => {
                                            0 == oe && "." === j || (0 == oe && "" === j ? c = !0 : ".." === j ? d++ : "" != j && E.push(j))
                                        }), E) : [...E, w]
                                    }, []);
                                    return new Hr(c, d, m)
                                }(c);
                                if (w.toRoot()) return dr(d.root, new Ve([], {}), d, m, E);
                                const x = function(h, d, c) {
                                        if (h.isAbsolute) return new $r(d.root, !0, 0);
                                        if (-1 === c.snapshot._lastPathIndex) {
                                            const w = c.snapshot._urlSegment;
                                            return new $r(w, w === d.root, 0)
                                        }
                                        const m = Rs(h.commands[0]) ? 0 : 1;
                                        return function(h, d, c) {
                                            let m = h,
                                                E = d,
                                                w = c;
                                            for (; w > E;) {
                                                if (w -= E, m = m.parent, !m) throw new Error("Invalid number of '../'");
                                                E = m.segments.length
                                            }
                                            return new $r(m, !1, E - w)
                                        }(c.snapshot._urlSegment, c.snapshot._lastPathIndex + m, h.numberOfDoubleDots)
                                    }(w, d, h),
                                    j = x.processChildren ? zr(x.segmentGroup, x.index, w.commands) : Oi(x.segmentGroup, x.index, w.commands);
                                return dr(x.segmentGroup, j, d, m, E)
                            }(Ue, this.currentUrlTree, c, nt, null != xt ? xt : null)
                    }
                    navigateByUrl(c, m = {
                        skipLocationChange: !1
                    }) {
                        const E = q(c) ? c : this.parseUrl(c),
                            w = this.urlHandlingStrategy.merge(E, this.rawUrlTree);
                        return this.scheduleNavigation(w, "imperative", null, m)
                    }
                    navigate(c, m = {
                        skipLocationChange: !1
                    }) {
                        return function(h) {
                            for (let d = 0; d < h.length; d++) {
                                const c = h[d];
                                if (null == c) throw new Error(`The requested path contains ${c} segment at index ${d}`)
                            }
                        }(c), this.navigateByUrl(this.createUrlTree(c, m), m)
                    }
                    serializeUrl(c) {
                        return this.urlSerializer.serialize(c)
                    }
                    parseUrl(c) {
                        let m;
                        try {
                            m = this.urlSerializer.parse(c)
                        } catch (E) {
                            m = this.malformedUriErrorHandler(E, this.urlSerializer, c)
                        }
                        return m
                    }
                    isActive(c, m) {
                        let E;
                        if (E = !0 === m ? st({}, oa) : !1 === m ? st({}, oo) : m, q(c)) return Oe(this.currentUrlTree, c, E);
                        const w = this.parseUrl(c);
                        return Oe(this.currentUrlTree, w, E)
                    }
                    removeEmptyProps(c) {
                        return Object.keys(c).reduce((m, E) => {
                            const w = c[E];
                            return null != w && (m[E] = w), m
                        }, {})
                    }
                    processNavigations() {
                        this.navigations.subscribe(c => {
                            this.navigated = !0, this.lastSuccessfulId = c.id, this.currentPageId = c.targetPageId, this.events.next(new Lt(c.id, this.serializeUrl(c.extractedUrl), this.serializeUrl(this.currentUrlTree))), this.lastSuccessfulNavigation = this.currentNavigation, c.resolve(!0)
                        }, c => {
                            this.console.warn(`Unhandled Navigation Error: ${c}`)
                        })
                    }
                    scheduleNavigation(c, m, E, w, x) {
                        var Hi, co, $i;
                        if (this.disposed) return Promise.resolve(!1);
                        const j = this.transitions.value,
                            oe = cs(m) && j && !cs(j.source),
                            Ue = j.rawUrl.toString() === c.toString(),
                            xt = j.id === (null == (Hi = this.currentNavigation) ? void 0 : Hi.id);
                        if (oe && Ue && xt) return Promise.resolve(!0);
                        let rt, Ft, Us;
                        x ? (rt = x.resolve, Ft = x.reject, Us = x.promise) : Us = new Promise((Yr, af) => {
                            rt = Yr, Ft = af
                        });
                        const Ci = ++this.navigationId;
                        let Qr;
                        return "computed" === this.canceledNavigationResolution ? (0 === this.currentPageId && (E = this.location.getState()), Qr = E && E.\u0275routerPageId ? E.\u0275routerPageId : w.replaceUrl || w.skipLocationChange ? null != (co = this.browserPageId) ? co : 0 : (null != ($i = this.browserPageId) ? $i : 0) + 1) : Qr = 0, this.setTransition({
                            id: Ci,
                            targetPageId: Qr,
                            source: m,
                            restoredState: E,
                            currentUrlTree: this.currentUrlTree,
                            currentRawUrl: this.rawUrlTree,
                            rawUrl: c,
                            extras: w,
                            resolve: rt,
                            reject: Ft,
                            promise: Us,
                            currentSnapshot: this.routerState.snapshot,
                            currentRouterState: this.routerState
                        }), Us.catch(Yr => Promise.reject(Yr))
                    }
                    setBrowserUrl(c, m) {
                        const E = this.urlSerializer.serialize(c),
                            w = st(st({}, m.extras.state), this.generateNgRouterState(m.id, m.targetPageId));
                        this.location.isCurrentPathEqualTo(E) || m.extras.replaceUrl ? this.location.replaceState(E, "", w) : this.location.go(E, "", w)
                    }
                    restoreHistory(c, m = !1) {
                        var E, w;
                        if ("computed" === this.canceledNavigationResolution) {
                            const x = this.currentPageId - c.targetPageId;
                            "popstate" !== c.source && "eager" !== this.urlUpdateStrategy && this.currentUrlTree !== (null == (E = this.currentNavigation) ? void 0 : E.finalUrl) || 0 === x ? this.currentUrlTree === (null == (w = this.currentNavigation) ? void 0 : w.finalUrl) && 0 === x && (this.resetState(c), this.browserUrlTree = c.currentUrlTree, this.resetUrlToCurrentUrlTree()) : this.location.historyGo(x)
                        } else "replace" === this.canceledNavigationResolution && (m && this.resetState(c), this.resetUrlToCurrentUrlTree())
                    }
                    resetState(c) {
                        this.routerState = c.currentRouterState, this.currentUrlTree = c.currentUrlTree, this.rawUrlTree = this.urlHandlingStrategy.merge(this.currentUrlTree, c.rawUrl)
                    }
                    resetUrlToCurrentUrlTree() {
                        this.location.replaceState(this.urlSerializer.serialize(this.rawUrlTree), "", this.generateNgRouterState(this.lastSuccessfulId, this.currentPageId))
                    }
                    cancelNavigationTransition(c, m) {
                        const E = new Ot(c.id, this.serializeUrl(c.extractedUrl), m);
                        this.triggerEvent(E), c.resolve(!1)
                    }
                    generateNgRouterState(c, m) {
                        return "computed" === this.canceledNavigationResolution ? {
                            navigationId: c,
                            \u0275routerPageId: m
                        } : {
                            navigationId: c
                        }
                    }
                }
                return h.\u0275fac = function(c) {
                    T.$Z()
                }, h.\u0275prov = T.Yz7({
                    token: h,
                    factory: h.\u0275fac
                }), h
            })();

            function cs(h) {
                return "imperative" !== h
            }
            class la {}
            class sl {
                preload(d, c) {
                    return (0, X.of)(null)
                }
            }
            let il = (() => {
                    class h {
                        constructor(c, m, E, w) {
                            this.router = c, this.injector = E, this.preloadingStrategy = w, this.loader = new tl(E, m, oe => c.triggerEvent(new ir(oe)), oe => c.triggerEvent(new zn(oe)))
                        }
                        setUpPreloading() {
                            this.subscription = this.router.events.pipe((0, Xe.h)(c => c instanceof Lt), (0, fe.b)(() => this.preload())).subscribe(() => {})
                        }
                        preload() {
                            const c = this.injector.get(T.h0i);
                            return this.processRoutes(c, this.router.config)
                        }
                        ngOnDestroy() {
                            this.subscription && this.subscription.unsubscribe()
                        }
                        processRoutes(c, m) {
                            const E = [];
                            for (const w of m)
                                if (w.loadChildren && !w.canLoad && w._loadedConfig) {
                                    const x = w._loadedConfig;
                                    E.push(this.processRoutes(x.module, x.routes))
                                } else w.loadChildren && !w.canLoad ? E.push(this.preloadConfig(c, w)) : w.children && E.push(this.processRoutes(c, w.children));
                            return (0, $e.D)(E).pipe((0, Fe.J)(), (0, N.U)(w => {}))
                        }
                        preloadConfig(c, m) {
                            return this.preloadingStrategy.preload(m, () => (m._loadedConfig ? (0, X.of)(m._loadedConfig) : this.loader.load(c.injector, m)).pipe((0, Ie.zg)(w => (m._loadedConfig = w, this.processRoutes(w.module, w.routes)))))
                        }
                    }
                    return h.\u0275fac = function(c) {
                        return new(c || h)(T.LFG(Wn), T.LFG(T.Sil), T.LFG(T.zs3), T.LFG(la))
                    }, h.\u0275prov = T.Yz7({
                        token: h,
                        factory: h.\u0275fac
                    }), h
                })(),
                li = (() => {
                    class h {
                        constructor(c, m, E = {}) {
                            this.router = c, this.viewportScroller = m, this.options = E, this.lastId = 0, this.lastSource = "imperative", this.restoredId = 0, this.store = {}, E.scrollPositionRestoration = E.scrollPositionRestoration || "disabled", E.anchorScrolling = E.anchorScrolling || "disabled"
                        }
                        init() {
                            "disabled" !== this.options.scrollPositionRestoration && this.viewportScroller.setHistoryScrollRestoration("manual"), this.routerEventsSubscription = this.createScrollEvents(), this.scrollEventsSubscription = this.consumeScrollEvents()
                        }
                        createScrollEvents() {
                            return this.router.events.subscribe(c => {
                                c instanceof Nt ? (this.store[this.lastId] = this.viewportScroller.getScrollPosition(), this.lastSource = c.navigationTrigger, this.restoredId = c.restoredState ? c.restoredState.navigationId : 0) : c instanceof Lt && (this.lastId = c.id, this.scheduleScrollEvent(c, this.router.parseUrl(c.urlAfterRedirects).fragment))
                            })
                        }
                        consumeScrollEvents() {
                            return this.router.events.subscribe(c => {
                                c instanceof Kn && (c.position ? "top" === this.options.scrollPositionRestoration ? this.viewportScroller.scrollToPosition([0, 0]) : "enabled" === this.options.scrollPositionRestoration && this.viewportScroller.scrollToPosition(c.position) : c.anchor && "enabled" === this.options.anchorScrolling ? this.viewportScroller.scrollToAnchor(c.anchor) : "disabled" !== this.options.scrollPositionRestoration && this.viewportScroller.scrollToPosition([0, 0]))
                            })
                        }
                        scheduleScrollEvent(c, m) {
                            this.router.triggerEvent(new Kn(c, "popstate" === this.lastSource ? this.store[this.restoredId] : null, m))
                        }
                        ngOnDestroy() {
                            this.routerEventsSubscription && this.routerEventsSubscription.unsubscribe(), this.scrollEventsSubscription && this.scrollEventsSubscription.unsubscribe()
                        }
                    }
                    return h.\u0275fac = function(c) {
                        T.$Z()
                    }, h.\u0275prov = T.Yz7({
                        token: h,
                        factory: h.\u0275fac
                    }), h
                })();
            const ds = new T.OlP("ROUTER_CONFIGURATION"),
                ji = new T.OlP("ROUTER_FORROOT_GUARD"),
                lo = [A.Ye, {
                    provide: rs,
                    useClass: vr
                }, {
                    provide: Wn,
                    useFactory: function(h, d, c, m, E, w, x = {}, j, oe) {
                        const Ue = new Wn(null, h, d, c, m, E, ur(w));
                        return j && (Ue.urlHandlingStrategy = j), oe && (Ue.routeReuseStrategy = oe),
                            function(h, d) {
                                h.errorHandler && (d.errorHandler = h.errorHandler), h.malformedUriErrorHandler && (d.malformedUriErrorHandler = h.malformedUriErrorHandler), h.onSameUrlNavigation && (d.onSameUrlNavigation = h.onSameUrlNavigation), h.paramsInheritanceStrategy && (d.paramsInheritanceStrategy = h.paramsInheritanceStrategy), h.relativeLinkResolution && (d.relativeLinkResolution = h.relativeLinkResolution), h.urlUpdateStrategy && (d.urlUpdateStrategy = h.urlUpdateStrategy), h.canceledNavigationResolution && (d.canceledNavigationResolution = h.canceledNavigationResolution)
                            }(x, Ue), x.enableTracing && Ue.events.subscribe(xt => {
                                var nt, rt;
                                null == (nt = console.group) || nt.call(console, `Router Event: ${xt.constructor.name}`), console.log(xt.toString()), console.log(xt), null == (rt = console.groupEnd) || rt.call(console)
                            }), Ue
                    },
                    deps: [rs, ht, A.Ye, T.zs3, T.Sil, Bi, ds, [class {}, new T.FiY],
                        [class {}, new T.FiY]
                    ]
                }, ht, {
                    provide: os,
                    useFactory: function(h) {
                        return h.routerState.root
                    },
                    deps: [Wn]
                }, il, sl, class {
                    preload(d, c) {
                        return c().pipe(Ne(() => (0, X.of)(null)))
                    }
                }, {
                    provide: ds,
                    useValue: {
                        enableTracing: !1
                    }
                }];

            function Eu() {
                return new T.PXZ("Router", Wn)
            }
            let al = (() => {
                class h {
                    constructor(c, m) {}
                    static forRoot(c, m) {
                        return {
                            ngModule: h,
                            providers: [lo, dl(c), {
                                    provide: ji,
                                    useFactory: cl,
                                    deps: [
                                        [Wn, new T.FiY, new T.tp0]
                                    ]
                                }, {
                                    provide: ds,
                                    useValue: m || {}
                                }, {
                                    provide: A.S$,
                                    useFactory: ul,
                                    deps: [A.lw, [new T.tBr(A.mr), new T.FiY], ds]
                                }, {
                                    provide: li,
                                    useFactory: ll,
                                    deps: [Wn, A.EM, ds]
                                }, {
                                    provide: la,
                                    useExisting: m && m.preloadingStrategy ? m.preloadingStrategy : sl
                                }, {
                                    provide: T.PXZ,
                                    multi: !0,
                                    useFactory: Eu
                                },
                                [ua, {
                                    provide: T.ip1,
                                    multi: !0,
                                    useFactory: fl,
                                    deps: [ua]
                                }, {
                                    provide: ui,
                                    useFactory: hl,
                                    deps: [ua]
                                }, {
                                    provide: T.tb,
                                    multi: !0,
                                    useExisting: ui
                                }]
                            ]
                        }
                    }
                    static forChild(c) {
                        return {
                            ngModule: h,
                            providers: [dl(c)]
                        }
                    }
                }
                return h.\u0275fac = function(c) {
                    return new(c || h)(T.LFG(ji, 8), T.LFG(Wn, 8))
                }, h.\u0275mod = T.oAB({
                    type: h
                }), h.\u0275inj = T.cJS({}), h
            })();

            function ll(h, d, c) {
                return c.scrollOffset && d.setOffset(c.scrollOffset), new li(h, d, c)
            }

            function ul(h, d, c = {}) {
                return c.useHash ? new A.Do(h, d) : new A.b0(h, d)
            }

            function cl(h) {
                return "guarded"
            }

            function dl(h) {
                return [{
                    provide: T.deG,
                    multi: !0,
                    useValue: h
                }, {
                    provide: Bi,
                    multi: !0,
                    useValue: h
                }]
            }
            let ua = (() => {
                class h {
                    constructor(c) {
                        this.injector = c, this.initNavigation = !1, this.destroyed = !1, this.resultOfPreactivationDone = new ne.xQ
                    }
                    appInitializer() {
                        return this.injector.get(A.V_, Promise.resolve(null)).then(() => {
                            if (this.destroyed) return Promise.resolve(!0);
                            let m = null;
                            const E = new Promise(j => m = j),
                                w = this.injector.get(Wn),
                                x = this.injector.get(ds);
                            return "disabled" === x.initialNavigation ? (w.setUpLocationChangeListener(), m(!0)) : "enabled" === x.initialNavigation || "enabledBlocking" === x.initialNavigation ? (w.hooks.afterPreactivation = () => this.initNavigation ? (0, X.of)(null) : (this.initNavigation = !0, m(!0), this.resultOfPreactivationDone), w.initialNavigation()) : m(!0), E
                        })
                    }
                    bootstrapListener(c) {
                        const m = this.injector.get(ds),
                            E = this.injector.get(il),
                            w = this.injector.get(li),
                            x = this.injector.get(Wn),
                            j = this.injector.get(T.z2F);
                        c === j.components[0] && (("enabledNonBlocking" === m.initialNavigation || void 0 === m.initialNavigation) && x.initialNavigation(), E.setUpPreloading(), w.init(), x.resetRootComponentType(j.componentTypes[0]), this.resultOfPreactivationDone.next(null), this.resultOfPreactivationDone.complete())
                    }
                    ngOnDestroy() {
                        this.destroyed = !0
                    }
                }
                return h.\u0275fac = function(c) {
                    return new(c || h)(T.LFG(T.zs3))
                }, h.\u0275prov = T.Yz7({
                    token: h,
                    factory: h.\u0275fac
                }), h
            })();

            function fl(h) {
                return h.appInitializer.bind(h)
            }

            function hl(h) {
                return h.bootstrapListener.bind(h)
            }
            const ui = new T.OlP("Router Initializer")
        }
    },
    He => {
        He(He.s = 2311)
    }
]);