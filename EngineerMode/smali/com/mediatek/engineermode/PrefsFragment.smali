.class public Lcom/mediatek/engineermode/PrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "PrefsFragment.java"


# static fields
.field private static final FRAGMENT_RES:[I = null

.field private static final INNER_LOAD_INDICATOR_FILE:Ljava/lang/String; = "/system/etc/system_update/address.xml"

.field private static final MTK_NFC_CHIP_TYPE_MSR3110:I = 0x1

.field private static final MTK_NFC_CHIP_TYPE_MT6605:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EM/PrefsFragment"


# instance fields
.field private mXmlResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/engineermode/PrefsFragment;->FRAGMENT_RES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xct 0x0t 0x4t 0x7ft
        0x1t 0x0t 0x4t 0x7ft
        0x3t 0x0t 0x4t 0x7ft
        0x5t 0x0t 0x4t 0x7ft
        0x6t 0x0t 0x4t 0x7ft
        0x9t 0x0t 0x4t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 75
    return-void
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isVoiceCapable()Z
    .locals 5

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 331
    .local v1, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 333
    .local v0, bVoiceCapable:Z
    :goto_0
    const-string v2, "EM/PrefsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sIsVoiceCapable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v0

    .line 331
    .end local v0           #bVoiceCapable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiOnly()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 338
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 340
    .local v1, connManager:Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    .line 341
    .local v0, bWifiOnly:Z
    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 345
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 342
    goto :goto_0
.end method

.method private removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1
    .parameter "prefScreen"
    .parameter "prefId"

    .prologue
    .line 322
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 323
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x4

    .line 89
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    sget-object v4, Lcom/mediatek/engineermode/PrefsFragment;->FRAGMENT_RES:[I

    iget v5, p0, Lcom/mediatek/engineermode/PrefsFragment;->mXmlResId:I

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 93
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 101
    .local v3, screen:Landroid/preference/PreferenceScreen;
    const-string v4, "digital_standard"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/mediatek/engineermode/ModemCategory;->getModemType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 103
    const-string v4, "rat_mode"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 109
    :cond_0
    const-string v4, "network_select"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 131
    const-string v4, "EM/PrefsFragment"

    const-string v5, "no nfc chip support"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v4, "hqanfc"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 135
    const-string v4, "nfc_dta"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 143
    const-string v4, "ext_md_logger"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 155
    const-string v4, "cmmb"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 158
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 159
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    const-string v4, "fm_transmitter"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 168
    :cond_1
    :goto_0
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v6}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 170
    :cond_2
    const-string v4, "location_basedservice"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 173
    :cond_3
    invoke-static {v6}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 174
    const-string v4, "ygps"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 175
    const-string v4, "cw_test"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 179
    :cond_4
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 180
    const-string v4, "matv"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 184
    :cond_5
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 185
    const-string v4, "bluetooth"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 189
    :cond_6
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 190
    const-string v4, "wifi"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 193
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/engineermode/PrefsFragment;->isVoiceCapable()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/mediatek/engineermode/PrefsFragment;->isWifiOnly()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 194
    :cond_8
    const-string v4, "auto_answer"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 195
    const-string v4, "repeat_call_test"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 196
    const-string v4, "video_telephony"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 200
    :cond_9
    const-string v4, "video_telephony"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/mediatek/engineermode/PrefsFragment;->isWifiOnly()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 204
    const-string v4, "GPRS"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 205
    const-string v4, "Modem"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 206
    const-string v4, "NetworkInfo"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 207
    const-string v4, "Baseband"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 208
    const-string v4, "SIMMeLock"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 209
    const-string v4, "BandMode"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 210
    const-string v4, "RAT Mode"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 211
    const-string v4, "SWLA"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 212
    const-string v4, "ModemTest"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 224
    :cond_a
    const-string v4, "simme_lock1"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 231
    const-string v4, "EM/PrefsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChipSupport.getChip(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/16 v4, 0x10

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v5

    if-le v4, v5, :cond_12

    .line 233
    const-string v4, "de_sense"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 234
    const-string v4, "camera89"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 240
    :goto_1
    const-string v4, "fast_dormancy"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/etc/system_update/address.xml"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, innerLoadIndicator:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_b

    .line 245
    const-string v4, "system_update"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 247
    :cond_b
    sget-object v4, Lcom/mediatek/engineermode/ChipSupport;->CHIP_657X_SERIES_NEW:[I

    invoke-static {v4}, Lcom/mediatek/engineermode/ChipSupport;->isChipInSet([I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 248
    const-string v4, "deep_idle"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 249
    const-string v4, "sleep_mode"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 250
    const-string v4, "dcm"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 251
    const-string v4, "pll_cg"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 252
    const-string v4, "cpu_dvfs"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 253
    const-string v4, "mcdi_setting"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 260
    :cond_c
    const-string v4, "cmas"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 261
    .local v2, pref:Landroid/preference/Preference;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/PrefsFragment;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 262
    const-string v4, "cmas"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 266
    :cond_d
    const-string v4, "world_phone"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 273
    const-string v4, "ro.operator.optr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, mOptr:Ljava/lang/String;
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 275
    const-string v4, "ConfigureCheck2_Send_Test"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 276
    const-string v4, "ConfigureCheck2_Self_Test"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 279
    :cond_e
    const-string v4, "OP09"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 280
    const-string v4, "swla"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 281
    const-string v4, "network_select"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 282
    const-string v4, "dualtalk_network_select"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 291
    :goto_2
    invoke-static {}, Lcom/mediatek/engineermode/cip/CipUtil;->isCipSupported()Z

    move-result v4

    if-nez v4, :cond_f

    .line 292
    const-string v4, "cip"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 296
    :cond_f
    const-string v4, "dfo"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 302
    const/16 v4, 0x28

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v5

    if-ne v4, v5, :cond_10

    .line 303
    const-string v4, "modem_warning"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 305
    :cond_10
    return-void

    .line 163
    .end local v0           #innerLoadIndicator:Ljava/io/File;
    .end local v1           #mOptr:Ljava/lang/String;
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_11
    const-string v4, "fm_receiver"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 164
    const-string v4, "fm_transmitter"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :cond_12
    const-string v4, "camera"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 284
    .restart local v0       #innerLoadIndicator:Ljava/io/File;
    .restart local v1       #mOptr:Ljava/lang/String;
    .restart local v2       #pref:Landroid/preference/Preference;
    :cond_13
    const-string v4, "cdma_network_select"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 309
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 310
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 311
    .local v4, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 312
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 313
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 314
    .local v3, pre:Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 315
    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 316
    .local v2, intent:Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/PrefsFragment;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 312
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v3           #pre:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public setResource(I)V
    .locals 0
    .parameter "resIndex"

    .prologue
    .line 84
    iput p1, p0, Lcom/mediatek/engineermode/PrefsFragment;->mXmlResId:I

    .line 85
    return-void
.end method
