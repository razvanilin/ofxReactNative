import React from 'react';
import { StyleSheet, Text, View, TextInput, TouchableHighlight } from 'react-native';

var OFStarter = require('NativeModules').OFStarter;

export default class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      number: 0
    };
  }

  render() {
    return (
      <View style={styles.container}>
        <Text>{"React Native + OF = <3"}</Text>
        <Text>{OFStarter.greeting} - native communication</Text>

        <TouchableHighlight style={styles.button} onPress={() => {
          this._onPressButton();
        }}>
          <Text style={styles.buttonText}>Start OF</Text>
        </TouchableHighlight>
      </View>
    );
  }

  _onPressButton() {
    OFStarter.runOFTest(0, (error, number) => {
      if (error) {
        console.error(error);
      } else {
        this.setState({number: number});
      }
    })
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 20,
  },
  input: {
    width: 100,
    height: 40,
    borderColor: 'red',
    borderWidth: 1,
    alignSelf: 'center'
  },
  result: {
    textAlign: 'center',
    color: '#333333',
    fontSize: 30,
    fontWeight: 'bold',
    margin: 20,
  },
  button: {
    backgroundColor: "#006600",
    borderWidth: 10,
    borderRadius: 20,
    borderColor: "#006600",
    padding: 5
  },
  buttonText: {
    fontSize: 24,
    fontWeight: "bold",
    color: "#FFFFFF"
  }
});
