#
# Copyright (c) 2013 Eric Monti - Bluebox Security
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

require_relative 'spec_helper'

describe Idevice::InstProxyClient do
  before :each do
    @instproxy = Idevice::InstProxyClient.attach(idevice:shared_idevice, lockdown_client:shared_lockdown_client)
  end

  it "should attach" do
    @instproxy.should be_a Idevice::InstProxyClient
  end

  it "should browse installed apps" do
    browsedata = @instproxy.browse()
    browsedata.should be_a Array
    browsedata.map{|x| x.class }.uniq.should == [Hash]
    browsedata.map{|x| x["ApplicationType"]}.should include "System"
  end

  it "should install an application"

  it "should upgrade an application"

  it "should uninstall an application"

  it "should lookup archives"

  it "should archive an application"

  it "should restore an archived application"

  it "should remove an archive"

end

