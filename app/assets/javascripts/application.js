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
//= require activestorage
//= require jquery3
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

require("trix")
require("@rails/actiontext")
  
  
  function quiz(question, value){
    sessionStorage.setItem(question,value);
    if (window.location.pathname == '/welcome/index') {
      window.location.href = '/welcome/page2'
    }
    if (window.location.pathname == '/') {
      window.location.href = '/welcome/page2'
    }
    else if (window.location.pathname == '/welcome/page2') {
      window.location.href = '/welcome/page3'
    }
    else if (window.location.pathname == '/welcome/page3') {
      window.location.href = '/welcome/page4'
    }
    else if (window.location.pathname == '/welcome/page4') {
      window.location.href = '/welcome/result'
    }
  }
  
  function goback(){
    if (window.location.pathname == '/welcome/page2') {
      window.location.href = '/welcome/index'
    }
    else if (window.location.pathname == '/welcome/page3') {
      window.location.href = '/welcome/page2'
    }
    else if (window.location.pathname == '/welcome/page4') {
      window.location.href = '/welcome/page3'
    }
  }