.class public Lcom/mediatek/mms/ext/MmsConfigImpl;
.super Ljava/lang/Object;
.source "MmsConfigImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsConfig;


# static fields
.field private static final DEFAULTRETRYSCHEME:[I = null

.field private static final TAG:Ljava/lang/String; = "Mms/MmsConfigImpl"

.field private static sHttpSocketTimeout:I

.field private static sMaxTextLimit:I

.field private static sMmsRecipientLimit:I

.field private static sSmsToMmsTextThreshold:I

.field private static sSmsToMmsTextThresholdForCT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x4

    sput v0, Lcom/mediatek/mms/ext/MmsConfigImpl;->sSmsToMmsTextThreshold:I

    .line 56
    const/16 v0, 0x800

    sput v0, Lcom/mediatek/mms/ext/MmsConfigImpl;->sMaxTextLimit:I

    .line 57
    const/16 v0, 0x14

    sput v0, Lcom/mediatek/mms/ext/MmsConfigImpl;->sMmsRecipientLimit:I

    .line 59
    const v0, 0xea60

    sput v0, Lcom/mediatek/mms/ext/MmsConfigImpl;->sHttpSocketTimeout:I

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/mms/ext/MmsConfigImpl;->DEFAULTRETRYSCHEME:[I

    .line 66
    const/4 v0, 0x7

    sput v0, Lcom/mediatek/mms/ext/MmsConfigImpl;->sSmsToMmsTextThresholdForCT:I

    return-void

    .line 62
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0xc0t 0x27t 0x9t 0x0t
        0x40t 0x77t 0x1bt 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendExtraQueryParameterForConversationDeleteAll(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"

    .prologue
    .line 239
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "appendExtraQueryParameterForConversationDeleteAll; null "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-object p1
.end method

.method public getCapturePictureIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 176
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "get capture picture intent: null"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpSocketTimeout()I
    .locals 3

    .prologue
    .line 116
    const-string v0, "Mms/MmsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get default socket timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/mms/ext/MmsConfigImpl;->sHttpSocketTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget v0, Lcom/mediatek/mms/ext/MmsConfigImpl;->sHttpSocketTimeout:I

    return v0
.end method

.method public getMaxTextLimit()I
    .locals 3

    .prologue
    .line 85
    const-string v0, "Mms/MmsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get MaxTextLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/mms/ext/MmsConfigImpl;->sMaxTextLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget v0, Lcom/mediatek/mms/ext/MmsConfigImpl;->sMaxTextLimit:I

    return v0
.end method

.method public getMmsRecipientLimit()I
    .locals 3

    .prologue
    .line 98
    const-string v0, "Mms/MmsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecipientLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/mms/ext/MmsConfigImpl;->sMmsRecipientLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget v0, Lcom/mediatek/mms/ext/MmsConfigImpl;->sMmsRecipientLimit:I

    return v0
.end method

.method public getMmsRetryPromptIndex()I
    .locals 2

    .prologue
    .line 197
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "getMmsRetryPromptIndex"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public getMmsRetryScheme()[I
    .locals 2

    .prologue
    .line 202
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "getMmsRetryScheme"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/mediatek/mms/ext/MmsConfigImpl;->DEFAULTRETRYSCHEME:[I

    return-object v0
.end method

.method public getSmsToMmsTextThreshold()I
    .locals 3

    .prologue
    .line 69
    const-string v0, "Mms/MmsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get SmsToMmsTextThreshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/mms/ext/MmsConfigImpl;->sSmsToMmsTextThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "Mms/MmsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get SmsToMmsTextThreshold For CT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/mms/ext/MmsConfigImpl;->sSmsToMmsTextThresholdForCT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget v0, Lcom/mediatek/mms/ext/MmsConfigImpl;->sSmsToMmsTextThresholdForCT:I

    return v0
.end method

.method public getUAProf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "defaultUAP"

    .prologue
    .line 111
    const-string v0, "Mms/MmsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set default UAProf is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object p1
.end method

.method public getUndeliveryMmsQueryUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "defaultUri"

    .prologue
    .line 286
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "appendExtraQueryParameterForUndeliveryMms"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-object p1
.end method

.method public isAllowDRWhenRoaming(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public isAllowRetryForPermanentFail()Z
    .locals 2

    .prologue
    .line 212
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "setSoSndTimeout"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableAdjustFontSize()Z
    .locals 2

    .prologue
    .line 186
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Enable adjust font size"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public isEnableDialogForUrl()Z
    .locals 2

    .prologue
    .line 156
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Disable ForwardWithSender "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableFolderMode()Z
    .locals 2

    .prologue
    .line 146
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Disable FolderMode "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableForwardWithSender()Z
    .locals 2

    .prologue
    .line 151
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Disable ForwardWithSender "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableMultiSmsSaveLocation()Z
    .locals 2

    .prologue
    .line 136
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Disable MultiSmsSaveLocation "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public isEnableReportAllowed()Z
    .locals 2

    .prologue
    .line 131
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Disable ReportAllowed "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableSIMLongSmsConcatenate()Z
    .locals 2

    .prologue
    .line 171
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Enable concatenate long sms in sim card status"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public isEnableSIMSmsForSetting()Z
    .locals 2

    .prologue
    .line 166
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Enable display storage status "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public isEnableSmsEncodingType()Z
    .locals 2

    .prologue
    .line 126
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Disable Sms Encoding type "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableSmsValidityPeriod()Z
    .locals 2

    .prologue
    .line 191
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Enable sms validity period"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableStorageFullToast()Z
    .locals 2

    .prologue
    .line 141
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Disable StorageFullToast "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableStorageStatusDisp()Z
    .locals 2

    .prologue
    .line 161
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Disable display storage status "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedExitComposerAfterForward()Z
    .locals 2

    .prologue
    .line 234
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "isNeedExitComposerAfterForward: true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public isRetainRetryIndexWhenInCall()Z
    .locals 2

    .prologue
    .line 217
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "isIncreaseRetryIndexWhenInCall: false"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public isSendExpiredResIfNotificationExpired()Z
    .locals 2

    .prologue
    .line 229
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "isSendExpiredResIfNotificationExpired: true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public isShowDraftIcon()Z
    .locals 2

    .prologue
    .line 223
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "isShowDraftIcon: true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public isShowUrlDialog()Z
    .locals 2

    .prologue
    .line 181
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "Enable show dialog when open browser: false"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportAsyncUpdateWallpaper()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportAutoSelectSimId()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportCBMessage(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportCTFeature()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportTabSetting()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportVCardPreview()Z
    .locals 2

    .prologue
    .line 268
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "isSupportVCardPreview()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public printMmsMemStat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "callerTag"

    .prologue
    .line 248
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "printMmsMemStat"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setExtendUrlSpan(Landroid/widget/TextView;)V
    .locals 2
    .parameter "textView"

    .prologue
    .line 254
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "setExtendUrlSpan"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public setHttpSocketTimeout(I)V
    .locals 3
    .parameter "socketTimeout"

    .prologue
    .line 121
    const-string v0, "Mms/MmsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set default socket timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sput p1, Lcom/mediatek/mms/ext/MmsConfigImpl;->sHttpSocketTimeout:I

    .line 123
    return-void
.end method

.method public setMaxTextLimit(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 90
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 91
    sput p1, Lcom/mediatek/mms/ext/MmsConfigImpl;->sMaxTextLimit:I

    .line 94
    :cond_0
    const-string v0, "Mms/MmsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set MaxTextLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/mms/ext/MmsConfigImpl;->sMaxTextLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setMmsRecipientLimit(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 103
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 104
    sput p1, Lcom/mediatek/mms/ext/MmsConfigImpl;->sMmsRecipientLimit:I

    .line 107
    :cond_0
    const-string v0, "Mms/MmsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set RecipientLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/mms/ext/MmsConfigImpl;->sMmsRecipientLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setSmsToMmsTextThreshold(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 78
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 79
    sput p1, Lcom/mediatek/mms/ext/MmsConfigImpl;->sSmsToMmsTextThreshold:I

    .line 81
    :cond_0
    const-string v0, "Mms/MmsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set SmsToMmsTextThreshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/mms/ext/MmsConfigImpl;->sSmsToMmsTextThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public setSoSndTimeout(Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 207
    const-string v0, "Mms/MmsConfigImpl"

    const-string v1, "setSoSndTimeout"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method
