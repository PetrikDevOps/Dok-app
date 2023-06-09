import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';

const dockospfp = require('./assets/favicon.png');

export default function App() {
  return (
    <View style={styles.container}>
      <Text style={{ color: '#fff' }}>Döckös Pali</Text>
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#484848',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
