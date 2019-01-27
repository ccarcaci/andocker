import React, { Component } from "react";
import Starter from "./app/Starter";
import { KeepAwake } from "expo";

export default class App extends Component {
	constructor() {
		super();
		this.state = { 
			isReady: false
		};
	}

	componentWillMount() {
		this.loadFonts();
	}

	async loadFonts() {
		await Expo.Font.loadAsync({
			Roboto: require("native-base/Fonts/Roboto.ttf"),
			Roboto_medium: require("native-base/Fonts/Roboto_medium.ttf"),
		});
		
		this.setState({ isReady: true });
	}
	
	render() {
		<KeepAwake/>
		if(this.state.isReady) {
			return <Starter/>;
		} else {
			return <Expo.AppLoading/>;
		}
	};
}
