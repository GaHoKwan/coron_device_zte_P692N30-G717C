.class public Lcom/android/calendar/GeneralPreferences;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ALERT_TYPE_ALERTS:Ljava/lang/String; = "0"

.field private static final ALERT_TYPE_OFF:Ljava/lang/String; = "2"

.field private static final ALERT_TYPE_STATUS_BAR:Ljava/lang/String; = "1"

.field public static final DEFAULT_DETAILED_VIEW:I = 0x2

.field public static final DEFAULT_SHOW_WEEK_NUM:Z = false

.field public static final DEFAULT_START_VIEW:I = 0x3

.field public static final KEY_ALERTS:Ljava/lang/String; = "preferences_alerts"

.field public static final KEY_ALERTS_CATEGORY:Ljava/lang/String; = "preferences_alerts_category"

.field public static final KEY_ALERTS_POPUP:Ljava/lang/String; = "preferences_alerts_popup"

.field public static final KEY_ALERTS_RINGTONE:Ljava/lang/String; = "preferences_alerts_ringtone"

.field private static final KEY_ALERTS_TYPE:Ljava/lang/String; = "preferences_alerts_type"

.field public static final KEY_ALERTS_VIBRATE:Ljava/lang/String; = "preferences_alerts_vibrate"

.field public static final KEY_CLEAR_SEARCH_HISTORY:Ljava/lang/String; = "preferences_clear_search_history"

.field public static final KEY_DAYS_PER_WEEK:Ljava/lang/String; = "preferences_days_per_week"

.field public static final KEY_DEFAULT_CALENDAR:Ljava/lang/String; = "preference_defaultCalendar"

.field public static final KEY_DEFAULT_CELL_HEIGHT:Ljava/lang/String; = "preferences_default_cell_height"

.field public static final KEY_DEFAULT_REMINDER:Ljava/lang/String; = "preferences_default_reminder"

.field public static final KEY_DETAILED_VIEW:Ljava/lang/String; = "preferred_detailedView"

.field public static final KEY_HIDE_DECLINED:Ljava/lang/String; = "preferences_hide_declined"

.field static final KEY_HOME_TZ:Ljava/lang/String; = "preferences_home_tz"

.field static final KEY_HOME_TZ_ENABLED:Ljava/lang/String; = "preferences_home_tz_enabled"

.field public static final KEY_SHOW_CONTROLS:Ljava/lang/String; = "preferences_show_controls"

.field public static final KEY_SHOW_WEEK_NUM:Ljava/lang/String; = "preferences_show_week_num"

.field public static final KEY_SKIP_SETUP:Ljava/lang/String; = "preferences_skip_setup"

.field public static final KEY_START_VIEW:Ljava/lang/String; = "preferred_startView"

.field public static final KEY_VERSION:Ljava/lang/String; = "preferences_version"

.field public static final KEY_VIBRATE_FOR_EVENT_REMINDER:Ljava/lang/String; = "preferences_vibrate_forEventReminder"

.field public static final KEY_WEEK_START_DAY:Ljava/lang/String; = "preferences_week_start_day"

.field public static final NO_REMINDER:I = -0x1

.field public static final NO_REMINDER_STRING:Ljava/lang/String; = "-1"

.field public static final REMINDER_DEFAULT_TIME:I = 0xa

.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.android.calendar_preferences"

.field public static final WEEK_START_DEFAULT:Ljava/lang/String; = "-1"

.field public static final WEEK_START_MONDAY:Ljava/lang/String; = "2"

.field public static final WEEK_START_SATURDAY:Ljava/lang/String; = "7"

.field public static final WEEK_START_SUNDAY:Ljava/lang/String; = "1"


# instance fields
.field mAlert:Landroid/preference/CheckBoxPreference;

.field mDefaultReminder:Landroid/preference/ListPreference;

.field mHideDeclined:Landroid/preference/CheckBoxPreference;

.field mHomeTZ:Landroid/preference/ListPreference;

.field mPopup:Landroid/preference/CheckBoxPreference;

.field mRingtone:Landroid/preference/RingtonePreference;

.field private mTimezones:[[Ljava/lang/CharSequence;

.field mUseHomeTZ:Landroid/preference/CheckBoxPreference;

.field mVibrate:Landroid/preference/CheckBoxPreference;

.field mWeekStart:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 126
    const-string v0, "com.android.calendar_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private migrateOldPreferences(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "prefs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 325
    iget-object v1, p0, Lcom/android/calendar/GeneralPreferences;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/calendar/Utils;->getDefaultVibrate(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 328
    const-string v1, "preferences_alerts"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "preferences_alerts_type"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    const-string v1, "preferences_alerts_type"

    const-string v2, "1"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, type:Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 332
    iget-object v1, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 333
    iget-object v1, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 344
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_alerts_type"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 346
    .end local v0           #type:Ljava/lang/String;
    :cond_1
    return-void

    .line 334
    .restart local v0       #type:Ljava/lang/String;
    :cond_2
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    iget-object v1, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 336
    iget-object v1, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 337
    iget-object v1, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 338
    :cond_3
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 340
    iget-object v1, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 341
    iget-object v1, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static setDefaultValues(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 131
    const-string v0, "com.android.calendar_preferences"

    const v1, 0x7f060003

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 133
    return-void
.end method

.method private setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 217
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 220
    return-void
.end method

.method private updateChildPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 354
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 356
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 363
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getRingtoneTitleFromUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-object v1

    .line 311
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 312
    .local v0, ring:Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0, p1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 143
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 144
    .local v2, preferenceManager:Landroid/preference/PreferenceManager;
    invoke-static {v0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 145
    .local v6, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v10, "com.android.calendar_preferences"

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 148
    const v10, 0x7f060003

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 150
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 151
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v10, "preferences_alerts"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    .line 152
    const-string v10, "preferences_alerts_vibrate"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mVibrate:Landroid/preference/CheckBoxPreference;

    .line 153
    const-string v10, "vibrator"

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    .line 154
    .local v9, vibrator:Landroid/os/Vibrator;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v10

    if-nez v10, :cond_1

    .line 155
    :cond_0
    const-string v10, "preferences_alerts_category"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 157
    .local v1, mAlertGroup:Landroid/preference/PreferenceCategory;
    iget-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    .end local v1           #mAlertGroup:Landroid/preference/PreferenceCategory;
    :cond_1
    const-string v10, "preferences_alerts_ringtone"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/RingtonePreference;

    iput-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    .line 161
    const-string v10, "preferences_alerts_ringtone"

    const-string v11, ""

    invoke-static {v0, v10, v11}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, ringToneUri:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 163
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0, v10, v4}, Lcom/android/calendar/GeneralPreferences;->getRingtoneTitleFromUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, ringtone:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    if-nez v5, :cond_2

    const-string v5, ""

    .end local v5           #ringtone:Ljava/lang/String;
    :cond_2
    invoke-virtual {v10, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    :cond_3
    const-string v10, "preferences_alerts_popup"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    .line 168
    const-string v10, "preferences_home_tz_enabled"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    .line 169
    const-string v10, "preferences_hide_declined"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    .line 170
    const-string v10, "preferences_week_start_day"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    .line 171
    const-string v10, "preferences_default_reminder"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    .line 172
    const-string v10, "preferences_home_tz"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    .line 173
    iget-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, tz:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    if-nez v10, :cond_4

    .line 179
    new-instance v10, Lcom/android/calendar/TimezoneAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v10, v0, v7, v11, v12}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {v10}, Lcom/android/calendar/TimezoneAdapter;->getAllTimezones()[[Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    .line 182
    :cond_4
    iget-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 183
    iget-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 184
    iget-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    .line 187
    .local v8, tzName:Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 188
    iget-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    const/4 v11, 0x0

    invoke-static {v0, v11}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 189
    iget-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    :goto_0
    invoke-direct {p0, v6}, Lcom/android/calendar/GeneralPreferences;->migrateOldPreferences(Landroid/content/SharedPreferences;)V

    .line 197
    invoke-direct {p0}, Lcom/android/calendar/GeneralPreferences;->updateChildPreferences()V

    .line 198
    return-void

    .line 191
    :cond_5
    iget-object v10, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v10, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 264
    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_2

    .line 265
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, tz:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    .end local v3           #tz:Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 268
    :cond_1
    const-string v3, "auto"

    .restart local v3       #tz:Ljava/lang/String;
    goto :goto_0

    .line 272
    .end local v3           #tz:Ljava/lang/String;
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_3

    .line 273
    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 274
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 275
    .local v0, act:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, intent:Landroid/content/Intent;
    sget-object v5, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "vnd.android.data/update"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 279
    .end local v0           #act:Landroid/app/Activity;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local p2
    :cond_3
    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_4

    move-object v3, p2

    .line 280
    check-cast v3, Ljava/lang/String;

    .line 282
    .restart local v3       #tz:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 283
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    .end local v3           #tz:Ljava/lang/String;
    .end local p2
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 285
    .restart local p2
    :cond_4
    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_5

    .line 286
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 288
    .restart local p2
    :cond_5
    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_6

    .line 289
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 290
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 291
    .restart local p2
    :cond_6
    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    if-ne p1, v5, :cond_8

    .line 292
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, v5, p2}, Lcom/android/calendar/GeneralPreferences;->getRingtoneTitleFromUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, ringtone:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    if-nez v2, :cond_7

    const-string v2, ""

    .end local v2           #ringtone:Ljava/lang/String;
    :cond_7
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 297
    .restart local p2
    :cond_8
    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mVibrate:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_0

    .line 298
    iget-object v5, p0, Lcom/android/calendar/GeneralPreferences;->mVibrate:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 369
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, key:Ljava/lang/String;
    const-string v3, "preferences_clear_search_history"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calendar/Utils;->getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 374
    .local v1, suggestions:Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v1}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 376
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c00ba

    invoke-static {v3, v4}, Lcom/mediatek/calendar/MTKToast;->toast(Landroid/content/Context;I)V

    .line 380
    .end local v1           #suggestions:Landroid/provider/SearchRecentSuggestions;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 233
    .local v0, a:Landroid/app/Activity;
    const-string v3, "preferences_alerts"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/android/calendar/GeneralPreferences;->updateChildPreferences()V

    .line 236
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->canUseProviderByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    .line 238
    .local v1, canUseProvider:Z
    if-eqz v1, :cond_3

    .line 239
    if-eqz v0, :cond_0

    .line 240
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v2, intent:Landroid/content/Intent;
    const-class v3, Lcom/android/calendar/alerts/AlertReceiver;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 242
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    const-string v3, "removeOldReminders"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    .end local v1           #canUseProvider:Z
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 256
    :cond_1
    return-void

    .line 245
    .restart local v1       #canUseProvider:Z
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_2
    const-string v3, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 250
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0004

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 203
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 205
    invoke-direct {p0, p0}, Lcom/android/calendar/GeneralPreferences;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/GeneralPreferences;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 228
    return-void
.end method
