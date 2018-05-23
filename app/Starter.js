import React, { Component } from "react";
import { Container, Header, Content } from "native-base";
import { Foo } from "./components/Foo/Foo";

export default class Starter extends Component {
	render() {
		returiminn (
			<Container>
				<Header style={{ paddingTop: 25, height: 0 }}>
				</Header>
				<Content>
					<Foo/>
				</Content>
			</Container>
		);
	}
}
