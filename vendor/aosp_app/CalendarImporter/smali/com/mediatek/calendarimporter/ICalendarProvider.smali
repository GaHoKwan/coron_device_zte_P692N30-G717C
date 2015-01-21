.class public Lcom/mediatek/calendarimporter/ICalendarProvider;
.super Landroid/content/ContentProvider;
.source "ICalendarProvider.java"


# static fields
.field private static final DEFAULT_FILE_NAME:Ljava/lang/String; = "vCalendar"

.field private static final FILENAME_REG_EXP:Ljava/lang/String; = "[/\\\\:*?\"<>|$()~]"

.field private static final TAG:Ljava/lang/String; = "ICalendarProvider"

.field private static final VCS:Ljava/lang/String; = ".vcs"

.field private static final VCS_FILENAME_MAX_LENGTH:I = 0x64


# instance fields
.field private mComposer:Lcom/mediatek/vcalendar/VCalComposer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private createComposer(Landroid/net/Uri;)V
    .locals 7
    .parameter "eventsUri"

    .prologue
    const/4 v6, 0x0

    .line 166
    const-wide/16 v0, -0x1

    .line 167
    .local v0, eventId:J
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 168
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 169
    const-string v3, "ICalendarProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Constructor,The given eventId is inlegal or empty, eventId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, selection:Ljava/lang/String;
    const-string v3, "ICalendarProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Constructor: the going query selection = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v3, Lcom/mediatek/vcalendar/VCalComposer;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v6, v4, v2, v6}, Lcom/mediatek/vcalendar/VCalComposer;-><init>(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    iput-object v3, p0, Lcom/mediatek/calendarimporter/ICalendarProvider;->mComposer:Lcom/mediatek/vcalendar/VCalComposer;

    .line 175
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 62
    const-string v0, "ICalendarProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getType() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "text/x-vcalendar"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v3, "ICalendarProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openAssetFile()--->> uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/mediatek/calendarimporter/ICalendarProvider;->createComposer(Landroid/net/Uri;)V

    .line 147
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/calendarimporter/ICalendarProvider;->mComposer:Lcom/mediatek/vcalendar/VCalComposer;

    invoke-virtual {v3}, Lcom/mediatek/vcalendar/VCalComposer;->getAccountsMemoryFile()Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    .local v0, descriptor:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    if-nez v0, :cond_0

    .line 154
    const-string v3, "ICalendarProvider"

    const-string v4, "openAssetFile,trrow FileNotFoundException."

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3

    .line 148
    .end local v0           #descriptor:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v1

    .line 149
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "ICalendarProvider"

    const-string v4, "openAssetFile, getAccountsMemoryFile trrow IllegalArgumentException."

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    .restart local v0       #descriptor:Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 158
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/calendarimporter/ICalendarProvider;->mComposer:Lcom/mediatek/vcalendar/VCalComposer;

    invoke-virtual {v3}, Lcom/mediatek/vcalendar/VCalComposer;->getMemoryFileName()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, fileName:Ljava/lang/String;
    const-string v3, "ICalendarProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openAssetFile(): return the fileName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fileLength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 73
    const-string v11, "ICalendarProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "query()--->> uri="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    move-object/from16 v1, p2

    .line 79
    .local v1, curProjection:[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 80
    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/String;

    .end local v1           #curProjection:[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "_display_name"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "_size"

    aput-object v12, v1, v11

    .line 81
    .restart local v1       #curProjection:[Ljava/lang/String;
    const-string v11, "ICalendarProvider"

    const-string v12, "query projection is null, create one."

    invoke-static {v11, v12}, Lcom/mediatek/calendarimporter/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 85
    .local v2, cursor:Landroid/database/MatrixCursor;
    invoke-direct {p0, p1}, Lcom/mediatek/calendarimporter/ICalendarProvider;->createComposer(Landroid/net/Uri;)V

    .line 86
    const/4 v3, 0x0

    .line 87
    .local v3, descriptor:Landroid/content/res/AssetFileDescriptor;
    const/4 v5, 0x0

    .line 89
    .local v5, fileName:Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/mediatek/calendarimporter/ICalendarProvider;->mComposer:Lcom/mediatek/vcalendar/VCalComposer;

    invoke-virtual {v11}, Lcom/mediatek/vcalendar/VCalComposer;->getAccountsMemoryFile()Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 90
    iget-object v11, p0, Lcom/mediatek/calendarimporter/ICalendarProvider;->mComposer:Lcom/mediatek/vcalendar/VCalComposer;

    invoke-virtual {v11}, Lcom/mediatek/vcalendar/VCalComposer;->getMemoryFileName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 97
    const-string v9, "vCalendar"

    .line 98
    .local v9, title:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 99
    const-string v11, "[/\\\\:*?\"<>|$()~]"

    const-string v12, ""

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v8, v11

    .line 101
    .local v8, length:I
    const/16 v11, 0x64

    if-le v8, v11, :cond_1

    .line 102
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 103
    .local v0, bytes:[B
    new-instance v5, Ljava/lang/String;

    .end local v5           #fileName:Ljava/lang/String;
    const/4 v11, 0x0

    const/16 v12, 0x64

    invoke-direct {v5, v0, v11, v12}, Ljava/lang/String;-><init>([BII)V

    .line 105
    .restart local v5       #fileName:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 106
    const-string v11, "ICalendarProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileName is too long, format it, fileName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v0           #bytes:[B
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 110
    move-object v9, v5

    .line 113
    .end local v8           #length:I
    :cond_2
    const-string v11, "ICalendarProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "query, title = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    array-length v7, v1

    .line 116
    .local v7, len:I
    new-array v10, v7, [Ljava/lang/Object;

    .line 118
    .local v10, values:[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_5

    .line 119
    aget-object v11, v1, v6

    const-string v12, "_display_name"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 120
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".vcs"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 118
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 91
    .end local v6           #i:I
    .end local v7           #len:I
    .end local v9           #title:Ljava/lang/String;
    .end local v10           #values:[Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 92
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "ICalendarProvider"

    const-string v12, "ICalendarProvider, query, JE happened."

    invoke-static {v11, v12}, Lcom/mediatek/calendarimporter/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .end local v4           #e:Ljava/lang/Exception;
    :goto_2
    return-object v2

    .line 121
    .restart local v6       #i:I
    .restart local v7       #len:I
    .restart local v9       #title:Ljava/lang/String;
    .restart local v10       #values:[Ljava/lang/Object;
    :cond_3
    aget-object v11, v1, v6

    const-string v12, "_size"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 122
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v6

    goto :goto_1

    .line 124
    :cond_4
    const/4 v11, 0x0

    aput-object v11, v10, v6

    .line 125
    const-string v11, "ICalendarProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can not support column:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v1, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/calendarimporter/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :cond_5
    invoke-virtual {v2, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 131
    :try_start_1
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :goto_3
    const-string v11, "ICalendarProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "query(): return the Cursor.count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 132
    :catch_1
    move-exception v4

    .line 133
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method
