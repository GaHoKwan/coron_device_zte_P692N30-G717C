.class public Lcom/android/settings/VipModeSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "VipModeSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FALLBACK_EMERGENCY_TONE_VALUE:I = 0x0

.field private static final KEY_NOTIFICATION_SOUND:Ljava/lang/String; = "vip_notification_sound"

.field private static final KEY_NOTIFICATION_SOUND_SECOND:Ljava/lang/String; = "vip_notification_sound_second"

.field private static final KEY_RINGTONE:Ljava/lang/String; = "vip_ringtone"

.field private static final KEY_RINGTONE_SECOND:Ljava/lang/String; = "vip_ringtone_second"

.field private static final KEY_VIPMODE_MODE:Ljava/lang/String; = "enable_vipmode_key"

.field private static final MSG_UPDATE_NOTIFICATION_SECOND_SUMMARY:I = 0x4

.field private static final MSG_UPDATE_NOTIFICATION_SUMMARY:I = 0x2

.field private static final MSG_UPDATE_RINGTONE_SECOND_SUMMARY:I = 0x3

.field private static final MSG_UPDATE_RINGTONE_SUMMARY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VipModeSettingsActivity"


# instance fields
.field private cardType:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationPreference:Landroid/preference/RingtonePreference;

.field private mNotificationPreferenceSecond:Landroid/preference/RingtonePreference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/RingtonePreference;

.field private mRingtonePreferenceSecond:Landroid/preference/RingtonePreference;

.field private mVipMode:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 80
    const-string v0, "card1"

    iput-object v0, p0, Lcom/android/settings/VipModeSettingsActivity;->cardType:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/android/settings/VipModeSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/VipModeSettingsActivity$1;-><init>(Lcom/android/settings/VipModeSettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/VipModeSettingsActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VipModeSettingsActivity;)Landroid/preference/RingtonePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity;->mRingtonePreference:Landroid/preference/RingtonePreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/VipModeSettingsActivity;)Landroid/preference/RingtonePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity;->mNotificationPreference:Landroid/preference/RingtonePreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/VipModeSettingsActivity;)Landroid/preference/RingtonePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity;->mRingtonePreferenceSecond:Landroid/preference/RingtonePreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/VipModeSettingsActivity;)Landroid/preference/RingtonePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity;->mNotificationPreferenceSecond:Landroid/preference/RingtonePreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/VipModeSettingsActivity;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/VipModeSettingsActivity;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/VipModeSettingsActivity;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 223
    return-void
.end method

.method private setState(Z)V
    .locals 4
    .parameter "vipmode"

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vipmode_settings"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->setVipMode(Landroid/content/Context;Z)V

    .line 189
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->openWhiteListActivity(Landroid/content/Context;Z)V

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.vipmodeAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    return-void

    .line 187
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 8
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 197
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 198
    .local v1, ringtoneUri:Landroid/net/Uri;
    const-string v0, "VipModeSettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringtoneUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const v0, 0x1040406

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    .line 202
    const v0, 0x1040404

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 218
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    return-void

    .line 206
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 208
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 212
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateState(Z)V
    .locals 5
    .parameter "force"

    .prologue
    const/4 v2, 0x1

    .line 172
    const/4 v1, 0x0

    .line 175
    .local v1, vipmode:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vipmode_settings"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 180
    :goto_0
    if-eqz p1, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mVipMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 184
    :cond_0
    return-void

    .line 175
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "VipModeSettingsActivity"

    const-string v3, "can not get card1 vipmode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 109
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 115
    const v2, 0x7f06001a

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 122
    const-string v2, "enable_vipmode_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mVipMode:Landroid/preference/CheckBoxPreference;

    .line 123
    iget-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mVipMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const-string v2, "vip_ringtone"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RingtonePreference;

    iput-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mRingtonePreference:Landroid/preference/RingtonePreference;

    .line 126
    const-string v2, "vip_notification_sound"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RingtonePreference;

    iput-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mNotificationPreference:Landroid/preference/RingtonePreference;

    .line 127
    const-string v2, "vip_ringtone_second"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RingtonePreference;

    iput-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mRingtonePreferenceSecond:Landroid/preference/RingtonePreference;

    .line 128
    const-string v2, "vip_notification_sound_second"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RingtonePreference;

    iput-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mNotificationPreferenceSecond:Landroid/preference/RingtonePreference;

    .line 130
    iget-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mRingtonePreference:Landroid/preference/RingtonePreference;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 131
    iget-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mNotificationPreference:Landroid/preference/RingtonePreference;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mRingtonePreferenceSecond:Landroid/preference/RingtonePreference;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mNotificationPreferenceSecond:Landroid/preference/RingtonePreference;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 136
    new-instance v2, Lcom/android/settings/VipModeSettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/VipModeSettingsActivity$2;-><init>(Lcom/android/settings/VipModeSettingsActivity;)V

    iput-object v2, p0, Lcom/android/settings/VipModeSettingsActivity;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 160
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity;->mVipMode:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    .line 233
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/VipModeSettingsActivity;->setState(Z)V

    .line 235
    const-string v0, "VipModeSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange mVibrateOnRing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/VipModeSettingsActivity;->updateState(Z)V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/VipModeSettingsActivity;->lookupRingtoneNames()V

    .line 167
    return-void
.end method
