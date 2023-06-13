import React from 'react';
import { Text, View, StyleSheet, Pressable } from 'react-native';

let votePage = () => {
    const styles = StyleSheet.create({
        container: {
            flex: 1,
            backgroundColor: '#1E1E1E',
            justifyContent: 'flex-start',
            paddingHorizontal: 20,
            minHeight: '100vh',
            width: '100vw',
        },
        line: {
            width: '100%',
            height: 1,
            backgroundColor: '#474747',
            marginVertical: 20,
        },
        title: {
            fontSize: 32,
            fontWeight: 'bold',
            color: '#FFFFFF',
            textAlign: 'center',
            marginTop: '3vh',
        },
        voteText: {
            fontSize: 24,
            color: '#FFFFFF',
        },
        voteButtonContainer: {
            display: 'flex',
            flexDirection: 'column',
        },
        voteButton: {
            width: '100%',
            height: 50,
            backgroundColor: '#79D6CA',
            alignItems: 'center',
            justifyContent: 'center',
            marginTop: 10,
            marginBottom: 10,
            borderRadius: 5,
        },
        voteButtonBad: {
            width: '100%',
            height: 50,
            backgroundColor: '#D67F79',
            alignItems: 'center',
            justifyContent: 'center',
            marginTop: 10,
            marginBottom: 10,
            borderRadius: 5,
        },
        voteButtonText: {
            fontSize: 22,
        }
    });

    return (
        <View style={styles.container}>
            <Text style={styles.title}>
                Szavazás
            </Text>
            <View style={styles.line} />
            <Text style={styles.voteText}>
                Legyen zigi szünet
            </Text>
            <View style={styles.voteButtonContainer}>
                <Pressable style={styles.voteButton}>
                    <Text style={styles.voteButtonText}>
                        Igen
                    </Text>
                </Pressable>
            </View>
            <View style={styles.voteButtonContainer}>
                <Pressable style={styles.voteButtonBad}>
                    <Text style={styles.voteButtonText}>
                        Nem
                    </Text>
                </Pressable>
            </View>
            <View style={styles.line} />
        </View>
    );
};

export default votePage;