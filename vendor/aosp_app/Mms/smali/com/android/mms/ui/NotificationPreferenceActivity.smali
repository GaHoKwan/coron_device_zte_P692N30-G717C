.class public Lcom/android/mms/ui/NotificationPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "NotificationPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final AUTO_RETRIEVAL:Ljava/lang/String; = "pref_key_mms_auto_retrieval"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_RINGTONE:Ljava/lang/String; = "content://settings/system/notification_sound"

.field private static final DEFAULT_RINGTONE_SECOND:Ljava/lang/String; = "content://settings/system/notif_sound_second"

.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field public static final MUTE_START:Ljava/lang/String; = "mute_start"

.field public static final NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_notifications"

.field public static final NOTIFICATION_MUTE:Ljava/lang/String; = "pref_key_mute"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field public static final NOTIFICATION_RINGTONE_CARD_SECOND:Ljava/lang/String; = "pref_key_ringtone_card_second"

.field public static final NOTIFICATION_VIBRATE:Ljava/lang/String; = "pref_key_vibrate"

.field public static final POPUP_NOTIFICATION:Ljava/lang/String; = "pref_key_popup_notification"

.field private static final TAG:Ljava/lang/String; = "NotificationPreferenceActivity"


# instance fields
.field private mCurrentSimCount:I

.field private mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mNotificaitonMute:Landroid/preference/ListPreference;

.field private mPopupNotificationPref:Landroid/preference/CheckBoxPreference;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mCurrentSimCount:I

    return-void
.end method

.method public static enableNotifications(ZLandroid/content/Context;)V
    .locals 2
    .parameter "enabled"
    .parameter "context"

    .prologue
    .line 208
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_enable_notifications"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    return-void
.end method

.method public static getNotificationEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 201
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 202
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_enable_notifications"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 203
    .local v0, notificationsEnabled:Z
    return v0
.end method

.method public static isNotificationEnable()Z
    .locals 4

    .prologue
    .line 246
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 247
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_enable_notifications"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 248
    .local v0, enable:Z
    return v0
.end method

.method public static isPopupNotificationEnable()Z
    .locals 4

    .prologue
    .line 252
    invoke-static {}, Lcom/android/mms/ui/NotificationPreferenceActivity;->isNotificationEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 257
    .local v0, enable:Z
    .local v1, prefs:Landroid/content/SharedPreferences;
    :goto_0
    return v0

    .line 255
    .end local v0           #enable:Z
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 256
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_popup_notification"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 257
    .restart local v0       #enable:Z
    goto :goto_0
.end method

.method private restoreDefaultPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 186
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 188
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_enable_notifications"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 189
    const-string v1, "pref_key_mute"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string v1, "pref_key_ringtone"

    const-string v2, "content://settings/system/notification_sound"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v1, "pref_key_ringtone_card_second"

    const-string v2, "content://settings/system/notif_sound_second"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v1, "pref_key_vibrate"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v1, "pref_key_popup_notification"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/NotificationPreferenceActivity;->setMessagePreferences()V

    .line 197
    invoke-direct {p0}, Lcom/android/mms/ui/NotificationPreferenceActivity;->setListPrefSummary()V

    .line 198
    return-void
.end method

.method private setEnabledNotificationsPref()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/NotificationPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 150
    return-void
.end method

.method private setListPrefSummary()V
    .locals 13

    .prologue
    const-wide/16 v9, 0x3e8

    const-wide/16 v11, 0x0

    .line 108
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 109
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v7, "mute_start"

    invoke-interface {v6, v7, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 110
    .local v3, muteStart:J
    const-string v7, "pref_key_mute"

    const-string v8, "0"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, muteOrigin:I
    cmp-long v7, v3, v11

    if-lez v7, :cond_0

    if-lez v2, :cond_0

    .line 112
    const-string v7, "NotificationPreferenceActivity"

    const-string v8, "thread mute timeout, reset to default."

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v9

    long-to-int v0, v7

    .line 114
    .local v0, currentTime:I
    mul-int/lit16 v7, v2, 0xe10

    int-to-long v7, v7

    div-long v9, v3, v9

    add-long/2addr v7, v9

    int-to-long v9, v0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 117
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "mute_start"

    invoke-interface {v1, v7, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string v7, "pref_key_mute"

    const-string v8, "0"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    iget-object v7, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mNotificaitonMute:Landroid/preference/ListPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 125
    .end local v0           #currentTime:I
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v7, "pref_key_mute"

    const-string v8, "0"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, notificationMute:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mNotificaitonMute:Landroid/preference/ListPreference;

    const v8, 0x7f060024

    const v9, 0x7f060025

    invoke-static {p0, v5, v8, v9}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method private setMessagePreferences()V
    .locals 3

    .prologue
    .line 132
    const-string v0, "NotificationPreferenceActivity"

    const-string v1, "MTK_GEMINI_SUPPORT is true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mCurrentSimCount:I

    .line 134
    const-string v0, "NotificationPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentSimCount is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mCurrentSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 139
    const-string v0, "pref_key_mute"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mNotificaitonMute:Landroid/preference/ListPreference;

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mNotificaitonMute:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    const-string v0, "pref_key_enable_notifications"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 142
    const-string v0, "pref_key_vibrate"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v0, "pref_key_popup_notification"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mPopupNotificationPref:Landroid/preference/CheckBoxPreference;

    .line 144
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 240
    const-string v0, "NotificationPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 242
    new-instance v0, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;->clearScrapViewsIfNeeded()V

    .line 243
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const-string v1, "NotificationPreferenceActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 102
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 104
    invoke-direct {p0}, Lcom/android/mms/ui/NotificationPreferenceActivity;->setMessagePreferences()V

    .line 105
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 171
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 172
    const v0, 0x7f0b029c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 173
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 166
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 156
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/NotificationPreferenceActivity;->restoreDefaultPreferences()V

    goto :goto_0

    .line 161
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    move-object v4, p2

    .line 216
    check-cast v4, Ljava/lang/String;

    .line 217
    .local v4, notificationMute:Ljava/lang/String;
    const-string v6, "pref_key_mute"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    const v6, 0x7f060024

    const v7, 0x7f060025

    invoke-static {p0, v4, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 220
    .local v2, mMute:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mNotificaitonMute:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    const-string v6, "NotificationPreferenceActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preference change: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 223
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 224
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "mute_start"

    const-wide/16 v7, 0x0

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #mMute:Ljava/lang/CharSequence;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 228
    .restart local v2       #mMute:Ljava/lang/CharSequence;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 229
    .local v3, muteTime:Ljava/lang/Long;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 230
    .restart local v5       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "mute_start"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/NotificationPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-static {v0, p0}, Lcom/android/mms/ui/NotificationPreferenceActivity;->enableNotifications(ZLandroid/content/Context;)V

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/android/mms/ui/NotificationPreferenceActivity;->setEnabledNotificationsPref()V

    .line 94
    invoke-direct {p0}, Lcom/android/mms/ui/NotificationPreferenceActivity;->setListPrefSummary()V

    .line 95
    return-void
.end method
