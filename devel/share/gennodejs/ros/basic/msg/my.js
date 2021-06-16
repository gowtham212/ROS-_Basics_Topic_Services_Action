// Auto-generated. Do not edit!

// (in-package basic.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class my {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.d = null;
      this.name = null;
      this.temp = null;
      this.hum = null;
    }
    else {
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('temp')) {
        this.temp = initObj.temp
      }
      else {
        this.temp = 0.0;
      }
      if (initObj.hasOwnProperty('hum')) {
        this.hum = initObj.hum
      }
      else {
        this.hum = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type my
    // Serialize message field [d]
    bufferOffset = _serializer.int32(obj.d, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [temp]
    bufferOffset = _serializer.float32(obj.temp, buffer, bufferOffset);
    // Serialize message field [hum]
    bufferOffset = _serializer.float32(obj.hum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type my
    let len;
    let data = new my(null);
    // Deserialize message field [d]
    data.d = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [temp]
    data.temp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hum]
    data.hum = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'basic/my';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae971ffc0dc298299f0004681564b4ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 d
    string name
    float32 temp
    float32 hum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new my(null);
    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.temp !== undefined) {
      resolved.temp = msg.temp;
    }
    else {
      resolved.temp = 0.0
    }

    if (msg.hum !== undefined) {
      resolved.hum = msg.hum;
    }
    else {
      resolved.hum = 0.0
    }

    return resolved;
    }
};

module.exports = my;
