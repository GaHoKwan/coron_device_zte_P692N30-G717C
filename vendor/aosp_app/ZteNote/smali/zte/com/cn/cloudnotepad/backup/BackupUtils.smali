.class public Lzte/com/cn/cloudnotepad/backup/BackupUtils;
.super Ljava/lang/Object;
.source "BackupUtils.java"


# static fields
.field public static final ACCOUNT_USER_ID:Ljava/lang/String; = "account_user_id"

.field public static final AUTHCOMP_PACKAGENAME:Ljava/lang/String; = "org.zx.AuthComp"

.field public static final BAIDU_ACCESS_TOKEN:Ljava/lang/String; = "baidu_access_token"

.field public static final LAST_BACKUP_TIME:Ljava/lang/String; = "last_backup_time"

.field public static final START_BACKUP_IN_WIFI:Ljava/lang/String; = "start_backup_in_wifi"

.field public static final START_RESTORE_IN_WIFI:Ljava/lang/String; = "start_restore_in_wifi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeDataBaseByUid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uid"

    .prologue
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "notepad"

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, databaseName:Ljava/lang/String;
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->mOpenHelper:Lzte/com/cn/cloudnotepad/data/NotepadDB;

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->mOpenHelper:Lzte/com/cn/cloudnotepad/data/NotepadDB;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->close()V

    .line 74
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->mOpenHelper:Lzte/com/cn/cloudnotepad/data/NotepadDB;

    .line 75
    new-instance v1, Lzte/com/cn/cloudnotepad/data/NotepadDB;

    invoke-direct {v1, p0, v0}, Lzte/com/cn/cloudnotepad/data/NotepadDB;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->mOpenHelper:Lzte/com/cn/cloudnotepad/data/NotepadDB;

    .line 76
    return-void

    .line 70
    .end local v0           #databaseName:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static checkLoginStateChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "oldUid"
    .parameter "newUid"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 23
    const-string v2, "wangna"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "oldUid"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v2, "wangna"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "newUid"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    if-nez p1, :cond_2

    .line 26
    if-nez p2, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 29
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static getAccessTokenFromSharedPrefs(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 79
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "baidu_access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBackupTimeFromSharedPrefs(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_backup_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStartRestoreFromSharedPrefs(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 62
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "start_restore_in_wifi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUidFromSharedPrefs(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 38
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "account_user_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZxAuthCompInstalled()Z
    .locals 5

    .prologue
    .line 87
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v3

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/NoteApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 90
    .local v2, mPm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "org.zx.AuthComp"

    .line 91
    const/16 v4, 0x2000

    .line 90
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 96
    const/4 v3, 0x1

    .line 98
    :goto_1
    return v3

    .line 92
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 98
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static saveAccessTokenToSharedPrefs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "accessToken"

    .prologue
    .line 83
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "baidu_access_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    return-void
.end method

.method public static saveBackupTimeToSharedPrefs(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 4
    .parameter "context"
    .parameter "time"

    .prologue
    .line 50
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_backup_time"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public static saveStartRestoreToSharedPrefs(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "startBackup"

    .prologue
    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "start_restore_in_wifi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void
.end method

.method public static saveUidToSharedPrefs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "uid"

    .prologue
    .line 42
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_user_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method
