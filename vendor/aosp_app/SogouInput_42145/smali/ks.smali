.class public Lks;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private final a:Ljava/lang/String;

.field private a:Lkt;

.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lks;->a:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "QrAPKDownloadStatusRecord"

    iput-object v0, p0, Lks;->a:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lks;->a:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lks;->a:Lkt;

    .line 22
    new-instance v0, Lkt;

    invoke-direct {v0, p0, p1}, Lkt;-><init>(Lks;Landroid/content/Context;)V

    iput-object v0, p0, Lks;->a:Lkt;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lku;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lks;->a:Lkt;

    invoke-virtual {v0}, Lkt;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 90
    const-string v1, "select package_name, version_code, download_url, local_path, status, total_bytes,current_bytes from qr_apk_download_info where download_url=?"

    .line 91
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 92
    const/4 v0, 0x0

    .line 94
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 95
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 96
    new-instance v0, Lku;

    invoke-direct {v0}, Lku;-><init>()V

    .line 97
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lku;->b:Ljava/lang/String;

    .line 98
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lku;->a:I

    .line 99
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lku;->e:Ljava/lang/String;

    .line 100
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lku;->g:Ljava/lang/String;

    .line 101
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lku;->b:I

    .line 102
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lku;->c:I

    .line 103
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lku;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    if-eqz v1, :cond_1

    .line 108
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    :cond_1
    :goto_0
    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 108
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    :cond_2
    :goto_1
    throw v0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lks;->a:Lkt;

    invoke-virtual {v0}, Lkt;->close()V

    .line 167
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 119
    sget-object v1, Lks;->a:[B

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lks;->a:Lkt;

    invoke-virtual {v0}, Lkt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 121
    const-string v2, "update qr_apk_download_info set current_bytes=? where download_url=?"

    .line 122
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 123
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 128
    sget-object v1, Lks;->a:[B

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lks;->a:Lkt;

    invoke-virtual {v0}, Lkt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 130
    const-string v2, "qr_apk_download_info"

    const-string v3, "download_url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lku;)V
    .locals 6
    .parameter

    .prologue
    .line 70
    sget-object v1, Lks;->a:[B

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lks;->a:Lkt;

    invoke-virtual {v0}, Lkt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    const-string v2, "insert into qr_apk_download_info(package_name,version_code,download_url,local_path,status,total_bytes,current_bytes) values (?,?,?,?,?,?,?)"

    .line 73
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lku;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lku;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lku;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lku;->g:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p1, Lku;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p1, Lku;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget v5, p1, Lku;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 75
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    iget-object v2, p0, Lks;->a:Lkt;

    invoke-virtual {v2}, Lkt;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 49
    const-string v3, "select count(*)  from qr_apk_download_info where download_url=?"

    .line 50
    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 53
    if-eqz v3, :cond_3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 54
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 55
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 58
    :goto_0
    if-eqz v3, :cond_0

    .line 60
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    return v0

    .line 58
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_1

    .line 60
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    :cond_1
    :goto_3
    throw v0

    :cond_2
    move v0, v1

    .line 66
    goto :goto_2

    .line 61
    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public b(ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 157
    sget-object v1, Lks;->a:[B

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lks;->a:Lkt;

    invoke-virtual {v0}, Lkt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 159
    const-string v2, "update qr_apk_download_info set status=? where download_url=?"

    .line 160
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 161
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
