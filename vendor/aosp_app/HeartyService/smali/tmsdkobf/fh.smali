.class public Ltmsdkobf/fh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ltmsdkobf/em;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 97
    :cond_0
    const-string v1, "rqdp{  context == null || bean == null}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_1
    :goto_0
    return v0

    .line 105
    :cond_2
    :try_start_0
    new-instance v4, Ltmsdkobf/ed;

    invoke-direct {v4, p0}, Ltmsdkobf/ed;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    :try_start_1
    invoke-virtual {v4}, Ltmsdkobf/ed;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 107
    if-nez p1, :cond_4

    .line 108
    :goto_1
    if-eqz v3, :cond_9

    .line 110
    :try_start_2
    const-string v5, "strategy"

    const-string v6, "_id"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 112
    cmp-long v3, v5, v8

    if-gez v3, :cond_7

    .line 114
    const-string v1, "rqdp{  insert failure! return}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 141
    :cond_3
    invoke-virtual {v4}, Ltmsdkobf/ed;->close()V

    goto :goto_0

    .line 107
    :cond_4
    :try_start_3
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Ltmsdkobf/em;->X()J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-ltz v5, :cond_5

    const-string v5, "_id"

    invoke-virtual {p1}, Ltmsdkobf/em;->X()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    const-string v5, "_key"

    invoke-virtual {p1}, Ltmsdkobf/em;->Y()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "_datas"

    invoke-virtual {p1}, Ltmsdkobf/em;->aG()[B

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 128
    :goto_2
    :try_start_4
    const-string v4, "rqdp{  Error strategy update!} %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 136
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 138
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 141
    :cond_6
    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {v3}, Ltmsdkobf/ed;->close()V

    goto/16 :goto_0

    .line 118
    :cond_7
    :try_start_5
    invoke-virtual {p1, v5, v6}, Ltmsdkobf/em;->h(J)V

    .line 120
    const-string v3, "rqdp{  update strategy} %d rqdp{  true}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ltmsdkobf/em;->Y()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 121
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 141
    :cond_8
    invoke-virtual {v4}, Ltmsdkobf/ed;->close()V

    move v0, v1

    goto/16 :goto_0

    .line 136
    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 138
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 141
    :cond_a
    invoke-virtual {v4}, Ltmsdkobf/ed;->close()V

    goto/16 :goto_0

    .line 136
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_3
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 138
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 141
    :cond_b
    if-eqz v4, :cond_c

    .line 143
    invoke-virtual {v4}, Ltmsdkobf/ed;->close()V

    :cond_c
    throw v0

    .line 136
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_3

    .line 125
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;I)Ltmsdkobf/em;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 180
    if-nez p0, :cond_0

    .line 182
    const-string v0, "rqdp{  context == null}"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v8

    .line 233
    :goto_0
    return-object v0

    .line 191
    :cond_0
    :try_start_0
    new-instance v9, Ltmsdkobf/ed;

    invoke-direct {v9, p0}, Ltmsdkobf/ed;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :try_start_1
    invoke-virtual {v9}, Ltmsdkobf/ed;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 193
    if-nez v0, :cond_2

    .line 195
    :try_start_2
    const-string v1, "rqdp{  getWritableDatabase fail!}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 196
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 228
    :cond_1
    invoke-virtual {v9}, Ltmsdkobf/ed;->close()V

    move-object v0, v8

    goto :goto_0

    .line 199
    :cond_2
    :try_start_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, " %s = %d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "_key"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 200
    const-string v1, "strategy"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 201
    if-eqz v2, :cond_a

    .line 203
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_a

    .line 206
    const-string v3, "rqdp{  read strategy key:}%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ltmsdkobf/em;->Y()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltmsdkobf/eq;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 218
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 220
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 228
    :cond_5
    invoke-virtual {v9}, Ltmsdkobf/ed;->close()V

    move-object v0, v1

    goto/16 :goto_0

    .line 203
    :cond_6
    :try_start_5
    const-string v1, "rqdp{  parse bean}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ltmsdkobf/em;

    invoke-direct {v1}, Ltmsdkobf/em;-><init>()V

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ltmsdkobf/em;->h(J)V

    const-string v3, "_key"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ltmsdkobf/em;->av(I)V

    const-string v3, "_datas"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ltmsdkobf/em;->f([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 211
    :catch_0
    move-exception v1

    move-object v3, v9

    move-object v10, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v10

    .line 213
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    const-string v4, "rqdp{  Error strategy query!} %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 218
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 220
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 225
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 228
    :cond_8
    if-eqz v3, :cond_9

    .line 230
    invoke-virtual {v3}, Ltmsdkobf/ed;->close()V

    :cond_9
    :goto_3
    move-object v0, v8

    .line 233
    goto/16 :goto_0

    .line 218
    :cond_a
    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b

    .line 220
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 225
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 228
    :cond_c
    invoke-virtual {v9}, Ltmsdkobf/ed;->close()V

    goto :goto_3

    .line 218
    :catchall_0
    move-exception v0

    move-object v2, v8

    move-object v9, v8

    :goto_4
    if-eqz v2, :cond_d

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d

    .line 220
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_d
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 225
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 228
    :cond_e
    if-eqz v9, :cond_f

    .line 230
    invoke-virtual {v9}, Ltmsdkobf/ed;->close()V

    :cond_f
    throw v0

    .line 218
    :catchall_1
    move-exception v0

    move-object v2, v8

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v8, v2

    move-object v9, v3

    move-object v2, v1

    goto :goto_4

    .line 211
    :catch_1
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    move-object v3, v8

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    move-object v3, v9

    goto/16 :goto_2

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v3, v9

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_2
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 286
    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-ge p1, v0, :cond_1

    .line 288
    :cond_0
    const-string v0, "rqdp{  context == null ||key < -1}"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 325
    :goto_0
    return v0

    .line 296
    :cond_1
    :try_start_0
    new-instance v4, Ltmsdkobf/ed;

    invoke-direct {v4, p0}, Ltmsdkobf/ed;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :try_start_1
    invoke-virtual {v4}, Ltmsdkobf/ed;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 299
    if-lez p1, :cond_2

    .line 300
    :try_start_2
    const-string v0, "%s = %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_key"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 302
    :cond_2
    const-string v0, "strategy"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 303
    const-string v3, "rqdp{  delete Strategy key} %d rqdp{  , num} %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ltmsdkobf/eq;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 315
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 320
    :cond_3
    invoke-virtual {v4}, Ltmsdkobf/ed;->close()V

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 309
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 310
    const-string v4, "rqdp{  Error strategy delete!} %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 315
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 320
    :cond_4
    if-eqz v3, :cond_5

    .line 322
    invoke-virtual {v3}, Ltmsdkobf/ed;->close()V

    :cond_5
    move v0, v1

    .line 325
    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 317
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 320
    :cond_6
    if-eqz v4, :cond_7

    .line 322
    invoke-virtual {v4}, Ltmsdkobf/ed;->close()V

    :cond_7
    throw v0

    .line 315
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_2

    .line 307
    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_1
.end method
