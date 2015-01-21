.class public Lcom/android/soundrecorder/SoundRecorderUtils;
.super Ljava/lang/Object;
.source "SoundRecorderUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SR/SoundRecorderUtils"

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFileFromMediaDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 42
    const-string v0, "SR/SoundRecorderUtils"

    const-string v5, "<deleteFileFromMediaDB> begin"

    invoke-static {v0, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-nez p0, :cond_0

    .line 44
    const-string v0, "SR/SoundRecorderUtils"

    const-string v4, "<deleteFileFromMediaDB> context is null"

    invoke-static {v0, v4}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return v13

    .line 47
    :cond_0
    if-nez p1, :cond_1

    .line 48
    const-string v0, "SR/SoundRecorderUtils"

    const-string v4, "<deleteFileFromMediaDB> filePath is null"

    invoke-static {v0, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 52
    .local v10, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 53
    .local v1, base:Landroid/net/Uri;
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v13

    .line 54
    .local v2, ids:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v11, stringBuilder:Ljava/lang/StringBuilder;
    const-string v0, "_data"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, " LIKE \'%"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v0, "file:///"

    const-string v5, ""

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, "\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, where:Ljava/lang/String;
    move-object v0, p0

    move-object v5, v4

    .line 60
    invoke-static/range {v0 .. v5}, Lcom/android/soundrecorder/SoundRecorderUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 61
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 63
    .local v9, res:Z
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 64
    const/4 v0, 0x0

    invoke-virtual {v10, v1, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 65
    .local v7, deleteNum:I
    const-string v0, "SR/SoundRecorderUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<deleteFileFromMediaDB> delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items in db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    if-eqz v7, :cond_3

    move v9, v12

    .line 82
    .end local v7           #deleteNum:I
    :goto_1
    if-eqz v6, :cond_2

    .line 83
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_2
    const-string v0, "SR/SoundRecorderUtils"

    const-string v4, "<deleteFileFromMediaDB> end"

    invoke-static {v0, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v9

    .line 87
    goto :goto_0

    .restart local v7       #deleteNum:I
    :cond_3
    move v9, v13

    .line 66
    goto :goto_1

    .line 68
    .end local v7           #deleteNum:I
    :cond_4
    if-nez v6, :cond_5

    .line 69
    :try_start_1
    const-string v0, "SR/SoundRecorderUtils"

    const-string v4, "<deleteFileFromMediaDB>, cursor is null"

    invoke-static {v0, v4}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 75
    :catch_0
    move-exception v8

    .line 76
    .local v8, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "SR/SoundRecorderUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<deleteFileFromMediaDB> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    const/4 v9, 0x0

    .line 82
    if-eqz v6, :cond_2

    goto :goto_2

    .line 71
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :cond_5
    :try_start_3
    const-string v0, "SR/SoundRecorderUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<deleteFileFromMediaDB>, cursor is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; cursor.getCount() is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 78
    :catch_1
    move-exception v8

    .line 79
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_4
    const-string v0, "SR/SoundRecorderUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<deleteFileFromMediaDB> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    const/4 v9, 0x0

    .line 82
    if-eqz v6, :cond_2

    goto :goto_2

    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_6
    throw v0
.end method

.method public static getToast(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 132
    sget-object v0, Lcom/android/soundrecorder/SoundRecorderUtils;->sToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/soundrecorder/SoundRecorderUtils;->sToast:Landroid/widget/Toast;

    .line 135
    :cond_0
    sget-object v0, Lcom/android/soundrecorder/SoundRecorderUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 136
    sget-object v0, Lcom/android/soundrecorder/SoundRecorderUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    return-void
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 109
    if-nez p0, :cond_0

    .line 110
    const-string v1, "SR/SoundRecorderUtils"

    const-string v2, "<query> context is null"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 122
    :goto_0
    return-object v1

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 116
    const-string v1, "SR/SoundRecorderUtils"

    const-string v2, "<query> resolver is null"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 117
    goto :goto_0

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 119
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 120
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 121
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    const-string v1, "SR/SoundRecorderUtils"

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 122
    goto :goto_0
.end method

.method public static sendBroadcastToStopMusic(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const-string v2, "SR/SoundRecorderUtils"

    const-string v3, "<sendBroadcastToStopMusic> context is null"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v0, "command"

    .line 28
    .local v0, commandString:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
