.class public Lcom/mediatek/settings/OthersSettings;
.super Landroid/preference/PreferenceActivity;
.source "OthersSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUTTON_INTER_KEY:Ljava/lang/String; = "international_dialing_key"

.field private static final BUTTON_OTHERS_DUAL_MIC_KEY:Ljava/lang/String; = "dual_mic_key"

.field private static final BUTTON_OTHERS_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field private static final BUTTON_OTHERS_MINUTE_REMINDER_KEY:Ljava/lang/String; = "minute_reminder_key"

.field private static final BUTTON_TTY_KEY:Ljava/lang/String; = "button_tty_mode_key"

.field private static final DEFAULT_INTER_DIALING_VALUE:I = 0x0

.field private static final INTER_DIALING_OFF:I = 0x0

.field private static final INTER_DIALING_ON:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/OthersSettings"

.field private static final TARGET_PREFERENCE_KEY:Ljava/lang/String; = "target_preference_key"


# instance fields
.field private mButtonDualMic:Landroid/preference/CheckBoxPreference;

.field private mButtonFdn:Landroid/preference/Preference;

.field private mButtonInter:Landroid/preference/CheckBoxPreference;

.field private mButtonMr:Landroid/preference/CheckBoxPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mExtension:Lcom/mediatek/phone/ext/OthersSettingsExtension;

.field private mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mTargetPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 64
    new-instance v0, Lcom/mediatek/settings/OthersSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/OthersSettings$1;-><init>(Lcom/mediatek/settings/OthersSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/OthersSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mediatek/settings/OthersSettings;->setScreenEnabled()V

    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 207
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 208
    .local v0, buttonTtyMode:I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 211
    .local v1, settingsTtyMode:I
    const-string v3, "Settings/OthersSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTTYChange: requesting set TTY mode enable (TTY) to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eq v0, v1, :cond_0

    .line 215
    packed-switch v0, :pswitch_data_0

    .line 224
    const/4 v0, 0x0

    .line 227
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0, v0}, Lcom/mediatek/settings/OthersSettings;->updatePreferredTtyModeSummary(I)V

    .line 229
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v2, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    .end local v2           #ttyModeChanged:Landroid/content/Intent;
    :cond_0
    return-void

    .line 220
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setScreenEnabled()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 251
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    const/4 v7, -0x1

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v0, v4

    .line 254
    .local v0, airplaneModeOn:Z
    :goto_0
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 255
    .local v1, insertSim:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 263
    :goto_1
    return-void

    .end local v0           #airplaneModeOn:Z
    .end local v1           #insertSim:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_0
    move v0, v5

    .line 251
    goto :goto_0

    .line 257
    .restart local v0       #airplaneModeOn:Z
    .restart local v1       #insertSim:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 258
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 259
    .local v2, slotId:I
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    invoke-static {v2, p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isRadioOffBySlot(ILandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    .line 261
    .end local v2           #slotId:I
    :cond_3
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .parameter "ttyMode"

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 245
    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 246
    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 266
    const-string v0, "Settings/OthersSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reqCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/16 v0, 0x64

    if-ne v0, p1, :cond_0

    .line 268
    if-ne v3, p2, :cond_0

    .line 269
    const-string v0, "simId"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    .line 272
    :cond_0
    const-string v0, "Settings/OthersSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget v0, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    if-eq v0, v3, :cond_1

    .line 274
    iget v0, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mTargetPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-static {v0, v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->startActivity(ILandroid/preference/Preference;Lcom/mediatek/settings/PreCheckForRunning;)V

    .line 276
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v3, 0x7f060014

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 84
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/ext/ExtensionManager;->getOthersSettingsExtension()Lcom/mediatek/phone/ext/OthersSettingsExtension;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mExtension:Lcom/mediatek/phone/ext/OthersSettingsExtension;

    .line 86
    const-string v3, "button_fdn_key"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    .line 87
    const-string v3, "minute_reminder_key"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    .line 88
    const-string v3, "dual_mic_key"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    .line 89
    const-string v3, "international_dialing_key"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonInter:Landroid/preference/CheckBoxPreference;

    .line 91
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mExtension:Lcom/mediatek/phone/ext/OthersSettingsExtension;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mediatek/phone/ext/OthersSettingsExtension;->customizeCallRejectFeature(Landroid/preference/PreferenceScreen;)V

    .line 93
    const-string v3, "DUAL_MIC"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    :cond_2
    const-string v3, "button_tty_mode_key"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    .line 106
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v3, :cond_3

    .line 107
    const-string v3, "TTY"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 108
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonInter:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_5

    .line 115
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonInter:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "international_dialing_key"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 118
    .local v1, checkedStatus:I
    iget-object v6, p0, Lcom/mediatek/settings/OthersSettings;->mButtonInter:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 119
    const-string v3, "Settings/OthersSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume isChecked in DB:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_4

    move v5, v4

    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v1           #checkedStatus:I
    :cond_5
    new-instance v3, Lcom/mediatek/settings/PreCheckForRunning;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 125
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_6

    .line 127
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 129
    :cond_6
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void

    .line 110
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_7
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    goto :goto_0

    .restart local v1       #checkedStatus:I
    :cond_8
    move v3, v5

    .line 118
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/mediatek/settings/PreCheckForRunning;->deRegister()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 138
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 140
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 141
    const/4 v1, 0x1

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x1

    .line 162
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string v0, "Settings/OthersSettings"

    const-string v1, "onPreferenceChange mButtonDualmic turn on"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "0"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setDualMicMode(Ljava/lang/String;)V

    .line 181
    .end local p2
    :cond_0
    :goto_0
    return v5

    .line 167
    .restart local p2
    :cond_1
    const-string v0, "Settings/OthersSettings"

    const-string v1, "onPreferenceChange mButtonDualmic turn off"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "1"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setDualMicMode(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/OthersSettings;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mButtonInter:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 173
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "international_dialing_key"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    :goto_1
    const-string v0, "Settings/OthersSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange mButtonInter turn :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "international_dialing_key"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "international_dialing_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    if-ne v0, p2, :cond_1

    .line 151
    iput-object p2, p0, Lcom/mediatek/settings/OthersSettings;->mTargetPreference:Landroid/preference/Preference;

    .line 152
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    .line 153
    iget v0, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 154
    iget v0, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-static {v0, p2, v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->startActivity(ILandroid/preference/Preference;Lcom/mediatek/settings/PreCheckForRunning;)V

    .line 156
    :cond_0
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 296
    const-string v2, "target_preference_key"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, targetPreferenceKey:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 299
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/OthersSettings;->mTargetPreference:Landroid/preference/Preference;

    .line 301
    .end local v0           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_0
    const-string v2, "simId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    .line 302
    const-string v2, "Settings/OthersSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onRestoreInstanceState], mSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    invoke-direct {p0}, Lcom/mediatek/settings/OthersSettings;->setScreenEnabled()V

    .line 188
    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, settingsTtyMode:I
    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, v0}, Lcom/mediatek/settings/OthersSettings;->updatePreferredTtyModeSummary(I)V

    .line 195
    .end local v0           #settingsTtyMode:I
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 284
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mTargetPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "target_preference_key"

    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mTargetPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    const-string v0, "Settings/OthersSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSaveInstanceState], mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "simId"

    iget v1, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    return-void
.end method
