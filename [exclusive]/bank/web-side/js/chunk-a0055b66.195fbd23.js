(window["webpackJsonp"] = window["webpackJsonp"] || []).push([
	["chunk-a0055b66"], {
		"0b82": function(e, t, n) {},
		"0f25": function(e, t, n) {},
		"6d2e": function(e, t, n) {},
		"8ae0": function(e, t, n) {
			e.exports = n.p + "img/file.e7df4fd5.png"
		},
		a395: function(e, t, n) {
			"use strict";
			n.r(t);
			var c = n("1da1"),
				a = (n("c740"), n("a434"), n("96cf"), n("7a23")),
				i = n("366e"),
				u = n("8ae0"),
				r = n.n(u),
				l = {
					key: 0,
					class: "bar"
				},
				s = {
					__name: "ButtonFiles",
					props: {
						type: String,
						selected: Boolean,
						cb: Function
					},
					setup: function(e) {
						var t = {
							received: "Recebidos",
							sent: "Enviados"
						};
						return function(n, c) {
							return Object(a["v"])(), Object(a["g"])("div", {
								class: Object(a["p"])(["button-file", {
									selected: e.selected
								}]),
								onClick: c[0] || (c[0] = function() {
									return e.cb && e.cb.apply(e, arguments)
								})
							}, [Object(a["h"])("p", null, Object(a["E"])(Object(a["F"])(t)[e.type]), 1), e.selected ? (Object(a["v"])(), Object(a["g"])("div", l)) : Object(a["f"])("", !0)], 2)
						}
					}
				},
				b = (n("bc84"), n("6b0d")),
				o = n.n(b);
			const d = o()(s, [
				["__scopeId", "data-v-15f16aba"]
			]);
			var v = d,
				j = n("9790"),
				O = function(e) {
					return Object(a["y"])("data-v-ca716060"), e = e(), Object(a["w"])(), e
				},
				f = O((function() {
					return Object(a["h"])("p", {
						class: "pay-invoice-text"
					}, "Pagar", -1)
				})),
				p = {
					class: "left-item"
				},
				h = {
					__name: "ItemList",
					props: {
						cb: Function,
						data: Object,
						hasPayment: Boolean
					},
					setup: function(e) {
						var t = e;

						function n() {
							t.cb(t.data.id)
						}
						return function(c, i) {
							return Object(a["v"])(), Object(a["g"])("div", {
								class: Object(a["p"])(["item-list", {
									notPayment: !e.hasPayment
								}]),
								onClick: n
							}, [f, Object(a["h"])("div", p, [Object(a["h"])("p", null, Object(a["E"])(t.data.reason), 1), Object(a["h"])("span", null,  Object(a["E"])(t.data.holder), 1)]), Object(a["h"])("span", null, "R" +Object(a["E"])(Object(a["F"])(j["a"])(t.data.value)), 1)], 2)
						}
					}
				};
			n("d076");
			const m = o()(h, [
				["__scopeId", "data-v-ca716060"]
			]);
			var y = m,
				g = n("14c3"),
				I = n("5502"),
				w = function(e) {
					return Object(a["y"])("data-v-d76f3de8"), e = e(), Object(a["w"])(), e
				},
				k = {
					class: "file"
				},
				x = w((function() {
					return Object(a["h"])("p", null, "Fatura", -1)
				})),
				F = {
					class: "main-file"
				},
				_ = {
					class: "input-frame"
				},
				R = {
					class: "form-frame"
				},
				P = w((function() {
					return Object(a["h"])("label", null, "Passaporte", -1)
				})),
				A = {
					class: "form-frame"
				},
				L = w((function() {
					return Object(a["h"])("label", null, "Valor da Fatura", -1)
				})),
				E = {
					class: "form-frame"
				},
				B = w((function() {
					return Object(a["h"])("label", null, "Razão", -1)
				})),
				U = {
					class: "list-frame"
				},
				V = {
					class: "header-list-frame"
				},
				C = {
					class: "list-container"
				},
				G = {
					key: 0,
					class: "list-inside"
				},
				K = {
					__name: "index",
					setup: function(e) {
						var t = Object(I["b"])(),
							n = Object(a["A"])("received"),
							u = Object(a["A"])(""),
							l = Object(a["A"])(""),
							s = Object(a["A"])("");

						function b() {
							return o.apply(this, arguments)
						}

						function o() {
							return o = Object(c["a"])(regeneratorRuntime.mark((function e() {
								var n, c, a, i;
								return regeneratorRuntime.wrap((function(e) {
									while (1) switch (e.prev = e.next) {
										case 0:
											if (n = parseInt(Math.abs(u.value)), c = parseInt(Math.abs(l.value)), a = s.value, !(n && c && a)) {
												e.next = 8;
												break
											}
											return e.next = 6, Object(g["a"])("MakeInvoice", {
												passport: n,
												value: c,
												reason: a
											});
										case 6:
											i = e.sent, i && (u.value = "", l.value = "", s.value = "", t.state.initial.InvoiceList = i);
										case 8:
										case "end":
											return e.stop()
									}
								}), e)
							}))), o.apply(this, arguments)
						}

						function d(e) {
							return j.apply(this, arguments)
						}

						function j() {
							return j = Object(c["a"])(regeneratorRuntime.mark((function e(c) {
								var a, i;
								return regeneratorRuntime.wrap((function(e) {
									while (1) switch (e.prev = e.next) {
										case 0:
											if ("received" !== n.value) {
												e.next = 5;
												break
											}
											return e.next = 3, Object(g["a"])("InvoicePayment", {
												id: c
											});
										case 3:
											a = e.sent, a && (i = t.state.initial.InvoiceList[n.value].findIndex((function(e) {
												return e.id === c
											})), t.state.initial.InvoiceList[n.value].splice(i, 1));
										case 5:
										case "end":
											return e.stop()
									}
								}), e)
							}))), j.apply(this, arguments)
						}
						return function(e, c) {
							return Object(a["v"])(), Object(a["g"])("div", k, [x, Object(a["h"])("div", F, [Object(a["h"])("div", _, [Object(a["h"])("form", {
								onSubmit: c[3] || (c[3] = Object(a["L"])((function() {}), ["prevent"]))
							}, [Object(a["h"])("div", R, [P, Object(a["K"])(Object(a["h"])("input", {
								placeholder: "0",
								"onUpdate:modelValue": c[0] || (c[0] = function(e) {
									return u.value = e
								}),
								type: "number"
							}, null, 512), [
								[a["G"], u.value]
							])]), Object(a["h"])("div", A, [L, Object(a["K"])(Object(a["h"])("input", {
								placeholder: "0",
								"onUpdate:modelValue": c[1] || (c[1] = function(e) {
									return l.value = e
								}),
								type: "number"
							}, null, 512), [
								[a["G"], l.value]
							])]), Object(a["h"])("div", E, [B, Object(a["K"])(Object(a["h"])("input", {
								placeholder: "Razão da fatura",
								"onUpdate:modelValue": c[2] || (c[2] = function(e) {
									return s.value = e
								}),
								type: "text"
							}, null, 512), [
								[a["G"], s.value]
							])]), Object(a["j"])(Object(a["F"])(i["a"]), {
								cb: b,
								class: "button",
								text: "CRIAR FATURA",
								img: Object(a["F"])(r.a)
							}, null, 8, ["img"])], 32)]), Object(a["h"])("div", U, [Object(a["h"])("div", V, [Object(a["j"])(v, {
								cb: function() {
									return n.value = "received"
								},
								selected: "received" === n.value,
								type: "received"
							}, null, 8, ["cb", "selected"]), Object(a["j"])(v, {
								cb: function() {
									return n.value = "sent"
								},
								selected: "sent" === n.value,
								type: "sent"
							}, null, 8, ["cb", "selected"])]), Object(a["h"])("div", C, [Object(a["F"])(t).state.initial.InvoiceList ? (Object(a["v"])(), Object(a["g"])("div", G, [(Object(a["v"])(!0), Object(a["g"])(a["a"], null, Object(a["B"])(Object(a["F"])(t).state.initial.InvoiceList[n.value], (function(e, t) {
								return Object(a["v"])(), Object(a["e"])(y, {
									cb: d,
									hasPayment: "received" == n.value,
									data: e,
									key: t
								}, null, 8, ["hasPayment", "data"])
							})), 128))])) : Object(a["f"])("", !0)])])])])
						}
					}
				};
			n("e921");
			const M = o()(K, [
				["__scopeId", "data-v-d76f3de8"]
			]);
			t["default"] = M
		},
		bc84: function(e, t, n) {
			"use strict";
			n("0f25")
		},
		d076: function(e, t, n) {
			"use strict";
			n("6d2e")
		},
		e921: function(e, t, n) {
			"use strict";
			n("0b82")
		}
	}
]);
//# sourceMappingURL=chunk-a0055b66.195fbd23.js.map