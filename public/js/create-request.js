//import { totalmem } from "os";
var newItemObject;
var requestInfo;
var arr;
var itemSubTotal = 0;

//If there's time: Add a checkbox and add/delete buttons next to each table item
$(document).ready(function() {
  $("#saveBtn").on("click", function(e) {
    e.preventDefault();
    $("#subTotal").val("");
    var modalInfo = {
      itemName: $("#itemName")
        .val()
        .trim(),
      quantity: $("#quant")
        .val()
        .trim(),
      measureUnit: $("#measureUnit").val(),
      estimatedPrice: $("#estPrice")
        .val()
        .trim(),
      totalPrice:
        $("#quant").val() *
        $("#estPrice")
          .val()
          .trim()
    };
    console.log("shit dammit");
    $("#newModalInfo").append(
      `<tr class="allRows"><td class="tableItems">${
        modalInfo.itemName
      } </td><td class="tableQuant">${
        modalInfo.quantity
      } </td><td class="tableUnit">${
        modalInfo.measureUnit
      } </td><td class="tablePrice">$${
        modalInfo.estimatedPrice
      } </td><td class="tableTotal">${modalInfo.totalPrice} </td></tr>`
    );
    console.log("poo-gas");

    $("#itemName").val("");
    $("#quant").val("");
    $("#measureUnit").val("");
    $("#estPrice").val("");
    var individualItems;
    var eachItem = document.querySelectorAll("#itemTable .allRows");
    var allItems = $(".tableItems").html();
    console.log(allItems.textContent);
    var allTheRows = $(".allRows");
    var allQuant = document.getElementsByClassName("tableQuant");
    var allUnit = document.getElementsByClassName("tableUnit");
    var allPrice = document.getElementsByClassName("tablePrice");
    var allTotal = document.getElementsByClassName("tableTotal");
    var wholeTable = document.getElementById("newModalInfo").textContent;
    var newArray = wholeTable.trim().split(" ");
    console.log(newArray);
    arr = [];
    for (var i = 0; i < newArray.length; i += 5) {
      newItemObject = {
        itemName: newArray[i],
        quantity: newArray[i + 1],
        measureUnit: newArray[i + 2],
        itemPrice: newArray[i + 3],
        itemTotal: newArray[i + 4]
      };
      arr.push(newItemObject);
      itemSubTotal = 0;
      for (var j = 0; j < arr.length; j += 1) {
        itemSubTotal += parseInt(arr[j].itemTotal);
        console.log(itemSubTotal);
      }
      console.log(newItemObject);
      console.log(arr);
    }
    $("#subTotal").html(`${itemSubTotal}`);
  });

  $("#addBtn").on("click", function(e) {
    e.preventDefault();
    var modalInfo = {
      itemName: $("#itemName")
        .val()
        .trim(),
      quantity: $("#quant")
        .val()
        .trim(),
      measureUnit: $("#measureUnit").val(),
      estimatedPrice: $("#estPrice")
        .val()
        .trim(),
      totalPrice:
        $("#quant").val() *
        $("#estPrice")
          .val()
          .trim()
    };
    console.log("shit dammit");
    $("#newModalInfo").append(
      `<tr class="allRows"><td class="tableItems">${
        modalInfo.itemName
      } </td><td class="tableQuant">${
        modalInfo.quantity
      } </td><td class="tableUnit">${
        modalInfo.measureUnit
      } </td><td class="tablePrice">$${
        modalInfo.estimatedPrice
      } </td><td class="tableTotal">${modalInfo.totalPrice} </td></tr>`
    );
    console.log("poo-gas");

    //<td><button type= "submit" class="editBtn">Edit</button></td><td><button type="submit" class="deleteBtn">Delete</button></td>

    $("#itemName").val("");
    $("#quant").val("");
    $("#measureUnit").val("");
    $("#estPrice").val("");
    var individualItems;
    var eachItem = document.querySelectorAll("#itemTable .allRows");
    var allItems = $(".tableItems").html();
    //console.log(allItems.textContent);
    var allTheRows = $(".allRows");
    var allQuant = document.getElementsByClassName("tableQuant");
    var allUnit = document.getElementsByClassName("tableUnit");
    var allPrice = document.getElementsByClassName("tablePrice");
    var allTotal = document.getElementsByClassName("tableTotal");
    var wholeTable = document.getElementById("newModalInfo").textContent;
    var newArray = wholeTable.trim().split(" ");
    console.log(newArray);

    arr = [];
    for (var i = 0; i < newArray.length; i += 5) {
      newItemObject = {
        itemName: newArray[i],
        quantity: newArray[i + 1],
        measureUnit: newArray[i + 2],
        itemPrice: newArray[i + 3],
        itemTotal: newArray[i + 4]
      };
      arr.push(newItemObject);
      itemSubTotal = 0;
      for (var j = 0; j < arr.length; j += 1) {
        itemSubTotal += parseInt(arr[j].itemTotal);
        console.log(itemSubTotal);

        console.log(newItemObject);
        console.log(arr);
      }
    }
    $("#subTotal").html(`${itemSubTotal}`);
  });
  $(".deleteBtn").on("click", function(e) {
    e.preventDefault();
  });
  $(".editBtn").on("click", function(e) {
    e.preventDefault();
  });

  $("#calcTotal").on("click", function(e) {
    e.preventDefault();
    var itemTaxRate = $("#taxRate").val().trim();
    var estimatedShipping = $("#estShip").val().trim();
    itemSubTotal = document.getElementById("subTotal").textContent;
    var calculate =
      parseInt(itemSubTotal) * parseInt(itemTaxRate) +
      parseInt(estimatedShipping);
    console.log(calculate);
  });

  $("#saveRequest").on("click", function(e) {
    e.preventDefault();
    requestInfo = {
      dateNeeded: $("#dateNeeded")
        .val()
        .trim(),
      itemInfo: arr,
      // subTotal:
      taxRate: $("#taxRate")
        .val()
        .trim(),
      estimatedShipping: $("#estShip")
        .val()
        .trim(),
      purchaseRequestTotal:
        newItemObject.itemTotal *
          $("#taxRate")
            .val()
            .trim() +
        $("#estShip")
          .val()
          .trim(),
      justification: $("#justify")
        .val()
        .trim(),
      comments: $("#comments")
        .val()
        .trim()
    };
    console.log(requestInfo);
    //$.post("./api/Initiator", requestInfo);
  });
});
