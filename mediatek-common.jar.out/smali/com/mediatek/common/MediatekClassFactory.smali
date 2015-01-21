.class public final Lcom/mediatek/common/MediatekClassFactory;
.super Ljava/lang/Object;
.source "MediatekClassFactory.java"


# static fields
.field private static final DEBUG_GETINSTANCE:Z = true

.field private static final DEBUG_PERFORMANCE:Z = true

.field private static final TAG:Ljava/lang/String; = "MediatekClassFactory"

.field private static commonInterfaceMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mOPFactoryName:Ljava/lang/String; = "com.mediatek.op.MediatekOPClassFactory"

.field private static mOpChecked:Z

.field private static mOpGetIfClassName:Ljava/lang/reflect/Method;

.field private static opInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static primitiveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    .line 145
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/common/MediatekClassFactory;->mOpChecked:Z

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    .line 151
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const-string v2, "com.mediatek.telephony.SimInfoUpdateAdp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/aee/IExceptionLog;

    const-string v2, "com.mediatek.exceptionlog.ExceptionLog"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/lowstorage/ILowStorageHandle;

    const-string v2, "com.mediatek.lowstorage.LowStorageHandle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v2, "com.mediatek.agps.MtkAgpsManagerImpl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/agps/IMtkAgpsManager;

    const-string v2, "com.mediatek.agps.MtkAgpsManagerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/dcfdecoder/IDcfDecoder;

    const-string v2, "com.mediatek.dcfdecoder.DcfDecoder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/gifdecoder/IGifDecoder;

    const-string v2, "com.mediatek.gifdecoder.GifDecoder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    const-string v2, "com.mediatek.audioprofile.AudioProfileService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/audioprofile/IAudioProfileManager;

    const-string v2, "com.mediatek.audioprofile.AudioProfileManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    const-string v2, "com.mediatek.hdmi.MtkHdmiManagerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/hdmi/IHDMINative;

    const-string v2, "com.mediatek.hdmi.HDMINative"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    const-string v2, "com.mediatek.voicecommand.app.VoicePhoneDetection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/amsplus/IAmsPlus;

    const-string v2, "com.mediatek.amsplus.ActivityStackPlus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    const-string v2, "com.mediatek.msglogger.MessageMonitorService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper;

    const-string v2, "com.mediatek.msglogger.MessageLoggerWrapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IBipManagerExt;

    const-string v2, "com.mediatek.internal.telephony.cat.BipManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/search/ISearchEngineManager;

    const-string v2, "com.mediatek.search.SearchEngineManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/search/ISearchEngineManagerService;

    const-string v2, "com.mediatek.search.SearchEngineManagerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/mom/IMobileManager;

    const-string v2, "com.mediatek.mom.MobileManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/mom/IMobileManagerService;

    const-string v2, "com.mediatek.mom.MobileManagerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const-string v2, "com.mediatek.telephony.InternationalRoamingController"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/perfservice/IPerfService;

    const-string v2, "com.mediatek.perfservice.PerfService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/perfservice/IPerfServiceWrapper;

    const-string v2, "com.mediatek.perfservice.PerfServiceWrapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/perfservice/PerfServiceManager;

    const-string v2, "com.mediatek.perfservice.PerfServiceManagerImpl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    .line 204
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/IFwkExt;

    const-string v2, "com.mediatek.op.FwkExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/wifi/IWifiFwkExt;

    const-string v2, "com.mediatek.op.wifi.DefaultWifiFwkExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/net/IConnectivityServiceExt;

    const-string v2, "com.mediatek.op.net.DefaultConnectivityServiceExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/util/IPatterns;

    const-string v2, "com.mediatek.op.util.DefaultPatterns"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/bootanim/IBootAnimExt;

    const-string v2, "com.mediatek.op.bootanim.DefaultBootAnimExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IKeyguardUtilExt;

    const-string v2, "com.mediatek.op.policy.DefaultKeyguardUtilExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    const-string v2, "com.mediatek.op.telephony.ServiceStateExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ITetheringExt;

    const-string v2, "com.mediatek.op.telephony.TetheringExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const-string v2, "com.mediatek.op.telephony.PhoneNumberExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IGsmConnectionExt;

    const-string v2, "com.mediatek.op.telephony.GsmConnectionExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ITelephonyExt;

    const-string v2, "com.mediatek.op.telephony.TelephonyExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ICallerInfoExt;

    const-string v2, "com.mediatek.op.telephony.CallerInfoExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/media/IOmaSettingHelper;

    const-string v2, "com.mediatek.op.media.DefaultOmaSettingHelper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/media/IAudioServiceExt;

    const-string v2, "com.mediatek.common.media.IAudioServiceExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    const-string v2, "com.mediatek.op.audioprofile.DefaultAudioProfileExtension"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    const-string v2, "com.mediatek.op.audioprofile.DefaultProfileStatesGetter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/sms/IWapPushFwkExt;

    const-string v2, "com.mediatek.op.sms.WapPushFwkExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    const-string v2, "com.mediatek.op.sms.ConcatenatedSmsFwkExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/sms/IDupSmsFilterExt;

    const-string v2, "com.mediatek.op.sms.DupSmsFilterExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ITelephonyProviderExt;

    const-string v2, "com.mediatek.op.telephony.TelephonyProviderExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IGsmDCTExt;

    const-string v2, "com.mediatek.op.telephony.GsmDCTExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    const-string v2, "com.mediatek.op.sms.DefaultSmsSimSettingsExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IDualClock;

    const-string v2, "com.mediatek.op.policy.DefaultDualClock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/ICardInfoExt;

    const-string v2, "com.mediatek.op.policy.DefaultCardInfoExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IOperatorSIMString;

    const-string v2, "com.mediatek.op.policy.DefaultOperatorSIMString"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IEmergencyButtonExt;

    const-string v2, "com.mediatek.op.policy.DefaultEmergencyButtonExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/ICarrierTextExt;

    const-string v2, "com.mediatek.op.policy.DefaultCarrierTextExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/util/IWebProtocolNames;

    const-string v2, "com.mediatek.op.util.DefaultWebProtocolNames"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IUiccControllerExt;

    const-string v2, "com.mediatek.op.telephony.UiccControllerExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/search/IRegionalPhoneSearchEngineExt;

    const-string v2, "com.mediatek.op.search.DefaultRegionalPhoneSearchEngineExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;

    const-string v2, "com.mediatek.op.telephony.internationalroaming.strategy.DefaultCardStrategy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;

    const-string v2, "com.mediatek.op.telephony.internationalroaming.strategy.DefaultDataStrategy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

    const-string v2, "com.mediatek.op.telephony.internationalroaming.strategy.DefaultGeneralStrategy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    const-string v2, "com.mediatek.op.telephony.internationalroaming.strategy.DefaultNetworkSelectionStrategy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/ILockScreenExt;

    const-string v2, "com.mediatek.op.policy.DefaultLockScreenExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/server/IConnectivityRoamingExt;

    const-string v2, "com.mediatek.op.server.DefConnectivityRoamingExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    .line 740
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "createInstance(): Begin = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v6, 0x0

    .line 289
    .local v6, ifClassName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 292
    .local v10, obj:Ljava/lang/Object;
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "create Instance with :  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v16, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 297
    sget-object v16, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #ifClassName:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 300
    .restart local v6       #ifClassName:Ljava/lang/String;
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "create Instance from mediatek-framework library :  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/mediatek/common/MediatekClassFactory;->getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 626
    .end local v10           #obj:Ljava/lang/Object;
    :goto_0
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "createInstance(): End = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    if-nez v10, :cond_1d

    .line 631
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "null object during finding :  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v16, Ljava/lang/RuntimeException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/RuntimeException;-><init>()V

    throw v16

    .line 306
    .restart local v10       #obj:Ljava/lang/Object;
    :cond_0
    sget-object v16, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 308
    invoke-static/range {p0 .. p0}, Lcom/mediatek/common/MediatekClassFactory;->getOpIfClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 311
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "create Instance from operator library :  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/mediatek/common/MediatekClassFactory;->getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 315
    :cond_1
    const-class v16, Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 316
    const/4 v9, 0x0

    .line 318
    .local v9, mpoDecoderObj:Ljava/lang/Object;
    :try_start_0
    const-string v16, "com.mediatek.mpo.MpoDecoder"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 319
    .local v3, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_2

    .line 320
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "decodeFile"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 321
    const-string v16, "decodeFile"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 323
    .local v8, method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_2

    .line 324
    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v9           #mpoDecoderObj:Ljava/lang/Object;
    :cond_2
    :goto_1
    move-object v10, v9

    .line 340
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    goto/16 :goto_0

    .line 326
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v9       #mpoDecoderObj:Ljava/lang/Object;
    :cond_3
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "decodeUri"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 327
    const-string v16, "decodeUri"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/ContentResolver;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-class v19, Landroid/net/Uri;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 329
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_2

    .line 330
    const/16 v16, 0x0

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_1

    .line 335
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 336
    .local v4, e:Ljava/lang/Exception;
    const-string v16, "MediatekClassFactory"

    const-string v17, "createInstance:got exception for MpoDecoder"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v9

    goto :goto_2

    .line 340
    .end local v4           #e:Ljava/lang/Exception;
    .end local v9           #mpoDecoderObj:Ljava/lang/Object;
    :cond_4
    const-class v16, Lcom/mediatek/common/stereo3d/IJpsParser;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 341
    const/4 v7, 0x0

    .line 343
    .local v7, jpsParserObj:Ljava/lang/Object;
    :try_start_1
    const-string v16, "com.mediatek.stereo3d.JpsParser"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 344
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v3, :cond_5

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_5

    .line 346
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "parse"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 347
    const-string v16, "parse"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Ljava/io/File;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 350
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_5

    .line 351
    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .end local v7           #jpsParserObj:Ljava/lang/Object;
    .end local v8           #method:Ljava/lang/reflect/Method;
    :cond_5
    move-object v10, v7

    .line 360
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    goto/16 :goto_0

    .line 355
    .restart local v7       #jpsParserObj:Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 356
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v16, "MediatekClassFactory"

    const-string v17, "createInstance:got exception for JpsParser"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v7

    goto :goto_3

    .line 360
    .end local v4           #e:Ljava/lang/Exception;
    .end local v7           #jpsParserObj:Ljava/lang/Object;
    :cond_6
    const-class v16, Lcom/mediatek/common/stereo3d/IStereo3DConversion;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_b

    .line 361
    const/4 v2, 0x0

    .line 363
    .local v2, bitmapObj:Ljava/lang/Object;
    :try_start_2
    const-string v16, "com.mediatek.stereo3d.Stereo3DConversion"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 365
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v3, :cond_7

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_7

    .line 366
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Stereo3DConversion args legnth: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "execute"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 371
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 372
    const-string v16, "execute"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/graphics/Bitmap;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 375
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_7

    .line 376
    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #bitmapObj:Ljava/lang/Object;
    .end local v8           #method:Ljava/lang/reflect/Method;
    :cond_7
    :goto_4
    move-object v10, v2

    .line 414
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_5
    goto/16 :goto_0

    .line 378
    .restart local v2       #bitmapObj:Ljava/lang/Object;
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_8
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 379
    const-string v16, "execute"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/graphics/Bitmap;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 383
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_7

    .line 384
    const/16 v16, 0x0

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    .line 387
    .end local v8           #method:Ljava/lang/reflect/Method;
    :cond_9
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 388
    const-string v16, "execute"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/graphics/Bitmap;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v17, v18

    const/16 v18, 0x2

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 392
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_7

    .line 393
    const/16 v16, 0x0

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x3

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_4

    .line 396
    .end local v8           #method:Ljava/lang/reflect/Method;
    :cond_a
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 397
    const-string v16, "execute"

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/graphics/Bitmap;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v17, v18

    const/16 v18, 0x2

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v17, v18

    const/16 v18, 0x3

    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 401
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_7

    .line 402
    const/16 v16, 0x0

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x3

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const/16 v19, 0x4

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto/16 :goto_4

    .line 408
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #method:Ljava/lang/reflect/Method;
    :catch_2
    move-exception v4

    .line 409
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v16, "MediatekClassFactory"

    const-string v17, "createInstance:got exception for Stereo3DConversion"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v2

    goto/16 :goto_5

    .line 414
    .end local v2           #bitmapObj:Ljava/lang/Object;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_b
    const-class v16, Lcom/mediatek/common/geocoding/IGeoCodingQuery;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 415
    const/4 v5, 0x0

    .line 417
    .local v5, geoCodingQueryObj:Ljava/lang/Object;
    :try_start_3
    const-string v16, "com.mediatek.geocoding.GeoCodingQuery"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 418
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v3, :cond_c

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_c

    .line 419
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "getInstance"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 420
    const-string v16, "getInstance"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 421
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_c

    .line 422
    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v5

    .end local v5           #geoCodingQueryObj:Ljava/lang/Object;
    .end local v8           #method:Ljava/lang/reflect/Method;
    :cond_c
    move-object v10, v5

    .line 431
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_6
    goto/16 :goto_0

    .line 426
    .restart local v5       #geoCodingQueryObj:Ljava/lang/Object;
    :catch_3
    move-exception v4

    .line 427
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v16, "MediatekClassFactory"

    const-string v17, "createInstance:got exception for GeoCodingQuery"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v5

    goto :goto_6

    .line 431
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #geoCodingQueryObj:Ljava/lang/Object;
    :cond_d
    const-class v16, Lcom/mediatek/common/pluginmanager/IPluginManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_12

    .line 432
    const/4 v12, 0x0

    .line 434
    .local v12, pluginMgr:Ljava/lang/Object;
    :try_start_4
    const-string v16, "com.mediatek.pluginmanager.PluginManager"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 436
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v3, :cond_e

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_e

    .line 437
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "PluginManager args length: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "create"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 439
    const-string v16, "MediatekClassFactory"

    const-string v17, "IPluginManager.CREATE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 447
    const-string v16, "create"

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-class v19, [Landroid/content/pm/Signature;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 451
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_e

    .line 452
    const/16 v16, 0x0

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x3

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const/16 v19, 0x0

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v12           #pluginMgr:Ljava/lang/Object;
    :cond_e
    :goto_7
    move-object v10, v12

    .line 502
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_8
    goto/16 :goto_0

    .line 455
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v12       #pluginMgr:Ljava/lang/Object;
    :cond_f
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 456
    const-string v16, "create"

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-class v19, [Landroid/content/pm/Signature;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 460
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_e

    .line 461
    const/16 v16, 0x0

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x3

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const/16 v19, 0x4

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_7

    .line 465
    .end local v8           #method:Ljava/lang/reflect/Method;
    :cond_10
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "createPluginObject"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 467
    const-string v16, "MediatekClassFactory"

    const-string v17, "IPluginManager.CREATE_PLUGIN_OBJECT"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 477
    const-string v16, "createPluginObject"

    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-class v19, [Landroid/content/pm/Signature;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 481
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_e

    .line 482
    const/16 v16, 0x0

    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x3

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const/16 v19, 0x4

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const/16 v19, 0x0

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_7

    .line 485
    .end local v8           #method:Ljava/lang/reflect/Method;
    :cond_11
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 486
    const-string v16, "createPluginObject"

    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-class v19, [Landroid/content/pm/Signature;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 490
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_e

    .line 491
    const/16 v16, 0x0

    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x3

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const/16 v19, 0x4

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const/16 v19, 0x5

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v12

    goto/16 :goto_7

    .line 497
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #method:Ljava/lang/reflect/Method;
    :catch_4
    move-exception v4

    .line 498
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v16, "MediatekClassFactory"

    const-string v17, "createInstance:got exception for PluginManager"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v12

    goto/16 :goto_8

    .line 502
    .end local v4           #e:Ljava/lang/Exception;
    .end local v12           #pluginMgr:Ljava/lang/Object;
    :cond_12
    const-class v16, Lcom/mediatek/common/webkit/IPicker;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_14

    .line 503
    const/4 v11, 0x0

    .line 505
    .local v11, pickerObj:Ljava/lang/Object;
    :try_start_5
    const-string v16, "com.mediatek.webkit.PickerManager"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 506
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IPicker init args length : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", args[0] : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v18, p1, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", args[1] : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v18, p1, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    if-eqz v3, :cond_13

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_13

    .line 509
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "getInstance"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 510
    const-string v16, "getInstance"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 511
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_13

    .line 512
    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 513
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IPicker init invoke : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v11           #pickerObj:Ljava/lang/Object;
    :cond_13
    move-object v10, v11

    .line 522
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_9
    goto/16 :goto_0

    .line 517
    :catch_5
    move-exception v4

    .line 518
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v16, "MediatekClassFactory"

    const-string v17, "createInstance:got exception for Webkit Picker"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v11

    goto :goto_9

    .line 522
    .end local v4           #e:Ljava/lang/Exception;
    :cond_14
    const-class v16, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_19

    .line 523
    const/4 v13, 0x0

    .line 525
    .local v13, policyObj:Ljava/lang/Object;
    :try_start_6
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ISwitch3GPolicy init args length : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", args[0] : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v18, p1, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_27

    .line 528
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "OP"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 529
    const-string v16, "com.mediatek.telephony.Switch3GPolicyOp"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 530
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v3, :cond_15

    .line 531
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v13

    .line 532
    .end local v13           #policyObj:Ljava/lang/Object;
    :cond_15
    :try_start_7
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ISwitch3GPolicy newInstance (Op) : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    move-object v10, v13

    .line 540
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #obj:Ljava/lang/Object;
    :goto_a
    if-nez v10, :cond_16

    .line 541
    :try_start_8
    const-string v16, "MediatekClassFactory"

    const-string v17, "ISwitch3GPolicy newInstance (ERROR) : create request not mapped to any implementation."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    .line 548
    .restart local v10       #obj:Ljava/lang/Object;
    :cond_16
    :goto_b
    goto/16 :goto_0

    .line 533
    .restart local v13       #policyObj:Ljava/lang/Object;
    :cond_17
    const/16 v16, 0x0

    :try_start_9
    aget-object v16, p1, v16

    const-string v17, "DEFAULT"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_27

    .line 534
    const-string v16, "com.mediatek.telephony.Switch3GPolicyDefault"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 535
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v3, :cond_18

    .line 536
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v13

    .line 537
    .end local v13           #policyObj:Ljava/lang/Object;
    :cond_18
    :try_start_a
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ISwitch3GPolicy newInstance (Default) : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    move-object v10, v13

    goto :goto_a

    .line 543
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v13       #policyObj:Ljava/lang/Object;
    :catch_6
    move-exception v4

    move-object v10, v13

    .line 544
    .end local v10           #obj:Ljava/lang/Object;
    .end local v13           #policyObj:Ljava/lang/Object;
    .restart local v4       #e:Ljava/lang/Exception;
    :goto_c
    const-string v16, "MediatekClassFactory"

    const-string v17, "createInstance:got exception for Switch 3G Policy"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 548
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v10       #obj:Ljava/lang/Object;
    :cond_19
    const-class v16, Lcom/mediatek/common/storage/IStorageManagerEx;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_22

    .line 549
    const/4 v14, 0x0

    .line 551
    .local v14, storageManagerExObj:Ljava/lang/Object;
    :try_start_b
    const-string v16, "com.mediatek.storage.StorageManagerEx"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 552
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v3, :cond_1a

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_1a

    .line 553
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "getDefaultPath"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 554
    const-string v16, "getDefaultPath"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 555
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_1a

    .line 556
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v14           #storageManagerExObj:Ljava/lang/Object;
    :cond_1a
    :goto_d
    move-object v10, v14

    .line 595
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_e
    goto/16 :goto_0

    .line 558
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v14       #storageManagerExObj:Ljava/lang/Object;
    :cond_1b
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "setDefaultPath"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 559
    const-string v16, "setDefaultPath"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 560
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_1c

    .line 561
    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 567
    .end local v14           #storageManagerExObj:Ljava/lang/Object;
    :cond_1c
    const/4 v10, 0x0

    .line 634
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v10           #obj:Ljava/lang/Object;
    :cond_1d
    return-object v10

    .line 568
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v10       #obj:Ljava/lang/Object;
    .restart local v14       #storageManagerExObj:Ljava/lang/Object;
    :cond_1e
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "getExternalCacheDir"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 569
    const-string v16, "getExternalCacheDir"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 570
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_1a

    .line 571
    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, p1, v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_d

    .line 573
    .end local v8           #method:Ljava/lang/reflect/Method;
    :cond_1f
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "getExternalStoragePath"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_20

    .line 574
    const-string v16, "getExternalStoragePath"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 575
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_1a

    .line 576
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_d

    .line 578
    .end local v8           #method:Ljava/lang/reflect/Method;
    :cond_20
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "getInternalStoragePath"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_21

    .line 579
    const-string v16, "getInternalStoragePath"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 580
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_1a

    .line 581
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_d

    .line 583
    .end local v8           #method:Ljava/lang/reflect/Method;
    :cond_21
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const-string v17, "getSdSwapState"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 584
    const-string v16, "getSdSwapState"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 585
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_1a

    .line 586
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    move-result-object v14

    goto/16 :goto_d

    .line 590
    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #method:Ljava/lang/reflect/Method;
    :catch_7
    move-exception v4

    .line 591
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v16, "MediatekClassFactory"

    const-string v17, "createInstance:got exception for StorageManagerEx"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v14

    goto/16 :goto_e

    .line 595
    .end local v4           #e:Ljava/lang/Exception;
    .end local v14           #storageManagerExObj:Ljava/lang/Object;
    :cond_22
    const-class v16, Lcom/mediatek/common/telephony/IWorldPhone;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_26

    .line 596
    const/4 v15, 0x0

    .line 598
    .local v15, worldPhonePolicyObj:Ljava/lang/Object;
    :try_start_c
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IWorldPhone init args length : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", args[0] : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v18, p1, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_23

    .line 601
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_25

    .line 602
    const-string v16, "com.mediatek.telephony.WorldPhoneOm"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    move-result-object v15

    .line 603
    :try_start_d
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IWorldPhone newInstance (OM) : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 609
    .end local v15           #worldPhonePolicyObj:Ljava/lang/Object;
    :cond_23
    :goto_f
    if-nez v15, :cond_24

    .line 610
    :try_start_e
    const-string v16, "MediatekClassFactory"

    const-string v17, "IWorldPhone newInstance (ERROR) : create request not mapped to any implementation."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    :cond_24
    move-object v10, v15

    .line 617
    :goto_10
    goto/16 :goto_0

    .line 604
    .restart local v15       #worldPhonePolicyObj:Ljava/lang/Object;
    :cond_25
    const/16 v16, 0x0

    :try_start_f
    aget-object v16, p1, v16

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_23

    .line 605
    const-string v16, "com.mediatek.telephony.WorldPhoneOp01"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    move-result-object v15

    .line 606
    :try_start_10
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IWorldPhone newInstance (OP01) : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_f

    .line 612
    :catch_8
    move-exception v4

    move-object v10, v15

    .line 613
    .end local v10           #obj:Ljava/lang/Object;
    .end local v15           #worldPhonePolicyObj:Ljava/lang/Object;
    .restart local v4       #e:Ljava/lang/Exception;
    :goto_11
    const-string v16, "MediatekClassFactory"

    const-string v17, "createInstance:got exception IWorldPhone"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    .line 618
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v10       #obj:Ljava/lang/Object;
    :cond_26
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unsupported class: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v16, "MediatekClassFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "createInstance(): End = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 612
    .restart local v15       #worldPhonePolicyObj:Ljava/lang/Object;
    :catch_9
    move-exception v4

    move-object v10, v15

    goto :goto_11

    .end local v15           #worldPhonePolicyObj:Ljava/lang/Object;
    :catch_a
    move-exception v4

    move-object v10, v15

    goto :goto_11

    .line 543
    .restart local v3       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_b
    move-exception v4

    move-object v10, v13

    goto/16 :goto_c

    .end local v3           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #obj:Ljava/lang/Object;
    :catch_c
    move-exception v4

    goto/16 :goto_c

    .restart local v10       #obj:Ljava/lang/Object;
    .restart local v13       #policyObj:Ljava/lang/Object;
    :cond_27
    move-object v10, v13

    goto/16 :goto_a
.end method

.method public static getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "className"
    .parameter "args"

    .prologue
    const/4 v11, 0x0

    .line 640
    if-nez p0, :cond_0

    .line 641
    const-string v10, "MediatekClassFactory"

    const-string v12, "Interface full class name is null"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 693
    :goto_0
    return-object v10

    .line 646
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 648
    .local v1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v10, p1

    if-nez v10, :cond_1

    .line 650
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 655
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 656
    .local v3, ctorList:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v10, v3

    if-ge v5, v10, :cond_7

    .line 657
    const/4 v7, 0x1

    .line 658
    .local v7, matched:Z
    aget-object v2, v3, v5

    .line 659
    .local v2, ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 660
    .local v9, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v10, v9

    array-length v12, p1

    if-eq v10, v12, :cond_3

    .line 656
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 664
    :cond_3
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    array-length v10, v9

    if-ge v6, v10, :cond_5

    .line 665
    aget-object v8, v9, v6

    .line 666
    .local v8, paramType:Ljava/lang/Class;
    aget-object v10, p1, v6

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 668
    .local v0, actualType:Ljava/lang/Class;
    const-string v10, "MediatekClassFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getInstanceHelper: paramType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", actualType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 674
    :cond_4
    const-string v10, "MediatekClassFactory"

    const-string v12, "Parameter not matched, skip"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v7, 0x0

    .line 684
    .end local v0           #actualType:Ljava/lang/Class;
    .end local v8           #paramType:Ljava/lang/Class;
    :cond_5
    if-eqz v7, :cond_2

    .line 685
    const-string v10, "MediatekClassFactory"

    const-string v12, "Constructor matched"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 679
    .restart local v0       #actualType:Ljava/lang/Class;
    .restart local v8       #paramType:Ljava/lang/Class;
    :cond_6
    const-string v10, "MediatekClassFactory"

    const-string v12, "Parameter matched"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 689
    .end local v0           #actualType:Ljava/lang/Class;
    .end local v1           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #ctorList:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #matched:Z
    .end local v8           #paramType:Ljava/lang/Class;
    .end local v9           #paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 690
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "MediatekClassFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #e:Ljava/lang/Exception;
    :cond_7
    move-object v10, v11

    .line 693
    goto/16 :goto_0
.end method

.method private static getOpIfClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 700
    .local v3, ifClassName:Ljava/lang/String;
    sget-object v4, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 705
    :try_start_0
    const-string v4, "com.mediatek.op.MediatekOPClassFactory"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 706
    .local v1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getOpIfClassName"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 717
    .end local v1           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    sget-object v4, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    .line 719
    :try_start_1
    sget-object v4, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 729
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 731
    sget-object v4, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ifClassName:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 734
    .restart local v3       #ifClassName:Ljava/lang/String;
    :cond_2
    return-object v3

    .line 708
    :catch_0
    move-exception v2

    .line 709
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "MediatekClassFactory"

    const-string v5, "OP not exist!, Get obj from default class"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 711
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "MediatekClassFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not Such Method Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 720
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 721
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v4, "MediatekClassFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccessException Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 723
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 724
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "MediatekClassFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InvocationTargetException Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
