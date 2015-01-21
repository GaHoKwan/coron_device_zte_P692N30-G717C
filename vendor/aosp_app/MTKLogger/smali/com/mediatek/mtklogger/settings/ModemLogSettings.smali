.class public Lcom/mediatek/mtklogger/settings/ModemLogSettings;
.super Landroid/preference/PreferenceActivity;
.source "ModemLogSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final KEY_MD_CATEGORY:Ljava/lang/String; = "modemlog_category"

.field public static final KEY_MD_LOGSIZE:Ljava/lang/String; = "modemlog_logsize"

.field public static final KEY_MD_MODE:Ljava/lang/String; = "log_mode"

.field public static final KEY_MD_PREFERENCE_SCREEN:Ljava/lang/String; = "modemlog_preference_screen"

.field private static final LIMIT_LOG_SIZE:I = 0x258


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

.field private mDefaultSharedPreferences:Landroid/content/SharedPreferences;

.field private mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

.field private mMdAutoStartPre:Landroid/preference/CheckBoxPreference;

.field private mMdLogModeList:Landroid/preference/ListPreference;

.field private mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

.field private mSdcardSize:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 30
    const-string v0, "MTKLogger/ModemLogSettings"

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/settings/ModemLogSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/mtklogger/settings/ModemLogSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->setAllPreferencesEnable(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/mtklogger/settings/ModemLogSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private findViews()V
    .locals 6

    .prologue
    const v5, 0x7f070044

    .line 82
    const-string v1, "log_mode"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogModeList:Landroid/preference/ListPreference;

    .line 84
    sget v1, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v1, v1

    const-wide v3, 0x400ffdf3b645a1cbL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 85
    const-string v1, "modemlog_logsize"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    .line 104
    :goto_0
    const-string v1, "modemlog_autostart"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdAutoStartPre:Landroid/preference/CheckBoxPreference;

    .line 105
    return-void

    .line 87
    :cond_0
    const-string v1, "modemlog_preference_screen"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 88
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "modemlog_logsize"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    new-instance v1, Lcom/mediatek/mtklogger/settings/ModemLogSettings$1;

    invoke-direct {v1, p0, p0}, Lcom/mediatek/mtklogger/settings/ModemLogSettings$1;-><init>(Lcom/mediatek/mtklogger/settings/ModemLogSettings;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    .line 96
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const-string v2, "modemlog_logsize"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 98
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 99
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const v2, 0x7f070045

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 100
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const-string v2, "600"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private getIntByObj(Ljava/lang/Object;)I
    .locals 2
    .parameter "obj"

    .prologue
    .line 236
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 238
    :goto_0
    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initViews()V
    .locals 12

    .prologue
    const/16 v11, 0x258

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 108
    const-string v5, "MTKLogger/ModemLogSettings"

    const-string v8, "initViews()"

    invoke-static {v5, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    .line 110
    const-string v5, "log_settings"

    invoke-virtual {p0, v5, v7}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 111
    new-instance v5, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-direct {v5, p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    .line 113
    iget-object v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "modemlog_switch"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 114
    .local v1, isSwitchChecked:Z
    iget-object v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v5}, Lcom/mediatek/mtklogger/utils/Utils;->checkLogStarted(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 115
    .local v0, isRecording:Z
    iget-object v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    invoke-virtual {v5, v1}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->setChecked(Z)V

    .line 116
    iget-object v8, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    if-nez v0, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->setEnabled(Z)V

    .line 117
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->setAllPreferencesEnable(Z)V

    .line 119
    iget-object v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "log_mode"

    const-string v9, ""

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, logModeValue:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    const v5, 0x7f07007f

    invoke-virtual {p0, v5}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string v5, "MTKLogger/ModemLogSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No default log mode value stored in default shared preference, try to get it from string res, logModeValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogModeList:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 126
    .local v4, selectedMode:I
    if-gez v4, :cond_1

    .line 127
    const-string v5, "MTKLogger/ModemLogSettings"

    const-string v8, "Fail to select the given mode, just take the first one."

    invoke-static {v5, v8}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    iget-object v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogModeList:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 130
    iget-object v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogModeList:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogModeList:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "sdcardSize"

    invoke-virtual {v5, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mSdcardSize:I

    .line 135
    const/4 v5, 0x4

    new-array v3, v5, [Ljava/lang/Object;

    const v5, 0x7f07000d

    invoke-virtual {p0, v5}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    iget v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mSdcardSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v10

    const/4 v6, 0x3

    const-string v5, "external_sd"

    invoke-static {}, Lcom/mediatek/mtklogger/utils/Utils;->getLogPathType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f07001b

    :goto_2
    invoke-virtual {p0, v5}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 138
    .local v3, objs:[Ljava/lang/Object;
    iget-object v5, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const v6, 0x7f070046

    invoke-virtual {p0, v6, v3}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 139
    return-void

    .end local v2           #logModeValue:Ljava/lang/String;
    .end local v3           #objs:[Ljava/lang/Object;
    .end local v4           #selectedMode:I
    :cond_2
    move v5, v7

    .line 116
    goto/16 :goto_0

    :cond_3
    move v5, v7

    .line 117
    goto/16 :goto_1

    .line 135
    .restart local v2       #logModeValue:Ljava/lang/String;
    .restart local v4       #selectedMode:I
    :cond_4
    const v5, 0x7f07001c

    goto :goto_2
.end method

.method private removeManualTitle()V
    .locals 2

    .prologue
    .line 77
    const-string v1, "modemlog_preference_screen"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 78
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "modemlog_category"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    return-void
.end method

.method private setAllPreferencesEnable(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogModeList:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogModeList:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogModeList:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "MTKLogger/ModemLogSettings"

    const-string v1, "setListeners()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogModeList:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdAutoStartPre:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    new-instance v1, Lcom/mediatek/mtklogger/settings/ModemLogSettings$2;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/settings/ModemLogSettings$2;-><init>(Lcom/mediatek/mtklogger/settings/ModemLogSettings;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->setOnCheckedChangeListener(Lcom/mediatek/mtklogger/settings/LogSwitchListener;)V

    .line 166
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/mediatek/mtklogger/settings/ModemLogSettings$3;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/settings/ModemLogSettings$3;-><init>(Lcom/mediatek/mtklogger/settings/ModemLogSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->addPreferencesFromResource(I)V

    .line 55
    sget v0, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v0, v0

    const-wide v2, 0x400ffdf3b645a1cbL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 56
    new-instance v0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    .line 57
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->removeManualTitle()V

    .line 62
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->findViews()V

    .line 63
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->initViews()V

    .line 64
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->setListeners()V

    .line 65
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->free()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    .line 73
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 74
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x2

    .line 201
    const-string v3, "MTKLogger/ModemLogSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preference Change Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "log_mode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p2

    .line 204
    check-cast v0, Ljava/lang/String;

    .line 205
    .local v0, logModeValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogModeList:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 206
    .local v1, selectedMode:I
    if-gez v1, :cond_1

    .line 207
    const-string v2, "MTKLogger/ModemLogSettings"

    const-string v3, "Fail to select the given mode, ignore."

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v2, 0x0

    .line 220
    .end local v0           #logModeValue:Ljava/lang/String;
    .end local v1           #selectedMode:I
    :cond_0
    :goto_0
    return v2

    .line 210
    .restart local v0       #logModeValue:Ljava/lang/String;
    .restart local v1       #selectedMode:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogModeList:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdLogModeList:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdAutoStartPre:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mMdAutoStartPre:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {v3, v6, v2}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->setAutoStart(IZ)Z

    goto :goto_0

    .line 215
    .end local v0           #logModeValue:Ljava/lang/String;
    .end local v1           #selectedMode:I
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "modemlog_logsize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 216
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-direct {p0, p2}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->getIntByObj(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->setLogSize(II)Z

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "modemlog_autostart"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->setAutoStart(IZ)Z

    goto :goto_0
.end method
