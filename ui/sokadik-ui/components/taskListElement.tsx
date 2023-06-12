import React from 'react';
import { View, StyleSheet, Text } from 'react-native';

const taskListElement = (text: string) => {
    const styles = StyleSheet.create({
        taskButton: {

            width: '80vw',
            height: 75,
            backgroundColor: 'rgba(121, 126, 120, 0.7)',
            alignItems: 'center',
            justifyContent: 'center',
            marginTop: 10,
            marginBottom: 2,
            borderRadius: 5,
            flexDirection: 'row',
        },
        taskText: {
            fontSize: 32,
            color: '#D9D9D9',
            textAlign: 'center',
        },
    });

    return (
        <View style={styles.taskButton}>
            <Text style={styles.taskText}>{text}</Text>
        </View>
    );
};

export default taskListElement;
