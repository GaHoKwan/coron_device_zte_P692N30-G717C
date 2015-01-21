.class public Lcom/mediatek/settings/plugin/PowerSavingSettings;
.super Landroid/preference/PreferenceActivity;
.source "PowerSavingSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final BRIGHTNESS_DIALOG:I = 0x64

.field private static final KEY_BRIGHT_AUTO:Ljava/lang/String; = "power_saving_brightness_auto"

.field private static final KEY_BRIGHT_CONFIG:Ljava/lang/String; = "power_saving_brightness_config"

.field private static final KEY_BRIGHT_PREFERENCE:Ljava/lang/String; = "power_saving_brightness"

.field private static final KEY_SLEEP_CONFIG:Ljava/lang/String; = "power_saving_sleep_config"

.field private static final KEY_SLEEP_PREFERENCE:Ljava/lang/String; = "power_saving_sleep"

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final SLEEP_DIALOG:I = 0x65

.field private static final TAG:Ljava/lang/String; = "Power Savings"

.field private static final TEN:I = 0xa


# instance fields
.field private mBrightnessPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mOldBrightnessAutoChecked:Z

.field private mOldBrightnessProgress:I

.field private mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;

.field private mScreenBrightnessDim:I

.field private mSharePref:Landroid/content/SharedPreferences;

.field private mSleepPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Lcom/mediatek/settings/plugin/PowerSavingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/plugin/PowerSavingSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessAutoChecked:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/settings/plugin/PowerSavingSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessAutoChecked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/plugin/PowerSavingSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/settings/plugin/PowerSavingSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/settings/plugin/PowerSavingSettings;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->saveBrightness(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/plugin/PowerSavingSettings;F)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->getBrightnessPercent(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Lcom/mediatek/settings/plugin/PowerSavingSettingPref;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mBrightnessPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Lcom/mediatek/settings/plugin/PowerSavingSettingPref;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSleepPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    return-object v0
.end method

.method private createBrightnessDialog()Landroid/app/Dialog;
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, -0x1

    .line 172
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 173
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f03002a

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 174
    .local v6, view:Landroid/view/View;
    const v8, 0x7f0b00a8

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 175
    .local v0, autoCheckBox:Landroid/widget/CheckBox;
    const v8, 0x7f0b00a9

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 176
    .local v5, seekBar:Landroid/widget/SeekBar;
    new-instance v8, Lcom/mediatek/settings/plugin/PowerSavingSettings$3;

    invoke-direct {v8, p0, v5}, Lcom/mediatek/settings/plugin/PowerSavingSettings$3;-><init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;Landroid/widget/SeekBar;)V

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 187
    iget-object v8, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSharePref:Landroid/content/SharedPreferences;

    const-string v9, "power_saving_brightness_auto"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 188
    .local v2, currentAutomode:Z
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 190
    iget-object v8, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSharePref:Landroid/content/SharedPreferences;

    const-string v9, "power_saving_brightness_config"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 191
    .local v3, currentBrightness:I
    const-string v8, "Power Savings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreateDialog() current brightness is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-ne v3, v11, :cond_1

    .line 194
    iget v8, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I

    rsub-int v8, v8, 0xff

    div-int/lit8 v8, v8, 0xa

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 198
    :goto_0
    if-nez v2, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-virtual {v5, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 199
    iget v7, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I

    rsub-int v7, v7, 0xff

    invoke-virtual {v5, v7}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 200
    new-instance v7, Lcom/mediatek/settings/plugin/PowerSavingSettings$4;

    invoke-direct {v7, p0}, Lcom/mediatek/settings/plugin/PowerSavingSettings$4;-><init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;)V

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 221
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f09013b

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0200c8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v9, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;

    invoke-direct {v9, p0, v0, v5}, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;-><init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;Landroid/widget/CheckBox;Landroid/widget/SeekBar;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x104

    new-instance v9, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;

    invoke-direct {v9, p0, v5, v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;-><init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;Landroid/widget/SeekBar;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/mediatek/settings/plugin/PowerSavingSettings$5;

    invoke-direct {v8, p0, v0, v5}, Lcom/mediatek/settings/plugin/PowerSavingSettings$5;-><init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;Landroid/widget/CheckBox;Landroid/widget/SeekBar;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 256
    .local v1, brightnessDialog:Landroid/app/AlertDialog;
    return-object v1

    .line 196
    .end local v1           #brightnessDialog:Landroid/app/AlertDialog;
    :cond_1
    iget v8, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I

    sub-int v8, v3, v8

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method private getBrightnessPercent(F)Ljava/lang/String;
    .locals 6
    .parameter "currentBrightness"

    .prologue
    .line 140
    iget v3, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    div-float v0, p1, v3

    .line 141
    .local v0, brightnessPercent:F
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 143
    .local v1, nf:Ljava/text/NumberFormat;
    float-to-double v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, percent:Ljava/lang/String;
    const-string v3, "Power Savings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max brightness: 255Current Brightness"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Precent progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Percent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-object v2
.end method

.method private initUI()V
    .locals 6

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 89
    const-string v1, "power_saving_brightness"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mBrightnessPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    .line 90
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mBrightnessPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    new-instance v2, Lcom/mediatek/settings/plugin/PowerSavingSettings$1;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/plugin/PowerSavingSettings$1;-><init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->setImageViewClickLister(Landroid/view/View$OnClickListener;)V

    .line 96
    const-string v1, "power_saving_sleep"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSleepPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    .line 97
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSleepPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    new-instance v2, Lcom/mediatek/settings/plugin/PowerSavingSettings$2;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/plugin/PowerSavingSettings$2;-><init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/plugin/PowerSavingSettingPref;->setImageViewClickLister(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 105
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 106
    .local v0, padding:I
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 114
    return-void
.end method

.method private saveBrightness(IZ)V
    .locals 2
    .parameter "config"
    .parameter "auto"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "power_saving_brightness_config"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 151
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "power_saving_brightness_auto"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    return-void
.end method

.method private updateUI()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 117
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;

    invoke-virtual {v2}, Lcom/mediatek/settings/plugin/PowerSavingManager;->isPowerSavingModeOn()Z

    move-result v0

    .line 118
    .local v0, isPoSavingChecked:Z
    const-string v2, "Power Savings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerSavingSettings onResume(), Power Saving Switch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 126
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSharePref:Landroid/content/SharedPreferences;

    const-string v3, "power_saving_brightness_config"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I

    .line 127
    iget v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I

    if-ne v2, v5, :cond_1

    .line 128
    iget v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I

    rsub-int v2, v2, 0xff

    div-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSharePref:Landroid/content/SharedPreferences;

    const-string v3, "power_saving_brightness_auto"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessAutoChecked:Z

    .line 134
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSharePref:Landroid/content/SharedPreferences;

    const-string v3, "power_saving_sleep_config"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, timeOutPosition:I
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSleepPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    const v3, 0x7f09013a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    return-void

    .line 130
    .end local v1           #timeOutPosition:I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mBrightnessPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    iget v3, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I

    iget v4, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->getBrightnessPercent(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;

    invoke-virtual {v1}, Lcom/mediatek/settings/plugin/PowerSavingManager;->isPowerSavingModeOn()Z

    move-result v0

    .line 158
    .local v0, isPoSavingChecked:Z
    const-string v1, "Power Savings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->Switch onCheckedChanged() -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-ne v0, p2, :cond_0

    .line 162
    const-string v1, "Power Savings"

    const-string v2, "-->Don\'t care this change -- "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 167
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;

    invoke-virtual {v1, p2}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOn(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const-string v0, "Power Savings"

    const-string v1, "-->PowerSavingSettings onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 73
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->initUI()V

    .line 76
    invoke-static {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/plugin/PowerSavingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;

    .line 77
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I

    .line 78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSharePref:Landroid/content/SharedPreferences;

    .line 79
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 80
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 261
    packed-switch p1, :pswitch_data_0

    .line 287
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 263
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->createBrightnessDialog()Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSharePref:Landroid/content/SharedPreferences;

    const-string v2, "power_saving_sleep_config"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 266
    .local v0, checkedItem:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f050001

    new-instance v3, Lcom/mediatek/settings/plugin/PowerSavingSettings$9;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/plugin/PowerSavingSettings$9;-><init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/mediatek/settings/plugin/PowerSavingSettings$8;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/plugin/PowerSavingSettings$8;-><init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->updateUI()V

    .line 86
    return-void
.end method
