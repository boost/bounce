import Vue from 'vue/dist/vue.esm'

document.addEventListener('turbolinks:load', () => {
  const element = document.getElementById('players')

  if (element != null) {
    const players = JSON.parse(element.dataset.players)

    const app = new Vue({
      el: element,
      data: function() {
        return { players }
      }
    })
  }
});