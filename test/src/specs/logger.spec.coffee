'use strict';

source('logger')

describe 'logger', ->
  it "sets to NullLogger if false is provided", ->
    Logger.setup(false)
    Logger.toString().should.be.equal "NullLogger"

  it "sets to BasicLogger if nothing is provided", ->
    Logger.setup()
    Logger.toString().should.be.equal "BasicLogger"

  it "allows for custom loggers", ->
    logger = {toString: -> "CustomLogger"}
    Logger.setup(logger)
    Logger.toString().should.be.equal "CustomLogger"

    # Now that we're done testing Logger, let's be nice and reset it for testing
    Logger.setup(false)
