.class public Lcom/mediatek/op09/plugin/TimeSettingsDialog;
.super Landroid/preference/DialogPreference;
.source "TimeSettingsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BEIJING_MODE:I = 0x0

.field private static final LOCAL_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimeSettingsDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTime:I

.field private mDialog:Landroid/app/Dialog;

.field private mRadioBtn1:Landroid/widget/RadioButton;

.field private mRadioBtn2:Landroid/widget/RadioButton;

.field private mSelectTimeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-object v1, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn1:Landroid/widget/RadioButton;

    .line 56
    iput-object v1, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn2:Landroid/widget/RadioButton;

    .line 60
    iput v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mCurrentTime:I

    .line 61
    iput v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mSelectTimeMode:I

    .line 67
    const-string v0, "TimeSettingsDialog"

    const-string v1, "TimeSettingsDialog "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 69
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mDialog:Landroid/app/Dialog;

    .line 70
    iput-object p1, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method


# virtual methods
.method public onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 76
    const-string v0, "TimeSettingsDialog"

    const-string v1, "in getView!!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const v0, 0x7f0b00be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn1:Landroid/widget/RadioButton;

    .line 78
    const v0, 0x7f0b00c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn2:Landroid/widget/RadioButton;

    .line 79
    iget-object v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ct_time_display_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mCurrentTime:I

    .line 84
    const-string v0, "TimeSettingsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get ct init time display mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mCurrentTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mCurrentTime:I

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mCurrentTime:I

    if-ne v0, v4, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 112
    move-object v1, p1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 113
    .local v0, checked:Z
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mDialog:Landroid/app/Dialog;

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 116
    :pswitch_1
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn2:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 119
    iput v2, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mCurrentTime:I

    goto :goto_0

    .line 124
    :pswitch_2
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn1:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 127
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mCurrentTime:I

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00be
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const-string v1, "TimeSettingsDialog"

    const-string v2, "Pressed OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ct_time_display_mode"

    iget v3, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mCurrentTime:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ct.TIME_DISPLAY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "time_display_mode"

    iget v2, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mCurrentTime:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/mediatek/op09/plugin/TimeSettingsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v1, "TimeSettingsDialog"

    const-string v2, "Pressed Cancel"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
