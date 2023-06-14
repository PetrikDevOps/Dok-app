import React from 'react';
import { k, main } from '../const/appConst';
import { View, Text } from 'react-native';

let kerdesCont = () => {
    let kerdesek = k;
    console.log('====================================');
    console.log(kerdesek);
    console.log('====================================');
    main();
    return (
        <View>
            <Text>Question:</Text>
            <Text>{kerdesek.getKerdes()}</Text>
            <Text>Answer:</Text>
            <Text>{kerdesek.getValasz()}</Text>
        </View>
    );
};

export { kerdesCont };
