.class public Lcom/mediatek/mtklogger/settings/NetworkLogSettings;
.super Landroid/preference/PreferenceActivity;
.source "NetworkLogSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final KEY_NT_CATEGORY:Ljava/lang/String; = "networklog_category"

.field public static final KEY_NT_LOGSIZE:Ljava/lang/String; = "networklog_logsize"

.field public static final KEY_NT_PREFERENCE_SCREEN:Ljava/lang/String; = "networklog_preference_screen"

.field private static final LIMIT_LOG_SIZE:I = 0x64


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

.field private mDefaultSharedPreferences:Landroid/content/SharedPreferences;

.field private mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

.field private mNtAutoStartPre:Landroid/preference/CheckBoxPreference;

.field private mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

.field private mSdcardSize:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 27
    const-string v0, "MTKLogger/NetworkLogSettings"

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/settings/NetworkLogSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/mtklogger/settings/NetworkLogSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->setAllPreferencesEnable(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/mtklogger/settings/NetworkLogSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private findViews()V
    .locals 6

    .prologue
    const v5, 0x7f070044

    .line 78
    sget v1, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v1, v1

    const-wide v3, 0x400ffdf3b645a1cbL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 79
    const-string v1, "networklog_logsize"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    .line 98
    :goto_0
    const-string v1, "networklog_autostart"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtAutoStartPre:Landroid/preference/CheckBoxPreference;

    .line 99
    return-void

    .line 81
    :cond_0
    const-string v1, "networklog_preference_screen"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 82
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "networklog_logsize"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    new-instance v1, Lcom/mediatek/mtklogger/settings/NetworkLogSettings$1;

    invoke-direct {v1, p0, p0}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings$1;-><init>(Lcom/mediatek/mtklogger/settings/NetworkLogSettings;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    .line 90
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const-string v2, "networklog_logsize"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 92
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 93
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const v2, 0x7f070045

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 94
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const-string v2, "200"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private getIntByObj(Ljava/lang/Object;)I
    .locals 2
    .parameter "obj"

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 199
    :goto_0
    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initViews()V
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 102
    const-string v3, "MTKLogger/NetworkLogSettings"

    const-string v6, "initViews()"

    invoke-static {v3, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    .line 104
    const-string v3, "log_settings"

    invoke-virtual {p0, v3, v5}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 105
    new-instance v3, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-direct {v3, p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    .line 107
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "networklog_switch"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 108
    .local v1, isSwitchChecked:Z
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lcom/mediatek/mtklogger/utils/Utils;->checkLogStarted(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 109
    .local v0, isRecording:Z
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    invoke-virtual {v3, v1}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->setChecked(Z)V

    .line 110
    iget-object v6, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    if-nez v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->setEnabled(Z)V

    .line 111
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->setAllPreferencesEnable(Z)V

    .line 113
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "sdcardSize"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mSdcardSize:I

    .line 116
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mSdcardSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v4, 0x3

    const-string v3, "external_sd"

    invoke-static {}, Lcom/mediatek/mtklogger/utils/Utils;->getLogPathType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f07001b

    :goto_2
    invoke-virtual {p0, v3}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 119
    .local v2, objs:[Ljava/lang/Object;
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const v4, 0x7f070046

    invoke-virtual {p0, v4, v2}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    .end local v2           #objs:[Ljava/lang/Object;
    :cond_0
    move v3, v5

    .line 110
    goto :goto_0

    :cond_1
    move v3, v5

    .line 111
    goto :goto_1

    .line 116
    :cond_2
    const v3, 0x7f07001c

    goto :goto_2
.end method

.method private removeManualTitle()V
    .locals 2

    .prologue
    .line 72
    const-string v1, "networklog_preference_screen"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 73
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "networklog_category"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    return-void
.end method

.method private setAllPreferencesEnable(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 193
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "MTKLogger/NetworkLogSettings"

    const-string v1, "setListeners()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtAutoStartPre:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    new-instance v1, Lcom/mediatek/mtklogger/settings/NetworkLogSettings$2;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings$2;-><init>(Lcom/mediatek/mtklogger/settings/NetworkLogSettings;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->setOnCheckedChangeListener(Lcom/mediatek/mtklogger/settings/LogSwitchListener;)V

    .line 146
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/mediatek/mtklogger/settings/NetworkLogSettings$3;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings$3;-><init>(Lcom/mediatek/mtklogger/settings/NetworkLogSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->addPreferencesFromResource(I)V

    .line 50
    sget v0, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v0, v0

    const-wide v2, 0x400ffdf3b645a1cbL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 51
    new-instance v0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    .line 52
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->removeManualTitle()V

    .line 57
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->findViews()V

    .line 58
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->initViews()V

    .line 59
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->setListeners()V

    .line 60
    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->free()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    .line 68
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 69
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x4

    .line 181
    const-string v0, "MTKLogger/NetworkLogSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preference Change Key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "networklog_logsize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-direct {p0, p2}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->getIntByObj(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->setLogSize(II)Z

    .line 188
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "networklog_autostart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->setAutoStart(IZ)Z

    goto :goto_0
.end method
