.class public interface abstract Lcom/mediatek/mms/ext/IMmsConfig;
.super Ljava/lang/Object;
.source "IMmsConfig.java"


# virtual methods
.method public abstract appendExtraQueryParameterForConversationDeleteAll(Landroid/net/Uri;)Landroid/net/Uri;
.end method

.method public abstract getCapturePictureIntent()Landroid/content/Intent;
.end method

.method public abstract getHttpSocketTimeout()I
.end method

.method public abstract getMaxTextLimit()I
.end method

.method public abstract getMmsRecipientLimit()I
.end method

.method public abstract getMmsRetryPromptIndex()I
.end method

.method public abstract getMmsRetryScheme()[I
.end method

.method public abstract getSmsToMmsTextThreshold()I
.end method

.method public abstract getUAProf(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUndeliveryMmsQueryUri(Landroid/net/Uri;)Landroid/net/Uri;
.end method

.method public abstract isAllowDRWhenRoaming(Landroid/content/Context;I)Z
.end method

.method public abstract isAllowRetryForPermanentFail()Z
.end method

.method public abstract isEnableAdjustFontSize()Z
.end method

.method public abstract isEnableDialogForUrl()Z
.end method

.method public abstract isEnableFolderMode()Z
.end method

.method public abstract isEnableForwardWithSender()Z
.end method

.method public abstract isEnableMultiSmsSaveLocation()Z
.end method

.method public abstract isEnableReportAllowed()Z
.end method

.method public abstract isEnableSIMLongSmsConcatenate()Z
.end method

.method public abstract isEnableSIMSmsForSetting()Z
.end method

.method public abstract isEnableSmsEncodingType()Z
.end method

.method public abstract isEnableSmsValidityPeriod()Z
.end method

.method public abstract isEnableStorageFullToast()Z
.end method

.method public abstract isEnableStorageStatusDisp()Z
.end method

.method public abstract isNeedExitComposerAfterForward()Z
.end method

.method public abstract isRetainRetryIndexWhenInCall()Z
.end method

.method public abstract isSendExpiredResIfNotificationExpired()Z
.end method

.method public abstract isShowDraftIcon()Z
.end method

.method public abstract isShowUrlDialog()Z
.end method

.method public abstract isSupportAsyncUpdateWallpaper()Z
.end method

.method public abstract isSupportAutoSelectSimId()Z
.end method

.method public abstract isSupportCBMessage(Landroid/content/Context;I)Z
.end method

.method public abstract isSupportCTFeature()Z
.end method

.method public abstract isSupportTabSetting()Z
.end method

.method public abstract isSupportVCardPreview()Z
.end method

.method public abstract printMmsMemStat(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract setExtendUrlSpan(Landroid/widget/TextView;)V
.end method

.method public abstract setHttpSocketTimeout(I)V
.end method

.method public abstract setMaxTextLimit(I)V
.end method

.method public abstract setMmsRecipientLimit(I)V
.end method

.method public abstract setSmsToMmsTextThreshold(I)V
.end method

.method public abstract setSoSndTimeout(Lorg/apache/http/params/HttpParams;)V
.end method
