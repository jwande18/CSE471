// Auto-generated. Do not edit!

// (in-package hw1.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GenerateMazeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dimension = null;
      this.obstacles = null;
      this.seed = null;
    }
    else {
      if (initObj.hasOwnProperty('dimension')) {
        this.dimension = initObj.dimension
      }
      else {
        this.dimension = 0;
      }
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = 0;
      }
      if (initObj.hasOwnProperty('seed')) {
        this.seed = initObj.seed
      }
      else {
        this.seed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateMazeRequest
    // Serialize message field [dimension]
    bufferOffset = _serializer.uint32(obj.dimension, buffer, bufferOffset);
    // Serialize message field [obstacles]
    bufferOffset = _serializer.uint32(obj.obstacles, buffer, bufferOffset);
    // Serialize message field [seed]
    bufferOffset = _serializer.uint32(obj.seed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateMazeRequest
    let len;
    let data = new GenerateMazeRequest(null);
    // Deserialize message field [dimension]
    data.dimension = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [obstacles]
    data.obstacles = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [seed]
    data.seed = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hw1/GenerateMazeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eac2a3c1504426dbffba8540cb404b80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 dimension
    uint32 obstacles
    uint32 seed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenerateMazeRequest(null);
    if (msg.dimension !== undefined) {
      resolved.dimension = msg.dimension;
    }
    else {
      resolved.dimension = 0
    }

    if (msg.obstacles !== undefined) {
      resolved.obstacles = msg.obstacles;
    }
    else {
      resolved.obstacles = 0
    }

    if (msg.seed !== undefined) {
      resolved.seed = msg.seed;
    }
    else {
      resolved.seed = 0
    }

    return resolved;
    }
};

class GenerateMazeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.done = null;
    }
    else {
      if (initObj.hasOwnProperty('done')) {
        this.done = initObj.done
      }
      else {
        this.done = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateMazeResponse
    // Serialize message field [done]
    bufferOffset = _serializer.uint32(obj.done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateMazeResponse
    let len;
    let data = new GenerateMazeResponse(null);
    // Deserialize message field [done]
    data.done = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hw1/GenerateMazeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b104abac0b485abf5b3ab163fc24088';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 done
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenerateMazeResponse(null);
    if (msg.done !== undefined) {
      resolved.done = msg.done;
    }
    else {
      resolved.done = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GenerateMazeRequest,
  Response: GenerateMazeResponse,
  md5sum() { return '91077eae89da535fbefd16adcdc2fbc7'; },
  datatype() { return 'hw1/GenerateMaze'; }
};
