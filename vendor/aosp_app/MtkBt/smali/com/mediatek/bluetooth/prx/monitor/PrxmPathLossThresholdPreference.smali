.class public Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;
.super Landroid/preference/DialogPreference;
.source "PrxmPathLossThresholdPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field protected static final MAX_PATH_LOSS_THRESHOLD:I = 0x64


# instance fields
.field private curPathLoss:I

.field private currentRssiSeekbar:Landroid/widget/SeekBar;

.field private parent:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

.field private pathLossThresholdSeekbar:Landroid/widget/SeekBar;

.field private pathLossThresholdTitle:Landroid/widget/TextView;

.field private usingCurrentRssiCheckbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 90
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->usingCurrentRssiCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    return-void
.end method

.method private setPathLossThresholdVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 146
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->pathLossThresholdTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->pathLossThresholdSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    return-void

    .line 145
    .end local v0           #visibility:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    const-string v1, "onBindDialogView()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->w(Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 110
    const v1, 0x7f09001d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->currentRssiSeekbar:Landroid/widget/SeekBar;

    .line 111
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->currentRssiSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->currentRssiSeekbar:Landroid/widget/SeekBar;

    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 115
    const v1, 0x7f09001e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->usingCurrentRssiCheckbox:Landroid/widget/CheckBox;

    .line 116
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->usingCurrentRssiCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 117
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->usingCurrentRssiCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    const v1, 0x7f09001f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->pathLossThresholdTitle:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f090020

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->pathLossThresholdSeekbar:Landroid/widget/SeekBar;

    .line 124
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->parent:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->parent:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->parent:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v0

    .line 126
    .local v0, pdi:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCurrentRssi()B

    move-result v1

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getRemoteTxPower()B

    move-result v4

    invoke-static {v1, v4}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->getPathLoss(BB)B

    move-result v1

    iput v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->curPathLoss:I

    .line 127
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->pathLossThresholdSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getPathLossThreshold()B

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 129
    .end local v0           #pdi:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->usingCurrentRssiCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->setPathLossThresholdVisibility(Z)V

    .line 130
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 131
    return-void

    :cond_1
    move v1, v3

    .line 129
    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 156
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->setPathLossThresholdVisibility(Z)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 165
    if-eqz p1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->usingCurrentRssiCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 170
    .local v0, usingRssi:Z
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->persistBoolean(Z)Z

    .line 173
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->pathLossThresholdSeekbar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->currentRssiSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->pathLossThresholdSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 183
    .end local v0           #usingRssi:Z
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->reset()V

    .line 184
    return-void
.end method

.method public setParent(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->parent:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    .line 100
    return-void
.end method

.method public updateCurPathLoss(I)V
    .locals 2
    .parameter "curPathLoss"

    .prologue
    .line 188
    iput p1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->curPathLoss:I

    .line 189
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->currentRssiSeekbar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->currentRssiSeekbar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->curPathLoss:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 193
    :cond_0
    return-void
.end method
