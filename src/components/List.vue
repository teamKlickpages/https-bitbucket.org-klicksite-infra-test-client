<template>
  <div class="list">
    <div class="box" v-for="task in tasks">
      <article class="media">

        <div class="media-content">
          <div class="content">
            <p>
              <strong>{{task.title}}</strong> <small>31m</small>
              <br>
              {{task.description}}
            </p>
          </div>
          <nav class="level is-mobile">
            <div class="level-right">
              <a class="level-item">
                <a class="button">Mark as done</a>
              </a>
            </div>
          </nav>
        </div>
      </article>
    </div>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'list',
  created: function(){
      this.axios.get("http://127.0.0.1:3000/tasks").then((response) => {
      this.tasks = response.data
    })
  },

  data () {
    return {
      tasks: [],
    }
  }
}
</script>

<style scoped>

</style>
