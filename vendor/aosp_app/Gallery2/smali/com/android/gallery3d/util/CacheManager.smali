.class public Lcom/android/gallery3d/util/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static final KEY_CACHE_UP_TO_DATE:Ljava/lang/String; = "cache-up-to-date"

.field private static final TAG:Ljava/lang/String; = "Gallery2/CacheManager"

.field private static sCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/common/BlobCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sNoStorage:Z

.field private static sOldCheckDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    .line 37
    sput-boolean v1, Lcom/android/gallery3d/util/CacheManager;->sOldCheckDone:Z

    .line 102
    sput-boolean v1, Lcom/android/gallery3d/util/CacheManager;->sNoStorage:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;
    .locals 10
    .parameter "context"
    .parameter "filename"
    .parameter "maxEntries"
    .parameter "maxBytes"
    .parameter "version"

    .prologue
    const/4 v0, 0x0

    .line 44
    sget-object v9, Lcom/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 45
    :try_start_0
    sget-boolean v2, Lcom/android/gallery3d/util/CacheManager;->sNoStorage:Z

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "Gallery2/CacheManager"

    const-string v3, "storage is not ready when trying to access cache!!"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    monitor-exit v9

    .line 71
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget-boolean v2, Lcom/android/gallery3d/util/CacheManager;->sOldCheckDone:Z

    if-nez v2, :cond_1

    .line 50
    invoke-static {p0}, Lcom/android/gallery3d/util/CacheManager;->removeOldFilesIfNecessary(Landroid/content/Context;)V

    .line 51
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/gallery3d/util/CacheManager;->sOldCheckDone:Z

    .line 53
    :cond_1
    sget-object v2, Lcom/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/common/BlobCache;

    .line 54
    .local v6, cache:Lcom/android/gallery3d/common/BlobCache;
    if-nez v6, :cond_3

    .line 56
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMTKExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 57
    .local v7, cacheDir:Ljava/io/File;
    if-nez v7, :cond_2

    .line 58
    const-string v2, "Gallery2/CacheManager"

    const-string v3, "getCache: failed to get cache dir"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    monitor-exit v9

    goto :goto_0

    .line 72
    .end local v6           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v7           #cacheDir:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 61
    .restart local v6       #cache:Lcom/android/gallery3d/common/BlobCache;
    .restart local v7       #cacheDir:Ljava/io/File;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 63
    .local v1, path:Ljava/lang/String;
    :try_start_2
    const-string v2, "Gallery2/CacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<getCache> new BlobCache, path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lcom/android/gallery3d/common/BlobCache;

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    .end local v6           #cache:Lcom/android/gallery3d/common/BlobCache;
    .local v0, cache:Lcom/android/gallery3d/common/BlobCache;
    :try_start_3
    sget-object v2, Lcom/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 71
    .end local v1           #path:Ljava/lang/String;
    .end local v7           #cacheDir:Ljava/io/File;
    :goto_1
    :try_start_4
    monitor-exit v9

    goto :goto_0

    .line 67
    .end local v0           #cache:Lcom/android/gallery3d/common/BlobCache;
    .restart local v1       #path:Ljava/lang/String;
    .restart local v6       #cache:Lcom/android/gallery3d/common/BlobCache;
    .restart local v7       #cacheDir:Ljava/io/File;
    :catch_0
    move-exception v8

    move-object v0, v6

    .line 68
    .end local v6           #cache:Lcom/android/gallery3d/common/BlobCache;
    .restart local v0       #cache:Lcom/android/gallery3d/common/BlobCache;
    .local v8, e:Ljava/io/IOException;
    :goto_2
    const-string v2, "Gallery2/CacheManager"

    const-string v3, "Cannot instantiate cache!"

    invoke-static {v2, v3, v8}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 67
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v0           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v1           #path:Ljava/lang/String;
    .end local v7           #cacheDir:Ljava/io/File;
    .restart local v6       #cache:Lcom/android/gallery3d/common/BlobCache;
    :cond_3
    move-object v0, v6

    .end local v6           #cache:Lcom/android/gallery3d/common/BlobCache;
    .restart local v0       #cache:Lcom/android/gallery3d/common/BlobCache;
    goto :goto_1
.end method

.method private static removeOldFilesIfNecessary(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 77
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 79
    .local v2, pref:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 81
    .local v1, n:I
    :try_start_0
    const-string v4, "cache-up-to-date"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :goto_0
    if-eqz v1, :cond_0

    .line 99
    :goto_1
    return-void

    .line 86
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "cache-up-to-date"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMTKExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 90
    .local v0, cacheDir:Ljava/io/File;
    if-nez v0, :cond_1

    .line 91
    const-string v4, "Gallery2/CacheManager"

    const-string v5, "removeOldFilesIfNecessary: failed to get cache dir"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, prefix:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "imgcache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "rev_geocoding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bookmark"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    goto :goto_1

    .line 82
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v3           #prefix:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static storageStateChanged(Z)V
    .locals 6
    .parameter "mounted"

    .prologue
    .line 106
    sget-object v3, Lcom/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 107
    if-eqz p0, :cond_0

    .line 109
    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/android/gallery3d/util/CacheManager;->sNoStorage:Z

    .line 121
    :goto_0
    monitor-exit v3

    .line 122
    return-void

    .line 112
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/gallery3d/util/CacheManager;->sNoStorage:Z

    .line 113
    sget-object v2, Lcom/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/common/BlobCache;

    .line 115
    .local v0, cache:Lcom/android/gallery3d/common/BlobCache;
    const-string v2, "Gallery2/CacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " => closing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v0}, Lcom/android/gallery3d/common/BlobCache;->close()V

    .line 117
    const-string v2, "Gallery2/CacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " <= closing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    .end local v0           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 119
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
