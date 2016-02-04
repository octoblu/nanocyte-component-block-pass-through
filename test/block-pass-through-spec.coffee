ReturnValue = require 'nanocyte-component-return-value'
BlockPassThrough = require '../'

describe 'BlockPassThrough', ->
  beforeEach ->
    @sut = new BlockPassThrough

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    beforeEach ->
      envelope =
        config:
          nanocyte:
            nonce: 'i-am-nonce'
        message: 'anything'

      @message = @sut.onEnvelope envelope

    it 'should return the message', ->
      expect(@message).to.deep.equal blocked: 'i-am-nonce'
