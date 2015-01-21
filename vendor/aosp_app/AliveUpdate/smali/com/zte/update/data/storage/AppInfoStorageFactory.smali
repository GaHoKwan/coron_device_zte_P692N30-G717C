.class public Lcom/zte/update/data/storage/AppInfoStorageFactory;
.super Ljava/lang/Object;
.source "AppInfoStorageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorage(Ljava/lang/Class;)Lcom/zte/update/data/storage/IAppInfoStorage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/zte/update/data/storage/IAppInfoStorage",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, tclass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/zte/update/data/RequestAppInfo;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->getInstance()Lcom/zte/update/data/storage/RequestAppInfoDBStorage;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    .line 16
    :cond_0
    const-class v0, Lcom/zte/update/data/CacheAppInfo;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    invoke-static {}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->getInstance()Lcom/zte/update/data/storage/CacheAppInfoDBStorage;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_1
    const-class v0, Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->getInstance()Lcom/zte/update/data/storage/DownloadInfoDBStorage;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
