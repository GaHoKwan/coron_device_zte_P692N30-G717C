.class public Lcom/android/providers/media/FileSearchHelper;
.super Ljava/lang/Object;
.source "FileSearchHelper.java"


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field public static final FILE_TYPE_APK:I = 0x6

.field public static final FILE_TYPE_AUDIO:I = 0x2

.field public static final FILE_TYPE_IMAGE:I = 0x1

.field public static final FILE_TYPE_NONE:I = 0x0

.field public static final FILE_TYPE_TEXT:I = 0x4

.field public static final FILE_TYPE_VIDEO:I = 0x3

.field public static final FILE_TYPE_ZIP:I = 0x5

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "FileSearchHelper"

.field private static sSearchFileCols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "(CASE WHEN media_type=1 THEN 2130837507 ELSE CASE WHEN media_type=2 THEN 2130837505 ELSE CASE WHEN media_type=3 THEN 2130837513 ELSE CASE WHEN file_type=4 THEN 2130837512 ELSE CASE WHEN file_type=5 THEN 2130837514 ELSE CASE WHEN file_type=6 THEN 2130837504 ELSE CASE WHEN format=12289 THEN 2130837506 ELSE 2130837511 END END END END END END END) AS suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "file_name AS suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data AS suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data AS suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id AS suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/FileSearchHelper;->sSearchFileCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeFileName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "path"
    .parameter "values"

    .prologue
    .line 152
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 153
    :cond_0
    const-string v1, "FileSearchHelper"

    const-string v2, "computeFileName: Param error!"

    invoke-static {v1, v2}, Lcom/android/providers/media/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 158
    .local v0, idx:I
    if-ltz v0, :cond_2

    .line 159
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 161
    :cond_2
    const-string v1, "file_name"

    invoke-virtual {p1, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static computeFileType(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "path"
    .parameter "values"

    .prologue
    .line 171
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 172
    :cond_0
    const-string v2, "FileSearchHelper"

    const-string v3, "computeFileType: Param error!"

    invoke-static {v2, v3}, Lcom/android/providers/media/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    const-string v2, "format"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 178
    .local v0, formatObject:Ljava/lang/Integer;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3001

    if-ne v2, v3, :cond_3

    .line 179
    const-string v2, "FileSearchHelper"

    const-string v3, "computeFileType path is a folder, filetype must be 0"

    invoke-static {v2, v3}, Lcom/android/providers/media/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_3
    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, mimeType:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 189
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    const-string v2, "file_type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 193
    :cond_4
    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 194
    const-string v2, "file_type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 197
    :cond_5
    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 198
    const-string v2, "file_type"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 201
    :cond_6
    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 202
    const-string v2, "file_type"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 205
    :cond_7
    const-string v2, "application/zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 206
    const-string v2, "file_type"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 209
    :cond_8
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const-string v2, "file_type"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method

.method public static computeRingtoneAttributes(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 9
    .parameter "path"
    .parameter "values"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 228
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 229
    :cond_0
    const-string v6, "FileSearchHelper"

    const-string v7, "computeRingtoneAttributes: Param error!"

    invoke-static {v6, v7}, Lcom/android/providers/media/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, lowpath:Ljava/lang/String;
    const-string v8, "/ringtones/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_3

    move v5, v6

    .line 234
    .local v5, ringtones:Z
    :goto_1
    const-string v8, "/notifications/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    move v3, v6

    .line 235
    .local v3, notifications:Z
    :goto_2
    const-string v8, "/alarms/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_5

    move v0, v6

    .line 236
    .local v0, alarms:Z
    :goto_3
    const-string v8, "/podcasts/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_6

    move v4, v6

    .line 237
    .local v4, podcasts:Z
    :goto_4
    const-string v8, "/music/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_2

    if-nez v5, :cond_7

    if-nez v3, :cond_7

    if-nez v0, :cond_7

    if-nez v4, :cond_7

    :cond_2
    move v2, v6

    .line 239
    .local v2, music:Z
    :goto_5
    const-string v6, "is_ringtone"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 240
    const-string v6, "is_notification"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    const-string v6, "is_alarm"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 242
    const-string v6, "is_music"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 243
    const-string v6, "is_podcast"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .end local v0           #alarms:Z
    .end local v2           #music:Z
    .end local v3           #notifications:Z
    .end local v4           #podcasts:Z
    .end local v5           #ringtones:Z
    :cond_3
    move v5, v7

    .line 233
    goto :goto_1

    .restart local v5       #ringtones:Z
    :cond_4
    move v3, v7

    .line 234
    goto :goto_2

    .restart local v3       #notifications:Z
    :cond_5
    move v0, v7

    .line 235
    goto :goto_3

    .restart local v0       #alarms:Z
    :cond_6
    move v4, v7

    .line 236
    goto :goto_4

    .restart local v4       #podcasts:Z
    :cond_7
    move v2, v7

    .line 237
    goto :goto_5
.end method

.method public static doFileSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "db"
    .parameter "qb"
    .parameter "uri"
    .parameter "limit"

    .prologue
    const/4 v5, 0x0

    .line 80
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 81
    :cond_0
    const-string v0, "FileSearchHelper"

    const-string v1, "doFileSearch: Param error!"

    invoke-static {v0, v1}, Lcom/android/providers/media/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    :goto_0
    return-object v5

    .line 85
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v9, ""

    .line 86
    .local v9, searchString:Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 87
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 92
    const-string v0, "%"

    const-string v1, "\\%"

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 93
    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 95
    const-string v3, "file_name LIKE ? ESCAPE \'\\\'"

    .line 96
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 97
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v0, "files"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 98
    sget-object v2, Lcom/android/providers/media/FileSearchHelper;->sSearchFileCols:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    move-object v6, v5

    move-object v7, v5

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 85
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v9           #searchString:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method public static doShortcutSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "db"
    .parameter "qb"
    .parameter "uri"
    .parameter "limit"

    .prologue
    const/4 v5, 0x0

    .line 256
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 257
    :cond_0
    const-string v0, "FileSearchHelper"

    const-string v1, "doShortcutSearch: Param error!"

    invoke-static {v0, v1}, Lcom/android/providers/media/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return-object v5

    .line 261
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, searchString:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 263
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    const-string v0, "FileSearchHelper"

    const-string v1, "doShortcutSearch: Null id!"

    invoke-static {v0, v1}, Lcom/android/providers/media/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_2
    const-string v3, "_id=?"

    .line 269
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 270
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v0, "files"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 271
    sget-object v2, Lcom/android/providers/media/FileSearchHelper;->sSearchFileCols:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    move-object v6, v5

    move-object v7, v5

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0
.end method

.method public static updateFileNameAndType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 19
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 108
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 109
    :cond_0
    const-string v3, "FileSearchHelper"

    const-string v4, "updateFileName: Param error!"

    invoke-static {v3, v4}, Lcom/android/providers/media/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 114
    const/4 v3, 0x3

    :try_start_0
    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "file_name"

    aput-object v4, v5, v3

    .line 115
    .local v5, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 117
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 118
    :try_start_1
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 119
    .local v16, idColumnIndex:I
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 120
    .local v13, dataColumnIndex:I
    const-string v3, "file_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 121
    .local v15, fileNameIndex:I
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v18, values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 123
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, fileName:Ljava/lang/String;
    if-nez v14, :cond_2

    .line 125
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 126
    .local v12, data:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 127
    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lcom/android/providers/media/FileSearchHelper;->computeFileName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 128
    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lcom/android/providers/media/FileSearchHelper;->computeFileType(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 129
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 130
    .local v17, rowId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 135
    .end local v12           #data:Ljava/lang/String;
    .end local v13           #dataColumnIndex:I
    .end local v14           #fileName:Ljava/lang/String;
    .end local v15           #fileNameIndex:I
    .end local v16           #idColumnIndex:I
    .end local v17           #rowId:I
    .end local v18           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_3

    .line 136
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    .end local v5           #columns:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 135
    .restart local v5       #columns:[Ljava/lang/String;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :cond_4
    if-eqz v11, :cond_5

    .line 136
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0
.end method
