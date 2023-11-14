Chrysalis Firmware Bundle 0.91.1+74

## Build Information

| Architecture | Core                                                                               |
|:-------------|:-----------------------------------------------------------------------------------|
| AVR          | keyboardio/Kaleidoscope-Bundle-Keyboardio@f5c4ba0b32b301c1b0846bbce935b49c1d5dc2c9 |
| GD32         | keyboardio/ArduinoCore-GD32-Keyboardio@062f5cab65a42e0c9faf1b39faa2dbf5d2dd86c0    |

### Libraries

| Library                   | Link                                                                          |
|:--------------------------|:------------------------------------------------------------------------------|
| KeyboardioHID (avr)       | keyboardio/KeyboardioHID@1caab9b6fd6d28f96d00d733f5c62eaef3c9c217             |
| KeyboardioHID (gd32)      | keyboardio/KeyboardioHID@1caab9b6fd6d28f96d00d733f5c62eaef3c9c217             |
| Kaleidoscope              | keyboardio/Kaleidoscope@90abb32cc9eee25fa32560528e4b7b52d6441c6d              |
| Chrysalis-Firmware-Bundle | keyboardio/Chrysalis-Firmware-Bundle@b7d025c0c13db313c3704e80d86f526f60d2d315 |

# Changelog

This release brings a large set of bugfixes, for every keyboard. Upgrading is
highly recommended.

A number of fixes were implemented to make Kaleidoscope-powered keyboards work
better with some UEFIs and BIOSes, and to conform to the HID specification more
closely. This should make the keyboards work in - hopefully - all BIOSes and
UEFIs, and other situations where N-key rollover isn't usable.

Also fixed an issue where events were occasionally dropped when using secondary
actions, causing all kinds of weird issues, including - but not limited to -
stuck keys.

During Macro playback, OneShot keys are no longer released prematurely.

Improved how locked and shifted layers interact, making it possible to put a
lock layer key on a layer that is accessed by a momentary layer shift (as
opposed to a layer lock or toggle). Previously, toggling the locked layer on
worked, but it couldn't be toggled off with a single tap, because the shifted
layer would be on top when the locked one was enabled. This now works properly,
and the locked layer can be toggled off with a single tap.

Keyboardio Model 100
--------------------

Rearranged the order of plugins, so that SpaceCadet and secondary actions play
nicely together.
