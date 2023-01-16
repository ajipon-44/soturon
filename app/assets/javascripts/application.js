// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
//= require jquery_ujs
$(function () {
  $(".acdn-button").click(function () {
    $(this).toggleClass("selected");
    $(this).next().slideToggle();
  });
});

$(function () {
  $(".answer_belonging").prop("disabled", true).css("opacity", 0.6);

  $(".answer_belonging_check").click(function () {
    if ($(this).prop("checked")) {
      $(this).next().prop("disabled", false).css("opacity", 1);
    } else {
      $(this).next().val("");
      $(this).next().prop("disabled", true).css("opacity", 0.6);
    }
  });
});

$(function () {
  $(".answer_name").prop("disabled", true).css("opacity", 0.6);

  $(".answer_name_check").click(function () {
    if ($(this).prop("checked")) {
      $(this).next().prop("disabled", false).css("opacity", 1);
    } else {
      $(this).next().val("");
      $(this).next().prop("disabled", true).css("opacity", 0.6);
    }
  });
});

$(function () {
  $(".answer_address").prop("disabled", true).css("opacity", 0.6);

  $(".answer_address_check").click(function () {
    if ($(this).prop("checked")) {
      $(this).next().prop("disabled", false).css("opacity", 1);
    } else {
      $(this).next().val("");
      $(this).next().prop("disabled", true).css("opacity", 0.6);
    }
  });
});

// $(function () {
//   $(".answer_address").prop("disabled", true).css("opacity", 0.6);

//   $(".answer_address_check").click(function () {
//     if ($(this).prop("checked")) {
//       $(this).nextAll("select").prop("disabled", false).css("opacity", 1);
//     } else {
//       $(this).next().val("都道府県を選択してください");
//       $(this).next().next().val("市区町村名を選択してください");
//       $(this).nextAll("select").prop("disabled", true).css("opacity", 0.6);
//     }
//   });
// });
