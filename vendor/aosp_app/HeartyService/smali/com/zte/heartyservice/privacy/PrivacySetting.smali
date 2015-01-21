.class public Lcom/zte/heartyservice/privacy/PrivacySetting;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "PrivacySetting.java"


# static fields
.field private static final ONE_MONTH_MILLIS:J = 0x9a7ec800L

.field private static final ONE_WEEK_MILLIS:J = 0x240c8400L

.field public static final PREF_PRIVACY_DISGUISE_ENABLE:Ljava/lang/String; = "privacy_disguise_enable"

.field public static final PREF_PRIVACY_DISGUISE_PASSWORD:Ljava/lang/String; = "privacy_disguise_password"

.field public static final PREF_PRIVACY_ENTER_NAME:Ljava/lang/String; = "privacy_enter_name"

.field public static final PREF_PRIVACY_NOTIFICATION_ENABLE:Ljava/lang/String; = "privacy_notification_enable"

.field public static final PREF_PRIVACY_PATTERN_SHOW_TRACK:Ljava/lang/String; = "privacy_pattern_show_track"

.field public static final PREF_PRIVACY_PATTERN_VIBRATE:Ljava/lang/String; = "privacy_pattern_vibrate"

.field public static final PRIVACY_BACKUP:Ljava/lang/String; = "privacy_backup"

.field private static final PRIVACY_BACKUP_AUTO_NOTICE:Ljava/lang/String; = "com.zte.heartyservice.PRIVACY_BACKUP_AUTO_NOTICE"

.field public static final PRIVACY_BACKUP_LAST_NOTICE_TIME:Ljava/lang/String; = "privacy_backup_last_notice_time"

.field public static final PRIVACY_BACKUP_NOTICE:Ljava/lang/String; = "privacy_backup_notice"

.field public static final PRIVACY_BACKUP_RESTORE_ACTION:Ljava/lang/String; = "com.zte.backup.action.privacy"

.field public static final PRIVACY_PATTERN_FEEDBACK:Ljava/lang/String; = "privacy_pattern_feedback"

.field public static final PRIVACY_RESTORE:Ljava/lang/String; = "privacy_restore"

.field private static final TAG:Ljava/lang/String; = "PrivacySetting"

.field private static sNoticeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/privacy/PrivacySetting;->sNoticeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    return-void
.end method

.method public static checkBackupNotice()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v7

    .line 224
    .local v7, context:Landroid/content/Context;
    const-string v1, "alarm"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 226
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.PRIVACY_BACKUP_AUTO_NOTICE"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v9, intent:Landroid/content/Intent;
    invoke-static {v7, v2, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 229
    .local v6, operation:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->isEnablePrivacyBackupNotice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    sget-object v1, Lcom/zte/heartyservice/privacy/PrivacySetting;->sNoticeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 231
    new-instance v1, Lcom/zte/heartyservice/privacy/PrivacySetting$1;

    invoke-direct {v1}, Lcom/zte/heartyservice/privacy/PrivacySetting$1;-><init>()V

    sput-object v1, Lcom/zte/heartyservice/privacy/PrivacySetting;->sNoticeReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    new-instance v8, Landroid/content/IntentFilter;

    const-string v1, "com.zte.heartyservice.PRIVACY_BACKUP_AUTO_NOTICE"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 301
    .local v8, filter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/zte/heartyservice/privacy/PrivacySetting;->sNoticeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 313
    .end local v8           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    sget-object v1, Lcom/zte/heartyservice/privacy/PrivacySetting;->sNoticeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 308
    sget-object v1, Lcom/zte/heartyservice/privacy/PrivacySetting;->sNoticeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    const/4 v1, 0x0

    sput-object v1, Lcom/zte/heartyservice/privacy/PrivacySetting;->sNoticeReceiver:Landroid/content/BroadcastReceiver;

    .line 311
    :cond_2
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static checkDisguise(Ljava/lang/String;)Z
    .locals 5
    .parameter "password"

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const-string v4, "settings"

    invoke-virtual {v3, v4, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "privacy_disguise_enable"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const-string v3, "privacy_disguise_password"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, pss:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const/4 v2, 0x1

    .line 87
    .end local v1           #pss:Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public static getEnterName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "privacy_enter_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastNoticeTime()J
    .locals 4

    .prologue
    .line 204
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "privacy_backup_last_notice_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getPatternShowTrack()Z
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 192
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "privacy_pattern_show_track"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getPatternVibrate()Z
    .locals 4

    .prologue
    .line 175
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "privacy_pattern_vibrate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static hasDisguisePassword()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const-string v4, "settings"

    invoke-virtual {v3, v4, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "privacy_disguise_password"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, pss:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const/4 v2, 0x1

    .line 110
    :cond_0
    return v2
.end method

.method public static isEnableNotification()Z
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "privacy_notification_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isEnablePrivacyBackupNotice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isRSAKeyPairExist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    .local v0, prefs:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    .line 133
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    const-string v3, "settings"

    invoke-virtual {v2, v3, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    .restart local v0       #prefs:Landroid/content/SharedPreferences;
    const-string v1, "privacy_backup_notice"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static isPrivacyBackupSupport()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 122
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.zte.backup.action.privacy"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    const/4 v1, 0x1

    .line 126
    :cond_0
    return v1
.end method

.method public static loadLastDisguise()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 56
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const-string v4, "privacy_disguise"

    invoke-virtual {v3, v4, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "password"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, pss:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const-string v4, "settings"

    invoke-virtual {v3, v4, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, prefs2:Landroid/content/SharedPreferences;
    const-string v3, "privacy_disguise_enable"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "privacy_disguise_password"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "privacy_disguise_enable"

    const-string v5, "enable"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "privacy_disguise_password"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    .end local v1           #prefs2:Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public static resetDisguisePassword()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 158
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    .line 159
    .local v0, context:Landroid/content/Context;
    const-string v4, "settings"

    invoke-virtual {v0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 162
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "privacy_disguise_enable"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    const-string v4, "privacy_disguise_password"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, pss:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v1, intent:Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-static {v4, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 170
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #pss:Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "privacy_disguise_password"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "privacy_disguise_enable"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method

.method public static setDisguisePassword(Ljava/lang/String;)V
    .locals 4
    .parameter "password"

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "privacy_disguise_password"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    const-string v1, "privacy_disguise_enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "privacy_disguise_enable"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    :cond_0
    return-void
.end method

.method public static setEnterName(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string p0, ""

    .line 151
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "privacy_enter_name"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    return-void
.end method

.method public static setLastNoticeTime(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 211
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "privacy_backup_last_notice_time"

    invoke-interface {v1, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method

.method public static setPatternShowTrack(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 196
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "privacy_pattern_show_track"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    return-void
.end method

.method public static setPatternVibrate(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 182
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "privacy_pattern_vibrate"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 53
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v1, 0x7f0a03c5

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/privacy/PrivacySetting;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 47
    .local v0, transaction:Landroid/app/FragmentTransaction;
    const v1, 0x1020002

    new-instance v2, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;

    invoke-direct {v2}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 48
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 49
    return-void
.end method
