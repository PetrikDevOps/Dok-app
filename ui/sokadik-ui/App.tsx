import kerdesPage from './pages/kerdesek';
import navbar from './components/navbar';

export default function App() {
  return (
    <div>
      {navbar()}
      {kerdesPage()}
    </div>
  );
}
