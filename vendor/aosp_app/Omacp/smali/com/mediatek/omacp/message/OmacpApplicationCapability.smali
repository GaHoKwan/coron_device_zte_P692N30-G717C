.class public Lcom/mediatek/omacp/message/OmacpApplicationCapability;
.super Ljava/lang/Object;
.source "OmacpApplicationCapability.java"


# static fields
.field public static sBrowser:Z

.field public static sBrowserBookMark:Z

.field public static sBrowserBookMarkFolder:Z

.field public static sBrowserBookMarkName:Z

.field public static sBrowserHomePage:Z

.field public static sBrowserPassWord:Z

.field public static sBrowserToNapId:Z

.field public static sBrowserToProxy:Z

.field public static sBrowserUserName:Z

.field public static sDm:Z

.field public static sDmAddrType:Z

.field public static sDmAuthData:Z

.field public static sDmAuthLevel:Z

.field public static sDmAuthName:Z

.field public static sDmAuthSecret:Z

.field public static sDmAuthType:Z

.field public static sDmInit:Z

.field public static sDmPortNumber:Z

.field public static sDmProviderId:Z

.field public static sDmServerAddress:Z

.field public static sDmServerName:Z

.field public static sDmToNapid:Z

.field public static sDmToProxy:Z

.field public static sDs:Z

.field public static sDsAddressType:Z

.field public static sDsAuthData:Z

.field public static sDsAuthLevel:Z

.field public static sDsAuthName:Z

.field public static sDsAuthSecret:Z

.field public static sDsAuthType:Z

.field public static sDsClientDatabaseUrl:Z

.field public static sDsDatabaseAuthName:Z

.field public static sDsDatabaseAuthSecret:Z

.field public static sDsDatabaseAuthType:Z

.field public static sDsDatabaseContentType:Z

.field public static sDsDatabaseName:Z

.field public static sDsDatabaseUrl:Z

.field public static sDsPortNumber:Z

.field public static sDsProviderId:Z

.field public static sDsServerAddress:Z

.field public static sDsServerName:Z

.field public static sDsSyncType:Z

.field public static sDsToNapid:Z

.field public static sDsToProxy:Z

.field public static sEmail:Z

.field public static sEmailFrom:Z

.field public static sEmailInboundAddr:Z

.field public static sEmailInboundAddrType:Z

.field public static sEmailInboundAuthType:Z

.field public static sEmailInboundPassword:Z

.field public static sEmailInboundPortNumber:Z

.field public static sEmailInboundSecure:Z

.field public static sEmailInboundUserName:Z

.field public static sEmailOutboundAddr:Z

.field public static sEmailOutboundAddrType:Z

.field public static sEmailOutboundAuthType:Z

.field public static sEmailOutboundPassword:Z

.field public static sEmailOutboundPortNumber:Z

.field public static sEmailOutboundSecure:Z

.field public static sEmailOutboundUserName:Z

.field public static sEmailProviderId:Z

.field public static sEmailRtAddr:Z

.field public static sEmailSettingName:Z

.field public static sEmailToNapid:Z

.field public static sImps:Z

.field public static sImpsAddressType:Z

.field public static sImpsAuthLevel:Z

.field public static sImpsAuthName:Z

.field public static sImpsAuthSecret:Z

.field public static sImpsClientIdPrefix:Z

.field public static sImpsContentType:Z

.field public static sImpsProviderId:Z

.field public static sImpsServerAddress:Z

.field public static sImpsServerName:Z

.field public static sImpsServices:Z

.field public static sImpsToNapid:Z

.field public static sImpsToProxy:Z

.field public static sMms:Z

.field public static sMmsCm:Z

.field public static sMmsMa:Z

.field public static sMmsMmsc:Z

.field public static sMmsMmscName:Z

.field public static sMmsMs:Z

.field public static sMmsPcAddr:Z

.field public static sMmsRm:Z

.field public static sMmsToNapid:Z

.field public static sMmsToProxy:Z

.field public static sRtsp:Z

.field public static sRtspMaxBandwidth:Z

.field public static sRtspMaxUdpPort:Z

.field public static sRtspMinUdpPort:Z

.field public static sRtspName:Z

.field public static sRtspNetInfo:Z

.field public static sRtspProviderId:Z

.field public static sRtspToNapid:Z

.field public static sRtspToProxy:Z

.field public static sSupl:Z

.field public static sSuplAddrType:Z

.field public static sSuplProviderId:Z

.field public static sSuplServerAddr:Z

.field public static sSuplServerName:Z

.field public static sSuplToNapid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowser:Z

    .line 45
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserBookMarkFolder:Z

    .line 47
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserToProxy:Z

    .line 49
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserToNapId:Z

    .line 51
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserBookMarkName:Z

    .line 53
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserBookMark:Z

    .line 55
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserUserName:Z

    .line 57
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserPassWord:Z

    .line 59
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserHomePage:Z

    .line 62
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMms:Z

    .line 64
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsMmscName:Z

    .line 66
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsToProxy:Z

    .line 68
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsToNapid:Z

    .line 70
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsMmsc:Z

    .line 72
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsCm:Z

    .line 74
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsRm:Z

    .line 76
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsMs:Z

    .line 78
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsPcAddr:Z

    .line 80
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsMa:Z

    .line 83
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDm:Z

    .line 85
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmProviderId:Z

    .line 87
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmServerName:Z

    .line 89
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmToProxy:Z

    .line 91
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmToNapid:Z

    .line 93
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmServerAddress:Z

    .line 95
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAddrType:Z

    .line 97
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmPortNumber:Z

    .line 99
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthLevel:Z

    .line 101
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthType:Z

    .line 103
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthName:Z

    .line 105
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthSecret:Z

    .line 107
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthData:Z

    .line 109
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmInit:Z

    .line 112
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmail:Z

    .line 114
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailProviderId:Z

    .line 116
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailSettingName:Z

    .line 118
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailToNapid:Z

    .line 120
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundAddr:Z

    .line 122
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundAddrType:Z

    .line 124
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundPortNumber:Z

    .line 126
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundSecure:Z

    .line 128
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundAuthType:Z

    .line 130
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundUserName:Z

    .line 132
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundPassword:Z

    .line 134
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailFrom:Z

    .line 136
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailRtAddr:Z

    .line 138
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundAddr:Z

    .line 140
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundAddrType:Z

    .line 142
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundPortNumber:Z

    .line 144
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundSecure:Z

    .line 146
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundAuthType:Z

    .line 148
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundUserName:Z

    .line 150
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundPassword:Z

    .line 153
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtsp:Z

    .line 155
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspProviderId:Z

    .line 157
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspName:Z

    .line 159
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspToProxy:Z

    .line 161
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspToNapid:Z

    .line 163
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspMaxBandwidth:Z

    .line 165
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspNetInfo:Z

    .line 167
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspMinUdpPort:Z

    .line 169
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspMaxUdpPort:Z

    .line 172
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSupl:Z

    .line 174
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplProviderId:Z

    .line 176
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplServerName:Z

    .line 178
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplToNapid:Z

    .line 180
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplServerAddr:Z

    .line 182
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplAddrType:Z

    .line 185
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDs:Z

    .line 187
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsServerName:Z

    .line 189
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsToProxy:Z

    .line 191
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsToNapid:Z

    .line 193
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsProviderId:Z

    .line 195
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsServerAddress:Z

    .line 197
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAddressType:Z

    .line 199
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsPortNumber:Z

    .line 201
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthLevel:Z

    .line 203
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthType:Z

    .line 205
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthName:Z

    .line 207
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthSecret:Z

    .line 209
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthData:Z

    .line 211
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseContentType:Z

    .line 213
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseUrl:Z

    .line 215
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseName:Z

    .line 217
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseAuthType:Z

    .line 219
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseAuthName:Z

    .line 221
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseAuthSecret:Z

    .line 223
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsClientDatabaseUrl:Z

    .line 225
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsSyncType:Z

    .line 228
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImps:Z

    .line 230
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsProviderId:Z

    .line 232
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsServerName:Z

    .line 234
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsContentType:Z

    .line 236
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsServerAddress:Z

    .line 238
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsAddressType:Z

    .line 240
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsToProxy:Z

    .line 242
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsToNapid:Z

    .line 244
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsAuthLevel:Z

    .line 246
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsAuthName:Z

    .line 248
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsAuthSecret:Z

    .line 250
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsServices:Z

    .line 252
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsClientIdPrefix:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
