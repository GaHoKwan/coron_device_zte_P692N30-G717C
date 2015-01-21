.class public Lcom/mediatek/mtklogger/settings/MobileLogSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileLogSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final KEY_MB_ANDROID_LOG:Ljava/lang/String; = "mobilelog_androidlog"

.field public static final KEY_MB_BT_LOG:Ljava/lang/String; = "mobilelog_btlog"

.field public static final KEY_MB_CATEGORY:Ljava/lang/String; = "mobilelog_category"

.field public static final KEY_MB_KERNEL_LOG:Ljava/lang/String; = "mobilelog_kernellog"

.field public static final KEY_MB_LOGSIZE:Ljava/lang/String; = "mobilelog_logsize"

.field public static final KEY_MB_PREFERENCE_SCREEN:Ljava/lang/String; = "mobilelog_preference_screen"

.field public static final KEY_MB_TOTAL_LOGSIZE:Ljava/lang/String; = "mobilelog_total_logsize"

.field private static final LIMIT_LOG_SIZE:I = 0x64


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

.field private mDefaultSharedPreferences:Landroid/content/SharedPreferences;

.field private mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

.field private mMbAndroidLog:Landroid/preference/CheckBoxPreference;

.field private mMbAutoStartPre:Landroid/preference/CheckBoxPreference;

.field private mMbBluetoothLog:Landroid/preference/CheckBoxPreference;

.field private mMbKernelLog:Landroid/preference/CheckBoxPreference;

.field private mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

.field private mMbTotalLogSizeLimitPre:Landroid/preference/EditTextPreference;

.field private mSdcardSize:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTotalLogSizeBottom:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 29
    const-string v0, "MTKLogger/MobileLogSettings"

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/settings/MobileLogSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/mtklogger/settings/MobileLogSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->setAllPreferencesEnable(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/mtklogger/settings/MobileLogSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/mtklogger/settings/MobileLogSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbTotalLogSizeLimitPre:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/mtklogger/settings/MobileLogSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mTotalLogSizeBottom:I

    return v0
.end method

.method private findViews()V
    .locals 6

    .prologue
    const v5, 0x7f070044

    .line 88
    const-string v1, "mobilelog_androidlog"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbAndroidLog:Landroid/preference/CheckBoxPreference;

    .line 89
    const-string v1, "mobilelog_kernellog"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbKernelLog:Landroid/preference/CheckBoxPreference;

    .line 90
    const-string v1, "mobilelog_btlog"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbBluetoothLog:Landroid/preference/CheckBoxPreference;

    .line 91
    const-string v1, "mobilelog_autostart"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbAutoStartPre:Landroid/preference/CheckBoxPreference;

    .line 93
    sget v1, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v1, v1

    const-wide v3, 0x400ffdf3b645a1cbL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 94
    const-string v1, "mobilelog_logsize"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    .line 113
    :goto_0
    const-string v1, "mobilelog_total_logsize"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbTotalLogSizeLimitPre:Landroid/preference/EditTextPreference;

    .line 114
    return-void

    .line 96
    :cond_0
    const-string v1, "mobilelog_preference_screen"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 97
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "mobilelog_logsize"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    new-instance v1, Lcom/mediatek/mtklogger/settings/MobileLogSettings$1;

    invoke-direct {v1, p0, p0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings$1;-><init>(Lcom/mediatek/mtklogger/settings/MobileLogSettings;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    .line 105
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const-string v2, "mobilelog_logsize"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 107
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 108
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const v2, 0x7f070045

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 109
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const-string v2, "300"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private getIntByObj(Ljava/lang/Object;)I
    .locals 2
    .parameter "obj"

    .prologue
    .line 298
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 300
    :goto_0
    return v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTotalLogSizeBottom()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mobilelog_logsize"

    sget-object v2, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initViews()V
    .locals 10

    .prologue
    const v9, 0x7f07000c

    const/16 v7, 0x64

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 117
    const-string v3, "MTKLogger/MobileLogSettings"

    const-string v6, "initViews()"

    invoke-static {v3, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    .line 119
    const-string v3, "log_settings"

    invoke-virtual {p0, v3, v5}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 120
    new-instance v3, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-direct {v3, p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    .line 123
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "mobilelog_switch"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 124
    .local v1, isSwitchChecked:Z
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lcom/mediatek/mtklogger/utils/Utils;->checkLogStarted(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 125
    .local v0, isRecording:Z
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    invoke-virtual {v3, v1}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->setChecked(Z)V

    .line 126
    iget-object v6, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    if-nez v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->setEnabled(Z)V

    .line 127
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->setAllPreferencesEnable(Z)V

    .line 129
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 130
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "sdcardSize"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mSdcardSize:I

    .line 132
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mSdcardSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v6, 0x3

    const-string v3, "external_sd"

    invoke-static {}, Lcom/mediatek/mtklogger/utils/Utils;->getLogPathType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f07001b

    :goto_2
    invoke-virtual {p0, v3}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 135
    .local v2, objs:[Ljava/lang/Object;
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const v6, 0x7f070038

    invoke-virtual {p0, v6, v2}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbTotalLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 138
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbTotalLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const v6, 0x7f07003b

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getTotalLogSizeBottom()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 141
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getTotalLogSizeBottom()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getIntByObj(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mTotalLogSizeBottom:I

    .line 142
    return-void

    .end local v2           #objs:[Ljava/lang/Object;
    :cond_0
    move v3, v5

    .line 126
    goto/16 :goto_0

    :cond_1
    move v3, v5

    .line 127
    goto/16 :goto_1

    .line 132
    :cond_2
    const v3, 0x7f07001c

    goto :goto_2
.end method

.method private removeManualTitle()V
    .locals 2

    .prologue
    .line 83
    const-string v1, "mobilelog_preference_screen"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 84
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "mobilelog_category"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    return-void
.end method

.method private setAllPreferencesEnable(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbAndroidLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbKernelLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbBluetoothLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbTotalLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 294
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "MTKLogger/MobileLogSettings"

    const-string v1, "setListeners()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbAndroidLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbKernelLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbBluetoothLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbAutoStartPre:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbTotalLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    new-instance v1, Lcom/mediatek/mtklogger/settings/MobileLogSettings$2;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings$2;-><init>(Lcom/mediatek/mtklogger/settings/MobileLogSettings;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->setOnCheckedChangeListener(Lcom/mediatek/mtklogger/settings/LogSwitchListener;)V

    .line 182
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/mediatek/mtklogger/settings/MobileLogSettings$3;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings$3;-><init>(Lcom/mediatek/mtklogger/settings/MobileLogSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 215
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbTotalLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/mediatek/mtklogger/settings/MobileLogSettings$4;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings$4;-><init>(Lcom/mediatek/mtklogger/settings/MobileLogSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 246
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->addPreferencesFromResource(I)V

    .line 61
    sget v0, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v0, v0

    const-wide v2, 0x400ffdf3b645a1cbL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 62
    new-instance v0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    .line 63
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->removeManualTitle()V

    .line 68
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->findViews()V

    .line 69
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->initViews()V

    .line 70
    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->setListeners()V

    .line 71
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mBarSwitch:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->free()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    .line 79
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 80
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 250
    const-string v3, "MTKLogger/MobileLogSettings"

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

    .line 252
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobilelog_androidlog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->setMobileSubLogEnableState(IZ)Z

    .line 285
    :cond_0
    :goto_0
    return v8

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobilelog_kernellog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->setMobileSubLogEnableState(IZ)Z

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobilelog_btlog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 257
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    const/4 v4, 0x3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->setMobileSubLogEnableState(IZ)Z

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobilelog_logsize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 259
    invoke-direct {p0, p2}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getIntByObj(Ljava/lang/Object;)I

    move-result v1

    .line 260
    .local v1, newLogSize:I
    iget-object v4, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "mobilelog_total_logsize"

    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getIntByObj(Ljava/lang/Object;)I

    move-result v2

    .line 262
    .local v2, oldTotalLogSize:I
    iget v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mSdcardSize:I

    if-lez v3, :cond_4

    iget v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mSdcardSize:I

    if-le v1, v3, :cond_4

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current size exceed storage capability["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]MB, so log recycle maybe disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, msgStr:Ljava/lang/String;
    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 265
    const-string v3, "MTKLogger/MobileLogSettings"

    invoke-static {v3, v0}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v0           #msgStr:Ljava/lang/String;
    :cond_4
    if-le v1, v2, :cond_5

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current size exceed total size value, reset total log size value to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .restart local v0       #msgStr:Ljava/lang/String;
    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 271
    const-string v3, "MTKLogger/MobileLogSettings"

    invoke-static {v3, v0}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbTotalLogSizeLimitPre:Landroid/preference/EditTextPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {v3, v8, v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->setTotalLogSize(II)Z

    .line 275
    .end local v0           #msgStr:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mMbTotalLogSizeLimitPre:Landroid/preference/EditTextPreference;

    const v4, 0x7f07003b

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f07000c

    invoke-virtual {p0, v7}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 277
    iput v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mTotalLogSizeBottom:I

    .line 278
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-direct {p0, p2}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getIntByObj(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->setLogSize(II)Z

    goto/16 :goto_0

    .line 279
    .end local v1           #newLogSize:I
    .end local v2           #oldTotalLogSize:I
    :cond_6
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobilelog_autostart"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 280
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->setAutoStart(IZ)Z

    goto/16 :goto_0

    .line 281
    :cond_7
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobilelog_total_logsize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    const-string v3, "MTKLogger/MobileLogSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New total log size value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-direct {p0, p2}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->getIntByObj(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->setTotalLogSize(II)Z

    goto/16 :goto_0
.end method
