import React from 'react';
import { ScrollView, StyleSheet } from 'react-native';
import taskListElement from './taskListElement';


const taskList = () => {
    const styles = StyleSheet.create({
        container: {
            paddingTop: '30vh',
            width: '100vw',
            height: 300,
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',

        },

    });
    const elements = [
        { id: 1, text: 'ElementAlma' },
        { id: 2, text: 'Element 111' },
        { id: 3, text: 'Element 3' },
        { id: 1, text: 'Element 1' },
        { id: 2, text: 'Element 2' },
        { id: 3, text: 'Element 3' },

        // Add more elements as needed
    ];

    let elementList = elements.map((element) => {
        return taskListElement(element.text);
    }
    );

    return (
        <ScrollView contentContainerStyle={styles.container}>
            {elementList}
        </ScrollView>
    );
};


export default taskList;
