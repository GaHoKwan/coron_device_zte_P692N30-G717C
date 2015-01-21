.class public Lcom/mediatek/settings/CallSettings;
.super Landroid/preference/PreferenceActivity;
.source "CallSettings.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallSettings"


# instance fields
.field private mExtension:Lcom/mediatek/phone/ext/ICallSettingsConnection;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mSipCallSetting:Landroid/preference/Preference;

.field mVTSetting:Landroid/preference/Preference;

.field mVoiceSetting:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 34
    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    .line 35
    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mSipCallSetting:Landroid/preference/Preference;

    .line 39
    new-instance v0, Lcom/mediatek/settings/CallSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CallSettings$1;-><init>(Lcom/mediatek/settings/CallSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/CallSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings;->setScreenEnabled()V

    return-void
.end method

.method private isOnlyVt()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, siminfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v1, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->getBaseband(I)I

    move-result v1

    const/4 v4, 0x3

    if-le v1, v4, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private setScreenEnabled()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 121
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 122
    .local v2, insertSim:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->get3GSimCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, insert3GSim:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 125
    iget-object v6, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 135
    .end local v1           #insert3GSim:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :goto_2
    return-void

    .restart local v1       #insert3GSim:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_1
    move v3, v5

    .line 125
    goto :goto_0

    :cond_2
    move v4, v5

    .line 127
    goto :goto_1

    .line 129
    .end local v1           #insert3GSim:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 130
    .local v0, hasSimCard:Z
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-eqz v3, :cond_4

    .line 131
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 133
    :cond_4
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {p0}, Lcom/mediatek/phone/ext/ExtensionManager;->getCallSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/phone/ext/ICallSettingsConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/CallSettings;->mExtension:Lcom/mediatek/phone/ext/ICallSettingsConnection;

    .line 55
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mExtension:Lcom/mediatek/phone/ext/ICallSettingsConnection;

    invoke-interface {v3, p0}, Lcom/mediatek/phone/ext/ICallSettingsConnection;->startCallSettingsActivity(Landroid/app/Activity;)V

    .line 57
    const v3, 0x7f060001

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 58
    const-string v3, "button_vedio_call_key"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 59
    const-string v3, "button_voice_call_key"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    .line 61
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v2

    .line 62
    .local v2, voipSupported:Z
    if-eqz v2, :cond_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "button_internet_call_key"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 68
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 69
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 72
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 76
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 78
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 80
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/mediatek/settings/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 85
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 88
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings;->isOnlyVt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-class v1, Lcom/mediatek/settings/VTAdvancedSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 104
    const/4 v1, 0x1

    .line 106
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return v1

    .line 101
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-class v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 106
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 112
    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings;->setScreenEnabled()V

    .line 113
    return-void
.end method
