class Chainable {
    constructor() {
        this.value = '';
    }    
    firstMethod() {
      console.log('This is the First Method');
      this.value += ".1"; 
      return this;
    }
    
    secondMethod() {
      console.log('This is the Second Method');
      this.value += ".2"; 
      return this;
    }
    
    thirdMethod() {
      console.log('This is the Third Method');
      this.value += ".3"; 
      return this;
    }

    print() {
        console.log(this.value);
        return this;
    }
  }
  
  const chainableInstance = new Chainable()
  chainableInstance
    .firstMethod()
    .secondMethod()
    .thirdMethod().print().value;
  
