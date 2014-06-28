require 'spec_helper'

require 'java'

java_import 'org.apache.logging.log4j.LogManager'
java_import 'org.apache.logging.log4j.Logger'

describe 'silvio core helper to include in silvio projects#' do
  it 'loads the jar dependencies required in the spec' do
    logger = LogManager.getLogger('HelloWorld')
    expect(logger).not_to be_nil
    logger.info('hello world')
  end
end
