import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
    console.log(process.env.REACT_APP_API_BASE_URL);
    console.log(process.env.REACT_APP_THIRD_PARTY_PUBLIC_KEY);

    return (
        <div className="App">
            <section className="App-header">
                <img src={logo} className="App-logo" alt="logo"/>
                <p>
                    Edit <code>src/App.js</code> and save to reload.
                </p>
                <a
                    className="App-link"
                    href="https://reactjs.org"
                    target="_blank"
                    rel="noopener noreferrer"
                >
                    Learn React
                </a>
            </section>
            <section className="sidebar">
                <h1>Environment Variables</h1>
                <br/>
                <h4>{process.env.REACT_APP_API_BASE_URL}</h4>
                <h4>{process.env.REACT_APP_THIRD_PARTY_PUBLIC_KEY}</h4>
            </section>
        </div>

    );
}

export default App;
