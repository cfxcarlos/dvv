var Voip = "Normal";
var Interval = undefined;
// -------------------------------------------------------------------------------------------
function Minimal(Seconds) {
	var Days = Math.floor(Seconds / 86400)
	Seconds = Seconds - Days * 86400
	var Hours = Math.floor(Seconds / 3600)
	Seconds = Seconds - Hours * 3600
	var Minutes = Math.floor(Seconds / 60)
	Seconds = Seconds - Minutes * 60

	const [D, H, M, S] = [Days, Hours, Minutes, Seconds].map(s => s.toString().padStart(2, 0))

	if (Days > 0) {
		return D + ":" + H
	} else if (Hours > 0) {
		return H + ":" + M
	} else if (Minutes > 0) {
		return M + ":" + S
	} else if (Seconds > 0) {
		return "00:" + S
	}
}
// -------------------------------------------------------------------------------------------
const FormatNumber = n => {
	var n = n.toString();
	var r = "";
	var x = 0;

	for (var i = n["length"]; i > 0; i--) {
		r += n.substr(i - 1, 1) + (x == 2 && i != 1 ? "." : "");
		x = x == 2 ? 0 : x + 1;
	}

	return r.split("").reverse().join("");
}
// -------------------------------------------------------------------------------------------
window.addEventListener("message", function (event) {
	switch (event["data"]["Action"]) {
		case "Progress":
			if ($(".Progress").css("display") === "block") {
				$(".Progress").css("display", "none");
				$("#NaviText").css("display", "none");
				clearInterval(Interval);
				Interval = undefined;

				return
			} else {
				$(".ProgressTimer").html(0 + "%");
				$(".Progress").css("display", "block");
				$("#NaviText").css("display", "flex");
				$(".ProgressText").html(event["data"]["Message"]);
			}

			var Percentage = 1;
			Interval = setInterval(Ticker, (event["data"]["Timer"] - 300) / 100);

			function Ticker() {
				Percentage = Percentage + 1;

				if (Percentage >= 100) {
					clearInterval(Interval);
					$(".Progress").css("display", "none");
					$("#NaviText").css("display", "none");
					Interval = undefined;
				}

				$(".ProgressTimer").html(Percentage + "%");
			}
			break;

		case "Frequency":
			var frequency = event["data"]["Frequency"];

			if (frequency) {
				$(".Radio").html(frequency);
				$(".item.radio").show();
			} else {
				$(".item.radio").hide();
			}
			break;

		case "Body":
			if (event["data"]["Status"]) {
				if ($("#Body").css("display") === "none") {
					$("#Body").fadeIn(1000);
				}
			} else {
				if ($("#Body").css("display") === "block") {
					$("#Body").fadeOut(1000);
				}
			}
			break;

		case "Gemstone":
			var gemstone = FormatNumber(event["data"]["Number"]);
			$(".Gemstone").html(gemstone);

			if (gemstone !== undefined && gemstone !== null && gemstone != 0) {
				$(".item.gemstom").show();
			} else {
				$(".item.gemstom").hide();
			}
			break;

		case "Voip":
			if (event["data"]["Voip"] == "Offline") {
				$(".Voip").html("Offline");
			} else {
				if (event["data"]["Voip"] !== "Online") {
					Voip = event["data"]["Voip"];
				}

				$(".Voip").html(Voip);
			}
			break;

		case "Voice":
			$(".Voip").css("color", event["data"]["Status"]);
			break;

		case "Clock":
			var Hours = event["data"]["Hours"];
			var Minutes = event["data"]["Minutes"];

			if (Hours <= 9)
				Hours = "0" + Hours

			if (Minutes <= 9)
				Minutes = "0" + Minutes

			$(".Date").html(Hours + ":" + Minutes);
			break;

		case "Wanted":
			if (event["data"]["Number"] > 0) {
				if ($(".Wanted").css("display") === "none") {
					$("#NaviText").css("display", "none");
					$(".Wanted").fadeIn(1000);
				}

				$(".WantedTimer").html(Minimal(event["data"]["Number"]));
			} else {
				if ($(".Wanted").css("display") === "block") {
					$("#NaviText").css("display", "flex");
					$(".Wanted").fadeOut(1000);
				}
			}
			break;

		case "Reposed":
			if (event["data"]["Number"] > 0) {
				if ($(".Reposed").css("display") === "none") {
					$("#NaviText").css("display", "none");
					$(".Reposed").fadeIn(1000);
				}

				$(".ReposedTimer").html(Minimal(event["data"]["Number"]));
			} else {
				if ($(".Reposed").css("display") === "block") {
					$("#NaviText").css("display", "flex");
					$(".Reposed").fadeOut(1000);
				}
			}
			break;

		case "Road":
			$(".location").html(event["data"]["Name"]);
			break;

		case "Oxigen":
			if (event["data"]["Number"] > 0 || event["data"]["Scubaequip"] == true) {
				if ($(".Oxigen").css("display") === "none") {
					$(".Oxigen").fadeIn(1000);
				}

				$(".Oxigen").css("stroke-dashoffset", 100 - event["data"]["Number"]);
			} else {
				if ($(".Oxigen").css("display") === "block") {
					$(".Oxigen").fadeOut(1000);
				}
			}
			break;

		case "Health":
			$(".Health").css("stroke-dashoffset", 100 - event["data"]["Number"]);
			break;

		case "Armour":
			if (event["data"]["Number"] > 0) {
				if ($(".Armour").css("display") === "none") {
					$(".Armour").fadeIn(1000);
				}

				$(".Armour").css("stroke-dashoffset", 100 - event["data"]["Number"]);
			} else {
				if ($(".Armour").css("display") === "block") {
					$(".Armour").fadeOut(1000);
				}
			}
			break;

		case "Thirst":
			$(".Thirst").css("stroke-dashoffset", 100 - event["data"]["Number"]);
			break;

		case "Hunger":
			$(".Hunger").css("stroke-dashoffset", 100 - event["data"]["Number"]);
			break;

		case "Stress":
			if (event["data"]["Number"] > 0) {
				if ($(".Stress").css("display") === "none") {
					$(".Stress").fadeIn(1000);
				}

				$(".Stress").css("stroke-dashoffset", 100 - event["data"]["Number"]);
			} else {
				if ($(".Stress").css("display") === "block") {
					$(".Stress").fadeOut(1000);
				}
			}
			break;

		case "Luck":
			if (event["data"]["Number"] > 0) {
				if ($(".Lucks").css("display") === "none") {
					$(".Lucks").fadeIn(1000);
				}

				event["data"]["Number"] = event["data"]["Number"] / 36;

				$(".Luck").css("stroke-dashoffset", 100 - event["data"]["Number"]);
			} else {
				if ($(".Lucks").css("display") === "block") {
					$(".Lucks").fadeOut(1000);
				}
			}
			break;

		case "Dexterity":
			if (event["data"]["Number"] > 0) {
				if ($(".Dexteritys").css("display") === "none") {
					$(".Dexteritys").fadeIn(1000);
				}

				event["data"]["Number"] = event["data"]["Number"] / 36;

				$(".Dexterity").css("stroke-dashoffset", 100 - event["data"]["Number"]);
			} else {
				if ($(".Dexteritys").css("display") === "block") {
					$(".Dexteritys").fadeOut(1000);
				}
			}
			break;

		case "Vehicle":
			if (event["data"]["Status"]) {
				if ($("#Vehicle").css("display") === "none") {
					$("#Vehicle").fadeIn(1000);
					$("#NaviBottom").css("left", "20em");
				}
			} else {
				if ($("#Vehicle").css("display") === "block") {
					$("#Vehicle").fadeOut(1000);
					$("#NaviBottom").css("left", "2em");
				}
			}
			break;

		case "Fuel":
			var fuelvalue = parseInt(event["data"]["Number"] * 13) / 100
			$(".FuelProgress").css("stroke-dashoffset", (440 - (440 * (13 - fuelvalue)) / 100));
			break;

		case "Speed":
			var Max = 250;
			var Speed = parseInt(event["data"]["Number"]);

			if (Speed > Max)
				Max = event["data"]["Number"];

			var SpeedValue = (Speed * 46) / Max
			$(".SpeedProgress").css("stroke-dashoffset", (440 - (440 * SpeedValue) / 100));

			if (Speed < 10) {
				Speed = "00" + Speed
			} else if (Speed >= 10 && Speed < 100) {
				Speed = "0" + Speed
			}

			$(".NumSpeed").html(Speed);
			break;

		case "Rpm":
			var rpmvalue = (event["data"]["Number"] * 18)
			$(".MarchProgress").css("stroke-dashoffset", (440 - (440 * rpmvalue) / 100));
			$(".NumMarch").html(event["data"]["Gear"]);
			break;

		case "Handbrake":
			if (!event["data"]["Status"]) {
				$(".Handbrake").addClass("Gray").removeClass("YellowOr");
			} else {
				$(".Handbrake").addClass("YellowOr").removeClass("Gray");
			}
			break;

		case "Seatbelt":
			if (!event["data"]["Status"]) {
				$(".Seatbelt").addClass("Gray").removeClass("Green");
			} else {
				$(".Seatbelt").addClass("Green").removeClass("Gray");
			}
			break;

		case "Drift":
			if (!event["data"]["Status"]) {
				$(".Drift").addClass("Gray").removeClass("Yellow");
			} else {
				$(".Drift").addClass("Yellow").removeClass("Gray");
			}
			break;

		case "Headlight":
			if (event["data"]["Status"] == 0) {
				$(".Headlight").addClass("Gray").removeClass("Green").removeClass("Blue");
			} else {
				if (event["data"]["Beam"] == 0) {
					$(".Headlight").addClass("Green").removeClass("Gray").removeClass("Blue");
				} else {
					$(".Headlight").addClass("Blue").removeClass("Gray").removeClass("Green");
				}
			}
			break;

		case "Locked":
			if (event["data"]["Status"] == 2) {
				$(".Locked").addClass("Green").removeClass("RedOr");
			} else {
				$(".Locked").addClass("RedOr").removeClass("Green");
			}
			break;

		case "Tyres":
			if (event["data"]["Number"] == 0) {
				$(".Tyres").addClass("Gray").removeClass("Orange").removeClass("Red");
			} else if (event["data"]["Number"] == 1) {
				$(".Tyres").addClass("Orange").removeClass("Gray").removeClass("Red");
			} else if (event["data"]["Number"] >= 2) {
				$(".Tyres").addClass("Red").removeClass("Gray").removeClass("Orange");
			}
			break;

		case "Nitro":
			event["data"]["Number"] = event["data"]["Number"] / 20
			$(".Nitro").css("stroke-dashoffset", 100 - event["data"]["Number"]);
			break;

		case "WeaponsTitle":
			if (event["data"]["Status"] == true) {
				if ($("#WeaponTitle").css("display") === "none") {
					$("#WeaponTitle").fadeIn(1000);
				}

				$(".NameWeapon").html(event["data"]["Name"]);
			} else {
				if ($("#WeaponTitle").css("display") === "block") {
					$("#WeaponTitle").fadeOut(1000);
				}
			}
			break;

		case "Weapons":
			if (event["data"]["Status"] == true) {
				if ($("#NaviWeapons").css("display") === "none") {
					$("#NaviWeapons").fadeIn(1000);
				}

				$(".NameAmmos").html(event["data"]["Min"] + " / " + event["data"]["Max"]);
			} else {
				if ($("#NaviWeapons").css("display") === "block") {
					$("#NaviWeapons").fadeOut(1000);
				}
			}
			break;

		case "Textform":
			if (event["data"]["Mode"] === "Create") {
				var html = `<span id=Textform-${event["data"]["Number"]} class="Textform" style="left: 0; top: 0;"></span>`;
				$(html).fadeIn("normal").appendTo("#Textform");
			} else if (event["data"]["Mode"] === "Update") {
				$("#Textform-" + event["data"]["Number"]).css("left", event["data"]["x"] * 100 + "%").css("top", event["data"]["y"] * 100 + "%");
				$("#Textform-" + event["data"]["Number"]).html(event["data"]["Text"])
			} else if (event["data"]["Mode"] === "Remove") {
				$("#Textform-" + event["data"]["Number"]).fadeOut("normal", function () { $(this).remove(); });
			}
			break;
	}
});