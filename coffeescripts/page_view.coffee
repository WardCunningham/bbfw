define ['vendor/backbone','item_view'], (Backbone,ItemView)->
  PageView = Backbone.View.extend
    tagName: 'article'
    className: 'page'

    render: ->
      @$el.html("<h2>#{@model.get('title')}</h2>")
      container = @el
      @model.get('story').each (item)->
        itemView = new ItemView(model:item)
        itemView.render().$el.appendTo(container) 
      @
