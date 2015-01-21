.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT_HTTP_KEY_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android-Mms/2.0"

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_IMAGE_HEIGHT:I = 0x1e0

.field private static final MAX_IMAGE_WIDTH:I = 0x280

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final RECIPIENTS_LIMIT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "MmsConfig"

.field private static mAliasEnabled:Z

.field private static mAliasRuleMaxChars:I

.field private static mAliasRuleMinChars:I

.field private static mAllowAttachAudio:Z

.field private static mCTDeviceStorageLow:Z

.field private static mDefaultMMSMessagesPerThread:I

.field private static mDefaultSMSMessagesPerThread:I

.field private static mDeviceStorageFull:Z

.field private static mEmailGateway:Ljava/lang/String;

.field private static mEnableGroupMms:Z

.field private static mEnableMMSDeliveryReports:Z

.field private static mEnableMMSReadReports:Z

.field private static mEnableMultipartSMS:Z

.field private static mEnableSMSDeliveryReports:Z

.field private static mEnableSlideDuration:Z

.field private static mHttpParams:Ljava/lang/String;

.field private static mHttpParamsLine1Key:Ljava/lang/String;

.field private static mMaxImageHeight:I

.field private static mMaxImageWidth:I

.field private static mMaxMessageCountPerThread:I

.field private static mMaxMessageSize:I

.field private static mMaxRestrictedImageHeight:I

.field private static mMaxRestrictedImageWidth:I

.field private static mMaxSizeScaleForPendingMmsAllowed:I

.field private static mMaxSubjectLength:I

.field private static mMaxTextLength:I

.field private static mMinMessageCountPerThread:I

.field private static mMinimumSlideElementDuration:I

.field private static mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

.field private static mMmsEnabled:I

.field private static mNotifyWapMMSC:Z

.field private static mReceiveMmsSizeLimitFor2G:I

.field private static mReceiveMmsSizeLimitForTD:I

.field private static mRecipientLimit:I

.field private static mSlAutoLanuchEnabled:Z

.field private static mSmsRecipientLimit:I

.field private static mTransIdEnabled:Z

.field private static mUaProfTagName:Ljava/lang/String;

.field private static mUaProfUrl:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;

.field private static mUserSetMmsSizeLimit:I

.field private static sAudioTempPath:Ljava/lang/String;

.field private static sCalendarTempPath:Ljava/lang/String;

.field private static sPicTempPath:Ljava/lang/String;

.field private static sSim1Id:J

.field private static sSim2Id:J

.field private static sSlot1RetryCounter:I

.field private static sSlot1SimExist:Z

.field private static sSlot2RetryCounter:I

.field private static sSlot2SimExist:Z

.field private static sVcardTempPath:Ljava/lang/String;

.field private static sVideoTempPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    .line 78
    sput v1, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    .line 79
    const v0, 0x4b000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    .line 80
    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 81
    const-string v0, "x-wap-profile"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    .line 82
    sput-object v3, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 83
    sput-object v3, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    .line 84
    sput-object v3, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    .line 85
    sput-object v3, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    .line 86
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    .line 87
    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    .line 88
    const v0, 0x7fffffff

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 89
    const/16 v0, 0x1f4

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    .line 90
    const/16 v0, 0x32

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    .line 91
    sput v4, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    .line 92
    const/16 v0, 0x1388

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    .line 93
    const/4 v0, 0x7

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    .line 94
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    .line 95
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    .line 105
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableMultipartSMS:Z

    .line 107
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    .line 108
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableMMSReadReports:Z

    .line 109
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableSMSDeliveryReports:Z

    .line 110
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableMMSDeliveryReports:Z

    .line 111
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    .line 116
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    .line 119
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    .line 120
    sput v4, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    .line 121
    const/16 v0, 0x30

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    .line 123
    const/16 v0, 0x28

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSubjectLength:I

    .line 131
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableGroupMms:Z

    .line 136
    const/16 v0, 0x12c

    sput v0, Lcom/android/mms/MmsConfig;->mUserSetMmsSizeLimit:I

    .line 138
    const/16 v0, 0xc8

    sput v0, Lcom/android/mms/MmsConfig;->mReceiveMmsSizeLimitFor2G:I

    .line 140
    const/16 v0, 0x190

    sput v0, Lcom/android/mms/MmsConfig;->mReceiveMmsSizeLimitForTD:I

    .line 143
    const/16 v0, 0x4b0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxRestrictedImageHeight:I

    .line 144
    const/16 v0, 0x640

    sput v0, Lcom/android/mms/MmsConfig;->mMaxRestrictedImageWidth:I

    .line 145
    const/16 v0, 0x64

    sput v0, Lcom/android/mms/MmsConfig;->mSmsRecipientLimit:I

    .line 147
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mDeviceStorageFull:Z

    .line 149
    sput-object v3, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    .line 152
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mCTDeviceStorageLow:Z

    .line 514
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSlAutoLanuchEnabled:Z

    .line 706
    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sPicTempPath:Ljava/lang/String;

    .line 707
    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sAudioTempPath:Ljava/lang/String;

    .line 708
    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sVideoTempPath:Ljava/lang/String;

    .line 709
    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sVcardTempPath:Ljava/lang/String;

    .line 710
    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sCalendarTempPath:Ljava/lang/String;

    .line 810
    sput-boolean v1, Lcom/android/mms/MmsConfig;->sSlot1SimExist:Z

    .line 811
    sput-boolean v1, Lcom/android/mms/MmsConfig;->sSlot2SimExist:Z

    .line 812
    sput v2, Lcom/android/mms/MmsConfig;->sSlot1RetryCounter:I

    .line 813
    sput v2, Lcom/android/mms/MmsConfig;->sSlot2RetryCounter:I

    .line 815
    sput-wide v5, Lcom/android/mms/MmsConfig;->sSim1Id:J

    .line 816
    sput-wide v5, Lcom/android/mms/MmsConfig;->sSim2Id:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendExtraQueryParameterForConversationDeleteAll(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"

    .prologue
    .line 917
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0, p0}, Lcom/mediatek/mms/ext/IMmsConfig;->appendExtraQueryParameterForConversationDeleteAll(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 345
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 349
    :cond_1
    if-eq v0, v2, :cond_2

    .line 350
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 354
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_3
    return-void
.end method

.method public static getAdjustFontSizeEnabled()Z
    .locals 1

    .prologue
    .line 698
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isEnableAdjustFontSize()Z

    move-result v0

    return v0
.end method

.method public static getAliasMaxChars()I
    .locals 1

    .prologue
    .line 325
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .locals 1

    .prologue
    .line 321
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    return v0
.end method

.method public static getAllowAttachAudio()Z
    .locals 1

    .prologue
    .line 329
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    return v0
.end method

.method public static getAudioTempPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 763
    sget-object v1, Lcom/android/mms/MmsConfig;->sAudioTempPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/ipmsg/util/IpMessageUtils;->IP_MESSAGE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsConfig;->sAudioTempPath:Ljava/lang/String;

    .line 765
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/mms/MmsConfig;->sAudioTempPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 766
    .local v0, audioPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 767
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 770
    .end local v0           #audioPath:Ljava/io/File;
    :cond_0
    sget-object v1, Lcom/android/mms/MmsConfig;->sAudioTempPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getCTDeviceStorageLowStatus()Z
    .locals 1

    .prologue
    .line 956
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mCTDeviceStorageLow:Z

    return v0
.end method

.method public static getCapturePictureIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 685
    sget-object v1, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v1}, Lcom/mediatek/mms/ext/IMmsConfig;->getCapturePictureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 686
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 687
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "output"

    sget-object v2, Lcom/android/mms/TempFileProvider;->SCRAP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 690
    :cond_0
    return-object v0
.end method

.method public static getDefaultMMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 269
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    return v0
.end method

.method public static getDefaultSMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 265
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    return v0
.end method

.method public static getDeliveryReportAllowed()Z
    .locals 1

    .prologue
    .line 637
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isEnableReportAllowed()Z

    move-result v0

    return v0
.end method

.method public static getDeviceStorageFullStatus()Z
    .locals 1

    .prologue
    .line 524
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mDeviceStorageFull:Z

    return v0
.end method

.method public static getDialogForUrlEnabled()Z
    .locals 1

    .prologue
    .line 662
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isEnableDialogForUrl()Z

    move-result v0

    return v0
.end method

.method public static getEmailGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    return-object v0
.end method

.method public static getFolderModeEnabled()Z
    .locals 1

    .prologue
    .line 652
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isEnableFolderMode()Z

    move-result v0

    return v0
.end method

.method public static getForwardWithSenderEnabled()Z
    .locals 1

    .prologue
    .line 657
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isEnableForwardWithSender()Z

    move-result v0

    return v0
.end method

.method public static getGroupMmsEnabled()Z
    .locals 1

    .prologue
    .line 338
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableGroupMms:Z

    return v0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParamsLine1Key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->getHttpSocketTimeout()I

    move-result v0

    return v0
.end method

.method public static getInitQuickText()Z
    .locals 4

    .prologue
    .line 566
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 567
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "InitQuickText"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 568
    .local v0, isFristInit:Z
    return v0
.end method

.method public static getIpMessagServiceId(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 807
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/mms/ipmessage/ServiceManager;->getIpMessageServiceId()I

    move-result v0

    return v0
.end method

.method public static getMMSDeliveryReportsEnabled()Z
    .locals 1

    .prologue
    .line 305
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSDeliveryReports:Z

    return v0
.end method

.method public static getMMSReadReportsEnabled()Z
    .locals 1

    .prologue
    .line 297
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSReadReports:Z

    return v0
.end method

.method public static getMaxImageHeight()I
    .locals 1

    .prologue
    .line 248
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    return v0
.end method

.method public static getMaxImageWidth()I
    .locals 1

    .prologue
    .line 252
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    return v0
.end method

.method public static getMaxMessageCountPerThread()I
    .locals 1

    .prologue
    .line 277
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 1

    .prologue
    .line 199
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    return v0
.end method

.method public static getMaxRestrictedImageHeight()I
    .locals 1

    .prologue
    .line 606
    sget v0, Lcom/android/mms/MmsConfig;->mMaxRestrictedImageHeight:I

    return v0
.end method

.method public static getMaxRestrictedImageWidth()I
    .locals 1

    .prologue
    .line 610
    sget v0, Lcom/android/mms/MmsConfig;->mMaxRestrictedImageWidth:I

    return v0
.end method

.method public static getMaxSizeScaleForPendingMmsAllowed()I
    .locals 1

    .prologue
    .line 313
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    return v0
.end method

.method public static getMaxSubjectLength()I
    .locals 1

    .prologue
    .line 333
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSubjectLength:I

    return v0
.end method

.method public static getMaxTextLimit()I
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->getMaxTextLimit()I

    move-result v0

    return v0
.end method

.method public static getMinMessageCountPerThread()I
    .locals 1

    .prologue
    .line 273
    sget v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    return v0
.end method

.method public static getMinimumSlideElementDuration()I
    .locals 1

    .prologue
    .line 285
    sget v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    return v0
.end method

.method public static getMmsDirMode()Z
    .locals 4

    .prologue
    .line 536
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 537
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "CmccMmsUiMode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 538
    .local v0, dirMode:Z
    return v0
.end method

.method public static getMmsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 192
    sget v1, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMmsRecipientLimit()I
    .locals 1

    .prologue
    .line 615
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->getMmsRecipientLimit()I

    move-result v0

    return v0
.end method

.method public static getMmsRetryPromptIndex()I
    .locals 1

    .prologue
    .line 883
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->getMmsRetryPromptIndex()I

    move-result v0

    return v0
.end method

.method public static getMmsRetryScheme()[I
    .locals 1

    .prologue
    .line 887
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->getMmsRetryScheme()[I

    move-result-object v0

    return-object v0
.end method

.method public static getMultipartSmsEnabled()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMultipartSMS:Z

    return v0
.end method

.method public static getNotifyWapMMSC()Z
    .locals 1

    .prologue
    .line 309
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    return v0
.end method

.method public static getPicTempPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 752
    sget-object v1, Lcom/android/mms/MmsConfig;->sPicTempPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/ipmsg/util/IpMessageUtils;->IP_MESSAGE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsConfig;->sPicTempPath:Ljava/lang/String;

    .line 754
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/mms/MmsConfig;->sPicTempPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    .local v0, picturePath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 759
    .end local v0           #picturePath:Ljava/io/File;
    :cond_0
    sget-object v1, Lcom/android/mms/MmsConfig;->sPicTempPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getPluginMenuIDBase()I
    .locals 1

    .prologue
    .line 681
    const/16 v0, 0x100

    return v0
.end method

.method public static getPreQuickText()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 583
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v5, "PreQuickTextNum"

    const/16 v6, 0x9

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 584
    .local v1, length:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v4, strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreQuickText"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, string:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    .end local v3           #string:Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public static getReceiveMmsLimitFor2G()I
    .locals 1

    .prologue
    .line 623
    sget v0, Lcom/android/mms/MmsConfig;->mReceiveMmsSizeLimitFor2G:I

    return v0
.end method

.method public static getReceiveMmsLimitForTD()I
    .locals 1

    .prologue
    .line 627
    sget v0, Lcom/android/mms/MmsConfig;->mReceiveMmsSizeLimitForTD:I

    return v0
.end method

.method public static getRecipientLimit()I
    .locals 1

    .prologue
    .line 256
    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    return v0
.end method

.method public static getSIMLongSmsConcatenateEnabled()Z
    .locals 1

    .prologue
    .line 677
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isEnableSIMLongSmsConcatenate()Z

    move-result v0

    return v0
.end method

.method public static getSIMSmsAtSettingEnabled()Z
    .locals 1

    .prologue
    .line 672
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isEnableSIMSmsForSetting()Z

    move-result v0

    return v0
.end method

.method public static getSMSDeliveryReportsEnabled()Z
    .locals 1

    .prologue
    .line 301
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSMSDeliveryReports:Z

    return v0
.end method

.method public static getShowStorageStatusEnabled()Z
    .locals 1

    .prologue
    .line 667
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isEnableStorageStatusDisp()Z

    move-result v0

    return v0
.end method

.method public static getSimCardInfo()I
    .locals 4

    .prologue
    .line 551
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 552
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "CmccSimCardInfo"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 553
    .local v0, siminfo:I
    return v0
.end method

.method public static getSlAutoLanuchEnabled()Z
    .locals 1

    .prologue
    .line 516
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSlAutoLanuchEnabled:Z

    return v0
.end method

.method public static getSlideDurationEnabled()Z
    .locals 1

    .prologue
    .line 293
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    return v0
.end method

.method public static getSmsEncodingTypeEnabled()Z
    .locals 1

    .prologue
    .line 632
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isEnableSmsEncodingType()Z

    move-result v0

    return v0
.end method

.method public static getSmsMultiSaveLocationEnabled()Z
    .locals 1

    .prologue
    .line 642
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isEnableMultiSmsSaveLocation()Z

    move-result v0

    return v0
.end method

.method public static getSmsRecipientLimit()I
    .locals 1

    .prologue
    .line 619
    sget v0, Lcom/android/mms/MmsConfig;->mSmsRecipientLimit:I

    return v0
.end method

.method public static getSmsToMmsTextThreshold()I
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->getSmsToMmsTextThreshold()I

    move-result v0

    return v0
.end method

.method public static getSmsValidityPeriodEnabled()Z
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isEnableSmsValidityPeriod()Z

    move-result v0

    return v0
.end method

.method public static getStorageFullToastEnabled()Z
    .locals 1

    .prologue
    .line 647
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isEnableStorageFullToast()Z

    move-result v0

    return v0
.end method

.method public static getTransIdEnabled()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    return v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUaProfUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    const-string v1, "mms"

    const-string v2, "UAProfileURL"

    sget-object v3, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/mediatek/encapsulation/com/mediatek/custom/EncapsulatedCustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public static getUndeliveryMmsQueryUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "defaultUri"

    .prologue
    .line 980
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0, p0}, Lcom/mediatek/mms/ext/IMmsConfig;->getUndeliveryMmsQueryUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 213
    const-string v1, "mms"

    const-string v2, "UserAgent"

    sget-object v3, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/mediatek/encapsulation/com/mediatek/custom/EncapsulatedCustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public static getUserSetMmsSizeLimit(Z)I
    .locals 1
    .parameter "isBytes"

    .prologue
    .line 594
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 595
    sget v0, Lcom/android/mms/MmsConfig;->mUserSetMmsSizeLimit:I

    mul-int/lit16 v0, v0, 0x400

    .line 597
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/mms/MmsConfig;->mUserSetMmsSizeLimit:I

    goto :goto_0
.end method

.method public static getVcalendarTempPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 796
    sget-object v1, Lcom/android/mms/MmsConfig;->sCalendarTempPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/ipmsg/util/IpMessageUtils;->IP_MESSAGE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "calendar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsConfig;->sCalendarTempPath:Ljava/lang/String;

    .line 798
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/mms/MmsConfig;->sCalendarTempPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 799
    .local v0, calendarPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 803
    .end local v0           #calendarPath:Ljava/io/File;
    :cond_0
    sget-object v1, Lcom/android/mms/MmsConfig;->sCalendarTempPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getVcardTempPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 785
    sget-object v1, Lcom/android/mms/MmsConfig;->sVcardTempPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/ipmsg/util/IpMessageUtils;->IP_MESSAGE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vcard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsConfig;->sVcardTempPath:Ljava/lang/String;

    .line 787
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/mms/MmsConfig;->sVcardTempPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    .local v0, vcardPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 789
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 792
    .end local v0           #vcardPath:Ljava/io/File;
    :cond_0
    sget-object v1, Lcom/android/mms/MmsConfig;->sVcardTempPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getVideoTempPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 774
    sget-object v1, Lcom/android/mms/MmsConfig;->sVideoTempPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/ipmsg/util/IpMessageUtils;->IP_MESSAGE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsConfig;->sVideoTempPath:Ljava/lang/String;

    .line 776
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/mms/MmsConfig;->sVideoTempPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 777
    .local v0, videoPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 778
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 781
    .end local v0           #videoPath:Ljava/io/File;
    :cond_0
    sget-object v1, Lcom/android/mms/MmsConfig;->sVideoTempPath:Ljava/lang/String;

    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 169
    const-string v0, "MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnc/mcc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->initPlugin(Landroid/content/Context;)V

    .line 175
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadMmsSettings(Landroid/content/Context;)V

    .line 178
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->isActualPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->initializeIpMessageFilePath(Landroid/content/Context;)V

    .line 184
    :cond_0
    return-void
.end method

.method private static initPlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 156
    :try_start_0
    const-class v1, Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsConfig;

    sput-object v1, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    .line 157
    const-string v1, "MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsConfigPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsConfigImpl;

    invoke-direct {v1}, Lcom/mediatek/mms/ext/MmsConfigImpl;-><init>()V

    sput-object v1, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    .line 160
    const-string v1, "MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsConfigPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static initializeIpMessageFilePath(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 712
    invoke-static {}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardStatus()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 713
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ipmsg/util/IpMessageUtils;->IP_MESSAGE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "picture"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/MmsConfig;->sPicTempPath:Ljava/lang/String;

    .line 714
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/android/mms/MmsConfig;->sPicTempPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 715
    .local v4, picturePath:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 716
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 719
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ipmsg/util/IpMessageUtils;->IP_MESSAGE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/MmsConfig;->sAudioTempPath:Ljava/lang/String;

    .line 720
    new-instance v0, Ljava/io/File;

    sget-object v7, Lcom/android/mms/MmsConfig;->sAudioTempPath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 721
    .local v0, audioPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 722
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 725
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ipmsg/util/IpMessageUtils;->IP_MESSAGE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/MmsConfig;->sVideoTempPath:Ljava/lang/String;

    .line 726
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/android/mms/MmsConfig;->sVideoTempPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 727
    .local v6, videoPath:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 728
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 731
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ipmsg/util/IpMessageUtils;->IP_MESSAGE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "vcard"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/MmsConfig;->sVcardTempPath:Ljava/lang/String;

    .line 732
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/android/mms/MmsConfig;->sVcardTempPath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 733
    .local v5, vcardPath:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 734
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 737
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ipmsg/util/IpMessageUtils;->IP_MESSAGE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "calendar"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/MmsConfig;->sCalendarTempPath:Ljava/lang/String;

    .line 738
    new-instance v2, Ljava/io/File;

    sget-object v7, Lcom/android/mms/MmsConfig;->sCalendarTempPath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    .local v2, calendarPath:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 740
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 743
    :cond_4
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, cachePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 746
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 749
    .end local v0           #audioPath:Ljava/io/File;
    .end local v1           #cachePath:Ljava/lang/String;
    .end local v2           #calendarPath:Ljava/io/File;
    .end local v3           #f:Ljava/io/File;
    .end local v4           #picturePath:Ljava/io/File;
    .end local v5           #vcardPath:Ljava/io/File;
    .end local v6           #videoPath:Ljava/io/File;
    :cond_5
    return-void
.end method

.method public static isActivated(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 840
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/ServiceManager;->serviceIsReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v0

    .line 843
    :cond_1
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadSimInfo(Landroid/content/Context;)V

    .line 845
    sget-boolean v1, Lcom/android/mms/MmsConfig;->sSlot1SimExist:Z

    if-nez v1, :cond_3

    :goto_1
    sget-boolean v1, Lcom/android/mms/MmsConfig;->sSlot2SimExist:Z

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/android/mms/MmsConfig;->sSim2Id:J

    long-to-int v1, v1

    invoke-static {p0, v1}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget-wide v1, Lcom/android/mms/MmsConfig;->sSim1Id:J

    long-to-int v1, v1

    invoke-static {p0, v1}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1
.end method

.method public static isActivated(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 855
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/ServiceManager;->serviceIsReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 856
    const/4 v0, 0x0

    .line 860
    :goto_0
    return v0

    .line 858
    :cond_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isActivated(I)Z

    move-result v0

    .line 859
    .local v0, actStatus:Z
    const-string v1, "MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " activation status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isAliasEnabled()Z
    .locals 1

    .prologue
    .line 317
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    return v0
.end method

.method public static isAllowDRWhenRoaming(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 974
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0, p0, p1}, Lcom/mediatek/mms/ext/IMmsConfig;->isAllowDRWhenRoaming(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isAllowRetryForPermanentFail()Z
    .locals 1

    .prologue
    .line 895
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isAllowRetryForPermanentFail()Z

    move-result v0

    return v0
.end method

.method public static isNeedExitComposerAfterForward()Z
    .locals 1

    .prologue
    .line 913
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isNeedExitComposerAfterForward()Z

    move-result v0

    return v0
.end method

.method public static isRetainRetryIndexWhenInCall()Z
    .locals 1

    .prologue
    .line 899
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isRetainRetryIndexWhenInCall()Z

    move-result v0

    return v0
.end method

.method public static isSendExpiredResIfNotificationExpired()Z
    .locals 1

    .prologue
    .line 909
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isSendExpiredResIfNotificationExpired()Z

    move-result v0

    return v0
.end method

.method public static isServiceEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 864
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/ServiceManager;->serviceIsReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 869
    :cond_0
    :goto_0
    return v0

    .line 867
    :cond_1
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadSimInfo(Landroid/content/Context;)V

    .line 869
    sget-boolean v1, Lcom/android/mms/MmsConfig;->sSlot1SimExist:Z

    if-nez v1, :cond_3

    :goto_1
    sget-boolean v1, Lcom/android/mms/MmsConfig;->sSlot2SimExist:Z

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/android/mms/MmsConfig;->sSim2Id:J

    long-to-int v1, v1

    invoke-static {p0, v1}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget-wide v1, Lcom/android/mms/MmsConfig;->sSim1Id:J

    long-to-int v1, v1

    invoke-static {p0, v1}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1
.end method

.method public static isServiceEnabled(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 879
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isShowDraftIcon()Z
    .locals 1

    .prologue
    .line 904
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isShowDraftIcon()Z

    move-result v0

    return v0
.end method

.method public static isShowUrlDialog()Z
    .locals 1

    .prologue
    .line 694
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isShowUrlDialog()Z

    move-result v0

    return v0
.end method

.method public static isSupportAsyncUpdateWallpaper()Z
    .locals 1

    .prologue
    .line 939
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isSupportAsyncUpdateWallpaper()Z

    move-result v0

    return v0
.end method

.method public static isSupportAutoSelectSimId()Z
    .locals 1

    .prologue
    .line 935
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isSupportAutoSelectSimId()Z

    move-result v0

    return v0
.end method

.method public static isSupportCBMessage(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 964
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0, p0, p1}, Lcom/mediatek/mms/ext/IMmsConfig;->isSupportCBMessage(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isSupportCTFeature()Z
    .locals 4

    .prologue
    .line 968
    sget-object v1, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v1}, Lcom/mediatek/mms/ext/IMmsConfig;->isSupportCTFeature()Z

    move-result v0

    .line 969
    .local v0, isCTFreatur:Z
    const-string v1, "MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportCTFeature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    return v0
.end method

.method public static isSupportTabSetting()Z
    .locals 1

    .prologue
    .line 984
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isSupportTabSetting()Z

    move-result v0

    return v0
.end method

.method public static isSupportVCardPreview()Z
    .locals 1

    .prologue
    .line 960
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsConfig;->isSupportVCardPreview()Z

    move-result v0

    return v0
.end method

.method private static loadMmsSettings(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f050006

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 372
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v8, "mms_config"

    invoke-static {v4, v8}, Lcom/android/mms/MmsConfig;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 375
    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/android/mms/MmsConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 376
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 377
    .local v5, tag:Ljava/lang/String;
    if-nez v5, :cond_3

    .line 492
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 495
    .end local v5           #tag:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .line 497
    .local v2, errorStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 498
    const-string v2, "uaProfUrl"

    .line 501
    :cond_1
    if-eqz v2, :cond_2

    .line 502
    const-string v8, "MmsConfig.loadMmsSettings mms_config.xml missing %s setting"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, err:Ljava/lang/String;
    const-string v8, "MmsConfig"

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v1           #err:Ljava/lang/String;
    :cond_2
    return-void

    .line 380
    .end local v2           #errorStr:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v4, v8}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, name:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 382
    .local v7, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 383
    .local v6, text:Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v11, 0x4

    if-ne v8, v11, :cond_4

    .line 384
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 388
    :cond_4
    const-string v8, "MmsConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v8, "name"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 392
    const-string v8, "bool"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 394
    const-string v8, "enabledMMS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 395
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v9

    :goto_2
    sput v8, Lcom/android/mms/MmsConfig;->mMmsEnabled:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 485
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 486
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v8, "MmsConfig"

    const-string v11, "loadMmsSettings caught "

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 492
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :cond_5
    move v8, v10

    .line 395
    goto :goto_2

    .line 396
    :cond_6
    :try_start_3
    const-string v8, "enabledTransID"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 397
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 487
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 488
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v8, "MmsConfig"

    const-string v11, "loadMmsSettings caught "

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 492
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 398
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :cond_7
    :try_start_5
    const-string v8, "enabledNotifyWapMMSC"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 399
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 489
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 490
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    const-string v8, "MmsConfig"

    const-string v11, "loadMmsSettings caught "

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 492
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 400
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :cond_8
    :try_start_7
    const-string v8, "aliasEnabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 401
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 492
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    throw v8

    .line 402
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string v8, "allowAttachAudio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 403
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    goto/16 :goto_0

    .line 404
    :cond_a
    const-string v8, "enableMultipartSMS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 405
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableMultipartSMS:Z

    goto/16 :goto_0

    .line 406
    :cond_b
    const-string v8, "enableSlideDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 407
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    goto/16 :goto_0

    .line 408
    :cond_c
    const-string v8, "enableMMSReadReports"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 409
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableMMSReadReports:Z

    goto/16 :goto_0

    .line 410
    :cond_d
    const-string v8, "enableSMSDeliveryReports"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 411
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableSMSDeliveryReports:Z

    goto/16 :goto_0

    .line 412
    :cond_e
    const-string v8, "enableMMSDeliveryReports"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 413
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableMMSDeliveryReports:Z

    goto/16 :goto_0

    .line 415
    :cond_f
    const-string v8, "enableGroupMms"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 416
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableGroupMms:Z

    goto/16 :goto_0

    .line 418
    :cond_10
    const-string v8, "int"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 420
    const-string v8, "maxMessageSize"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 421
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_0

    .line 422
    :cond_11
    const-string v8, "maxImageHeight"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 423
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    goto/16 :goto_0

    .line 424
    :cond_12
    const-string v8, "maxImageWidth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 425
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    goto/16 :goto_0

    .line 428
    :cond_13
    const-string v8, "maxRestrictedImageHeight"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 429
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxRestrictedImageHeight:I

    goto/16 :goto_0

    .line 430
    :cond_14
    const-string v8, "maxRestrictedImageWidth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 431
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxRestrictedImageWidth:I

    goto/16 :goto_0

    .line 434
    :cond_15
    const-string v8, "defaultSMSMessagesPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 435
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    goto/16 :goto_0

    .line 436
    :cond_16
    const-string v8, "defaultMMSMessagesPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 437
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    goto/16 :goto_0

    .line 438
    :cond_17
    const-string v8, "minMessageCountPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 439
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    goto/16 :goto_0

    .line 440
    :cond_18
    const-string v8, "maxMessageCountPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 441
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    goto/16 :goto_0

    .line 443
    :cond_19
    const-string v8, "smsToMmsTextThreshold"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 445
    sget-object v8, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Lcom/mediatek/mms/ext/IMmsConfig;->setSmsToMmsTextThreshold(I)V

    goto/16 :goto_0

    .line 447
    :cond_1a
    const-string v8, "recipientLimit"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 449
    sget-object v8, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Lcom/mediatek/mms/ext/IMmsConfig;->setMmsRecipientLimit(I)V

    goto/16 :goto_0

    .line 450
    :cond_1b
    const-string v8, "httpSocketTimeout"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 451
    sget-object v8, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Lcom/mediatek/mms/ext/IMmsConfig;->setHttpSocketTimeout(I)V

    goto/16 :goto_0

    .line 452
    :cond_1c
    const-string v8, "minimumSlideElementDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 453
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    goto/16 :goto_0

    .line 454
    :cond_1d
    const-string v8, "maxSizeScaleForPendingMmsAllowed"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 455
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    goto/16 :goto_0

    .line 456
    :cond_1e
    const-string v8, "aliasMinChars"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 457
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    goto/16 :goto_0

    .line 458
    :cond_1f
    const-string v8, "aliasMaxChars"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 459
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    goto/16 :goto_0

    .line 460
    :cond_20
    const-string v8, "maxMessageTextSize"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 462
    sget-object v8, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Lcom/mediatek/mms/ext/IMmsConfig;->setMaxTextLimit(I)V

    goto/16 :goto_0

    .line 463
    :cond_21
    const-string v8, "maxSubjectLength"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 464
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxSubjectLength:I

    goto/16 :goto_0

    .line 466
    :cond_22
    const-string v8, "string"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 468
    const-string v8, "userAgent"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 469
    sput-object v6, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    goto/16 :goto_0

    .line 470
    :cond_23
    const-string v8, "uaProfTagName"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 471
    sput-object v6, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    goto/16 :goto_0

    .line 472
    :cond_24
    const-string v8, "uaProfUrl"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 474
    sget-object v8, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v8, v6}, Lcom/mediatek/mms/ext/IMmsConfig;->getUAProf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 475
    :cond_25
    const-string v8, "httpParams"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 476
    sput-object v6, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    goto/16 :goto_0

    .line 477
    :cond_26
    const-string v8, "httpParamsLine1Key"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 478
    sput-object v6, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    goto/16 :goto_0

    .line 479
    :cond_27
    const-string v8, "emailGatewayNumber"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 480
    sput-object v6, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0
.end method

.method private static loadSimInfo(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 820
    sget-wide v0, Lcom/android/mms/MmsConfig;->sSim1Id:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sSlot1SimExist:Z

    if-eqz v0, :cond_0

    .line 821
    invoke-static {p0, v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/mms/MmsConfig;->sSim1Id:J

    .line 822
    sget v0, Lcom/android/mms/MmsConfig;->sSlot1RetryCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/MmsConfig;->sSlot1RetryCounter:I

    .line 824
    sget v0, Lcom/android/mms/MmsConfig;->sSlot1RetryCounter:I

    if-ne v0, v5, :cond_0

    sget-wide v0, Lcom/android/mms/MmsConfig;->sSim1Id:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 825
    sput-boolean v4, Lcom/android/mms/MmsConfig;->sSlot1SimExist:Z

    .line 829
    :cond_0
    sget-wide v0, Lcom/android/mms/MmsConfig;->sSim2Id:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sSlot2SimExist:Z

    if-eqz v0, :cond_1

    .line 830
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/mms/MmsConfig;->sSim2Id:J

    .line 831
    sget v0, Lcom/android/mms/MmsConfig;->sSlot2RetryCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/MmsConfig;->sSlot2RetryCounter:I

    .line 833
    sget v0, Lcom/android/mms/MmsConfig;->sSlot2RetryCounter:I

    if-ne v0, v5, :cond_1

    sget-wide v0, Lcom/android/mms/MmsConfig;->sSim2Id:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 834
    sput-boolean v4, Lcom/android/mms/MmsConfig;->sSlot2SimExist:Z

    .line 837
    :cond_1
    return-void
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 366
    :cond_1
    return-void
.end method

.method public static printMmsMemStat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "callerTag"

    .prologue
    .line 925
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0, p0, p1}, Lcom/mediatek/mms/ext/IMmsConfig;->printMmsMemStat(Landroid/content/Context;Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public static declared-synchronized setCTDeviceStorageLowStatus(Z)V
    .locals 2
    .parameter "low"

    .prologue
    .line 948
    const-class v0, Lcom/android/mms/MmsConfig;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mCTDeviceStorageLow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    monitor-exit v0

    return-void

    .line 948
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setDeviceStorageFullStatus(Z)V
    .locals 0
    .parameter "bFull"

    .prologue
    .line 520
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mDeviceStorageFull:Z

    .line 521
    return-void
.end method

.method public static setExtendUrlSpan(Landroid/widget/TextView;)V
    .locals 1
    .parameter "textView"

    .prologue
    .line 931
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0, p0}, Lcom/mediatek/mms/ext/IMmsConfig;->setExtendUrlSpan(Landroid/widget/TextView;)V

    .line 932
    return-void
.end method

.method public static setInitQuickText(Z)V
    .locals 3
    .parameter "init"

    .prologue
    .line 559
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 560
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 561
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "InitQuickText"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 562
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 563
    return-void
.end method

.method public static setMmsDirMode(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 529
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 530
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 531
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "CmccMmsUiMode"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 533
    return-void
.end method

.method public static setPreQuickText([Ljava/lang/String;)V
    .locals 5
    .parameter "strings"

    .prologue
    .line 572
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 573
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 574
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "PreQuickTextNum"

    array-length v4, p0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 575
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreQuickText"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 579
    return-void
.end method

.method public static setSimCardInfo(I)V
    .locals 3
    .parameter "simcard"

    .prologue
    .line 544
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 545
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 546
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "CmccSimCardInfo"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 548
    return-void
.end method

.method public static setSoSndTimeout(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 891
    sget-object v0, Lcom/android/mms/MmsConfig;->mMmsConfigPlugin:Lcom/mediatek/mms/ext/IMmsConfig;

    invoke-interface {v0, p0}, Lcom/mediatek/mms/ext/IMmsConfig;->setSoSndTimeout(Lorg/apache/http/params/HttpParams;)V

    .line 892
    return-void
.end method

.method public static setUserSetMmsSizeLimit(I)V
    .locals 0
    .parameter "limit"

    .prologue
    .line 602
    sput p0, Lcom/android/mms/MmsConfig;->mUserSetMmsSizeLimit:I

    .line 603
    return-void
.end method
