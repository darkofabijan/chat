$(function() {
  var form       = $("form");
  var chatbox    = $("#chatbox");
  var message    = $("#message");
  var username   = $("#username");
  var room_id    = $("#room_id");
  var socket     = new Phoenix.Socket("ws://" + location.host +  "/ws");

  function scrollToBottom() {
    chatbox.scrollTop(chatbox.prop("scrollHeight"));
  }

  socket.join("room", "lobby", {}, function(channel) {

    form.on("submit", function(event) {
        channel.send("new:msg", {username: username.val(),
                                 message: message.val(),
                                 room_id: room_id.val()});
        message.val("");
        message.focus();
        return false;
    });

    channel.on("join", function(message){
      chatbox.append("You have joined.\n");
      scrollToBottom();
    });

    channel.on("new:msg", function(data) {
      chatbox.append(data.username + ": " + data.message + "\n");
      scrollToBottom();
    });

    channel.on("user:entered", function(data){
      chatbox.append("User " + data.username + "just joined\n");
      scrollToBottom();
    });
  });
});

