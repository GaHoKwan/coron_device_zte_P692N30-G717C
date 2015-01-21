.class public interface abstract Lcom/mediatek/mms/ext/IMmsDialogMode;
.super Ljava/lang/Object;
.source "IMmsDialogMode.java"


# virtual methods
.method public abstract getNotificationContentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract init(Lcom/mediatek/mms/ext/IMmsDialogModeHost;)V
.end method

.method public abstract initCTSendButton()Z
.end method

.method public abstract isDualSendButtonEnable()Z
.end method

.method public abstract setCTSendButtonType()Z
.end method

.method public abstract setSimTypeDrawable(Landroid/content/Context;JLandroid/widget/TextView;)V
.end method

.method public abstract updateCTSendButtonStatue(Z)Z
.end method
