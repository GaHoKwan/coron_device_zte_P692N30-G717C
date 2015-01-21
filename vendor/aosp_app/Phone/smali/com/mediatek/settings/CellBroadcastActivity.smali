.class public Lcom/mediatek/settings/CellBroadcastActivity;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CellBroadcastActivity.java"


# static fields
.field private static final BUTTON_CB_CHECKBOX_KEY:Ljava/lang/String; = "enable_cellBroadcast"

.field private static final BUTTON_CB_SETTINGS_KEY:Ljava/lang/String; = "cbsettings"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CellBroadcastActivity"


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mCBCheckBox:Lcom/mediatek/settings/CellBroadcastCheckBox;

.field private mCBSetting:Landroid/preference/Preference;

.field private mDualSimMode:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceState:Landroid/telephony/ServiceState;

.field mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 39
    iput v0, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mSlotId:I

    .line 43
    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mCBCheckBox:Lcom/mediatek/settings/CellBroadcastCheckBox;

    .line 44
    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mCBSetting:Landroid/preference/Preference;

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mAirplaneModeEnabled:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mDualSimMode:I

    .line 48
    new-instance v0, Lcom/mediatek/settings/CellBroadcastActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CellBroadcastActivity$1;-><init>(Lcom/mediatek/settings/CellBroadcastActivity;)V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/CellBroadcastActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastActivity;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CellBroadcastActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/settings/CellBroadcastActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/settings/CellBroadcastActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mDualSimMode:I

    return p1
.end method

.method private enableScreen()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, insertedSimInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const/4 v2, 0x0

    .line 160
    .local v2, isShouldEnabled:Z
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    move v1, v3

    .line 161
    .local v1, isHasSimCard:Z
    :goto_0
    iget-boolean v5, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mAirplaneModeEnabled:Z

    if-nez v5, :cond_1

    iget v5, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mDualSimMode:I

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    move v2, v3

    .line 162
    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 163
    return-void

    .end local v1           #isHasSimCard:Z
    :cond_0
    move v1, v4

    .line 160
    goto :goto_0

    .restart local v1       #isHasSimCard:Z
    :cond_1
    move v2, v4

    .line 161
    goto :goto_1
.end method

.method private isPhoneReady(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    .line 176
    const/4 v0, 0x1

    .line 177
    .local v0, state:I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 182
    :goto_0
    const-string v1, "Settings/CellBroadcastActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPhoneReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-nez v0, :cond_1

    .line 184
    const/4 v1, 0x1

    .line 186
    :goto_1
    return v1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    goto :goto_0

    .line 186
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private registerBroadcast()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-void
.end method

.method private setScreenEnabled()V
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mSlotId:I

    invoke-static {p0, v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->handleSimHotSwap(Landroid/app/Activity;I)V

    .line 140
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastActivity;->enableScreen()V

    .line 142
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v1, 0x7f060009

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mSlotId:I

    .line 80
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 82
    const-string v1, "enable_cellBroadcast"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/CellBroadcastCheckBox;

    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mCBCheckBox:Lcom/mediatek/settings/CellBroadcastCheckBox;

    .line 83
    const-string v1, "cbsettings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mCBSetting:Landroid/preference/Preference;

    .line 84
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mCBCheckBox:Lcom/mediatek/settings/CellBroadcastCheckBox;

    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mCBCheckBox:Lcom/mediatek/settings/CellBroadcastCheckBox;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0800e0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sub_title_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sub_title_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mCBCheckBox:Lcom/mediatek/settings/CellBroadcastCheckBox;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mCBCheckBox:Lcom/mediatek/settings/CellBroadcastCheckBox;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mSlotId:I

    invoke-virtual {v1, p0, v3, v2}, Lcom/mediatek/settings/CellBroadcastCheckBox;->init(Lcom/mediatek/phone/TimeConsumingPreferenceListener;ZI)V

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastActivity;->registerBroadcast()V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 97
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 101
    :cond_2
    return-void

    .line 84
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_3
    const v1, 0x7f0800e1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 117
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 119
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 120
    const/4 v1, 0x1

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mCBSetting:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simId"

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 109
    const/4 v1, 0x1

    .line 111
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 146
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 147
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mAirplaneModeEnabled:Z

    .line 149
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mDualSimMode:I

    .line 152
    const-string v0, "Settings/CellBroadcastActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mDualSimMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastActivity;->mDualSimMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastActivity;->setScreenEnabled()V

    .line 155
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
