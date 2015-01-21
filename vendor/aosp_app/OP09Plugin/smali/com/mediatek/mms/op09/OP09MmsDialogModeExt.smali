.class public Lcom/mediatek/mms/op09/OP09MmsDialogModeExt;
.super Lcom/mediatek/mms/ext/MmsDialogModeImpl;
.source "OP09MmsDialogModeExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/OP09MmsDialogModeExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsDialogModeImpl;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getNotificationContentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "from"
    .parameter "subject"
    .parameter "msgSizeTxt"
    .parameter "expireTxt"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

.method public initCTSendButton()Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsDialogModeExt;->getHost()Lcom/mediatek/mms/ext/IMmsDialogModeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsDialogModeHost;->initCTSendButton()Z

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public isDualSendButtonEnable()Z
    .locals 2

    .prologue
    .line 91
    const-string v0, "Mms/OP09MmsDialogModeExt"

    const-string v1, "isDualSendButtonEnable: true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public setCTSendButtonType()Z
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsDialogModeExt;->getHost()Lcom/mediatek/mms/ext/IMmsDialogModeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsDialogModeHost;->setCTSendButtonType()Z

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public setSimTypeDrawable(Landroid/content/Context;JLandroid/widget/TextView;)V
    .locals 6
    .parameter "context"
    .parameter "simId"
    .parameter "textView"

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, simTypeDraw:Landroid/graphics/drawable/Drawable;
    invoke-static {p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 76
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const/4 v2, -0x1

    .line 77
    .local v2, slotId:I
    if-eqz v0, :cond_1

    .line 78
    iget v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 79
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsDialogModeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundLightSmallRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    :goto_0
    const-string v3, "Mms/OP09MmsDialogModeExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSimType for DialogModel; slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz p4, :cond_0

    .line 85
    const-string v3, ""

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsDialogModeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public updateCTSendButtonStatue(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsDialogModeExt;->getHost()Lcom/mediatek/mms/ext/IMmsDialogModeHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/mms/ext/IMmsDialogModeHost;->updateCTSendButtonStatue(Z)Z

    .line 66
    const/4 v0, 0x1

    return v0
.end method
