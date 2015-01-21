.class public Lcom/hf/provider/SQLUtils;
.super Ljava/lang/Object;
.source "SQLUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized isEmptyOfWeather(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 10
    const-class v9, Lcom/hf/provider/SQLUtils;

    monitor-enter v9

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 11
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 12
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 13
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-lez v6, :cond_0

    move v0, v8

    .line 17
    .end local v6           #count:I
    :goto_0
    monitor-exit v9

    return v0

    .line 14
    .restart local v6       #count:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .end local v6           #count:I
    :cond_1
    move v0, v8

    .line 17
    goto :goto_0

    .line 10
    .end local v7           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method
