.class public Lcom/mediatek/settings/plugin/PowerSavingSettingPref;
.super Landroid/preference/CheckBoxPreference;
.source "PowerSavingSettingPref.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f

.field private static final KEY_SWITCH:Ljava/lang/String; = "power_saving_switch"

.field private static final TAG:Ljava/lang/String; = "Power Savings"


# instance fields
.field private mImageViewClickLister:Landroid/view/View$OnClickListener;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSummaryText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 41
    const-string v0, "Power Savings"

    const-string v1, "PowerSavingSettingPref  new attrs"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method private enableSettingsButton()V
    .locals 4

    .prologue
    .line 84
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/plugin/PowerSavingManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/plugin/PowerSavingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/settings/plugin/PowerSavingManager;->isPowerSavingModeOn()Z

    move-result v1

    .line 90
    .local v1, powerSavingSwitched:Z
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 91
    .local v0, checked:Z
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 92
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 93
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 94
    if-nez v0, :cond_0

    .line 95
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->mSettingsButton:Landroid/widget/ImageView;

    const v3, 0x3ecccccd

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 98
    .end local v0           #checked:Z
    .end local v1           #powerSavingSwitched:Z
    :cond_0
    return-void

    .line 90
    .restart local v1       #powerSavingSwitched:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCheckBoxClicked()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 72
    .local v0, isItemChecked:Z
    iget-object v4, p0, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->mSettingsButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    .line 73
    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 74
    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/plugin/PowerSavingManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/plugin/PowerSavingManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOnPowerSavingMode(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 72
    goto :goto_0

    :cond_2
    move v2, v3

    .line 73
    goto :goto_1
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 50
    const v1, 0x7f0b00aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, powerSavingItem:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v1, 0x7f0b00ab

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->mSettingsButton:Landroid/widget/ImageView;

    .line 53
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->mImageViewClickLister:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->mSummaryText:Landroid/widget/TextView;

    .line 55
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->enableSettingsButton()V

    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->onCheckBoxClicked()V

    goto :goto_0
.end method

.method public setImageViewClickLister(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "imageViewClickLister"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->mImageViewClickLister:Landroid/view/View$OnClickListener;

    .line 64
    return-void
.end method
