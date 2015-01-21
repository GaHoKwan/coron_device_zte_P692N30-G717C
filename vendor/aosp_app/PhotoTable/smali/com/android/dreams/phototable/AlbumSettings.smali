.class public Lcom/android/dreams/phototable/AlbumSettings;
.super Ljava/lang/Object;
.source "AlbumSettings.java"


# static fields
.field public static final ALBUM_SET:Ljava/lang/String; = "Enabled Album Set V2"

.field private static singletons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/SharedPreferences;",
            "Lcom/android/dreams/phototable/AlbumSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnabledAlbums:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mSettings:Landroid/content/SharedPreferences;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    .line 92
    invoke-virtual {p0}, Lcom/android/dreams/phototable/AlbumSettings;->readEnabledAlbums()V

    .line 93
    return-void
.end method

.method public static getAlbumSettings(Landroid/content/SharedPreferences;)Lcom/android/dreams/phototable/AlbumSettings;
    .locals 2
    .parameter "settings"

    .prologue
    .line 37
    sget-object v0, Lcom/android/dreams/phototable/AlbumSettings;->singletons:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/dreams/phototable/AlbumSettings;->singletons:Ljava/util/HashMap;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/dreams/phototable/AlbumSettings;->singletons:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    sget-object v0, Lcom/android/dreams/phototable/AlbumSettings;->singletons:Ljava/util/HashMap;

    new-instance v1, Lcom/android/dreams/phototable/AlbumSettings;

    invoke-direct {v1, p0}, Lcom/android/dreams/phototable/AlbumSettings;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1
    sget-object v0, Lcom/android/dreams/phototable/AlbumSettings;->singletons:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/AlbumSettings;

    return-object v0
.end method

.method private readEnabledAlbumsLocked()V
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v2, "Enabled Album Set V2"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 97
    .local v0, enabledAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 98
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_0
    return-void
.end method

.method private writeEnabledAlbumsLocked()V
    .locals 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Enabled Album Set V2"

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method


# virtual methods
.method public isAlbumEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "albumId"

    .prologue
    .line 53
    iget-object v2, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v2

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    .local v0, isEnabled:Z
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 56
    .end local v0           #isEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConfigured()Z
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pruneObsoleteSettings(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, validAlbums:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-interface {p1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v1

    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/android/dreams/phototable/AlbumSettings;->readEnabledAlbumsLocked()V

    .line 77
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 78
    invoke-direct {p0}, Lcom/android/dreams/phototable/AlbumSettings;->writeEnabledAlbumsLocked()V

    .line 79
    monitor-exit v1

    .line 81
    :cond_0
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readEnabledAlbums()V
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v1

    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/android/dreams/phototable/AlbumSettings;->readEnabledAlbumsLocked()V

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlbumEnabled(Ljava/lang/String;Z)V
    .locals 2
    .parameter "albumId"
    .parameter "enabled"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/AlbumSettings;->isAlbumEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v1

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/android/dreams/phototable/AlbumSettings;->readEnabledAlbumsLocked()V

    .line 63
    if-eqz p2, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    :goto_0
    invoke-direct {p0}, Lcom/android/dreams/phototable/AlbumSettings;->writeEnabledAlbumsLocked()V

    .line 69
    monitor-exit v1

    .line 71
    :cond_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
