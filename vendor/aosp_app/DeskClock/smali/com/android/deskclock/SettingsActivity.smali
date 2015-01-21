.class public Lcom/android/deskclock/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/SettingsActivity$TimeZoneRow;
    }
.end annotation


# static fields
.field private static final ALARM_STREAM_TYPE_BIT:I = 0x10

.field public static final DEFAULT_VOLUME_BEHAVIOR:Ljava/lang/String; = "0"

.field static final KEY_ALARM_IN_SILENT_MODE:Ljava/lang/String; = "alarm_in_silent_mode"

.field static final KEY_ALARM_SNOOZE:Ljava/lang/String; = "snooze_duration"

.field public static final KEY_AUTO_HOME_CLOCK:Ljava/lang/String; = "automatic_home_clock"

.field static final KEY_AUTO_SILENCE:Ljava/lang/String; = "auto_silence"

.field public static final KEY_CLOCK_STYLE:Ljava/lang/String; = "clock_style"

.field public static final KEY_HOME_TZ:Ljava/lang/String; = "home_time_zone"

.field static final KEY_VOLUME_BEHAVIOR:Ljava/lang/String; = "volume_button_setting"

.field static final KEY_VOLUME_BUTTONS:Ljava/lang/String; = "volume_button_setting"


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/SettingsActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/android/deskclock/SettingsActivity;->mTime:J

    return-wide v0
.end method

.method private notifyHomeTimeZoneChanged()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.worldclock.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    return-void
.end method

.method private refresh()V
    .locals 6

    .prologue
    .line 196
    const-string v5, "auto_silence"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 197
    .local v1, listPref:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, delay:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/deskclock/SettingsActivity;->updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    const-string v5, "clock_style"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #listPref:Landroid/preference/ListPreference;
    check-cast v1, Landroid/preference/ListPreference;

    .line 201
    .restart local v1       #listPref:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    const-string v5, "automatic_home_clock"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .local v2, pref:Landroid/preference/Preference;
    move-object v5, v2

    .line 205
    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    .line 206
    .local v4, state:Z
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    const-string v5, "home_time_zone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #listPref:Landroid/preference/ListPreference;
    check-cast v1, Landroid/preference/ListPreference;

    .line 209
    .restart local v1       #listPref:Landroid/preference/ListPreference;
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 210
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    const-string v5, "volume_button_setting"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #listPref:Landroid/preference/ListPreference;
    check-cast v1, Landroid/preference/ListPreference;

    .line 213
    .restart local v1       #listPref:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    const-string v5, "snooze_duration"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/SnoozeLengthDialog;

    .line 217
    .local v3, snoozePref:Lcom/android/deskclock/SnoozeLengthDialog;
    invoke-virtual {v3}, Lcom/android/deskclock/SnoozeLengthDialog;->setSummary()V

    .line 218
    return-void
.end method

.method private updateAlarmVolume(I)V
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 310
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 311
    .local v0, audioManager:Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 321
    :goto_0
    :pswitch_0
    return-void

    .line 313
    :pswitch_1
    invoke-virtual {v0, v2, p1, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 317
    :pswitch_2
    invoke-virtual {v0, v2, p1, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 5
    .parameter "listPref"
    .parameter "delay"

    .prologue
    .line 181
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 183
    const v1, 0x7f0d0035

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    const v1, 0x7f0d0034

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getAllTimezones()[[Ljava/lang/CharSequence;
    .locals 12

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 275
    .local v5, resources:Landroid/content/res/Resources;
    const v9, 0x7f0a0015

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, ids:[Ljava/lang/String;
    const v9, 0x7f0a0014

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, labels:[Ljava/lang/String;
    array-length v9, v3

    array-length v10, v4

    if-eq v9, v10, :cond_0

    .line 278
    const-string v9, "Timezone ids and labels have different length!"

    invoke-static {v9}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 280
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v8, timezones:Ljava/util/List;,"Ljava/util/List<Lcom/android/deskclock/SettingsActivity$TimeZoneRow;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v9, v3

    if-ge v0, v9, :cond_1

    .line 282
    new-instance v9, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;

    aget-object v10, v3, v0

    aget-object v11, v4, v0

    invoke-direct {v9, p0, v10, v11}, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;-><init>(Lcom/android/deskclock/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 286
    const/4 v9, 0x2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    const-class v10, Ljava/lang/CharSequence;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/CharSequence;

    .line 287
    .local v7, timeZones:[[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 288
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;

    .line 289
    .local v6, row:Lcom/android/deskclock/SettingsActivity$TimeZoneRow;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    iget-object v10, v6, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mId:Ljava/lang/String;

    aput-object v10, v9, v0

    .line 290
    const/4 v9, 0x1

    aget-object v9, v7, v9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    iget-object v10, v6, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mDisplayName:Ljava/lang/String;

    aput-object v10, v9, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1

    .line 292
    .end local v6           #row:Lcom/android/deskclock/SettingsActivity$TimeZoneRow;
    :cond_2
    return-object v7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x4

    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v3, 0x7f060006

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 87
    :cond_0
    const-string v3, "home_time_zone"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 88
    .local v1, listPref:Landroid/preference/ListPreference;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/deskclock/SettingsActivity;->mTime:J

    .line 90
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getAllTimezones()[[Ljava/lang/CharSequence;

    move-result-object v2

    .line 91
    .local v2, mTimezones:[[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 92
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110006

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 119
    const v1, 0x7f0e00a9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 120
    .local v0, help:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 123
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 298
    const/16 v1, 0x19

    if-ne p1, v1, :cond_0

    .line 299
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/deskclock/SettingsActivity;->updateAlarmVolume(I)V

    .line 305
    :goto_0
    return v0

    .line 301
    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 302
    invoke-direct {p0, v0}, Lcom/android/deskclock/SettingsActivity;->updateAlarmVolume(I)V

    goto :goto_0

    .line 305
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 107
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    .line 153
    const-string v5, "auto_silence"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, p1, Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    move-object v3, p1

    .line 154
    check-cast v3, Landroid/preference/ListPreference;

    .local v3, listPref:Landroid/preference/ListPreference;
    move-object v0, p2

    .line 155
    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, delay:Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/android/deskclock/SettingsActivity;->updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 176
    .end local v0           #delay:Ljava/lang/String;
    .end local v3           #listPref:Landroid/preference/ListPreference;
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return v6

    .line 157
    .restart local p1
    .restart local p2
    :cond_1
    const-string v5, "clock_style"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, p1, Landroid/preference/ListPreference;

    if-eqz v5, :cond_2

    move-object v3, p1

    .line 158
    check-cast v3, Landroid/preference/ListPreference;

    .line 159
    .restart local v3       #listPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 160
    .local v2, idx:I
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    .end local v2           #idx:I
    .end local v3           #listPref:Landroid/preference/ListPreference;
    .restart local p2
    :cond_2
    const-string v5, "home_time_zone"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    instance-of v5, p1, Landroid/preference/ListPreference;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 162
    check-cast v3, Landroid/preference/ListPreference;

    .line 163
    .restart local v3       #listPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 164
    .restart local v2       #idx:I
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    invoke-direct {p0}, Lcom/android/deskclock/SettingsActivity;->notifyHomeTimeZoneChanged()V

    goto :goto_0

    .line 166
    .end local v2           #idx:I
    .end local v3           #listPref:Landroid/preference/ListPreference;
    .restart local p2
    :cond_3
    const-string v5, "automatic_home_clock"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    instance-of v5, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    .line 167
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    .line 168
    .local v4, state:Z
    const-string v5, "home_time_zone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 169
    .local v1, homeTimeZone:Landroid/preference/Preference;
    if-nez v4, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 170
    invoke-direct {p0}, Lcom/android/deskclock/SettingsActivity;->notifyHomeTimeZoneChanged()V

    goto :goto_0

    .line 169
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 171
    .end local v1           #homeTimeZone:Landroid/preference/Preference;
    .end local v4           #state:Z
    .restart local p1
    :cond_5
    const-string v5, "volume_button_setting"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of v5, p1, Landroid/preference/ListPreference;

    if-eqz v5, :cond_0

    move-object v3, p1

    .line 172
    check-cast v3, Landroid/preference/ListPreference;

    .line 173
    .restart local v3       #listPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 174
    .restart local v2       #idx:I
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 129
    const-string v2, "alarm_in_silent_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 130
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 131
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mode_ringer_streams_affected"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, ringerModeStreamTypes:I
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    and-int/lit8 v1, v1, -0x11

    .line 141
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mode_ringer_streams_affected"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    const/4 v2, 0x1

    .line 148
    .end local v0           #pref:Landroid/preference/CheckBoxPreference;
    .end local v1           #ringerModeStreamTypes:I
    :goto_1
    return v2

    .line 138
    .restart local v0       #pref:Landroid/preference/CheckBoxPreference;
    .restart local v1       #ringerModeStreamTypes:I
    :cond_0
    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 148
    .end local v0           #pref:Landroid/preference/CheckBoxPreference;
    .end local v1           #ringerModeStreamTypes:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/android/deskclock/SettingsActivity;->refresh()V

    .line 101
    return-void
.end method
