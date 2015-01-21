.class public Lcom/zte/hs/sta/Sta;
.super Ljava/lang/Object;
.source "Sta.java"


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "content://com.zte.heartyservice.system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/hs/sta/Sta;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doFinish(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "context"
    .parameter "list"

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 91
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 92
    .local v0, array:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 94
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    :cond_0
    sget-object v2, Lcom/zte/hs/sta/Sta;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method private static doSta(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method private static getAllRecords(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "context"

    .prologue
    .line 100
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v7, list:Ljava/util/List;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 104
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/zte/hs/sta/Sta;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "r"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 105
    if-eqz v6, :cond_1

    .line 106
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, v:Ljava/lang/String;
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    .end local v8           #v:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_0

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 112
    :cond_1
    if-eqz v6, :cond_2

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_2
    return-object v7
.end method

.method private static getAuthKey(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "KxeUr3bDpEGj9rcFkRVsjrkohv7woG0v6cx4B78dyGyUgURHLePqP1J9to89HYZsutL5DZxe8Az8pYjnAZ2oOQcsD34dZym5Pl/A8Oxz9OlxGFePT+XxhOh31wRWY4VU5MADmbtaq3rELEEQMZFlKvkjognStRrLbf2ZYYQfcuk="

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v1, "hwvTDAlxyWlJSLLxBjZ9HxSZAREm0pHFW0edZIPXnankYu5INpobo6KPHaHWRqXPyBt0CmopUR6gc0FPAJGI3eqCfZrR1Nd+D8RM00r/AFxW3NAHOAgBhi/dVvizy3OMBbbNfScy9VhimeAA1+cxolO8BssOTVM4x+i9LyG3eszWzc2fpIBLeqyodXqdxicYL5TAfH4x63qBDKaMDSP2ctJad1NIPc7yyNojEghUf6YgcCZvCaxAiJehLjv0r5Ussz1ue8AdEvwCwTKKw/R2ZlQudXi2jORTQlcMe9vDmP36Zrl26vAAl4KhuAtM4YBbe2NpJ8URiXlRxltA2m3Fq7ZWnpzm0gXmwVQnCnjVmBYR3euDvKWEs3zoSPsBUV5mDvVd1dgs/O70LtOHGpEhF+Kv+C81uXKohFEr+Xrlz8dqC837e+0mHvk6W7GZElp7nJm8GfJ7XQwAU86daYpnUfqrVHkDj6xPRWoRvIrAw0UIJjiZrZj+1WepGl8yqeCz1mojWyzVXx+lzs707OZLrgReCkAxI9UjSdnvMySD1nc="

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-object v0
.end method

.method private static getBody(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "list"

    .prologue
    .line 47
    const/4 v6, 0x0

    .line 49
    .local v6, body:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 51
    .local v4, array:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    .line 53
    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    :cond_0
    const/4 v7, 0x0

    .line 57
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/zte/hs/sta/Sta;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "b"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 58
    if-eqz v7, :cond_1

    .line 59
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 64
    :cond_1
    if-eqz v7, :cond_2

    .line 65
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_2
    return-object v6

    .line 64
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 65
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static getParameters(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v8, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 29
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 31
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/zte/hs/sta/Sta;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "p"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 35
    .local v7, pN:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 36
    .local v9, vN:Ljava/lang/String;
    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 40
    .end local v7           #pN:Ljava/lang/String;
    .end local v9           #vN:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_0

    .line 41
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 40
    :cond_1
    if-eqz v6, :cond_2

    .line 41
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_2
    return-object v8
.end method

.method private static getPeriod(Landroid/content/Context;Z)J
    .locals 2
    .parameter "context"
    .parameter "isFirst"

    .prologue
    .line 17
    if-eqz p1, :cond_0

    .line 18
    const-wide/32 v0, 0x36ee80

    .line 20
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x240c8400

    goto :goto_0
.end method

.method private static getStaVersion(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method private static getUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const-string v0, "aHR0cDovL2Nsb3VkLnp0ZWRldmljZXMuY29tL2hzLw=="

    return-object v0
.end method
