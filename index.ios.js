import React from 'react';
import { requireNativeComponent } from 'react-native';

export default class ScrollBlockView extends React.Component {
  render() {
    return <RCTScrollBlockView {...this.props} />;
  }
}

ScrollBlockView.propTypes = {
  blocked: React.PropTypes.bool,
};

var RCTScrollBlockView = requireNativeComponent('RCTScrollBlockView', ScrollBlockView);
