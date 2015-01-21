.class public Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "TimeSettingsAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BEIJING_MODE:I = 0x0

.field private static final LOCAL_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimeSettingsAlertActivity"


# instance fields
.field private mCurrentTime:I

.field private mRadioBtn1:Landroid/widget/RadioButton;

.field private mRadioBtn2:Landroid/widget/RadioButton;

.field private mSelectTimeMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn1:Landroid/widget/RadioButton;

    .line 23
    iput-object v1, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn2:Landroid/widget/RadioButton;

    .line 25
    iput v0, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mCurrentTime:I

    .line 26
    iput v0, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mSelectTimeMode:I

    return-void
.end method


# virtual methods
.method createDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 37
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 38
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f090012

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, view:Landroid/view/View;
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 41
    const v2, 0x7f0b00be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn1:Landroid/widget/RadioButton;

    .line 42
    const v2, 0x7f0b00c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn2:Landroid/widget/RadioButton;

    .line 44
    iget-object v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ct_time_display_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mCurrentTime:I

    .line 48
    const-string v2, "TimeSettingsAlertActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ct init time display mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mCurrentTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mCurrentTime:I

    if-nez v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 51
    iget-object v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 56
    :cond_0
    :goto_0
    const v2, 0x1040013

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 57
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 58
    const v2, 0x1040009

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 59
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 61
    return-void

    .line 52
    :cond_1
    iget v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mCurrentTime:I

    if-ne v2, v6, :cond_0

    .line 53
    iget-object v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 54
    iget-object v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 83
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 84
    const-string v1, "TimeSettingsAlertActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pressed OK -- mCurrentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mCurrentTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ct_time_display_mode"

    iget v3, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mCurrentTime:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ct.TIME_DISPLAY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "time_display_mode"

    iget v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mCurrentTime:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 91
    const-string v1, "TimeSettingsAlertActivity"

    const-string v2, "Pressed Cancel"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    :pswitch_0
    return-void

    .line 67
    :pswitch_1
    const-string v0, "TimeSettingsAlertActivity"

    const-string v1, "onClick -- beijing_radio"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 70
    iput v2, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mCurrentTime:I

    goto :goto_0

    .line 73
    :pswitch_2
    const-string v0, "TimeSettingsAlertActivity"

    const-string v1, "onClick -- local_radio"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 76
    iput v3, p0, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->mCurrentTime:I

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x7f0b00be
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/TimeSettingsAlertActivity;->createDialog()V

    .line 34
    return-void
.end method
