.class public Lcom/android/inputmethod/latin/Settings;
.super Lcom/android/inputmethodcommon/InputMethodSettingsFragment;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final DEFAULT_KEY_PRESS_VOLUME_MS:I = 0x32

.field private static final DEFAULT_VIBRATION_DURATION_MS:I = 0x1e

.field public static final PREF_ADVANCED_SETTINGS:Ljava/lang/String; = "pref_advanced_settings"

.field public static final PREF_AUTO_CAP:Ljava/lang/String; = "auto_cap"

.field public static final PREF_AUTO_CORRECTION_THRESHOLD:Ljava/lang/String; = "auto_correction_threshold"

.field public static final PREF_BIGRAM_PREDICTIONS:Ljava/lang/String; = "next_word_prediction"

.field public static final PREF_CONFIGURE_DICTIONARIES_KEY:Ljava/lang/String; = "configure_dictionaries_key"

.field public static final PREF_CORRECTION_SETTINGS:Ljava/lang/String; = "correction_settings"

.field public static final PREF_CUSTOM_INPUT_STYLES:Ljava/lang/String; = "custom_input_styles"

.field public static final PREF_DEBUG_SETTINGS:Ljava/lang/String; = "debug_settings"

.field public static final PREF_GENERAL_SETTINGS:Ljava/lang/String; = "general_settings"

.field public static final PREF_GESTURE_FLOATING_PREVIEW_TEXT:Ljava/lang/String; = "pref_gesture_floating_preview_text"

.field public static final PREF_GESTURE_INPUT:Ljava/lang/String; = "gesture_input"

.field public static final PREF_GESTURE_PREVIEW_TRAIL:Ljava/lang/String; = "pref_gesture_preview_trail"

.field public static final PREF_GESTURE_TYPING_SETTINGS:Ljava/lang/String; = "gesture_typing_settings"

.field public static final PREF_INCLUDE_OTHER_IMES_IN_LANGUAGE_SWITCH_LIST:Ljava/lang/String; = "pref_include_other_imes_in_language_switch_list"

.field public static final PREF_INPUT_LANGUAGE:Ljava/lang/String; = "input_language"

.field public static final PREF_KEYPRESS_SOUND_VOLUME:Ljava/lang/String; = "pref_keypress_sound_volume"

.field public static final PREF_KEY_PREVIEW_POPUP_DISMISS_DELAY:Ljava/lang/String; = "pref_key_preview_popup_dismiss_delay"

.field public static final PREF_KEY_USE_CONTACTS_DICT:Ljava/lang/String; = "pref_key_use_contacts_dict"

.field public static final PREF_LAST_USER_DICTIONARY_WRITE_TIME:Ljava/lang/String; = "last_user_dictionary_write_time"

.field public static final PREF_MISC_SETTINGS:Ljava/lang/String; = "misc_settings"

.field public static final PREF_POPUP_ON:Ljava/lang/String; = "popup_on"

.field public static final PREF_SELECTED_LANGUAGES:Ljava/lang/String; = "selected_languages"

.field public static final PREF_SHOW_LANGUAGE_SWITCH_KEY:Ljava/lang/String; = "pref_show_language_switch_key"

.field public static final PREF_SHOW_SUGGESTIONS_SETTING:Ljava/lang/String; = "show_suggestions_setting"

.field public static final PREF_SOUND_ON:Ljava/lang/String; = "sound_on"

.field public static final PREF_VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field public static final PREF_VIBRATION_DURATION_SETTINGS:Ljava/lang/String; = "pref_vibration_duration_settings"

.field public static final PREF_VOICE_MODE:Ljava/lang/String; = "voice_mode"


# instance fields
.field private mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

.field private mBigramPrediction:Landroid/preference/CheckBoxPreference;

.field private mDebugSettingsPreference:Landroid/preference/Preference;

.field private mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

.field private mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

.field private mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

.field private mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

.field private mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

.field private mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

.field private mVoicePreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->showKeypressVibrationDurationSettingsDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->showKeypressSoundVolumeSettingDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/Settings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/Settings;->updateKeypressVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/Settings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/Settings;->updateKeypressSoundVolumeSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    return-void
.end method

.method private ensureConsistencyOfAutoCorrectionSettings()V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, autoCorrectionOff:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, currentSetting:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v2}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSuitableKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .locals 3
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 534
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/SettingsValues;->getCurrentKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 537
    .local v0, curVolume:I
    if-gez v0, :cond_0

    .line 538
    const/16 v0, 0x32

    .line 541
    :cond_0
    return v0
.end method

.method private getSuitableKeypressVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .locals 1
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 554
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/SettingsValues;->getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v0

    .line 556
    .local v0, curDuration:I
    if-gez v0, :cond_0

    .line 557
    const/16 v0, 0x1e

    .line 560
    :cond_0
    return v0
.end method

.method private refreshEnablingsOfKeypressSoundAndVibrationSettings(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 5
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 357
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    .line 358
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/inputmethod/latin/VibratorUtils;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/latin/VibratorUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/VibratorUtils;->hasVibrator()Z

    move-result v0

    .line 360
    .local v0, hasVibratorHardware:Z
    const-string v3, "vibrate_on"

    const v4, 0x7f090008

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 362
    .local v2, vibrateOnByUser:Z
    iget-object v4, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-static {v4, v3}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 366
    .end local v0           #hasVibratorHardware:Z
    .end local v2           #vibrateOnByUser:Z
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1

    .line 367
    const-string v3, "sound_on"

    const v4, 0x7f090007

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 369
    .local v1, soundOn:Z
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-static {v3, v1}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 371
    .end local v1           #soundOn:Z
    :cond_1
    return-void

    .line 362
    .restart local v0       #hasVibratorHardware:Z
    .restart local v2       #vibrateOnByUser:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static setPreferenceEnabled(Landroid/preference/Preference;Z)V
    .locals 0
    .parameter "preference"
    .parameter "enabled"

    .prologue
    .line 106
    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method private showKeypressSoundVolumeSettingDialog()V
    .locals 11

    .prologue
    .line 462
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 463
    .local v2, context:Landroid/content/Context;
    const-string v8, "audio"

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 464
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 467
    .local v6, sp:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 468
    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 474
    .local v4, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0b00bb

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 476
    const v8, 0x104000a

    new-instance v9, Lcom/android/inputmethod/latin/Settings$6;

    invoke-direct {v9, p0, v6, v4}, Lcom/android/inputmethod/latin/Settings$6;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 486
    const/high16 v8, 0x104

    new-instance v9, Lcom/android/inputmethod/latin/Settings$7;

    invoke-direct {v9, p0}, Lcom/android/inputmethod/latin/Settings$7;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 492
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04000a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 497
    .local v7, v:Landroid/view/View;
    invoke-direct {p0, v6, v4}, Lcom/android/inputmethod/latin/Settings;->getSuitableKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v3

    .line 499
    .local v3, currentVolumeInt:I
    const v8, 0x7f08004a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

    .line 501
    const v8, 0x7f08004b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 502
    .local v5, sb:Landroid/widget/SeekBar;
    new-instance v8, Lcom/android/inputmethod/latin/Settings$8;

    invoke-direct {v8, p0, v0}, Lcom/android/inputmethod/latin/Settings$8;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/media/AudioManager;)V

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 519
    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 520
    iget-object v8, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 522
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 523
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #currentVolumeInt:I
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #sb:Landroid/widget/SeekBar;
    .end local v7           #v:Landroid/view/View;
    :goto_0
    return-void

    .line 470
    :cond_0
    const-string v8, "Settings"

    const-string v9, "context is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showKeypressVibrationDurationSettingsDialog()V
    .locals 10

    .prologue
    .line 388
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 389
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 392
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 399
    .local v3, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 400
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0b00ba

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 401
    const v7, 0x104000a

    new-instance v8, Lcom/android/inputmethod/latin/Settings$3;

    invoke-direct {v8, p0, v5, v3}, Lcom/android/inputmethod/latin/Settings$3;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    const/high16 v7, 0x104

    new-instance v8, Lcom/android/inputmethod/latin/Settings$4;

    invoke-direct {v8, p0}, Lcom/android/inputmethod/latin/Settings$4;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040010

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 421
    .local v6, v:Landroid/view/View;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/inputmethod/latin/Settings;->getSuitableKeypressVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v2

    .line 425
    .local v2, currentMs:I
    const v7, 0x7f08004d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

    .line 426
    const v7, 0x7f08004e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 427
    .local v4, sb:Landroid/widget/SeekBar;
    new-instance v7, Lcom/android/inputmethod/latin/Settings$5;

    invoke-direct {v7, p0, v1}, Lcom/android/inputmethod/latin/Settings$5;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 444
    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 445
    iget-object v7, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 447
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 448
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #currentMs:I
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #sb:Landroid/widget/SeekBar;
    .end local v6           #v:Landroid/view/View;
    :goto_0
    return-void

    .line 395
    :cond_0
    const-string v7, "Settings"

    const-string v8, "context is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCustomInputStylesSummary()V
    .locals 11

    .prologue
    .line 327
    const-string v10, "custom_input_styles"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 329
    .local v1, customInputStyles:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 330
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 331
    .local v6, res:Landroid/content/res/Resources;
    invoke-static {v5, v6}, Lcom/android/inputmethod/latin/SettingsValues;->getPrefAdditionalSubtypes(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, prefSubtype:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/inputmethod/latin/AdditionalSubtype;->createAdditionalSubtypesArray(Ljava/lang/String;)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 334
    .local v9, subtypes:[Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v7, styles:Ljava/lang/StringBuilder;
    move-object v0, v9

    .local v0, arr$:[Landroid/view/inputmethod/InputMethodSubtype;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v8, v0, v2

    .line 336
    .local v8, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_0

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_0
    invoke-static {v8, v6}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeDisplayName(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v8           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 340
    return-void
.end method

.method private updateKeyPreviewPopupDelaySummary()V
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    .line 344
    .local v1, lp:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 345
    .local v0, entries:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateKeypressSoundVolumeSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/Settings;->getSuitableKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 459
    :cond_0
    return-void
.end method

.method private updateKeypressVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 3
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/Settings;->getSuitableKeypressVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b0027

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    :cond_0
    return-void
.end method

.method private updateShowCorrectionSuggestionsSummary()V
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method private updateVoiceModeSummary()V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "icicle"

    .prologue
    .line 120
    invoke-super/range {p0 .. p1}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v22, 0x7f0b008c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->setInputMethodSettingsCategoryTitle(I)V

    .line 122
    const v22, 0x7f0b009d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->setSubtypeEnablerTitle(I)V

    .line 123
    const v22, 0x7f06005c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 126
    .local v18, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 131
    .local v4, context:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/inputmethod/latin/SubtypeLocale;->init(Landroid/content/Context;)V

    .line 132
    const-string v22, "voice_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/ListPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    .line 133
    const-string v22, "show_suggestions_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/ListPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v17

    .line 136
    .local v17, prefs:Landroid/content/SharedPreferences;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 138
    const-string v22, "auto_correction_threshold"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/ListPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

    .line 140
    const-string v22, "next_word_prediction"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/Settings;->ensureConsistencyOfAutoCorrectionSettings()V

    .line 143
    const-string v22, "general_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 145
    .local v7, generalSettings:Landroid/preference/PreferenceGroup;
    const-string v22, "correction_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceGroup;

    .line 147
    .local v21, textCorrectionGroup:Landroid/preference/PreferenceGroup;
    const-string v22, "misc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceGroup;

    .line 150
    .local v14, miscSettings:Landroid/preference/PreferenceGroup;
    const-string v22, "debug_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mDebugSettingsPreference:Landroid/preference/Preference;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mDebugSettingsPreference:Landroid/preference/Preference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mDebugSettingsPreference:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    :cond_0
    const v22, 0x7f090002

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    .line 164
    .local v20, showVoiceKeyOption:Z
    if-nez v20, :cond_1

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_1
    const-string v22, "pref_advanced_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 170
    .local v3, advancedSettings:Landroid/preference/PreferenceGroup;
    invoke-static {v4}, Lcom/android/inputmethod/latin/VibratorUtils;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/latin/VibratorUtils;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/inputmethod/latin/VibratorUtils;->hasVibrator()Z

    move-result v22

    if-nez v22, :cond_2

    .line 171
    const-string v22, "vibrate_on"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    if-eqz v3, :cond_2

    .line 173
    const-string v22, "pref_vibration_duration_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_2
    const v22, 0x7f090003

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 179
    .local v19, showKeyPreviewPopupOption:Z
    const-string v22, "pref_key_preview_popup_dismiss_delay"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/ListPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    .line 181
    if-nez v19, :cond_7

    .line 182
    const-string v22, "popup_on"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    if-eqz v3, :cond_3

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    :cond_3
    :goto_0
    const-string v22, "pref_include_other_imes_in_language_switch_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/inputmethod/latin/SettingsValues;->showsLanguageSwitchKey(Landroid/content/SharedPreferences;)Z

    move-result v23

    invoke-static/range {v22 .. v23}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 206
    const-string v22, "configure_dictionaries_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 208
    .local v5, dictionaryLink:Landroid/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 210
    .local v13, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v15

    .line 211
    .local v15, number:I
    if-gtz v15, :cond_4

    .line 212
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    :cond_4
    const v22, 0x7f09000d

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 217
    .local v9, gestureInputEnabledByBuildConfig:Z
    const-string v22, "pref_gesture_preview_trail"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 218
    .local v11, gesturePreviewTrail:Landroid/preference/Preference;
    const-string v22, "pref_gesture_floating_preview_text"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 220
    .local v8, gestureFloatingPreviewText:Landroid/preference/Preference;
    if-nez v9, :cond_9

    .line 224
    const-string v22, "gesture_typing_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceGroup;

    .line 226
    .local v12, gestureSettings:Landroid/preference/PreferenceGroup;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    .end local v12           #gestureSettings:Landroid/preference/PreferenceGroup;
    :goto_1
    const-string v22, "pref_vibration_duration_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/inputmethod/latin/Settings$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/Settings$1;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Settings;->updateKeypressVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 248
    :cond_5
    const-string v22, "pref_keypress_sound_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/inputmethod/latin/Settings$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/Settings$2;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Settings;->updateKeypressSoundVolumeSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 261
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Settings;->refreshEnablingsOfKeypressSoundAndVibrationSettings(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 262
    return-void

    .line 187
    .end local v5           #dictionaryLink:Landroid/preference/PreferenceScreen;
    .end local v8           #gestureFloatingPreviewText:Landroid/preference/Preference;
    .end local v9           #gestureInputEnabledByBuildConfig:Z
    .end local v11           #gesturePreviewTrail:Landroid/preference/Preference;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v15           #number:I
    :cond_7
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v6, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const v23, 0x7f0b0042

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v22

    const/16 v22, 0x1

    const v23, 0x7f0b0043

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v22

    .line 191
    .local v6, entries:[Ljava/lang/String;
    const v22, 0x7f0a000b

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 193
    .local v16, popupDismissDelayDefaultValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "0"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v16, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_8

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 199
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-static/range {v17 .. v18}, Lcom/android/inputmethod/latin/SettingsValues;->isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v23

    invoke-static/range {v22 .. v23}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    goto/16 :goto_0

    .line 229
    .end local v6           #entries:[Ljava/lang/String;
    .end local v16           #popupDismissDelayDefaultValue:Ljava/lang/String;
    .restart local v5       #dictionaryLink:Landroid/preference/PreferenceScreen;
    .restart local v8       #gestureFloatingPreviewText:Landroid/preference/Preference;
    .restart local v9       #gestureInputEnabledByBuildConfig:Z
    .restart local v11       #gesturePreviewTrail:Landroid/preference/Preference;
    .restart local v13       #intent:Landroid/content/Intent;
    .restart local v15       #number:I
    :cond_9
    const-string v22, "gesture_input"

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 230
    .local v10, gestureInputEnabledByUser:Z
    invoke-static {v11, v10}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 231
    invoke-static {v8, v10}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 288
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 289
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 266
    invoke-super {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->onResume()V

    .line 267
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeEnabled()Z

    move-result v1

    .line 268
    .local v1, isShortcutImeEnabled:Z
    if-eqz v1, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateVoiceModeSummary()V

    .line 279
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateShowCorrectionSuggestionsSummary()V

    .line 280
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateKeyPreviewPopupDelaySummary()V

    .line 281
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateCustomInputStylesSummary()V

    .line 282
    return-void

    .line 272
    :cond_1
    const-string v2, "general_settings"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 274
    .local v0, generalSettings:Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    .line 275
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "prefs"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 293
    new-instance v2, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 294
    const-string v2, "popup_on"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    const-string v2, "pref_key_preview_popup_dismiss_delay"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "popup_on"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 312
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->ensureConsistencyOfAutoCorrectionSettings()V

    .line 313
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateVoiceModeSummary()V

    .line 314
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateShowCorrectionSuggestionsSummary()V

    .line 315
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateKeyPreviewPopupDelaySummary()V

    .line 316
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/inputmethod/latin/Settings;->refreshEnablingsOfKeypressSoundAndVibrationSettings(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 317
    return-void

    .line 297
    :cond_1
    const-string v2, "pref_show_language_switch_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    const-string v2, "pref_include_other_imes_in_language_switch_list"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {p1}, Lcom/android/inputmethod/latin/SettingsValues;->showsLanguageSwitchKey(Landroid/content/SharedPreferences;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 300
    :cond_2
    const-string v2, "gesture_input"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 303
    .local v0, gestureInputEnabledByConfig:Z
    if-eqz v0, :cond_0

    .line 304
    const-string v2, "gesture_input"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 306
    .local v1, gestureInputEnabledByUser:Z
    const-string v2, "pref_gesture_preview_trail"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 308
    const-string v2, "pref_gesture_floating_preview_text"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    goto :goto_0
.end method
