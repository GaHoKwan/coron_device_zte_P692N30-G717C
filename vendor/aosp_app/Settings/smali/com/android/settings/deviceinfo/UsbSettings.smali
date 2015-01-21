.class public Lcom/android/settings/deviceinfo/UsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_BICR:Ljava/lang/String; = "usb_bicr"

.field private static final KEY_BYPASS:Ljava/lang/String; = "connect_to_pc"

.field private static final KEY_CHARGE:Ljava/lang/String; = "usb_charge"

.field private static final KEY_MTP:Ljava/lang/String; = "usb_mtp"

.field private static final KEY_NETWORK:Ljava/lang/String; = "use_mobileNetwork"

.field private static final KEY_PTP:Ljava/lang/String; = "usb_ptp"

.field private static final KEY_UMS:Ljava/lang/String; = "usb_ums"

.field private static final TAG:Ljava/lang/String; = "UsbSettings"

.field private static final USB_CHARGING_PHLUGIN:I = 0x2


# instance fields
.field private mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mBicrExist:Z

.field private mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mCanUpdateToggle:Z

.field private mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mChargeExist:Z

.field private mCurrentToggles:Ljava/lang/String;

.field private mIsHwUsbConnected:Z

.field private mIsPcKnowMe:Z

.field private mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mPlugType:I

.field private mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mUmsExist:Z

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I

    .line 73
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/UsbSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/deviceinfo/UsbSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I

    return p1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 152
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 153
    .local v4, root:Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    .line 154
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 156
    :cond_0
    const v5, 0x7f060047

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 157
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 159
    const-string v5, "usb_mtp"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 160
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    const-string v5, "usb_ptp"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 163
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    const-string v5, "usb_ums"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 166
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    const-string v5, "usb_charge"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 169
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    const-string v5, "usb_bicr"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 172
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    const-string v5, "connect_to_pc"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 176
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    const-string v5, "ro.sys.usb.storage.type"

    const-string v6, "mtp"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, config:Ljava/lang/String;
    const-string v5, "mtp,mass_storage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 184
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    iput-boolean v8, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    .line 188
    :cond_1
    const-string v5, "ro.sys.usb.charging.only"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, chargeConfig:Ljava/lang/String;
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.sys.usb.charging.only: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v5, "no"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 192
    const-string v5, "UsbSettings"

    const-string v6, "Usb Charge does not exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    iput-boolean v8, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    .line 197
    :cond_2
    const-string v5, "ro.sys.usb.bicr"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, bicrConfig:Ljava/lang/String;
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.sys.usb.bicr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v5, "no"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 201
    const-string v5, "UsbSettings"

    const-string v6, "Usb Bicr does not exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v5, "usb_connect_as_cdrom_category"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 203
    .local v1, cdromCategory:Landroid/preference/PreferenceCategory;
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    iput-boolean v8, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    .line 209
    .end local v1           #cdromCategory:Landroid/preference/PreferenceCategory;
    :cond_3
    return-object v4
.end method

.method private getCurrentFunction()Ljava/lang/String;
    .locals 5

    .prologue
    .line 140
    const-string v2, "sys.usb.config"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, functions:Ljava/lang/String;
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 144
    .local v0, commandIndex:I
    if-lez v0, :cond_0

    .line 145
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 147
    .end local v1           #functions:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 4
    .parameter "function"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 259
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 262
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 264
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 270
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 375
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v0, :cond_18

    .line 377
    const-string v0, "UsbSettings"

    const-string v1, "USB Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 384
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 387
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 390
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_5

    .line 391
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 412
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 413
    return-void

    .line 273
    :cond_6
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 274
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 275
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 278
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 280
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_7

    .line 281
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 283
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_8

    .line 284
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 286
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 289
    :cond_9
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 290
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 291
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 294
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 296
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_a

    .line 297
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 299
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_b

    .line 300
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 302
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 305
    :cond_c
    const-string v0, "charging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 306
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 307
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 310
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 312
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_d

    .line 313
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 315
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_e

    .line 316
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 318
    :cond_e
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 321
    :cond_f
    const-string v0, "bicr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 322
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 323
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 326
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 328
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_10

    .line 329
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 331
    :cond_10
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_11

    .line 332
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 334
    :cond_11
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 339
    :cond_12
    const-string v0, "via_bypass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 341
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 342
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 344
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 345
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_13

    .line 346
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 348
    :cond_13
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_14

    .line 349
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 351
    :cond_14
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 358
    :cond_15
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 359
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 362
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 364
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_16

    .line 365
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 367
    :cond_16
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_17

    .line 368
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 370
    :cond_17
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 394
    :cond_18
    const-string v0, "UsbSettings"

    const-string v1, "USB Accessory Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 401
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_19

    .line 402
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 404
    :cond_19
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_1a

    .line 405
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 407
    :cond_1a
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_5

    .line 408
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 215
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 216
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 221
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 418
    const-string v1, "UsbSettings"

    const-string v2, "onPreferenceChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    :goto_0
    return v4

    .line 427
    :cond_0
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 428
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 429
    .local v0, checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 435
    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_3

    .line 436
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 437
    const-string v1, "mtp"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "connect_to_pc_default_type"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    goto :goto_0

    .line 440
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_4

    .line 441
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ptp"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 442
    const-string v1, "ptp"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "connect_to_pc_default_type"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 445
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_5

    .line 446
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mass_storage"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 448
    const-string v1, "mass_storage"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "connect_to_pc_default_type"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 451
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_6

    .line 452
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "charging"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 454
    const-string v1, "charging"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "connect_to_pc_default_type"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 457
    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_7

    .line 458
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "bicr"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 459
    const-string v1, "bicr"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "connect_to_pc_default_type"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 463
    :cond_7
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "via_bypass"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 465
    const-string v1, "via_bypass"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "connect_to_pc_default_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 226
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 231
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 234
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "connect_to_pc_default_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, conType:I
    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 245
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v2, v4}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBypass:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v2, v4}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v2, v4}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 248
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v2, v4}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 249
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v2, v4}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 250
    :pswitch_5
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v2, v4}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
