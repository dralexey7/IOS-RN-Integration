import React from 'react';
import {
    AppRegistry,
    Text,
    TouchableOpacity,
    View
  } from 'react-native';
import {name as appName} from './app.json';
import TestConnectNative from './src/TestConnectNative/TestConnectNative';

export let rootTag = 1

const RNIntegrationApp = (props) => {
  rootTag = props.rootTag
  return (
    <View style={{ flex: 1, justifyContent: "space-evenly", alignItems: "center" }}>
      <Text>
        I am React Native!
      </Text>
      <Text style={{textAlign:'center'}}>
        Your message: {"\n"}{props.message_from_native}
      </Text>
      <TouchableOpacity onPress={()=>{
        TestConnectNative.exitRN(rootTag)}}
        style={{backgroundColor:'lightblue', paddingVertical:4, paddingHorizontal:8, borderRadius:5}}>
        <Text>Назад в нативное приложение</Text>
      </TouchableOpacity>
    </View>
  );
}

AppRegistry.registerComponent(appName, () => RNIntegrationApp);