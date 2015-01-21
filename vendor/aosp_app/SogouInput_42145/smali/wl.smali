.class public Lwl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private final a:Ljava/lang/String;

.field private a:Lwm;

.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lwl;->a:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "AppDownloadDao"

    iput-object v0, p0, Lwl;->a:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lwl;->a:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lwl;->a:Lwm;

    .line 25
    new-instance v0, Lwm;

    invoke-direct {v0, p0, p1}, Lwm;-><init>(Lwl;Landroid/content/Context;)V

    iput-object v0, p0, Lwl;->a:Lwm;

    .line 26
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 341
    sget-object v3, Lwl;->a:[B

    monitor-enter v3

    .line 346
    :try_start_0
    iget-object v1, p0, Lwl;->a:Lwm;

    invoke-virtual {v1}, Lwm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 347
    :try_start_1
    const-string v4, "select status from platform_download_info where download_url=?"

    .line 348
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 350
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 351
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v2

    .line 356
    :cond_0
    if-eqz v0, :cond_1

    .line 358
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 363
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 365
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 371
    :cond_2
    :goto_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return v2

    .line 356
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_3

    .line 358
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 363
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 365
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 356
    :cond_4
    :goto_4
    :try_start_8
    throw v0

    .line 372
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 353
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 356
    :goto_5
    if-eqz v0, :cond_5

    .line 358
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 363
    :cond_5
    :goto_6
    if-eqz v1, :cond_2

    .line 365
    :try_start_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_1

    .line 366
    :catch_1
    move-exception v0

    goto :goto_1

    .line 359
    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_3

    .line 366
    :catch_4
    move-exception v1

    goto :goto_4

    .line 359
    :catch_5
    move-exception v0

    goto :goto_0

    .line 356
    :catchall_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :catchall_3
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 353
    :catch_6
    move-exception v4

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)Lwn;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 118
    sget-object v4, Lwl;->a:[B

    monitor-enter v4

    .line 123
    :try_start_0
    iget-object v0, p0, Lwl;->a:Lwm;

    invoke-virtual {v0}, Lwm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 124
    :try_start_1
    const-string v0, "select package_name, version_code, download_url, local_path, status, total_bytes,current_bytes from platform_download_info where download_url=?"

    .line 125
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 126
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 128
    new-instance v2, Lwn;

    invoke-direct {v2}, Lwn;-><init>()V

    .line 129
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lwn;->a:Ljava/lang/String;

    .line 130
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lwn;->a:I

    .line 131
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lwn;->b:Ljava/lang/String;

    .line 132
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lwn;->c:Ljava/lang/String;

    .line 133
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lwn;->b:I

    .line 134
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lwn;->c:I

    .line 135
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lwn;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 138
    :cond_0
    if-eqz v1, :cond_1

    .line 140
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 145
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 147
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 153
    :cond_2
    :goto_1
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v2

    .line 138
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 140
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 145
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 147
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 138
    :cond_4
    :goto_4
    :try_start_8
    throw v0

    .line 154
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 141
    :catch_0
    move-exception v1

    goto :goto_3

    .line 148
    :catch_1
    move-exception v1

    goto :goto_4

    .line 141
    :catch_2
    move-exception v0

    goto :goto_0

    .line 148
    :catch_3
    move-exception v0

    goto :goto_1

    .line 138
    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method public a()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lwl;->a:Lwm;

    invoke-virtual {v0}, Lwm;->close()V

    .line 399
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 298
    sget-object v2, Lwl;->a:[B

    monitor-enter v2

    .line 299
    const/4 v0, 0x0

    .line 301
    :try_start_0
    iget-object v1, p0, Lwl;->a:Lwm;

    invoke-virtual {v1}, Lwm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 302
    :try_start_1
    const-string v1, "update platform_download_info set current_bytes=? where download_url=?"

    .line 303
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 304
    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    if-eqz v0, :cond_0

    .line 310
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 316
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 317
    return-void

    .line 308
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_1

    .line 310
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 308
    :cond_1
    :goto_2
    :try_start_5
    throw v0

    .line 316
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 305
    :catch_0
    move-exception v1

    .line 308
    if-eqz v0, :cond_0

    .line 310
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 311
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    .line 308
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lwl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 321
    :cond_0
    sget-object v2, Lwl;->a:[B

    monitor-enter v2

    .line 322
    const/4 v0, 0x0

    .line 324
    :try_start_0
    iget-object v1, p0, Lwl;->a:Lwm;

    invoke-virtual {v1}, Lwm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :try_start_1
    const-string v1, "platform_download_info"

    const-string v3, "download_url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 329
    if-eqz v0, :cond_1

    .line 331
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 337
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 329
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_2

    .line 331
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 329
    :cond_2
    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 326
    :catch_0
    move-exception v1

    .line 329
    if-eqz v0, :cond_1

    .line 331
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 332
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3

    .line 329
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method public a(Lwn;)V
    .locals 7
    .parameter

    .prologue
    .line 95
    sget-object v2, Lwl;->a:[B

    monitor-enter v2

    .line 96
    const/4 v0, 0x0

    .line 98
    :try_start_0
    iget-object v1, p0, Lwl;->a:Lwm;

    invoke-virtual {v1}, Lwm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :try_start_1
    const-string v1, "insert into platform_download_info(package_name,version_code,download_url,local_path,status,total_bytes,current_bytes) values (?,?,?,?,?,?,?)"

    .line 100
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lwn;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lwn;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lwn;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lwn;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p1, Lwn;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p1, Lwn;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget v5, p1, Lwn;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 101
    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    if-eqz v0, :cond_0

    .line 107
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    return-void

    .line 105
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_1

    .line 107
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 105
    :cond_1
    :goto_2
    :try_start_5
    throw v0

    .line 114
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 102
    :catch_0
    move-exception v1

    .line 105
    if-eqz v0, :cond_0

    .line 107
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    .line 105
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    sget-object v5, Lwl;->a:[B

    monitor-enter v5

    .line 67
    :try_start_0
    iget-object v0, p0, Lwl;->a:Lwm;

    invoke-virtual {v0}, Lwm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 68
    :try_start_1
    const-string v0, "select count(*)  from platform_download_info where download_url=?"

    .line 69
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 71
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    .line 75
    :goto_0
    if-eqz v1, :cond_0

    .line 77
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 84
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 90
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v3

    .line 75
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v1, :cond_3

    .line 77
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 82
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 84
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 75
    :cond_4
    :goto_5
    :try_start_7
    throw v0

    .line 91
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 78
    :catch_0
    move-exception v1

    goto :goto_4

    .line 85
    :catch_1
    move-exception v1

    goto :goto_5

    .line 78
    :catch_2
    move-exception v1

    goto :goto_1

    .line 85
    :catch_3
    move-exception v1

    goto :goto_2

    .line 75
    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 157
    sget-object v11, Lwl;->a:[B

    monitor-enter v11

    .line 162
    :try_start_0
    iget-object v1, p0, Lwl;->a:Lwm;

    invoke-virtual {v1}, Lwm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 163
    :try_start_1
    const-string v1, "select package_name,version_code,download_url,status,total_bytes,current_bytes  from platform_download_info where status=? or status=?"

    .line 164
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v10, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    move-result-object v9

    .line 165
    if-eqz v9, :cond_3

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 166
    const-string v0, "Cursor is not null and cursor count above zero!"

    invoke-direct {p0, v0}, Lwl;->b(Ljava/lang/String;)V

    .line 167
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 168
    if-nez p1, :cond_2

    .line 169
    const-string v0, "appDownloadingList is null"

    invoke-direct {p0, v0}, Lwl;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    .line 184
    if-eqz v9, :cond_0

    .line 186
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 191
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 193
    :try_start_4
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 170
    :cond_1
    :goto_1
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v0, v7

    .line 200
    :goto_2
    return v0

    .line 173
    :cond_2
    :try_start_6
    new-instance v0, Lwn;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lwn;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    :cond_3
    if-nez v9, :cond_6

    .line 178
    const-string v0, "Cursor is null!"

    invoke-direct {p0, v0}, Lwl;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    .line 184
    if-eqz v9, :cond_4

    .line 186
    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 191
    :cond_4
    :goto_3
    if-eqz v10, :cond_5

    .line 193
    :try_start_8
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 178
    :cond_5
    :goto_4
    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v0, v7

    goto :goto_2

    .line 179
    :cond_6
    :try_start_a
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_d

    .line 180
    const-string v0, "Cursor is empty!"

    invoke-direct {p0, v0}, Lwl;->b(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    .line 184
    if-eqz v9, :cond_7

    .line 186
    :try_start_b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 191
    :cond_7
    :goto_5
    if-eqz v10, :cond_8

    .line 193
    :try_start_c
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 180
    :cond_8
    :goto_6
    :try_start_d
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move v0, v7

    goto :goto_2

    .line 184
    :catchall_0
    move-exception v1

    move-object v9, v0

    move-object v10, v0

    move-object v0, v1

    :goto_7
    if-eqz v9, :cond_9

    .line 186
    :try_start_e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 191
    :cond_9
    :goto_8
    if-eqz v10, :cond_a

    .line 193
    :try_start_f
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 184
    :cond_a
    :goto_9
    :try_start_10
    throw v0

    .line 201
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    throw v0

    .line 181
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 184
    :goto_a
    if-eqz v0, :cond_b

    .line 186
    :try_start_11
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 191
    :cond_b
    :goto_b
    if-eqz v1, :cond_c

    .line 193
    :try_start_12
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    .line 200
    :cond_c
    :goto_c
    :try_start_13
    monitor-exit v11
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move v0, v8

    goto :goto_2

    .line 187
    :catch_1
    move-exception v0

    goto :goto_b

    .line 194
    :catch_2
    move-exception v0

    goto :goto_c

    .line 187
    :catch_3
    move-exception v1

    goto :goto_8

    .line 194
    :catch_4
    move-exception v1

    goto :goto_9

    .line 187
    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 194
    :catch_6
    move-exception v0

    goto/16 :goto_1

    .line 187
    :catch_7
    move-exception v0

    goto :goto_3

    .line 194
    :catch_8
    move-exception v0

    goto :goto_4

    .line 187
    :catch_9
    move-exception v0

    goto :goto_5

    .line 194
    :catch_a
    move-exception v0

    goto :goto_6

    .line 184
    :cond_d
    if-eqz v9, :cond_e

    .line 186
    :try_start_14
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    .line 191
    :cond_e
    :goto_d
    if-eqz v10, :cond_c

    .line 193
    :try_start_15
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    goto :goto_c

    .line 187
    :catch_b
    move-exception v0

    goto :goto_d

    .line 184
    :catchall_2
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 181
    :catch_c
    move-exception v1

    move-object v1, v10

    goto :goto_a

    :catch_d
    move-exception v0

    move-object v0, v9

    move-object v1, v10

    goto :goto_a
.end method

.method public a(Ljava/util/List;ILjava/lang/String;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    sget-object v5, Lwl;->a:[B

    monitor-enter v5

    .line 210
    :try_start_0
    iget-object v3, p0, Lwl;->a:Lwm;

    invoke-virtual {v3}, Lwm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 211
    :try_start_1
    const-string v3, "select status,current_bytes  from platform_download_info where download_url=?"

    .line 212
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-virtual {v4, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    move-result-object v3

    .line 213
    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 214
    const-string v0, "Cursor is not null and cursor count above zero!"

    invoke-direct {p0, v0}, Lwl;->b(Ljava/lang/String;)V

    .line 215
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 216
    if-nez p1, :cond_2

    .line 217
    const-string v0, "appDownloadingList is null"

    invoke-direct {p0, v0}, Lwl;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    .line 230
    if-eqz v3, :cond_0

    .line 232
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 237
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 239
    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 218
    :cond_1
    :goto_1
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v0, v1

    .line 246
    :goto_2
    return v0

    .line 220
    :cond_2
    :try_start_6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v0, Lwn;->b:I

    .line 221
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v0, Lwn;->d:I

    .line 223
    :cond_3
    if-nez v3, :cond_6

    .line 224
    const-string v0, "Cursor is null!"

    invoke-direct {p0, v0}, Lwl;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    .line 230
    if-eqz v3, :cond_4

    .line 232
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 237
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 239
    :try_start_8
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 224
    :cond_5
    :goto_4
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v0, v1

    goto :goto_2

    .line 225
    :cond_6
    :try_start_a
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_d

    .line 226
    const-string v0, "Cursor is empty!"

    invoke-direct {p0, v0}, Lwl;->b(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    .line 230
    if-eqz v3, :cond_7

    .line 232
    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 237
    :cond_7
    :goto_5
    if-eqz v4, :cond_8

    .line 239
    :try_start_c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 226
    :cond_8
    :goto_6
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move v0, v1

    goto :goto_2

    .line 230
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    :goto_7
    if-eqz v3, :cond_9

    .line 232
    :try_start_e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 237
    :cond_9
    :goto_8
    if-eqz v4, :cond_a

    .line 239
    :try_start_f
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 230
    :cond_a
    :goto_9
    :try_start_10
    throw v0

    .line 247
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    throw v0

    .line 227
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 230
    :goto_a
    if-eqz v0, :cond_b

    .line 232
    :try_start_11
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 237
    :cond_b
    :goto_b
    if-eqz v1, :cond_c

    .line 239
    :try_start_12
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    .line 246
    :cond_c
    :goto_c
    :try_start_13
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move v0, v2

    goto :goto_2

    .line 233
    :catch_1
    move-exception v0

    goto :goto_b

    .line 240
    :catch_2
    move-exception v0

    goto :goto_c

    .line 233
    :catch_3
    move-exception v1

    goto :goto_8

    .line 240
    :catch_4
    move-exception v1

    goto :goto_9

    .line 233
    :catch_5
    move-exception v0

    goto :goto_0

    .line 240
    :catch_6
    move-exception v0

    goto :goto_1

    .line 233
    :catch_7
    move-exception v0

    goto :goto_3

    .line 240
    :catch_8
    move-exception v0

    goto :goto_4

    .line 233
    :catch_9
    move-exception v0

    goto :goto_5

    .line 240
    :catch_a
    move-exception v0

    goto :goto_6

    .line 230
    :cond_d
    if-eqz v3, :cond_e

    .line 232
    :try_start_14
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    .line 237
    :cond_e
    :goto_d
    if-eqz v4, :cond_c

    .line 239
    :try_start_15
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    goto :goto_c

    .line 233
    :catch_b
    move-exception v0

    goto :goto_d

    .line 230
    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 227
    :catch_c
    move-exception v1

    move-object v1, v4

    goto :goto_a

    :catch_d
    move-exception v0

    move-object v0, v3

    move-object v1, v4

    goto :goto_a
.end method

.method public b(ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 376
    sget-object v2, Lwl;->a:[B

    monitor-enter v2

    .line 377
    const/4 v0, 0x0

    .line 379
    :try_start_0
    iget-object v1, p0, Lwl;->a:Lwm;

    invoke-virtual {v1}, Lwm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 380
    :try_start_1
    const-string v1, "update platform_download_info set status=? where download_url=?"

    .line 381
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 382
    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    if-eqz v0, :cond_0

    .line 388
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 394
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 395
    return-void

    .line 386
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_1

    .line 388
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 386
    :cond_1
    :goto_2
    :try_start_5
    throw v0

    .line 394
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 383
    :catch_0
    move-exception v1

    .line 386
    if-eqz v0, :cond_0

    .line 388
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 389
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    .line 386
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method
