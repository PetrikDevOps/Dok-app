import React from 'react';
import { View, StyleSheet, Text } from 'react-native';

const taskListElement = (text: string) => {
    const styles = StyleSheet.create({
        taskButton: {
            width: '100%',
            height: 75,
            backgroundColor: 'rgba(121, 126, 120, 0.7)',
            alignItems: 'center',
            justifyContent: 'center',
            marginTop: 25,
            marginBottom: 25,
            borderRadius: 5,
            flexDirection: 'row',
        },
        taskText: {
            fontSize: 32,
            color: '#D9D9D9',
            marginLeft: 10,
        },
    });

    return (
        <View style={styles.taskButton}>
            <Text style={styles.taskText}>{text}</Text>
        </View>
    );
};

export default taskListElement;
