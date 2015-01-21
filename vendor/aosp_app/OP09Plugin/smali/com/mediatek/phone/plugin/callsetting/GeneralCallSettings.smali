.class public Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;
.super Landroid/preference/PreferenceFragment;
.source "GeneralCallSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUTTON_ESURFING_DIALING:Ljava/lang/String; = "button_esurfing_dialing"

.field private static final BUTTON_ESURFING_DIALING_GUIDE:Ljava/lang/String; = "button_esurfing_dialing_guide"

.field private static final BUTTON_OTHERS_DUAL_MIC_KEY:Ljava/lang/String; = "dual_mic_key"

.field private static final BUTTON_OTHERS_MINUTE_REMINDER_KEY:Ljava/lang/String; = "minute_reminder_key"

.field private static final BUTTON_TTY_KEY:Ljava/lang/String; = "button_tty_mode_key"

.field private static final DUALMIC_MODE:Ljava/lang/String; = "Enable_Dual_Mic_Setting"

.field private static final ESURFING_DIAL_ACTIVITY_NAME:Ljava/lang/String; = "com.mediatek.calloption.plugin.ESurfingGuideSelectActivity"

.field private static final ESURFING_DIAL_ACTIVITY_PACKAGE:Ljava/lang/String; = "com.mediatek.op09.plugin"

.field private static final FEATURE_3G_SWITCH:Ljava/lang/String; = "3G_SWITCH"

.field private static final FEATURE_DUAL_MIC:Ljava/lang/String; = "DUAL_MIC"

.field private static final FEATURE_IP_DIAL:Ljava/lang/String; = "IP_DIAL"

.field private static final FEATURE_PHONE_VOICE_RECORDING:Ljava/lang/String; = "PHONE_VOICE_RECORDING"

.field private static final FEATURE_TTY:Ljava/lang/String; = "TTY"

.field private static final FEATURE_VT_VIDEO_RECORDING:Ljava/lang/String; = "VT_VIDEO_RECORDING"

.field private static final FEATURE_VT_VOICE_RECORDING:Ljava/lang/String; = "VT_VOICE_RECORDING"

.field private static final LOG_TAG:Ljava/lang/String; = "CallSettings"

.field public static final PHONE_PREFERENCE_NAME:Ljava/lang/String; = "com.android.phone_preferences"

.field private static final preferredTtyMode:I


# instance fields
.field private mButtonDualMic:Landroid/preference/CheckBoxPreference;

.field private mButtonEsurfing:Landroid/preference/CheckBoxPreference;

.field private mButtonEsurfingGuide:Landroid/preference/Preference;

.field private mButtonMr:Landroid/preference/CheckBoxPreference;

.field private mButtonTty:Landroid/preference/ListPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->updateScreen()V

    return-void
.end method

.method private static getMrState()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.phone_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "minute_reminder_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
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
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 210
    .local v1, settingsTtyMode:I
    const-string v3, "CallSettings"

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

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eq v0, v1, :cond_0

    .line 213
    packed-switch v0, :pswitch_data_0

    .line 222
    const/4 v0, 0x0

    .line 225
    :goto_0
    iget-object v3, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonTty:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, v0}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->updatePreferredTtyModeSummary(I)V

    .line 227
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    .end local v2           #ttyModeChanged:Landroid/content/Intent;
    :cond_0
    return-void

    .line 218
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportFeature(Ljava/lang/String;)Z
    .locals 3
    .parameter "feature"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 249
    if-nez p0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    const-string v2, "TTY"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 253
    goto :goto_0

    .line 254
    :cond_2
    const-string v2, "DUAL_MIC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    const-string v2, "IP_DIAL"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 257
    goto :goto_0

    .line 258
    :cond_3
    const-string v2, "3G_SWITCH"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    const-string v2, "VT_VOICE_RECORDING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 261
    goto :goto_0

    .line 262
    :cond_4
    const-string v2, "VT_VIDEO_RECORDING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 263
    goto :goto_0

    .line 264
    :cond_5
    const-string v2, "PHONE_VOICE_RECORDING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 265
    goto :goto_0
.end method

.method private setDualMicMode(Ljava/lang/String;)V
    .locals 5
    .parameter "dualMic"

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 198
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 199
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 200
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enable_Dual_Mic_Setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 204
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v2, "CallSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDualMicMode, dualMic set error, dualMic="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setMrState(Z)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 290
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.phone_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "minute_reminder_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    return-void
.end method

.method private slotRadioOn(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 273
    .local v1, isRadioOn:Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v1

    .line 275
    const-string v2, "CallSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in radion state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_0
    return v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CallSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .parameter "TtyMode"

    .prologue
    const/4 v3, 0x0

    .line 234
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 243
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonTty:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 244
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonTty:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    :goto_0
    return-void

    .line 240
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonTty:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateScreen()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 136
    iget-object v8, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonTty:Landroid/preference/ListPreference;

    if-eqz v8, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "preferred_tty_mode"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 139
    .local v4, settingsTtyMode:I
    iget-object v8, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonTty:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, v4}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->updatePreferredTtyModeSummary(I)V

    .line 142
    .end local v4           #settingsTtyMode:I
    :cond_0
    iget-object v8, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonEsurfing:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_1

    .line 144
    :try_start_0
    iget-object v11, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonEsurfing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v12, "ct_e_surfing_dialing_key"

    invoke-static {v8, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_3

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "airplane_mode_on"

    const/4 v12, -0x1

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_4

    move v3, v9

    .line 152
    .local v3, isAirplaneOn:Z
    :goto_2
    const/4 v1, 0x0

    .line 153
    .local v1, hasRadioOnSim:Z
    if-nez v3, :cond_2

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 155
    .local v5, simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 156
    .local v6, simSize:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_3
    if-ge v2, v6, :cond_2

    .line 157
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v7, v8, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 158
    .local v7, slot:I
    invoke-direct {p0, v7}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->slotRadioOn(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 159
    const/4 v1, 0x1

    .line 164
    .end local v2           #index:I
    .end local v5           #simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    .end local v6           #simSize:I
    .end local v7           #slot:I
    :cond_2
    iget-object v11, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonEsurfingGuide:Landroid/preference/Preference;

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    move v8, v9

    :goto_4
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 165
    return-void

    .end local v1           #hasRadioOnSim:Z
    .end local v3           #isAirplaneOn:Z
    :cond_3
    move v8, v10

    .line 144
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v8, "CallSettings"

    const-string v11, "onResume query settings exception"

    invoke-static {v8, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    move v3, v10

    .line 151
    goto :goto_2

    .line 156
    .restart local v1       #hasRadioOnSim:Z
    .restart local v2       #index:I
    .restart local v3       #isAirplaneOn:Z
    .restart local v5       #simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    .restart local v6       #simSize:I
    .restart local v7       #slot:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2           #index:I
    .end local v5           #simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    .end local v6           #simSize:I
    .end local v7           #slot:I
    :cond_6
    move v8, v10

    .line 164
    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 77
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings$1;-><init>(Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;)V

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 92
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 93
    const-string v0, "minute_reminder_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    .line 94
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->getMrState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 95
    const-string v0, "dual_mic_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    .line 97
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    :cond_1
    const-string v0, "button_tty_mode_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonTty:Landroid/preference/ListPreference;

    .line 109
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonTty:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 110
    const-string v0, "TTY"

    invoke-static {v0}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonTty:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    :cond_2
    :goto_0
    const-string v0, "button_esurfing_dialing"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonEsurfing:Landroid/preference/CheckBoxPreference;

    .line 119
    const-string v0, "button_esurfing_dialing_guide"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonEsurfingGuide:Landroid/preference/Preference;

    .line 120
    return-void

    .line 113
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonTty:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonTty:Landroid/preference/ListPreference;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 132
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    const-string v0, "CallSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange mButtonDualMic.isChecked()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->setDualMicMode(Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_1
    const-string v0, "1"

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonTty:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonEsurfingGuide:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v1, "com.mediatek.op09.plugin"

    const-string v2, "com.mediatek.calloption.plugin.ESurfingGuideSelectActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 182
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonEsurfing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ct_e_surfing_dialing_key"

    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonEsurfing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "CallSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick mButtonMr.isChecked()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f09009d

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->setMrState(Z)V

    goto :goto_0

    .line 178
    :cond_4
    const v1, 0x7f09009e

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 125
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->updateScreen()V

    .line 127
    return-void
.end method
