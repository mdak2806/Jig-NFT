_N_E=(window.webpackJsonp_N_E=window.webpackJsonp_N_E||[]).push([[65],{16:function(t,e,a){a("xhzY"),a("T+n/"),a("qQbD"),t.exports=a("bBV7")},"90Qc":function(t,e,a){"use strict";a.d(e,"a",(function(){return r})),a.d(e,"b",(function(){return i})),a.d(e,"c",(function(){return s}));var n=a("rNOt");function i(t){var e=Object(n.a)().getClient(),a=t||e&&e.getOptions();return!!a&&("tracesSampleRate"in a||"tracesSampler"in a)}function r(t){var e=(t||Object(n.a)()).getScope();return e&&e.getTransaction()}function s(t){return t/1e3}},BCE9:function(t,e,a){"use strict";a.d(e,"a",(function(){return _})),a.d(e,"b",(function(){return c}));var n=a("axj4"),i=a("3ZRO"),r=a("cMcT"),s=a("HhP1"),o=a("tZ4O");class c{__init(){this.spans=[]}constructor(t=1e3){c.prototype.__init.call(this),this._maxlen=t}add(t){this.spans.length>this._maxlen?t.spanRecorder=void 0:this.spans.push(t)}}class _{__init2(){this.traceId=Object(i.e)()}__init3(){this.spanId=Object(i.e)().substring(16)}__init4(){this.startTimestamp=Object(r.d)()}__init5(){this.tags={}}__init6(){this.data={}}constructor(t){if(_.prototype.__init2.call(this),_.prototype.__init3.call(this),_.prototype.__init4.call(this),_.prototype.__init5.call(this),_.prototype.__init6.call(this),!t)return this;t.traceId&&(this.traceId=t.traceId),t.spanId&&(this.spanId=t.spanId),t.parentSpanId&&(this.parentSpanId=t.parentSpanId),"sampled"in t&&(this.sampled=t.sampled),t.op&&(this.op=t.op),t.description&&(this.description=t.description),t.data&&(this.data=t.data),t.tags&&(this.tags=t.tags),t.status&&(this.status=t.status),t.startTimestamp&&(this.startTimestamp=t.startTimestamp),t.endTimestamp&&(this.endTimestamp=t.endTimestamp)}startChild(t){var e=new _({...t,parentSpanId:this.spanId,sampled:this.sampled,traceId:this.traceId});if(e.spanRecorder=this.spanRecorder,e.spanRecorder&&e.spanRecorder.add(e),e.transaction=this.transaction,("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&e.transaction){var a=`[Tracing] Starting '${t&&t.op||"< unknown op >"}' span on transaction '${e.transaction.name||"< unknown name >"}' (${e.transaction.spanId}).`;e.transaction.metadata.spanMetadata[e.spanId]={logMessage:a},s.c.log(a)}return e}setTag(t,e){return this.tags={...this.tags,[t]:e},this}setData(t,e){return this.data={...this.data,[t]:e},this}setStatus(t){return this.status=t,this}setHttpStatus(t){this.setTag("http.status_code",String(t));var e=function(t){if(t<400&&t>=100)return"ok";if(t>=400&&t<500)switch(t){case 401:return"unauthenticated";case 403:return"permission_denied";case 404:return"not_found";case 409:return"already_exists";case 413:return"failed_precondition";case 429:return"resource_exhausted";default:return"invalid_argument"}if(t>=500&&t<600)switch(t){case 501:return"unimplemented";case 503:return"unavailable";case 504:return"deadline_exceeded";default:return"internal_error"}return"unknown_error"}(t);return"unknown_error"!==e&&this.setStatus(e),this}isSuccess(){return"ok"===this.status}finish(t){if(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&this.transaction&&this.transaction.spanId!==this.spanId){const{logMessage:t}=this.transaction.metadata.spanMetadata[this.spanId];t&&s.c.log(t.replace("Starting","Finishing"))}this.endTimestamp="number"===typeof t?t:Object(r.d)()}toTraceparent(){let t="";return void 0!==this.sampled&&(t=this.sampled?"-1":"-0"),`${this.traceId}-${this.spanId}${t}`}toContext(){return Object(o.c)({data:this.data,description:this.description,endTimestamp:this.endTimestamp,op:this.op,parentSpanId:this.parentSpanId,sampled:this.sampled,spanId:this.spanId,startTimestamp:this.startTimestamp,status:this.status,tags:this.tags,traceId:this.traceId})}updateWithContext(t){return this.data=Object(n.a)(t.data,(()=>({}))),this.description=t.description,this.endTimestamp=t.endTimestamp,this.op=t.op,this.parentSpanId=t.parentSpanId,this.sampled=t.sampled,this.spanId=Object(n.a)(t.spanId,(()=>this.spanId)),this.startTimestamp=Object(n.a)(t.startTimestamp,(()=>this.startTimestamp)),this.status=t.status,this.tags=Object(n.a)(t.tags,(()=>({}))),this.traceId=Object(n.a)(t.traceId,(()=>this.traceId)),this}getTraceContext(){return Object(o.c)({data:Object.keys(this.data).length>0?this.data:void 0,description:this.description,op:this.op,parent_span_id:this.parentSpanId,span_id:this.spanId,status:this.status,tags:Object.keys(this.tags).length>0?this.tags:void 0,trace_id:this.traceId})}toJSON(){return Object(o.c)({data:Object.keys(this.data).length>0?this.data:void 0,description:this.description,op:this.op,parent_span_id:this.parentSpanId,span_id:this.spanId,start_timestamp:this.startTimestamp,status:this.status,tags:Object.keys(this.tags).length>0?this.tags:void 0,timestamp:this.endTimestamp,trace_id:this.traceId})}}},D0Nm:function(t,e,a){"use strict";a.d(e,"a",(function(){return i}));var n=new RegExp("^[ \\t]*([0-9a-f]{32})?-?([0-9a-f]{16})?-?([01])?[ \\t]*$");function i(t){var e=t.match(n);if(e){let t;return"1"===e[3]?t=!0:"0"===e[3]&&(t=!1),{traceId:e[1],parentSampled:t,parentSpanId:e[2]}}}},MtGM:function(t,e,a){"use strict";a.d(e,"a",(function(){return s}));var n=a("8wNN"),i=a("HhP1"),r=a("90Qc");function s(){Object(n.a)("error",o),Object(n.a)("unhandledrejection",o)}function o(){var t=Object(r.a)();if(t){var e="internal_error";("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log(`[Tracing] Transaction: ${e} -> Global error occured`),t.setStatus(e)}}},"OU+S":function(t,e,a){"use strict";(function(t){a.d(e,"a",(function(){return l})),a.d(e,"b",(function(){return h}));var n=a("rNOt"),i=a("HhP1"),r=a("E6vx"),s=a("fTaw"),o=a("MtGM"),c=a("iFCU"),_=a("daSf"),d=a("90Qc");function p(){var t=this.getScope();if(t){var e=t.getSpan();if(e)return{"sentry-trace":e.toTraceparent()}}return{}}function u(t,e,a){if(!Object(d.b)(e))return t.sampled=!1,t;if(void 0!==t.sampled)return t.setMetadata({transactionSampling:{method:"explicitly_set"}}),t;let n;return"function"===typeof e.tracesSampler?(n=e.tracesSampler(a),t.setMetadata({transactionSampling:{method:"client_sampler",rate:Number(n)}})):void 0!==a.parentSampled?(n=a.parentSampled,t.setMetadata({transactionSampling:{method:"inheritance"}})):(n=e.tracesSampleRate,t.setMetadata({transactionSampling:{method:"client_rate",rate:Number(n)}})),function(t){if(Object(r.h)(t)||"number"!==typeof t&&"boolean"!==typeof t)return("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.warn(`[Tracing] Given sample rate is invalid. Sample rate must be a boolean or a number between 0 and 1. Got ${JSON.stringify(t)} of type ${JSON.stringify(typeof t)}.`),!1;if(t<0||t>1)return("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.warn(`[Tracing] Given sample rate is invalid. Sample rate must be between 0 and 1. Got ${t}.`),!1;return!0}(n)?n?(t.sampled=Math.random()<n,t.sampled?(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log(`[Tracing] starting ${t.op} transaction - ${t.name}`),t):(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log(`[Tracing] Discarding transaction because it's not included in the random sample (sampling rate = ${Number(n)})`),t)):(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log("[Tracing] Discarding transaction because "+("function"===typeof e.tracesSampler?"tracesSampler returned 0 or false":"a negative sampling decision was inherited or tracesSampleRate is set to 0")),t.sampled=!1,t):(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.warn("[Tracing] Discarding transaction because of invalid sample rate."),t.sampled=!1,t)}function m(t,e){var a=this.getClient(),n=a&&a.getOptions()||{};let i=new _.a(t,this);return i=u(i,n,{parentSampled:t.parentSampled,transactionContext:t,...e}),i.sampled&&i.initSpanRecorder(n._experiments&&n._experiments.maxSpans),i}function h(t,e,a,n,i,r){var s=t.getClient(),o=s&&s.getOptions()||{};let _=new c.c(e,t,a,n,i);return _=u(_,o,{parentSampled:e.parentSampled,transactionContext:e,...r}),_.sampled&&_.initSpanRecorder(o._experiments&&o._experiments.maxSpans),_}function l(){!function(){var t=Object(n.b)();t.__SENTRY__&&(t.__SENTRY__.extensions=t.__SENTRY__.extensions||{},t.__SENTRY__.extensions.startTransaction||(t.__SENTRY__.extensions.startTransaction=m),t.__SENTRY__.extensions.traceHeaders||(t.__SENTRY__.extensions.traceHeaders=p))}(),Object(s.b)()&&function(){var e=Object(n.b)();if(e.__SENTRY__){var a={mongodb:()=>new(Object(s.a)(t,"./integrations/node/mongo").Mongo),mongoose:()=>new(Object(s.a)(t,"./integrations/node/mongo").Mongo)({mongoose:!0}),mysql:()=>new(Object(s.a)(t,"./integrations/node/mysql").Mysql),pg:()=>new(Object(s.a)(t,"./integrations/node/postgres").Postgres)},i=Object.keys(a).filter((t=>!!Object(s.c)(t))).map((t=>{try{return a[t]()}catch(e){return}})).filter((t=>t));i.length>0&&(e.__SENTRY__.integrations=[...e.__SENTRY__.integrations||[],...i])}}(),Object(o.a)()}}).call(this,a("iw6d")(t))},"T+n/":function(t,e,a){"use strict";a.r(e);var n=a("pFBD"),i=a("jQgF"),r=Object(i.g)();n.a({enabled:true,dsn:"https://1b25bc1fe3ba44cc9a17a03a1b47cb41@o406206.ingest.sentry.io/277230",release:"0d45f4f689c99538c8d4a4c1d51e9f62ea6deffd",environment:r,sampleRate:"test:e2e"===r?1:.1,maxValueLength:1024})},axj4:function(t,e,a){"use strict";function n(t,e){return null!=t?t:e()}a.d(e,"a",(function(){return n}))},daSf:function(t,e,a){"use strict";a.d(e,"a",(function(){return _}));var n=a("axj4"),i=a("rNOt"),r=a("HhP1"),s=a("tZ4O"),o=a("uI6w"),c=a("BCE9");class _ extends c.a{__init(){this._measurements={}}constructor(t,e){super(t),_.prototype.__init.call(this),this._hub=e||Object(i.a)(),this._name=t.name||"",this.metadata={...t.metadata,spanMetadata:{}},this._trimEnd=t.trimEnd,this.transaction=this}get name(){return this._name}set name(t){this._name=t,this.metadata.source="custom"}setName(t,e="custom"){this.name=t,this.metadata.source=e}initSpanRecorder(t=1e3){this.spanRecorder||(this.spanRecorder=new c.b(t)),this.spanRecorder.add(this)}setMeasurement(t,e,a=""){this._measurements[t]={value:e,unit:a}}setMetadata(t){this.metadata={...this.metadata,...t}}finish(t){if(void 0===this.endTimestamp){if(this.name||(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&r.c.warn("Transaction has no name, falling back to `<unlabeled transaction>`."),this.name="<unlabeled transaction>"),super.finish(t),!0===this.sampled){var e=this.spanRecorder?this.spanRecorder.spans.filter((t=>t!==this&&t.endTimestamp)):[];this._trimEnd&&e.length>0&&(this.endTimestamp=e.reduce(((t,e)=>t.endTimestamp&&e.endTimestamp?t.endTimestamp>e.endTimestamp?t:e:t)).endTimestamp);var a=this.metadata,n={contexts:{trace:this.getTraceContext()},spans:e,start_timestamp:this.startTimestamp,tags:this.tags,timestamp:this.endTimestamp,transaction:this.name,type:"transaction",sdkProcessingMetadata:{...a,baggage:this.getBaggage()},...a.source&&{transaction_info:{source:a.source}}};return Object.keys(this._measurements).length>0&&(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&r.c.log("[Measurements] Adding measurements to transaction",JSON.stringify(this._measurements,void 0,2)),n.measurements=this._measurements),("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&r.c.log(`[Tracing] Finishing ${this.op} transaction: ${this.name}.`),this._hub.captureEvent(n)}("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&r.c.log("[Tracing] Discarding transaction because its trace was not chosen to be sampled.");var i=this._hub.getClient();i&&i.recordDroppedEvent("sample_rate","transaction")}}toContext(){var t=super.toContext();return Object(s.c)({...t,name:this.name,trimEnd:this._trimEnd})}updateWithContext(t){return super.updateWithContext(t),this.name=Object(n.a)(t.name,(()=>"")),this._trimEnd=t.trimEnd,this}getBaggage(){var t=this.metadata.baggage,e=!t||Object(o.d)(t)?this._populateBaggageWithSentryValues(t):t;return this.metadata.baggage=e,e}_populateBaggageWithSentryValues(t=Object(o.b)({})){var e=this._hub||Object(i.a)(),a=e&&e.getClient();if(!a)return t;const{environment:n,release:r}=a.getOptions()||{},{publicKey:c}=a.getDsn()||{};var _=this.metadata&&this.metadata.transactionSampling&&this.metadata.transactionSampling.rate&&this.metadata.transactionSampling.rate.toString(),d=e.getScope();const{segment:p}=d&&d.getUser()||{};var u=this.metadata.source,m=u&&"url"!==u?this.name:void 0;return Object(o.b)(Object(s.c)({environment:n,release:r,transaction:m,user_segment:p,public_key:c,trace_id:this.traceId,sample_rate:_,...Object(o.c)(t)}),"",!1)}}},iFCU:function(t,e,a){"use strict";a.d(e,"a",(function(){return c})),a.d(e,"b",(function(){return o})),a.d(e,"c",(function(){return d}));var n=a("cMcT"),i=a("HhP1"),r=a("BCE9"),s=a("daSf"),o=1e3,c=3e4;class _ extends r.b{constructor(t,e,a,n){super(n),this._pushActivity=t,this._popActivity=e,this.transactionSpanId=a}add(t){t.spanId!==this.transactionSpanId&&(t.finish=e=>{t.endTimestamp="number"===typeof e?e:Object(n.d)(),this._popActivity(t.spanId)},void 0===t.endTimestamp&&this._pushActivity(t.spanId)),super.add(t)}}class d extends s.a{__init(){this.activities={}}__init2(){this._heartbeatCounter=0}__init3(){this._finished=!1}__init4(){this._beforeFinishCallbacks=[]}constructor(t,e,a=o,n=c,r=!1){super(t,e),this._idleHub=e,this._idleTimeout=a,this._finalTimeout=n,this._onScope=r,d.prototype.__init.call(this),d.prototype.__init2.call(this),d.prototype.__init3.call(this),d.prototype.__init4.call(this),r&&(p(e),("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log(`Setting idle transaction on scope. Span ID: ${this.spanId}`),e.configureScope((t=>t.setSpan(this)))),this._startIdleTimeout(),setTimeout((()=>{this._finished||(this.setStatus("deadline_exceeded"),this.finish())}),this._finalTimeout)}finish(t=Object(n.d)()){if(this._finished=!0,this.activities={},this.spanRecorder){for(var e of(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log("[Tracing] finishing IdleTransaction",new Date(1e3*t).toISOString(),this.op),this._beforeFinishCallbacks))e(this,t);this.spanRecorder.spans=this.spanRecorder.spans.filter((e=>{if(e.spanId===this.spanId)return!0;e.endTimestamp||(e.endTimestamp=t,e.setStatus("cancelled"),("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log("[Tracing] cancelling span since transaction ended early",JSON.stringify(e,void 0,2)));var a=e.startTimestamp<t;return a||("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log("[Tracing] discarding Span since it happened after Transaction was finished",JSON.stringify(e,void 0,2)),a})),("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log("[Tracing] flushing IdleTransaction")}else("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log("[Tracing] No active IdleTransaction");return this._onScope&&p(this._idleHub),super.finish(t)}registerBeforeFinishCallback(t){this._beforeFinishCallbacks.push(t)}initSpanRecorder(t){if(!this.spanRecorder){this.spanRecorder=new _((t=>{this._finished||this._pushActivity(t)}),(t=>{this._finished||this._popActivity(t)}),this.spanId,t),("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log("Starting heartbeat"),this._pingHeartbeat()}this.spanRecorder.add(this)}_cancelIdleTimeout(){this._idleTimeoutID&&(clearTimeout(this._idleTimeoutID),this._idleTimeoutID=void 0)}_startIdleTimeout(t){this._cancelIdleTimeout(),this._idleTimeoutID=setTimeout((()=>{this._finished||0!==Object.keys(this.activities).length||this.finish(t)}),this._idleTimeout)}_pushActivity(t){this._cancelIdleTimeout(),("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log(`[Tracing] pushActivity: ${t}`),this.activities[t]=!0,("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log("[Tracing] new activities count",Object.keys(this.activities).length)}_popActivity(t){if(this.activities[t]&&(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log(`[Tracing] popActivity ${t}`),delete this.activities[t],("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log("[Tracing] new activities count",Object.keys(this.activities).length)),0===Object.keys(this.activities).length){var e=Object(n.d)()+this._idleTimeout/1e3;this._startIdleTimeout(e)}}_beat(){if(!this._finished){var t=Object.keys(this.activities).join("");t===this._prevHeartbeatString?this._heartbeatCounter+=1:this._heartbeatCounter=1,this._prevHeartbeatString=t,this._heartbeatCounter>=3?(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log("[Tracing] Transaction finished because of no change for 3 heart beats"),this.setStatus("deadline_exceeded"),this.finish()):this._pingHeartbeat()}}_pingHeartbeat(){("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&i.c.log(`pinging Heartbeat -> current counter: ${this._heartbeatCounter}`),setTimeout((()=>{this._beat()}),5e3)}}function p(t){var e=t.getScope();e&&(e.getTransaction()&&e.setSpan(void 0))}},pFBD:function(t,e,a){"use strict";a.d(e,"a",(function(){return ot}));var n=a("TZqC"),i=a("RWRC");var r=a("Y7l7"),s=a("OU+S"),o=a("urXz"),c=a("HhP1"),_=a("7X3J"),d=a("D0Nm"),p=a("uI6w"),u=a("iFCU"),m=a("90Qc"),h=Object(_.a)();var l=a("axj4"),f=a("cMcT"),g=a("VPep"),T=(t,e,a)=>{let n;return i=>{e.value>=0&&(i||a)&&(e.delta=e.value-(n||0),(e.delta||void 0===n)&&(n=e.value,t(e)))}},v=(t,e)=>({name:t,value:Object(l.a)(e,(()=>-1)),delta:0,entries:[],id:`v2-${Date.now()}-${Math.floor(8999999999999*Math.random())+1e12}`}),E=(t,e)=>{try{if(PerformanceObserver.supportedEntryTypes.includes(t)){if("first-input"===t&&!("PerformanceEventTiming"in self))return;var a=new PerformanceObserver((t=>t.getEntries().map(e)));return a.observe({type:t,buffered:!0}),a}}catch(n){}},b=(t,e)=>{var a=n=>{"pagehide"!==n.type&&"hidden"!==Object(_.a)().document.visibilityState||(t(n),e&&(removeEventListener("visibilitychange",a,!0),removeEventListener("pagehide",a,!0)))};addEventListener("visibilitychange",a,!0),addEventListener("pagehide",a,!0)};let S=-1;var y=()=>(S<0&&(S="hidden"===Object(_.a)().document.visibilityState?0:1/0,b((({timeStamp:t})=>{S=t}),!0)),{get firstHiddenTime(){return S}}),R={};function O(t){return"number"===typeof t&&isFinite(t)}function N(t,{startTimestamp:e,...a}){return e&&t.startTimestamp>e&&(t.startTimestamp=e),t.startChild({startTimestamp:e,...a})}var D=Object(_.a)();function j(){return D&&D.addEventListener&&D.performance}let B,Y,G=0,U={};function I(t=!1){var e=j();e&&f.a&&(e.mark&&D.performance.mark("sentry-tracing-init"),((t,e)=>{var a=v("CLS",0);let n,i=0,r=[];var s=t=>{if(t&&!t.hadRecentInput){var e=r[0],s=r[r.length-1];i&&0!==r.length&&t.startTime-s.startTime<1e3&&t.startTime-e.startTime<5e3?(i+=t.value,r.push(t)):(i=t.value,r=[t]),i>a.value&&(a.value=i,a.entries=r,n&&n())}},o=E("layout-shift",s);o&&(n=T(t,a,e),b((()=>{o.takeRecords().map(s),n(!0)})))})((t=>{var e=t.entries.pop();e&&(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log("[Measurements] Adding CLS"),U.cls={value:t.value,unit:""},Y=e)})),function(t){((t,e)=>{var a=y(),n=v("LCP");let i;var r=t=>{var e=t.startTime;e<a.firstHiddenTime&&(n.value=e,n.entries.push(t)),i&&i()},s=E("largest-contentful-paint",r);if(s){i=T(t,n,e);var o=()=>{R[n.id]||(s.takeRecords().map(r),s.disconnect(),R[n.id]=!0,i(!0))};["keydown","click"].forEach((t=>{addEventListener(t,o,{once:!0,capture:!0})})),b(o,!0)}})((t=>{var e=t.entries.pop();if(e){var a=Object(m.c)(f.a),n=Object(m.c)(e.startTime);("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log("[Measurements] Adding LCP"),U.lcp={value:t.value,unit:"millisecond"},U["mark.lcp"]={value:a+n,unit:"second"},B=e}}),t)}(t),((t,e)=>{var a=y(),n=v("FID");let i;var r=t=>{i&&t.startTime<a.firstHiddenTime&&(n.value=t.processingStart-t.startTime,n.entries.push(t),i(!0))},s=E("first-input",r);s&&(i=T(t,n,e),b((()=>{s.takeRecords().map(r),s.disconnect()}),!0))})((t=>{var e=t.entries.pop();if(e){var a=Object(m.c)(f.a),n=Object(m.c)(e.startTime);("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log("[Measurements] Adding FID"),U.fid={value:t.value,unit:"millisecond"},U["mark.fid"]={value:a+n,unit:"second"}}})))}function x(t){var e=j();if(!e||!D.performance.getEntries||!f.a)return;("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log("[Tracing] Adding & adjusting spans using Performance API");var a=Object(m.c)(f.a),n=e.getEntries();let i,r;n.slice(G).forEach((e=>{var n=Object(m.c)(e.startTime),s=Object(m.c)(e.duration);if(!("navigation"===t.op&&a+n<t.startTimestamp))switch(e.entryType){case"navigation":!function(t,e,a){["unloadEvent","redirect","domContentLoadedEvent","loadEvent","connect"].forEach((n=>{w(t,e,n,a)})),w(t,e,"secureConnection",a,"TLS/SSL","connectEnd"),w(t,e,"fetch",a,"cache","domainLookupStart"),w(t,e,"domainLookup",a,"DNS"),function(t,e,a){N(t,{op:"browser",description:"request",startTimestamp:a+Object(m.c)(e.requestStart),endTimestamp:a+Object(m.c)(e.responseEnd)}),N(t,{op:"browser",description:"response",startTimestamp:a+Object(m.c)(e.responseStart),endTimestamp:a+Object(m.c)(e.responseEnd)})}(t,e,a)}(t,e,a),i=a+Object(m.c)(e.responseStart),r=a+Object(m.c)(e.requestStart);break;case"mark":case"paint":case"measure":var o=function(t,e,a,n,i){var r=i+a,s=r+n;return N(t,{description:e.name,endTimestamp:s,op:e.entryType,startTimestamp:r}),r}(t,e,n,s,a),_=y(),d=e.startTime<_.firstHiddenTime;"first-paint"===e.name&&d&&(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log("[Measurements] Adding FP"),U.fp={value:e.startTime,unit:"millisecond"},U["mark.fp"]={value:o,unit:"second"}),"first-contentful-paint"===e.name&&d&&(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log("[Measurements] Adding FCP"),U.fcp={value:e.startTime,unit:"millisecond"},U["mark.fcp"]={value:o,unit:"second"});break;case"resource":var p=e.name.replace(D.location.origin,"");!function(t,e,a,n,i,r){if("xmlhttprequest"===e.initiatorType||"fetch"===e.initiatorType)return;var s={};"transferSize"in e&&(s["Transfer Size"]=e.transferSize);"encodedBodySize"in e&&(s["Encoded Body Size"]=e.encodedBodySize);"decodedBodySize"in e&&(s["Decoded Body Size"]=e.decodedBodySize);var o=r+n;N(t,{description:a,endTimestamp:o+i,op:e.initiatorType?`resource.${e.initiatorType}`:"resource",startTimestamp:o,data:s})}(t,e,p,n,s,a)}})),G=Math.max(n.length-1,0),function(t){var e=D.navigator;if(!e)return;var a=e.connection;a&&(a.effectiveType&&t.setTag("effectiveConnectionType",a.effectiveType),a.type&&t.setTag("connectionType",a.type),O(a.rtt)&&(U["connection.rtt"]={value:a.rtt,unit:"millisecond"}),O(a.downlink)&&(U["connection.downlink"]={value:a.downlink,unit:""}));O(e.deviceMemory)&&t.setTag("deviceMemory",`${e.deviceMemory} GB`);O(e.hardwareConcurrency)&&t.setTag("hardwareConcurrency",String(e.hardwareConcurrency))}(t),"pageload"===t.op&&("number"===typeof i&&(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log("[Measurements] Adding TTFB"),U.ttfb={value:1e3*(i-t.startTimestamp),unit:"millisecond"},"number"===typeof r&&r<=i&&(U["ttfb.requestTime"]={value:1e3*(i-r),unit:"millisecond"})),["fcp","fp","lcp"].forEach((e=>{if(U[e]&&!(a>=t.startTimestamp)){var n=U[e].value,i=a+Object(m.c)(n),r=Math.abs(1e3*(i-t.startTimestamp)),s=r-n;("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log(`[Measurements] Normalized ${e} from ${n} to ${r} (${s})`),U[e].value=r}})),U["mark.fid"]&&U.fid&&N(t,{description:"first input delay",endTimestamp:U["mark.fid"].value+Object(m.c)(U.fid.value),op:"web.vitals",startTimestamp:U["mark.fid"].value}),"fcp"in U||delete U.cls,Object.keys(U).forEach((e=>{t.setMeasurement(e,U[e].value,U[e].unit)})),function(t){B&&(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log("[Measurements] Adding LCP Data"),B.element&&t.setTag("lcp.element",Object(g.b)(B.element)),B.id&&t.setTag("lcp.id",B.id),B.url&&t.setTag("lcp.url",B.url.trim().slice(0,200)),t.setTag("lcp.size",B.size));Y&&Y.sources&&(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log("[Measurements] Adding CLS Data"),Y.sources.forEach(((e,a)=>t.setTag(`cls.source.${a+1}`,Object(g.b)(e.node)))))}(t)),B=void 0,Y=void 0,U={}}function w(t,e,a,n,i,r){var s=r?e[r]:e[`${a}End`],o=e[`${a}Start`];o&&s&&N(t,{op:"browser",description:Object(l.a)(i,(()=>a)),startTimestamp:n+Object(m.c)(o),endTimestamp:n+Object(m.c)(s)})}var C=a("dbjm"),k=a("8wNN"),A=a("E6vx"),M={traceFetch:!0,traceXHR:!0,tracingOrigins:["localhost",/^\//]};function $(t){const{traceFetch:e,traceXHR:a,tracingOrigins:n,shouldCreateSpanForRequest:i}={...M,...t};var r={},s=t=>{if(r[t])return r[t];var e=n;return r[t]=e.some((e=>Object(C.a)(t,e)))&&!Object(C.a)(t,"sentry_key"),r[t]};let o=s;"function"===typeof i&&(o=t=>s(t)&&i(t));var c={};e&&Object(k.a)("fetch",(t=>{!function(t,e,a){if(!Object(m.b)()||!t.fetchData||!e(t.fetchData.url))return;if(t.endTimestamp){var n=t.fetchData.__span;if(!n)return;return void((r=a[n])&&(t.response?r.setHttpStatus(t.response.status):t.error&&r.setStatus("internal_error"),r.finish(),delete a[n]))}var i=Object(m.a)();if(i){var r=i.startChild({data:{...t.fetchData,type:"fetch"},description:`${t.fetchData.method} ${t.fetchData.url}`,op:"http.client"});t.fetchData.__span=r.spanId,a[r.spanId]=r;var s=t.args[0]=t.args[0],o=t.args[1]=t.args[1]||{};o.headers=function(t,e,a,n){let i=n.headers;Object(A.g)(t,Request)&&(i=t.headers);if(i)if("function"===typeof i.append)i.append("sentry-trace",a.toTraceparent()),i.append(p.a,Object(p.e)(e,i.get(p.a)));else if(Array.isArray(i)){const[,t]=i.find((([t,e])=>t===p.a));i=[...i,["sentry-trace",a.toTraceparent()],[p.a,Object(p.e)(e,t)]]}else i={...i,"sentry-trace":a.toTraceparent(),baggage:Object(p.e)(e,i.baggage)};else i={"sentry-trace":a.toTraceparent(),baggage:Object(p.e)(e)};return i}(s,i.getBaggage(),r,o)}}(t,o,c)})),a&&Object(k.a)("xhr",(t=>{!function(t,e,a){if(!Object(m.b)()||t.xhr&&t.xhr.__sentry_own_request__||!(t.xhr&&t.xhr.__sentry_xhr__&&e(t.xhr.__sentry_xhr__.url)))return;var n=t.xhr.__sentry_xhr__;if(t.endTimestamp){var i=t.xhr.__sentry_xhr_span_id__;if(!i)return;return void((s=a[i])&&(s.setHttpStatus(n.status_code),s.finish(),delete a[i]))}var r=Object(m.a)();if(r){var s=r.startChild({data:{...n.data,type:"xhr",method:n.method,url:n.url},description:`${n.method} ${n.url}`,op:"http.client"});if(t.xhr.__sentry_xhr_span_id__=s.spanId,a[t.xhr.__sentry_xhr_span_id__]=s,t.xhr.setRequestHeader)try{t.xhr.setRequestHeader("sentry-trace",s.toTraceparent());var o=t.xhr.getRequestHeader&&t.xhr.getRequestHeader(p.a);t.xhr.setRequestHeader(p.a,Object(p.e)(r.getBaggage(),o))}catch(c){}}}(t,o,c)}))}var H=Object(_.a)();var P={idleTimeout:u.b,finalTimeout:u.a,markBackgroundTransactions:!0,routingInstrumentation:function(t,e=!0,a=!0){if(!H||!H.location)return void(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.warn("Could not initialize routing instrumentation due to invalid location"));let n,i=H.location.href;e&&(n=t({name:H.location.pathname,op:"pageload",metadata:{source:"url"}})),a&&Object(k.a)("history",(({to:e,from:a})=>{void 0===a&&i&&-1!==i.indexOf(e)?i=void 0:a!==e&&(i=void 0,n&&(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log(`[Tracing] Finishing current transaction with op: ${n.op}`),n.finish()),n=t({name:H.location.pathname,op:"navigation",metadata:{source:"url"}}))}))},startTransactionOnLocationChange:!0,startTransactionOnPageLoad:!0,_experiments:{enableLongTask:!0},...M};class L{__init(){this.name="BrowserTracing"}constructor(t){L.prototype.__init.call(this);let e=M.tracingOrigins;t&&(t.tracingOrigins&&Array.isArray(t.tracingOrigins)?e=t.tracingOrigins:("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&(this._emitOptionsWarning=!0)),this.options={...P,...t,tracingOrigins:e};const{_metricOptions:a}=this.options;I(a&&a._reportAllChanges),Object(o.a)([this,"access",t=>t.options,"access",t=>t._experiments,"optionalAccess",t=>t.enableLongTask])&&E("longtask",(t=>{var e=Object(m.a)();if(e){var a=Object(m.c)(f.a+t.startTime),n=Object(m.c)(t.duration);e.startChild({description:"Long Task",op:"ui.long-task",startTimestamp:a,endTimestamp:a+n})}}))}setupOnce(t,e){this._getCurrentHub=e,this._emitOptionsWarning&&(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.warn("[Tracing] You need to define `tracingOrigins` in the options. Set an array of urls or patterns to trace."),("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.warn(`[Tracing] We added a reasonable default for you: ${M.tracingOrigins}`));const{routingInstrumentation:a,startTransactionOnLocationChange:n,startTransactionOnPageLoad:i,markBackgroundTransactions:r,traceFetch:s,traceXHR:o,tracingOrigins:_,shouldCreateSpanForRequest:d}=this.options;a((t=>this._createRouteTransaction(t)),i,n),r&&(h&&h.document?h.document.addEventListener("visibilitychange",(()=>{var t=Object(m.a)();if(h.document.hidden&&t){var e="cancelled";("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log(`[Tracing] Transaction: cancelled -> since tab moved to the background, op: ${t.op}`),t.status||t.setStatus(e),t.setTag("visibilitychange","document.hidden"),t.finish()}})):("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.warn("[Tracing] Could not set up background tab detection due to lack of global document")),$({traceFetch:s,traceXHR:o,tracingOrigins:_,shouldCreateSpanForRequest:d})}_createRouteTransaction(t){if(!this._getCurrentHub)return void(("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.warn(`[Tracing] Did not create ${t.op} transaction because _getCurrentHub is invalid.`));const{beforeNavigate:e,idleTimeout:a,finalTimeout:n}=this.options;var i="pageload"===t.op?function(){var t=F("sentry-trace"),e=F("baggage"),a=t?Object(d.a)(t):void 0,n=Object(p.g)(e,t);if(a||n)return{...a&&a,...n&&{metadata:{baggage:n}}};return}():void 0,r={...t,...i,...i&&{metadata:{...t.metadata,...i.metadata}},trimEnd:!0},o="function"===typeof e?e(r):r,u=void 0===o?{...r,sampled:!1}:o;u.metadata=u.name!==r.name?{...u.metadata,source:"custom"}:u.metadata,!1===u.sampled&&("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log(`[Tracing] Will not send ${u.op} transaction because of beforeNavigate.`),("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.log(`[Tracing] Starting ${u.op} transaction on scope`);var m=this._getCurrentHub();const{location:h}=Object(_.a)();var l=Object(s.b)(m,u,a,n,!0,{location:h});return l.registerBeforeFinishCallback((t=>{x(t),t.setTag("sentry_reportAllChanges",Boolean(this.options._metricOptions&&this.options._metricOptions._reportAllChanges))})),l}}function F(t){var e=Object(_.a)();if(e.document&&e.document.querySelector){var a=e.document.querySelector(`meta[name=${t}]`);return a?a.getAttribute("content"):null}return null}("undefined"===typeof __SENTRY_TRACING__||__SENTRY_TRACING__)&&Object(s.a)();var q=a("rNOt"),z=a("tZ4O"),J=a("OKhh"),W=a("dAGg"),X=a.n(W),Q=Object(_.a)();var V={"routing.instrumentation":"next-router"};let Z,K,tt;var et=Object(q.a)().getClient();function at(t,e=!0,a=!0){if(tt=t,e){const{route:e,traceParentData:a,baggage:i,params:r}=function(){let t;var e=Q.document.getElementById("__NEXT_DATA__");if(e&&e.innerHTML)try{t=JSON.parse(e.innerHTML)}catch(f){("undefined"===typeof __SENTRY_DEBUG__||__SENTRY_DEBUG__)&&c.c.warn("Could not extract __NEXT_DATA__")}if(!t)return{};var a={};const{page:n,query:i,props:r}=t;if(a.route=n,a.params=i,r){const{pageProps:t}=r;var s=r._sentryGetInitialPropsBaggage,o=t&&t._sentryGetServerSidePropsBaggage,_=t&&t._sentryGetStaticPropsBaggage,p=s||o||_;p&&(a.baggage=p);var u=r._sentryGetInitialPropsTraceData,m=t&&t._sentryGetServerSidePropsTraceData,h=t&&t._sentryGetStaticPropsTraceData,l=u||m||h;l&&(a.traceParentData=Object(d.a)(l))}return a}();K=e||Q.location.pathname;var n=e?"route":"url";Z=t({name:K,op:"pageload",tags:V,...r&&et&&et.getOptions().sendDefaultPii&&{data:r},...a,metadata:{source:n,...i&&{baggage:Object(p.f)(i)}}})}X.a.ready((()=>{if(a){var t=Object.getPrototypeOf(X.a.router);Object(z.e)(t,"changeState",nt)}}))}function nt(t){return function(e,a,n,i,...r){var s=Object(J.b)(a);if(void 0!==tt&&K!==s){Z&&Z.finish();var o={...V,method:e,...i};K&&(o.from=K),K=s,Z=tt({name:K,op:"navigation",tags:o,metadata:{source:"route"}})}return t.call(this,e,a,n,i,...r)}}function it(t,e,a){var n=e.match(/([a-z]+)\.(.*)/i);null===n?t[e]=a:it(t[n[1]],n[2],a)}function rt(t,e,a={}){return Array.isArray(e)?st(t,e,a):function(t,e,a){return n=>{var i=e(n);return st(t,i,a)}}(t,e,a)}function st(t,e,a){let n=!1;for(let r=0;r<e.length;r++){e[r].name===t.name&&(n=!0);var i=a[e[r].name];i&&it(e[r],i.keyPath,i.value)}return n?e:[...e,t]}function ot(t){!function(t,e){t._metadata=t._metadata||{},t._metadata.sdk=t._metadata.sdk||{name:"sentry.javascript.nextjs",packages:e.map((t=>({name:`npm:@sentry/${t}`,version:n.a}))),version:n.a}}(t,["nextjs","react"]),t.environment=t.environment||"production";let e=t.integrations;("undefined"===typeof __SENTRY_TRACING__||__SENTRY_TRACING__)&&(void 0===t.tracesSampleRate&&void 0===t.tracesSampler||(e=function(t){var e=new L({tracingOrigins:[...M.tracingOrigins,/^(api\/)/],routingInstrumentation:at});return t?rt(e,t,{BrowserTracing:{keyPath:"options.routingInstrumentation",value:at}}):[e]}(t.integrations))),function(t){t._metadata=t._metadata||{},t._metadata.sdk=t._metadata.sdk||{name:"sentry.javascript.react",packages:[{name:"npm:@sentry/react",version:n.a}],version:n.a},Object(i.a)(t)}({...t,integrations:e}),Object(r.b)((t=>{t.setTag("runtime","browser");var e=t=>"transaction"===t.type&&"/404"===t.transaction?null:t;e.id="NextClient404Filter",t.addEventProcessor(e)}))}},qQbD:function(t,e,a){(window.__NEXT_P=window.__NEXT_P||[]).push(["/_app",function(){return a("cha2")}])},xhzY:function(t,e,a){(function(t){var e="undefined"!==typeof window?window:"undefined"!==typeof t?t:"undefined"!==typeof self?self:{};e.SENTRY_RELEASE={id:"0d45f4f689c99538c8d4a4c1d51e9f62ea6deffd"},e.SENTRY_RELEASES=e.SENTRY_RELEASES||{},e.SENTRY_RELEASES["opensea-next@opensea"]={id:"0d45f4f689c99538c8d4a4c1d51e9f62ea6deffd"}}).call(this,a("bqPV"))}},[[16,1,0,5,3,4,7,11,2,6,9,8,10,12,15,19,20,30,38,40]]]);
//# sourceMappingURL=_app-5137d733be6b664ffe2d.js.map