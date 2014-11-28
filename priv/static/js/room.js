$(function() {
  var form       = $("form");
  var chatbox    = $("#chatbox");
  var message    = $("#message");
  var username   = $("#username");
  var socket     = new Phoenix.Socket("ws://" + location.host +  "/ws");

  socket.join("room", "lobby", {}, function(channel) {

    form.on("submit", function(event) {
        channel.send("new:msg", {username: username.val(),
                                 message: message.val()});
        message.val("");
        message.focus();
        return false;
    });

    channel.on("join", function(message){
      chatbox.append("Joined");
    });

    channel.on("new:msg", function(data) {
      chatbox.append("\n" + data.username + ":" + data.message);
      //scrollTo(0, document.body.scrollHeight);
    });

    channel.on("user:entered", function(data){
      chatbox.append("Joined" + data.username);
    });
  });
});

