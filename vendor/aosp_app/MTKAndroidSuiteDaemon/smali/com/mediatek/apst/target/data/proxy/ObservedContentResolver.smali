.class public Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;
.super Ljava/lang/Object;
.source "ObservedContentResolver.java"


# instance fields
.field private mCR:Landroid/content/ContentResolver;

.field private mSelfChangeOb:Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "cr"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mCR:Landroid/content/ContentResolver;

    .line 63
    return-void
.end method

.method private selfChangeDone()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mSelfChangeOb:Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mSelfChangeOb:Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;

    invoke-interface {v0}, Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;->onSelfChangeDone()V

    .line 113
    :cond_0
    return-void
.end method

.method private selfChangeStart()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mSelfChangeOb:Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mSelfChangeOb:Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;

    invoke-interface {v0}, Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;->onSelfChangeStart()V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mSelfChangeOb is null"

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter "authority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 267
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 268
    .local v1, rt:[Landroid/content/ContentProviderResult;
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->selfChangeStart()V

    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mCR:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->selfChangeDone()V

    .line 275
    return-object v1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Landroid/database/SQLException;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, rt:I
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->selfChangeStart()V

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mCR:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 196
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->selfChangeDone()V

    .line 197
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Landroid/database/SQLException;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "where"
    .parameter "selectionArgs"

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, rt:I
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->selfChangeStart()V

    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mCR:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 247
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->selfChangeDone()V

    .line 248
    return v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Landroid/database/SQLException;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSelfChangeObserver()Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mSelfChangeOb:Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, rt:Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mSelfChangeOb:Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;

    if-eqz v2, :cond_0

    .line 155
    iget-object v3, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mSelfChangeOb:Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;

    monitor-enter v3

    .line 156
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->selfChangeStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mCR:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 163
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mSelfChangeOb:Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 167
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->selfChangeDone()V

    .line 168
    monitor-exit v3

    .line 178
    :goto_2
    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Landroid/database/SQLException;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 168
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 164
    :catch_1
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 170
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->selfChangeStart()V

    .line 172
    :try_start_5
    iget-object v2, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mCR:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v1

    .line 176
    :goto_3
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->selfChangeDone()V

    goto :goto_2

    .line 173
    :catch_2
    move-exception v0

    .line 174
    .local v0, e:Landroid/database/SQLException;
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v2, v6, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mCR:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 142
    .local v6, rt:Landroid/database/Cursor;
    return-object v6
.end method

.method public registerSelfChangeObserver(Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;)V
    .locals 0
    .parameter "ob"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mSelfChangeOb:Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;

    .line 78
    return-void
.end method

.method public setInnerContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "cr"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mCR:Landroid/content/ContentResolver;

    .line 93
    return-void
.end method

.method public unregisterSelfChangeObserver()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mSelfChangeOb:Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;

    .line 85
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "selectionArgs"

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, rt:I
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->selfChangeStart()V

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->mCR:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 223
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->selfChangeDone()V

    .line 224
    return v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Landroid/database/SQLException;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
