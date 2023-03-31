import consumer from "channels/consumer"

consumer.subscriptions.create("CommentsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    document.querySelector('.comment').append(data.foo)
    // Called when there's incoming data on the websocket for this channel
  }
});
