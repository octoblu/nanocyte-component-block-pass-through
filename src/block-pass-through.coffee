ReturnValue = require 'nanocyte-component-return-value'

class BlockPassThrough extends ReturnValue
  onEnvelope: (envelope) =>
    {config} = envelope
    nonce = config.nanocyte?.nonce
    return blocked: nonce

module.exports = BlockPassThrough
