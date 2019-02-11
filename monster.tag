<monster>
  <img src="img/{ petImage }.gif">

  <div>
    <p>Hunger: { hunger }</p>
  </div>

  <button onclick={ feed }>Feed</button>
  <button onclick={ unfeed }>Not Feed</button>


  <script>
    //make a copy of my pet object and call it that
    var that  = this;

    //initial state/propoerty
    this.hunger = 50;
    this.petImage = "neutral";


    decHunger() {
      this.hunger = this.hunger - 10 < 0 ? 0 : this.hunger - 10;
    }

    incHunger() {
      console.log(this.hunger);
      this.hunger = this.hunger + 10 > 100 ? 100 : this.hunger + 10;
    }

    checkStatus() {
      if (this.hunger >= 70){
        this.petImage = "dead";
      } else if (this.hunger <= 30){
        this.petImage = "happy";
      }else{
        this.petImage = "neutral";
      }
    }

// functions that respond to events
    feed() {
      this.decHunger();
      this.checkStatus();
    }

    unfeed() {
      this.incHunger();
      this.checkStatus();
    }

    //tell DOM window to increase hunger every three second
    //console.log(that);
    window.setInterval(function(){
      that.incHunger();
      console.log("wait");
      //that.update();
      that.checkStatus();
    }, 3000);
  </script>

  <style>
  :scope{
    margin:auto;
  }

  img{
    width: 50%;
  }

  </style>
</monster>
