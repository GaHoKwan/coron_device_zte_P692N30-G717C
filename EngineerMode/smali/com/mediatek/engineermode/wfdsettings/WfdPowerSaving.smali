.class public Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;
.super Landroid/app/Activity;
.source "WfdPowerSaving.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/WFD_POWER_SAV"


# instance fields
.field private mBtDone:Landroid/widget/Button;

.field private mDisplayTime:I

.field private mEtDisplayTime:Landroid/widget/EditText;

.field private mRgPower:Landroid/widget/RadioGroup;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mBtDone:Landroid/widget/Button;

    .line 57
    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    .line 58
    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mEtDisplayTime:Landroid/widget/EditText;

    .line 60
    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mState:I

    .line 61
    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mDisplayTime:I

    return-void
.end method

.method private getState()I
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, state:I
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0b047d

    if-ne v1, v2, :cond_1

    .line 109
    const/4 v0, 0x0

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0b047e

    if-ne v1, v2, :cond_2

    .line 111
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0b047f

    if-ne v1, v2, :cond_3

    .line 113
    const/4 v0, 0x2

    goto :goto_0

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0b0480

    if-ne v1, v2, :cond_0

    .line 115
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private onClickBtnDone()V
    .locals 3

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->getState()I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mState:I

    .line 122
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_power_saving_option"

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mState:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mEtDisplayTime:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mDisplayTime:I

    .line 125
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_power_saving_delay"

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mDisplayTime:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    const-string v0, "EM/WFD_POWER_SAV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last solution = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "EM/WFD_POWER_SAV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mDisplayTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private setInitState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 92
    const-string v0, "EM/WFD_POWER_SAV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-nez p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    const v1, 0x7f0b047d

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 104
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    const v1, 0x7f0b047e

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    const v1, 0x7f0b0480

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 102
    :cond_2
    const-string v0, "EM/WFD_POWER_SAV"

    const-string v1, "Wrong input resolution info"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 85
    const-string v0, "EM/WFD_POWER_SAV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mBtDone:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->onClickBtnDone()V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 90
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v1, 0x7f030098

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 68
    const v1, 0x7f0b047c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    .line 69
    const v1, 0x7f0b0482

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mEtDisplayTime:Landroid/widget/EditText;

    .line 71
    const v1, 0x7f0b047f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 72
    .local v0, tempButton:Landroid/widget/RadioButton;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    const v1, 0x7f0b0483

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mBtDone:Landroid/widget/Button;

    .line 75
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mBtDone:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_power_saving_option"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mState:I

    .line 78
    iget v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mState:I

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->setInitState(I)V

    .line 79
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_power_saving_delay"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mDisplayTime:I

    .line 80
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mEtDisplayTime:Landroid/widget/EditText;

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mDisplayTime:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    return-void
.end method
