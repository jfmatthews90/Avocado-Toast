App.post = App.cable.subscriptions.create("PostChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    $(".alert.alert-info").show();
    $('.post-comments').prepend(data.comment);
  },

  listen_to_comments: function() {
  	return this.perform('listen', {
    	post_id: $("[data-post-id]").data("post-id")
  	});
  } 
});


$(document).on('turbolinks:load', function() {
  App.post.listen_to_comments();
});