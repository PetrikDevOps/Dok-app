import React from 'react';
import { ScrollView, View, Text, StyleSheet } from 'react-native';

const taskList = () => {
    const elements = [
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },

        // Add more elements as needed
    ];

    return (
        <ScrollView contentContainerStyle={styles.container}>
            {elements.map((element) => (
                <View key={element.id} style={styles.listItem}>
                    <Text>{element.text}</Text>
                </View>
            ))}
        </ScrollView>
    );
};

const styles = StyleSheet.create({
    container: {
        width: 400,
        height: 500,
    },
    listItem: {
        height: 50,
        borderBottomWidth: 1,
        borderBottomColor: '#ccc',
        justifyContent: 'center',
        paddingHorizontal: 16,
    },
});

export default taskList;
