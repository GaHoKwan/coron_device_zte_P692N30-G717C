.class public Lcom/android/settings/ConnectToPCSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ConnectToPCSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConnectToPCSettings$1;,
        Lcom/android/settings/ConnectToPCSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_TETHERING:I = 0x2

.field private static final DEBUG_APP_REQUEST:I = 0x1

.field static final DIALOG_CONNECT_DEFAULT_TYPE:I = 0x0

.field private static final INVALID:I = -0x1

.field private static final KEY_ASK_ME:Ljava/lang/String; = "ask_me"

.field private static final KEY_DEFAULT_CONNECT_TYPE:Ljava/lang/String; = "connect_to_pc_default_type"

.field private static final KEY_HELP:Ljava/lang/String; = "help"

.field private static final KEY_USB_CONFIG:Ljava/lang/String; = "persist.sys.usb.config"

.field private static final PROVISION_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConnectToPCSettings"

.field private static final TYPE_CDROM:I = 0x5

.field private static final TYPE_CHARGE_ONLY:I = 0x0

.field private static final TYPE_INVALID:I = 0x6

.field private static final TYPE_MTP:I = 0x2

.field private static final TYPE_PTP:I = 0x3

.field private static final TYPE_SYNC:I = 0x1

.field private static final TYPE_USB_TETHERING:I = 0x4

.field private static final USB_TETHERING:I = 0x1

.field private static final WIFI_TETHERING:I

.field private static curUsbFunction:Ljava/lang/String;


# instance fields
.field private getCurFunc:Ljava/lang/String;

.field private mAskMe:Landroid/preference/CheckBoxPreference;

.field private mConnectDefaultType:Landroid/preference/PreferenceScreen;

.field private mConnectTypevalue:I

.field private mDebugApp:Ljava/lang/String;

.field private mHelp:Landroid/preference/PreferenceScreen;

.field private mMassStorageActive:Z

.field private mProvisionApp:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mUsbConnected:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbRegexs:[Ljava/lang/String;

.field private mWaitForDebugger:Z

.field private systemproperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ConnectToPCSettings;->mConnectTypevalue:I

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ConnectToPCSettings;->mTetherChoice:I

    .line 215
    return-void
.end method

.method private UpdateConTypePreferenceSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "preferenceKey"
    .parameter "value"

    .prologue
    .line 262
    const-string v2, "ConnectToPCSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateConTypePreferenceSummary value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v2, "connect_to_pc_default_type"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    const-string v2, "ConnectToPCSettings"

    const-string v3, "KEY_DEFAULT_CONNECT_TYPE.equals(preference)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, conTypeSummary:[Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 268
    .local v1, conTypeValue:I
    const-string v2, "ConnectToPCSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conTypeValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v2, p0, Lcom/android/settings/ConnectToPCSettings;->mConnectDefaultType:Landroid/preference/PreferenceScreen;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    const-string v2, "ConnectToPCSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conTypeSummary[conTypeValue]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v0           #conTypeSummary:[Ljava/lang/String;
    .end local v1           #conTypeValue:I
    :cond_0
    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/ConnectToPCSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings/ConnectToPCSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/ConnectToPCSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings/ConnectToPCSettings;->mUsbConnected:Z

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 166
    const-string v5, "ConnectToPCSettings"

    const-string v8, "onCreate"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 170
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbManager;

    iput-object v5, p0, Lcom/android/settings/ConnectToPCSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 172
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 175
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ConnectToPCSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 176
    iget-object v5, p0, Lcom/android/settings/ConnectToPCSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_0

    move v4, v6

    .line 178
    .local v4, usbAvailable:Z
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x107001e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ConnectToPCSettings;->mProvisionApp:[Ljava/lang/String;

    .line 181
    const v5, 0x7f06000c

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 183
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 185
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v5, "connect_to_pc_default_type"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/ConnectToPCSettings;->mConnectDefaultType:Landroid/preference/PreferenceScreen;

    .line 186
    const-string v5, "ask_me"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/ConnectToPCSettings;->mAskMe:Landroid/preference/CheckBoxPreference;

    .line 187
    iget-object v5, p0, Lcom/android/settings/ConnectToPCSettings;->mAskMe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 189
    iget-object v5, p0, Lcom/android/settings/ConnectToPCSettings;->mAskMe:Landroid/preference/CheckBoxPreference;

    const-string v8, "connect_to_pc_ask_me"

    invoke-static {v3, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 193
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "connect_to_pc_default_type"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 195
    .local v1, initType:I
    const-string v5, "ConnectToPCSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate,initType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v5, "persist.sys.usb.config"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ConnectToPCSettings;->systemproperty:Ljava/lang/String;

    .line 197
    const-string v5, "ConnectToPCSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate,KEY_USB_CONFIG:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ConnectToPCSettings;->systemproperty:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v5, p0, Lcom/android/settings/ConnectToPCSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ConnectToPCSettings;->getCurFunc:Ljava/lang/String;

    .line 200
    const-string v5, "ConnectToPCSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate,getCurFunc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ConnectToPCSettings;->getCurFunc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v5, "help"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/ConnectToPCSettings;->mHelp:Landroid/preference/PreferenceScreen;

    .line 212
    const-string v5, "ConnectToPCSettings"

    const-string v6, "KEY_HELP"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .end local v1           #initType:I
    .end local v2           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v4           #usbAvailable:Z
    :cond_0
    move v4, v7

    .line 176
    goto/16 :goto_0

    .restart local v2       #prefSet:Landroid/preference/PreferenceScreen;
    .restart local v4       #usbAvailable:Z
    :cond_1
    move v6, v7

    .line 189
    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "ConnectToPCSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 234
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 150
    const-string v0, "ConnectToPCSettings"

    const-string v1, "onPreferenceChange"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 276
    const-string v0, "ConnectToPCSettings"

    const-string v1, "onPreferenceTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/settings/ConnectToPCSettings;->mAskMe:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 279
    const-string v0, "ConnectToPCSettings"

    const-string v1, "onPreferenceTreeClick,preference == mAskMe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "connect_to_pc_ask_me"

    iget-object v0, p0, Lcom/android/settings/ConnectToPCSettings;->mAskMe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 238
    const-string v2, "ConnectToPCSettings"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 241
    iget-object v2, p0, Lcom/android/settings/ConnectToPCSettings;->mConnectDefaultType:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/settings/ConnectToPCSettings;->mConnectDefaultType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "connect_to_pc_default_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 247
    .local v0, conType:I
    const-string v2, "ConnectToPCSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before UpdateConTypePreferenceSummary,conType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v2, "connect_to_pc_default_type"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/ConnectToPCSettings;->UpdateConTypePreferenceSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v0           #conType:I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ConnectToPCSettings;->mAskMe:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 253
    const-string v2, "ConnectToPCSettings"

    const-string v3, "before ,mAskMe,setChecked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v2, p0, Lcom/android/settings/ConnectToPCSettings;->mAskMe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connect_to_pc_ask_me"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 259
    :cond_1
    return-void

    .line 254
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 121
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 122
    const-string v3, "ConnectToPCSettings"

    const-string v4, "onStart,begin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 130
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Lcom/android/settings/ConnectToPCSettings$TetherChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/ConnectToPCSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/ConnectToPCSettings;Lcom/android/settings/ConnectToPCSettings$1;)V

    iput-object v3, p0, Lcom/android/settings/ConnectToPCSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/settings/ConnectToPCSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 134
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/android/settings/ConnectToPCSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/android/settings/ConnectToPCSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/ConnectToPCSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 145
    :cond_0
    const-string v3, "ConnectToPCSettings"

    const-string v4, "onStart end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 158
    const-string v0, "ConnectToPCSettings"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConnectToPCSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ConnectToPCSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    return-void
.end method
