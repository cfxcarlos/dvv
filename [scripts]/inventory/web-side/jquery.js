$(document).ready(function(){
	window.addEventListener("message",function(event){
		switch (event["data"]["action"]){
			case "Open":
				Backpack();
				$(".inventory").css("display","flex");
			break;

			case "Close":
				$(".inventory").css("display","none");
				$(".ui-tooltip").hide();
			break;

			case "Backpack":
				Backpack();
			break;
		}
	});

	document.onkeyup = data => {
		if (data["key"] === "Escape"){
			$.post("http://inventory/Close");
			$(".invRight").html("");
			$(".invLeft").html("");
		}
	};
});

const updateDrag = () => {
	$(".populated").draggable({
		helper: "clone",
		drag: function(event, ui) {
			let amount = $(".amount").val();
			if (event.shiftKey) {
				amount = parseInt(ui.helper.data("amount"));
			} else {
				if (amount == "" | parseInt(amount) <= 0) {
					amount = 1		
				} else {
					if (amount > parseInt(ui.helper.data("amount"))) {
						amount = parseInt(ui.helper.data("amount"))		
					}
				}
			}
		  	ui.helper.children(".top").children(".itemAmount").html(ParseFormat(amount) + "x");
			ui.helper.children(".top").children(".itemWeight").html((amount*parseFloat(ui.helper.data("peso"))).toFixed(2));
		}
	});

	$(".empty").droppable({
		hoverClass: "hoverControl",
		drop: function(event,ui){
			if(ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined) return;
			const tInv = $(this).parent()[0].className;

			if(origin === "invRight" && tInv === "invRight") return;
			
			itemData = { key: ui.draggable.data("item-key"), slot: ui.draggable.data("slot") };
			const target = $(this).data("slot");

			if (itemData.key === undefined || target === undefined) return;

			let amount = 0;
			let itemAmount = parseInt(ui.draggable.data("amount"));

			if (shiftPressed)
				amount = itemAmount;
			else if($(".amount").val() == "" | parseInt($(".amount").val()) <= 0)
				amount = 1;
			else
				amount = parseInt($(".amount").val());

			if(amount > itemAmount)
				amount = itemAmount;

			$(".populated, .empty, .use, .send, .deliver").off("draggable droppable");

			let clone1 = ui.draggable.clone();
			let slot2 = $(this).data("slot"); 

			if(amount == itemAmount) {
				let clone2 = $(this).clone();
				let slot1 = ui.draggable.data("slot");

				$(this).replaceWith(clone1);
				ui.draggable.replaceWith(clone2);
				
				$(clone1).data("slot", slot2);
				$(clone2).data("slot", slot1);
			} else {
				let newAmountOldItem = itemAmount - amount;
				let weight = parseFloat(ui.draggable.data("peso"));
				let newWeightClone1 = (amount*weight).toFixed(2);
				let newWeightOldItem = (newAmountOldItem*weight).toFixed(2);

				ui.draggable.data("amount",newAmountOldItem);

				clone1.data("amount",amount);

				$(this).replaceWith(clone1);
				$(clone1).data("slot",slot2);

				ui.draggable.children(".top").children(".itemAmount").html(ParseFormat(ui.draggable.data("amount")) + "x");
				ui.draggable.children(".top").children(".itemWeight").html(newWeightOldItem);
				
				$(clone1).children(".top").children(".itemAmount").html(ParseFormat(clone1.data("amount")) + "x");
				$(clone1).children(".top").children(".itemWeight").html(newWeightClone1);
			}

			updateDrag();

			if (origin === "invLeft" && tInv === "invLeft"){
				$.post("http://inventory/Update",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					target: target,
					amount: parseInt(amount)
				}));
			} else if (origin === "invRight" && tInv === "invLeft"){
				const id = ui.draggable.data("id");
				$.post("http://inventory/Pickup",JSON.stringify({
					id: id,
					target: target,
					amount: parseInt(amount)
				}));
			} else if (origin === "invLeft" && tInv === "invRight"){
				$.post("http://inventory/Drops",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					amount: parseInt(amount)
				}));
			}

			$(".amount").val("");
		}
	});

	$(".populated").droppable({
		hoverClass: "hoverControl",
		drop: function(event,ui){
			if(ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined) return;
			const tInv = $(this).parent()[0].className;

			if(origin === "invRight" && tInv === "invRight") return;

			itemData = { key: ui.draggable.data("item-key"), slot: ui.draggable.data("slot") };
			const target = $(this).data("slot");

			if (itemData.key === undefined || target === undefined) return;

			let amount = 0;
			let itemAmount = parseInt(ui.draggable.data("amount"));

			if (shiftPressed)
				amount = itemAmount;
			else if($(".amount").val() == "" | parseInt($(".amount").val()) <= 0)
				amount = 1;
			else
				amount = parseInt($(".amount").val());

			if(amount > itemAmount)
				amount = itemAmount;

			$(".populated, .empty, .use, .send, .deliver").off("draggable droppable");

			if(ui.draggable.data("item-key") == $(this).data("item-key")){
				let newSlotAmount = amount + parseInt($(this).data("amount"));
				let newSlotWeight = ui.draggable.data("peso") * newSlotAmount;

				$(this).data("amount",newSlotAmount);
				$(this).children(".top").children(".itemAmount").html(ParseFormat(newSlotAmount) + "x");
				$(this).children(".top").children(".itemWeight").html(newSlotWeight.toFixed(2));

				if(amount == itemAmount) {
					ui.draggable.replaceWith(`<div class="item empty" data-slot="${ui.draggable.data("slot")}"></div>`);
				} else {
					let newMovedAmount = itemAmount - amount;
					let newMovedWeight = parseFloat(ui.draggable.data("peso")) * newMovedAmount;

					ui.draggable.data("amount",newMovedAmount);
					ui.draggable.children(".top").children(".itemAmount").html(ParseFormat(newMovedAmount) + "x");
					ui.draggable.children(".top").children(".itemWeight").html(newMovedWeight.toFixed(2));
				}
			} else {
				if (origin === "invRight" && tInv === "invLeft") return;

				let clone1 = ui.draggable.clone();
				let clone2 = $(this).clone();

				let slot1 = ui.draggable.data("slot");
				let slot2 = $(this).data("slot");

				ui.draggable.replaceWith(clone2);
				$(this).replaceWith(clone1);

				$(clone1).data("slot",slot2);
				$(clone2).data("slot",slot1);
			}

			updateDrag();

			if (origin === "invLeft" && tInv === "invLeft") {
				$.post("http://inventory/Update",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					target: target,
					amount: parseInt(amount)
				}));
			} else if (origin === "invRight" && tInv === "invLeft"){
				const id = ui.draggable.data("id");
				$.post("http://inventory/Pickup",JSON.stringify({
					id: id,
					target: target,
					amount: parseInt(amount)
				}));
			} else if (origin === "invLeft" && tInv === "invRight"){
				$.post("http://inventory/Drops",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					amount: parseInt(amount)
				}));
			}

			$(".amount").val("");
		}
	});

	$(".use").droppable({
		hoverClass: "hoverControl",
		drop: function(event,ui){
			if(ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined || origin === "invRight") return;
			itemData = { key: ui.draggable.data("item-key"), slot: ui.draggable.data("slot") };

			if (itemData.key === undefined) return;

			let amount = $(".amount").val();
			if (shiftPressed) amount = ui.draggable.data("amount");

			$.post("http://inventory/Use",JSON.stringify({
				slot: itemData.slot,
				amount: parseInt(amount)
			}));

			$(".amount").val("");
		}
	});

	$(".send").droppable({
		hoverClass: "hoverControl",
		drop: function(event,ui){
			if(ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined || origin === "invRight") return;
			itemData = { key: ui.draggable.data("item-key"), slot: ui.draggable.data("slot") };

			if (itemData.key === undefined) return;

			let amount = $(".amount").val();
			if (shiftPressed) amount = ui.draggable.data("amount");

			$.post("http://inventory/Send",JSON.stringify({
				key: itemData.key,
				slot: itemData.slot,
				amount: parseInt(amount)
			}));

			$(".amount").val("");
		}
	});

	$(".deliver").droppable({
		hoverClass: "hoverControl",
		drop: function(event,ui){
			if(ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined || origin === "invRight") return;
			itemData = { key: ui.draggable.data("item-key"), slot: ui.draggable.data("slot") };

			if (itemData.key === undefined) return;

			let amount = $(".amount").val();
			if (shiftPressed) amount = ui.draggable.data("amount");

			$.post("http://inventory/Deliver",JSON.stringify({
				slot: itemData.slot
			}));

			$(".amount").val("");
		}
	});

	$(".populated").on("auxclick", e => {
		if (e["which"] === 3){
			const item = e["target"];
			const shiftPressed = event.shiftKey;
			const origin = $(item).parent()[0].className;
			if (origin === undefined || origin === "invRight") return;

			itemData = { key: $(item).data("item-key"), slot: $(item).data("slot") };

			if (itemData.key === undefined) return;

			let amount = $(".amount").val();
			if (shiftPressed) amount = $(item).data("amount");

			$.post("http://inventory/Use",JSON.stringify({
				slot: itemData.slot,
				amount: parseInt(amount)
			}));
		}
	});

	$(".populated").tooltip({
		create: function(event,ui){
			$(this).tooltip({
				content: $(this).attr("data-description"),
				position: { my: "center top + 10", at: "center bottom", collision: "flipfit" },
				show: { duration: 10 },
				hide: { duration: 10 }
			});
		}
	});
}

const colorPicker = (percent) => {
	var colorPercent = "#2e6e4c";

	if (percent >= 100)
		colorPercent = "rgba(255,255,255,0)";

	if (percent >= 51 && percent <= 75)
		colorPercent = "#fcc458";

	if (percent >= 26 && percent <= 50)
		colorPercent = "#fc8a58";

	if (percent <= 25)
		colorPercent = "#fc5858";

	return colorPercent;
}

const Backpack = () => {
	$.post("http://inventory/Inventory",JSON.stringify({}),(data) => {
		$("#weightTextLeft").html(`${(data["Weight"]).toFixed(2)}   /   ${(data["MaxWeight"]).toFixed(2)}`);

		$("#weightBarLeft").html(`<div id="weightContent" style="width: ${data["Weight"] / data["MaxWeight"] * 100}%"></div>`);

		$(".invLeft").html("");
		$(".invRight").html("");

		if (data["MaxWeight"] > 100)
			data["MaxWeight"] = 100;

		const nameList2 = data["Drops"].sort((a,b) => (a["Name"] > b["Name"]) ? 1:-1);

		for (let x = 1; x <= data["MaxWeight"]; x++){
			const slot = x.toString();

			if (data["Inventory"][slot] !== undefined){
				var v = data["Inventory"][slot];
				var maxDurability = 3600 * v["days"];
				var newDurability = (maxDurability - v["durability"]) / maxDurability;
				var actualPercent = newDurability * 100;

				if (v["charges"] !== undefined)
					actualPercent = v["charges"];

				if (actualPercent <= 1)
					actualPercent = 1;

				const item = `<div class="item populated" title="" data-max="${v["max"]}" data-economy="${v["economy"]}" data-description="${v["desc"]}" style="background-image: url('http://localhost/inventory/${v["index"]}.png'); background-position: center; background-repeat: no-repeat;" data-amount="${v["amount"]}" data-peso="${v["peso"]}" data-item-key="${v["key"]}" data-name-key="${v["name"]}" data-slot="${slot}" data-idName="${v["idName"]}" data-idBlood="${v["idBlood"]}" data-idPremium="${v["idPremium"]}" data-idVality="${v["idVality"]}" data-idRolepass="${v["idRolepass"]}" data-idGemstone="${v["idGemstone"]}" data-Suitcase="${v["Suitcase"]}" data-Vehkey="${v["Vehkey"]}" data-Passport="${v["Passport"]}">
					<div class="top">
						<div class="itemWeight">${(v["peso"] * v["amount"]).toFixed(2)}</div>
						<div class="itemAmount">${ParseFormat (v["amount"])}x</div>
					</div>

					<div class="durability" style="width: ${actualPercent == 1 ? "100":actualPercent}%; background: ${actualPercent == 1 ? "#fc5858":colorPicker(actualPercent)};"></div>
					<div class="nameItem">${v["name"]}</div>
				</div>`;

				$(".invLeft").append(item);
			} else {
				const item = `<div class="item empty" data-slot="${slot}"></div>`;

				$(".invLeft").append(item);
			}
		}
		const nameOrgazine = data["Drops"].sort((a,b) => (a["Name"] > b["Name"]) ? 1:-1);
		for (let x = 1; x <= 25; x++){
			const slot = x.toString();
			if (nameOrgazine[x - 1] !== undefined){
				var v = nameOrgazine[x - 1];
				var maxDurability = 3600 * (v["days"] || 1);
				var newDurability = (maxDurability - (v["durability"] || 0)) / maxDurability;
				var actualPercent = newDurability * 100;

				if (v["charges"] !== undefined)
					actualPercent = v["charges"];
				if (actualPercent <= 1)
					actualPercent = 1;

					const item = `<div class="item populated" style="background-image: url('http://localhost/inventory/${v["Index"]}.png'); background-position: center; background-repeat: no-repeat;" data-item-key="${v["Key"]}" data-id="${v["Id"]}" data-stack="${v["stack"]}" data-amount="${v["Amount"]}" data-route="${v["Route"]}" data-slot="${slot}">
					<div class="top">
						<div class="itemWeight">${(v["Peso"] * v["Amount"]).toFixed(2)}</div>
						<div class="itemAmount">${ParseFormat (v["Amount"])}x</div>
					</div>

					<div class="durability" style="width: ${actualPercent == 1 ? "100":actualPercent}%; background: ${actualPercent == 1 ? "#fc5858":colorPicker(actualPercent)};"></div>
					<div class="nameItem">${v["Name"]}</div>
				</div>`;

				$(".invRight").append(item);
			} else {
				const item = `<div class="item empty" data-slot="${slot}"></div>`;
				$(".invRight").append(item);
			}
		}

		updateDrag();
	});
}
/* ----------CRAFT---------- */
$(document).on("click",".craft",function(e){
	$.post("http://inventory/Craft");
});
/* ----------ParseFormat ---------- */
const ParseFormat  = n => {
	var n = n.toString();
	var r = "";
	var x = 0;

	for (var i = n["length"]; i > 0; i--) {
		r += n.substr(i - 1, 1) + (x == 2 && i != 1 ? "." : "");
		x = x == 2 ? 0 : x + 1;
	}

	return r.split("").reverse().join("");
}