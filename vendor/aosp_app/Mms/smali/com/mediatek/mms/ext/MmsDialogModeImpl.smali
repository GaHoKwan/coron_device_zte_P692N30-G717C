.class public Lcom/mediatek/mms/ext/MmsDialogModeImpl;
.super Landroid/content/ContextWrapper;
.source "MmsDialogModeImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsDialogMode;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsDialogModeImpl"


# instance fields
.field private mHost:Lcom/mediatek/mms/ext/IMmsDialogModeHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsDialogModeImpl;->mHost:Lcom/mediatek/mms/ext/IMmsDialogModeHost;

    .line 50
    return-void
.end method


# virtual methods
.method protected getHost()Lcom/mediatek/mms/ext/IMmsDialogModeHost;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsDialogModeImpl;->mHost:Lcom/mediatek/mms/ext/IMmsDialogModeHost;

    return-object v0
.end method

.method public getNotificationContentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "from"
    .parameter "subject"
    .parameter "msgSizeTxt"
    .parameter "expireTxt"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsDialogModeHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsDialogModeImpl;->mHost:Lcom/mediatek/mms/ext/IMmsDialogModeHost;

    .line 54
    return-void
.end method

.method public initCTSendButton()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isDualSendButtonEnable()Z
    .locals 2

    .prologue
    .line 82
    const-string v0, "Mms/MmsDialogModeImpl"

    const-string v1, "isDualSendButtonEnable: false"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public setCTSendButtonType()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public setSimTypeDrawable(Landroid/content/Context;JLandroid/widget/TextView;)V
    .locals 2
    .parameter "context"
    .parameter "slotId"
    .parameter "textView"

    .prologue
    .line 78
    const-string v0, "Mms/MmsDialogModeImpl"

    const-string v1, "setSimTypeDrawable default"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public updateCTSendButtonStatue(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
