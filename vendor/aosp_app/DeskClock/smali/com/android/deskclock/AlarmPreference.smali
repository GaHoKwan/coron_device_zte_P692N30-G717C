.class public Lcom/android/deskclock/AlarmPreference;
.super Landroid/preference/RingtonePreference;
.source "AlarmPreference.java"


# static fields
.field protected static final DEFAULT_RINGTONE_URI:Landroid/net/Uri;


# instance fields
.field private mAlert:Landroid/net/Uri;

.field private mChangeDefault:Z

.field private mRingtoneTask:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "content://media/internal/audio/media/5"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/AlarmPreference;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/deskclock/AlarmPreference;->usingDefaultRingtone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/deskclock/AlarmPreference;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/deskclock/AlarmPreference;->mRingtoneTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method protected static isRingtoneExisted(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 10
    .parameter "ctx"
    .parameter "ringtoneUri"

    .prologue
    .line 170
    const/4 v9, 0x0

    .line 171
    .local v9, result:Z
    const/4 v6, 0x0

    .line 172
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_3

    .line 175
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "internal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x1

    .line 187
    if-eqz v6, :cond_0

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 179
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, path:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 182
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 187
    .end local v8           #path:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v1, v9

    .line 192
    goto :goto_0

    .line 184
    :catch_0
    move-exception v7

    .line 185
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    if-eqz v6, :cond_3

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 187
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private saveRingtone(Landroid/net/Uri;)V
    .locals 3
    .parameter "ringtoneUri"

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alarm_alert"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    return-void

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private usingDefaultRingtone()Ljava/lang/String;
    .locals 5

    .prologue
    .line 139
    const/4 v2, 0x0

    .line 141
    .local v2, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 142
    .local v1, r:Landroid/media/Ringtone;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 144
    .local v0, defaultUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/deskclock/AlarmPreference;->isRingtoneExisted(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 147
    :cond_0
    if-eqz v1, :cond_3

    .line 148
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 156
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 160
    :cond_2
    return-object v2

    .line 149
    :cond_3
    if-eqz v0, :cond_1

    .line 151
    sget-object v3, Lcom/android/deskclock/AlarmPreference;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/deskclock/AlarmPreference;->saveRingtone(Landroid/net/Uri;)V

    .line 152
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/deskclock/AlarmPreference;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 153
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getAlert()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v0, "content://settings/system/alarm_alert"

    iget-object v1, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    return-object v0
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAlert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmPreference;->isRingtoneExisted(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2
    .parameter "ringtoneUri"

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ringtoneUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmPreference;->setAlert(Landroid/net/Uri;)V

    .line 51
    iget-boolean v0, p0, Lcom/android/deskclock/AlarmPreference;->mChangeDefault:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmPreference;->saveRingtone(Landroid/net/Uri;)V

    .line 55
    :cond_0
    return-void
.end method

.method public setAlert(Landroid/net/Uri;)V
    .locals 3
    .parameter "alert"

    .prologue
    const/4 v1, 0x1

    .line 68
    iput-object p1, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    .line 69
    if-eqz p1, :cond_1

    .line 70
    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 71
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mRingtoneTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mRingtoneTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 74
    :cond_0
    new-instance v0, Lcom/android/deskclock/AlarmPreference$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmPreference$1;-><init>(Lcom/android/deskclock/AlarmPreference;)V

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mRingtoneTask:Landroid/os/AsyncTask;

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_1
    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public setChangeDefault()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmPreference;->mChangeDefault:Z

    .line 136
    return-void
.end method
