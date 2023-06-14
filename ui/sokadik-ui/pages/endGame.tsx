import { View, Text } from 'react-native';
import { Link } from 'react-router-dom';

let endGame = () => {
    return (
        <View>
            <Text>Game Over</Text>
            <Link to="/">Go to About Page</Link>
        </View>
    );
}

export { endGame };