# react-native-scroll-block-view

INFO : This is a fork of : https://github.com/mjracca/react-native-scroll-block
I made this fork to publish it on NPM, enable it for 'react-native link'-command
and to develop it further. React Native still does not natively support this

## Installation

Do an `npm i react-native-scroll-block-view --save` the run `react-native link react-native-scroll-block-view`

import ScrollBlockView from 'react-native-scroll-block-view';

//This scrollview won't recive touch-events from the inner scrollview
<ScrollView>
    <ScrollBlockView>
        //This scrollview's toch-events wont bubble past the blocker
        <ScrollView></ScrollView>
    </ScrollBlockView>
</ScrollView>


Original repo readme:

When touching a **View** that is inside a **ScrollView** the pointer propagates and makes the canvas react as well. (https://github.com/facebook/react-native/issues/1046)

The current workaround is to disable the **ScrollView** (changing `scrollEnabled` to `false`) on children's `onPanResponderGrant` and then enabling it again `onPanResponderRelease`. _(08/04/2016)_

This solution will fix that issue if disabling the **ScrollView** is not an option to you.


## Usage

**BlockView** will block every interaction performed inside it, and will not propagate the pointer to it's parent.

Wrap any **View** with a **BlockView** to ensure that the input won't go to the **ScrollView**.

### Props

`blocked` `Boolean`

Whether the view should blocked the input.

Default: `true`

## Meta

Written by [Maria Julia Racca](https://github.com/mjracca) and [Martin Giachetti](https://github.com/mgiachetti).

Maintained by Olof Dahlbom

Released under the MIT License: www.opensource.org/licenses/mit-license.php
