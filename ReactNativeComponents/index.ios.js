'use strict';

var React = require('react-native');
var Dimensions = require('Dimensions');

var {
  width,
  height
} = Dimensions.get('window');

var {
  AppRegistry,
  Easing,
  StyleSheet,
  View,
  Animated
} = React;

var SQUARE_DIMENSIONS = width/5;
var SPRING_CONFIG = {duration: 700, delay: 0, easing: Easing.inOut(Easing.ease)}

var SampleApp = React.createClass({
  getInitialState: function() {
    return {
        pan: new Animated.ValueXY({x: 0, y: height / 3})
    };
  },

  componentDidMount: function() {
    this.startAndRepeat();
  },

  startAndRepeat: function(){
    this.triggerAnimation(this.startAndRepeat)
  },

  triggerAnimation: function(callback) {
    Animated.sequence([
      Animated.timing(this.state.pan, {
        ...SPRING_CONFIG,
        toValue: {x: width - (SQUARE_DIMENSIONS*2), y: height / 3 }
      }),
      Animated.timing(this.state.pan, {
        ...SPRING_CONFIG,
        toValue: {x: 0, y: height / 3 }
      })
    ]).start(callback)
  },


  getStyle: function() {
    return [
              styles.square,
              {
                transform: this.state.pan.getTranslateTransform()
              }
            ];
  },

  render: function() {
    console.log('---STATE---')
    console.log(this.state)

    return (
      <View style={styles.container}>
      	<Animated.View style={this.getStyle()} />
 			</View>
    );
  }
});


var styles = StyleSheet.create({
  container: {
    flex: 1
  },
  square: {
    width: SQUARE_DIMENSIONS,
    height: SQUARE_DIMENSIONS,
    backgroundColor: 'blue'
  }
});

AppRegistry.registerComponent('SampleApp', () => SampleApp);
module.exports = SampleApp;
