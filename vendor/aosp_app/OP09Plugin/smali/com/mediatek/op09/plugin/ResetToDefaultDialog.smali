.class public Lcom/mediatek/op09/plugin/ResetToDefaultDialog;
.super Landroid/preference/DialogPreference;
.source "ResetToDefaultDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResetToDefaultDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const-string v1, "ResetToDefaultDialog"

    const-string v2, "ResetToDefaultDialog "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mDialog:Landroid/app/Dialog;

    .line 66
    iput-object p1, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/mediatek/op09/plugin/SimInformation;

    iget-object v1, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/op09/plugin/SimInformation;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, simInformation:Lcom/mediatek/op09/plugin/SimInformation;
    invoke-virtual {v0}, Lcom/mediatek/op09/plugin/SimInformation;->getSimInfo()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mSimInfoList:Ljava/util/List;

    .line 70
    return-void
.end method


# virtual methods
.method public onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 75
    const-string v0, "ResetToDefaultDialog"

    const-string v1, "in getView!!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 8
    .parameter "positiveResult"

    .prologue
    const/4 v7, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 81
    if-eqz p1, :cond_2

    .line 82
    const-string v4, "ResetToDefaultDialog"

    const-string v5, "Pressed OK"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v4, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ct_main_sim_selection"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    iget-object v4, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mSimInfoList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 90
    .local v3, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v4, :cond_0

    .line 93
    const-string v4, "ResetToDefaultDialog"

    const-string v5, "SetCTNetworkMode to CDMA_ONLY!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.ct.CLEAR_PHONE_LIST"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v4, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    iget-object v4, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ct_time_display_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    iget-object v4, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ct_time_display_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, caseTimeDisplay:I
    const-string v4, "ResetToDefaultDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get ct time display mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v4, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/op09/plugin/ResetToDefaultDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f09002f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 109
    .end local v0           #caseTimeDisplay:I
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 107
    :cond_2
    const-string v4, "ResetToDefaultDialog"

    const-string v5, "Pressed Cancel"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
