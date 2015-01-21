.class public Lcom/mediatek/settings/VTAdvancedSettingEx;
.super Landroid/preference/PreferenceActivity;
.source "VTAdvancedSettingEx.java"


# static fields
.field private static final BUTTON_CALL_ADDITIONAL_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_CALL_BAR_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_CALL_FWD_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_VT_AUTO_DROPBACK_KEY:Ljava/lang/String; = "button_vt_auto_dropback_key"

.field private static final BUTTON_VT_ENABLE_BACK_CAMERA_KEY:Ljava/lang/String; = "button_vt_enable_back_camera_key"

.field private static final BUTTON_VT_ENABLE_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_enable_peer_replace_key"

.field private static final BUTTON_VT_MO_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mo_local_video_display_key"

.field private static final BUTTON_VT_MT_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mt_local_video_display_key"

.field private static final BUTTON_VT_PEER_BIGGER_KEY:Ljava/lang/String; = "button_vt_peer_bigger_key"

.field private static final BUTTON_VT_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_peer_expand_key"

.field private static final BUTTON_VT_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_expand_key"

.field private static final BUTTON_VT_RINGTONE_KEY:Ljava/lang/String; = "button_vt_ringtone_key"

.field private static final CHECKBOX_RING_ONLY_ONCE_KEY:Ljava/lang/String; = "ring_only_once_key"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/VTAdvancedSettingEx"

.field public static final REQUESTCODE_PICTRUE_PICKED_WITH_DATA:I = 0xbcd

.field private static final SELECT_DEFAULT_PICTURE:Ljava/lang/String; = "0"

.field private static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field private static final SELECT_MY_PICTURE:Ljava/lang/String; = "2"

.field private static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"


# instance fields
.field private m3GSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonCallAdditional:Landroid/preference/Preference;

.field private mButtonCallBar:Landroid/preference/Preference;

.field private mButtonCallFwd:Landroid/preference/Preference;

.field private mButtonRingOnlyOnce:Landroid/preference/Preference;

.field private mButtonVTAutoDropBack:Landroid/preference/Preference;

.field private mButtonVTEnablePeerReplace:Landroid/preference/Preference;

.field private mButtonVTEnablebackCamer:Landroid/preference/Preference;

.field private mButtonVTMoVideo:Landroid/preference/Preference;

.field private mButtonVTMtVideo:Landroid/preference/Preference;

.field private mButtonVTPeerBigger:Landroid/preference/Preference;

.field private mButtonVTPeerReplace:Landroid/preference/Preference;

.field private mButtonVTReplace:Landroid/preference/Preference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 121
    new-instance v0, Lcom/mediatek/settings/VTAdvancedSettingEx$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VTAdvancedSettingEx$1;-><init>(Lcom/mediatek/settings/VTAdvancedSettingEx;)V

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/settings/VTAdvancedSettingEx;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->m3GSimList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/VTAdvancedSettingEx;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->setScreenEnabled()V

    return-void
.end method

.method private getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    .local v0, sp:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 117
    const-string v0, "Settings/VTAdvancedSettingEx"

    invoke-static {v0, p0}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private setKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 287
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 288
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    return-void
.end method

.method private setScreenEnabled()V
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->m3GSimList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x1

    .line 200
    .local v0, isEnable:Z
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 203
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 205
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 206
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 207
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallAdditional:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 208
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallFwd:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 209
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallBar:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 210
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 211
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 212
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 213
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonRingOnlyOnce:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 215
    :cond_2
    return-void

    .line 199
    .end local v0           #isEnable:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    .line 265
    const-string v2, "Settings/VTAdvancedSettingEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reqCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",resCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v1, -0x1

    .line 267
    .local v1, slotId:I
    const/16 v2, 0x64

    if-ne v2, p1, :cond_0

    .line 268
    if-ne v5, p2, :cond_0

    .line 269
    const-string v2, "simId"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 270
    const-string v2, "Settings/VTAdvancedSettingEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mTargetPreference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 272
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ISVT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    if-eq v1, v5, :cond_0

    .line 274
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mTargetPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-static {v1, v2, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->startActivity(ILandroid/preference/Preference;Lcom/mediatek/settings/PreCheckForRunning;)V

    .line 278
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const v1, 0x7f060021

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 144
    new-instance v1, Lcom/mediatek/settings/PreCheckForRunning;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 146
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->get3GSimCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->m3GSimList:Ljava/util/List;

    .line 148
    const-string v1, "button_vt_replace_expand_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    .line 150
    const-string v1, "button_vt_enable_back_camera_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;

    .line 151
    const-string v1, "button_vt_peer_bigger_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;

    .line 152
    const-string v1, "button_vt_mo_local_video_display_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;

    .line 153
    const-string v1, "button_vt_mt_local_video_display_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;

    .line 155
    const-string v1, "button_more_expand_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallAdditional:Landroid/preference/Preference;

    .line 156
    const-string v1, "button_cf_expand_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallFwd:Landroid/preference/Preference;

    .line 157
    const-string v1, "button_cb_expand_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallBar:Landroid/preference/Preference;

    .line 159
    const-string v1, "button_vt_replace_peer_expand_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;

    .line 160
    const-string v1, "button_vt_enable_peer_replace_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;

    .line 161
    const-string v1, "button_vt_auto_dropback_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;

    .line 162
    const-string v1, "ring_only_once_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonRingOnlyOnce:Landroid/preference/Preference;

    .line 163
    const-string v1, "MyLog"

    const-string v2, "FeatureOption.MTK_VT3G324M_SUPPORT=falseFeatureOption.MTK_PHONE_VT_VOICE_ANSWER=false"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonRingOnlyOnce:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mIntentFilter:Landroid/content/IntentFilter;

    .line 170
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 173
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 175
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 294
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/mediatek/settings/PreCheckForRunning;->deRegister()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 188
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 190
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 191
    const/4 v1, 0x1

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "INIT_FEATURE_NAME"

    const-string v2, "VT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v1, "EXTRA_TITME_NAME"

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v1, "EXTRA_3G_CARD_ONLY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    const-string v1, "INIT_BASE_KEY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 226
    const-string v1, "LIST_TITLE_NAME"

    const v2, 0x7f0800e5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v1, "INIT_ARRAY"

    const v2, 0x7f09000e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v1, "button_vt_replace_expand_key"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 229
    const-string v1, "button_vt_replace_expand_key"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    const-string v1, "ITEM_TYPE"

    const-string v2, "ListPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v1, "INIT_ARRAY_VALUE"

    const v2, 0x7f090010

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mTargetPreference:Landroid/preference/Preference;

    .line 259
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 260
    return v4

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;

    if-ne p2, v1, :cond_4

    .line 234
    const-string v1, "LIST_TITLE_NAME"

    const v2, 0x7f08001f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string v1, "INIT_ARRAY"

    const v2, 0x7f090012

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const-string v1, "button_vt_mt_local_video_display_key"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 237
    const-string v1, "button_vt_mt_local_video_display_key"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_3
    const-string v1, "INIT_ARRAY_VALUE"

    const v2, 0x7f090013

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const-string v1, "ITEM_TYPE"

    const-string v2, "ListPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 241
    :cond_4
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;

    if-ne p2, v1, :cond_6

    .line 242
    const-string v1, "LIST_TITLE_NAME"

    const v2, 0x7f080048

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string v1, "INIT_ARRAY"

    const v2, 0x7f09000f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string v1, "button_vt_replace_peer_expand_key"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 245
    const-string v1, "button_vt_replace_peer_expand_key"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_5
    const-string v1, "INIT_ARRAY_VALUE"

    const v2, 0x7f090011

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v1, "ITEM_TYPE"

    const-string v2, "ListPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 249
    :cond_6
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonRingOnlyOnce:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 255
    :cond_7
    const-string v1, "ITEM_TYPE"

    const-string v2, "CheckBoxPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 182
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->setScreenEnabled()V

    .line 183
    return-void
.end method
