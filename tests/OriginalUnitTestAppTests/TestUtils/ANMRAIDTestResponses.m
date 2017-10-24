/*   Copyright 2014 APPNEXUS INC
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "ANMRAIDTestResponses.h"



@implementation ANMRAIDTestResponses

+ (NSString *)basicMRAIDBannerWithSelectorName:(NSString *)selector
{
    return  [self createResponseForBannerMediaTypeWithContent: [NSString stringWithFormat:@"<script type=\\\"text/javascript\\\" src=\\\"mraid.js\\\"></script><script type=\\\"text/javascript\\\">document.write('<div style=\\\"background-color:#EF8200;height:1000px;width:1000px;\\\"><p>%@</p></div>');</script>", selector ]
                                                        width: 320
                                                       height: 50 ];


                        /* FIX -- toss
    return [self createAdsResponse: @"banner"
                         withWidth: 320
                        withHeight: 50
                       withContent: [NSString stringWithFormat:@"<script type=\\\"text/javascript\\\" src=\\\"mraid.js\\\"></script><script type=\\\"text/javascript\\\">document.write('<div style=\\\"background-color:#EF8200;height:1000px;width:1000px;\\\"><p>%@</p></div>');</script>", selector ]
            ];
                        */
}

+ (NSString *)basicMRAIDInterstitialWithSelectorName:(NSString *)selector 
{
    return  [self createResponseForBannerMediaTypeWithContent: [NSString stringWithFormat:@"<script type=\\\"text/javascript\\\" src=\\\"mraid.js\\\"></script><script type=\\\"text/javascript\\\">document.write('<div style=\\\"background-color:#EF8200;height:1000px;width:1000px;\\\"><p>%@</p></div>');</script>", selector ]
                                                        width:320
                                                       height:400 ];



                /* FIX toss
    return [self createAdsResponse:@"banner"
                         withWidth:320
                        withHeight:400
                       withContent:[NSString stringWithFormat:@"<script type=\\\"text/javascript\\\" src=\\\"mraid.js\\\"></script><script type=\\\"text/javascript\\\">document.write('<div style=\\\"background-color:#EF8200;height:1000px;width:1000px;\\\"><p>%@</p></div>');</script>", selector ]
            ];
                        */
}

+ (NSString *)MRAIDListenerBannerWithSelectorName:(NSString *)selector 
{
    return  [self createResponseForBannerMediaTypeWithContent: [NSString stringWithFormat:@"<script type=\\\"text/javascript\\\" src=\\\"mraid.js\\\"></script><script type=\\\"text/javascript\\\"> var testWidth=0; var testHeight=0; var testState='none'; var testReadyDidFire=false; var testIsViewable = false; var testErrorMessage = ''; var testErrorAction = ''; mraid.addEventListener('ready', onReady); function onReady() {var dp = mraid.getDefaultPosition(); testWidth=dp.width; testHeight=dp.height; testReadyDidFire=true;}; mraid.addEventListener('sizeChange', onSizeChange); function onSizeChange(width, height) {testWidth=width;testHeight=height}; mraid.addEventListener('stateChange', onStateChange); function onStateChange(state) {testState=state}; mraid.addEventListener('viewableChange', isViewable); function isViewable(v) {testIsViewable=v}; mraid.addEventListener('error', onError); function onError(message, action) {testErrorMessage=message; testErrorAction=action;};</script><script type=\\\"text/javascript\\\">document.write('<div style=\\\"background-color:#EF8200;height:1000px;width:1000px;\\\"><p>%@</p></div>');</script>", selector ]
                                                        width:320
                                                       height:50 ];



                /* FIX -- toss
    return [self createAdsResponse:@"banner"
                         withWidth:320
                        withHeight:50
                       withContent:[NSString stringWithFormat:@"<script type=\\\"text/javascript\\\" src=\\\"mraid.js\\\"></script><script type=\\\"text/javascript\\\"> var testWidth=0; var testHeight=0; var testState='none'; var testReadyDidFire=false; var testIsViewable = false; var testErrorMessage = ''; var testErrorAction = ''; mraid.addEventListener('ready', onReady); function onReady() {var dp = mraid.getDefaultPosition(); testWidth=dp.width; testHeight=dp.height; testReadyDidFire=true;}; mraid.addEventListener('sizeChange', onSizeChange); function onSizeChange(width, height) {testWidth=width;testHeight=height}; mraid.addEventListener('stateChange', onStateChange); function onStateChange(state) {testState=state}; mraid.addEventListener('viewableChange', isViewable); function isViewable(v) {testIsViewable=v}; mraid.addEventListener('error', onError); function onError(message, action) {testErrorMessage=message; testErrorAction=action;};</script><script type=\\\"text/javascript\\\">document.write('<div style=\\\"background-color:#EF8200;height:1000px;width:1000px;\\\"><p>%@</p></div>');</script>", selector ]
            ];
                        */
}

+ (NSString *)iFrameAboutBannerWithSelectorName:(NSString *)selector 
{
    return  [self createResponseForBannerMediaTypeWithContent: [NSString stringWithFormat:@"<iframe id='about'></iframe><script> document.write('<div style=\\\"background-color:#EF8200;height:1000px;width:1000px;\\\"><p>%@</p></div>'); window.addEventListener('message', receiveMessage, false); messageReceived = false; function receiveMessage(event) { if (event.data === 'hello_world') { messageReceived = true; } } document.getElementById('about').srcdoc = \\\"<script>window.parent.postMessage('hello_world', '*')</scr\\\" + \\\"ipt>\\\";</script>", selector]
                                                        width:320
                                                       height:50 ];


                        /* FIX -- toss
    return [self createAdsResponse:@"banner"
                         withWidth:320
                        withHeight:50
                       withContent:[NSString stringWithFormat:@"<iframe id='about'></iframe><script> document.write('<div style=\\\"background-color:#EF8200;height:1000px;width:1000px;\\\"><p>%@</p></div>'); window.addEventListener('message', receiveMessage, false); messageReceived = false; function receiveMessage(event) { if (event.data === 'hello_world') { messageReceived = true; } } document.getElementById('about').srcdoc = \\\"<script>window.parent.postMessage('hello_world', '*')</scr\\\" + \\\"ipt>\\\";</script>", selector]];
                                */
}

+ (NSString *)mainFrameAboutBannerWithSelectorName:(NSString *)selector 
{

    return  [self createResponseForBannerMediaTypeWithContent: [NSString stringWithFormat:@"<script>document.write('<div style=\\\"background-color:#EF8200;height:1000px;width:1000px;\\\"><p>%@</p></div>'); window.location = 'about:blank';</script>", selector]
                                                        width:320
                                                       height:50 ];


                        /* FIX -- toss
    return [self createAdsResponse:@"banner"
                         withWidth:320
                        withHeight:50
                       withContent:[NSString stringWithFormat:@"<script>document.write('<div style=\\\"background-color:#EF8200;height:1000px;width:1000px;\\\"><p>%@</p></div>'); window.location = 'about:blank';</script>", selector]];
                                        */
}


@end

