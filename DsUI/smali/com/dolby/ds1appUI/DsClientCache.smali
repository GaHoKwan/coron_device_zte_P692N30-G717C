.class public Lcom/dolby/ds1appUI/DsClientCache;
.super Ljava/lang/Object;
.source "DsClientCache.java"


# static fields
.field public static final INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;


# instance fields
.field private mDsOn:Z

.field private mProfiles:[Landroid/dolby/DsClientSettings;

.field private mSelectedProfile:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/dolby/ds1appUI/DsClientCache;

    invoke-direct {v0}, Lcom/dolby/ds1appUI/DsClientCache;-><init>()V

    sput-object v0, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolby/ds1appUI/DsClientCache;->mSelectedProfile:I

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized cacheDsOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/dolby/ds1appUI/DsClientCache;->mDsOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V
    .locals 1
    .parameter "ds"
    .parameter "profile"
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolby/ds1appUI/DsClientCache;->mProfiles:[Landroid/dolby/DsClientSettings;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/dolby/DsClient;->getProfileCount()I

    move-result v0

    new-array v0, v0, [Landroid/dolby/DsClientSettings;

    iput-object v0, p0, Lcom/dolby/ds1appUI/DsClientCache;->mProfiles:[Landroid/dolby/DsClientSettings;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/dolby/ds1appUI/DsClientCache;->mProfiles:[Landroid/dolby/DsClientSettings;

    aput-object p3, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cacheSelectedProfile(I)V
    .locals 1
    .parameter "selectedProfile"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/dolby/ds1appUI/DsClientCache;->mSelectedProfile:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    .locals 3
    .parameter "ds"
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/dolby/ds1appUI/DsClientCache;->mProfiles:[Landroid/dolby/DsClientSettings;

    if-nez v1, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/dolby/DsClient;->getProfileCount()I

    move-result v0

    .line 54
    .local v0, profnumber:I
    if-nez v0, :cond_0

    .line 55
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v0           #profnumber:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 57
    .restart local v0       #profnumber:I
    :cond_0
    :try_start_1
    new-array v1, v0, [Landroid/dolby/DsClientSettings;

    iput-object v1, p0, Lcom/dolby/ds1appUI/DsClientCache;->mProfiles:[Landroid/dolby/DsClientSettings;

    .line 59
    .end local v0           #profnumber:I
    :cond_1
    iget-object v1, p0, Lcom/dolby/ds1appUI/DsClientCache;->mProfiles:[Landroid/dolby/DsClientSettings;

    aget-object v1, v1, p2

    if-nez v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/dolby/ds1appUI/DsClientCache;->mProfiles:[Landroid/dolby/DsClientSettings;

    invoke-virtual {p1, p2}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    aput-object v2, v1, p2

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/dolby/ds1appUI/DsClientCache;->mProfiles:[Landroid/dolby/DsClientSettings;

    aget-object v1, v1, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getSelectedProfile(Landroid/dolby/DsClient;)I
    .locals 3
    .parameter "ds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/dolby/ds1appUI/DsClientCache;->mSelectedProfile:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/dolby/DsClient;->getProfileCount()I

    move-result v0

    .line 87
    .local v0, profnumber:I
    if-lez v0, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/dolby/DsClient;->getSelectedProfile()I

    move-result v1

    iput v1, p0, Lcom/dolby/ds1appUI/DsClientCache;->mSelectedProfile:I

    .line 91
    .end local v0           #profnumber:I
    :cond_0
    iget v1, p0, Lcom/dolby/ds1appUI/DsClientCache;->mSelectedProfile:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSelectedProfileSettings(Landroid/dolby/DsClient;)Landroid/dolby/DsClientSettings;
    .locals 1
    .parameter "ds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDsOn()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/DsClientCache;->mDsOn:Z

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/dolby/ds1appUI/DsClientCache;->mProfiles:[Landroid/dolby/DsClientSettings;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolby/ds1appUI/DsClientCache;->mSelectedProfile:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V
    .locals 1
    .parameter "ds"
    .parameter "profile"
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/dolby/DsClient;->setProfileSettings(ILandroid/dolby/DsClientSettings;)V

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolby/ds1appUI/DsClientCache;->cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSelectedProfile(Landroid/dolby/DsClient;I)V
    .locals 2
    .parameter "ds"
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/dolby/DsClient;->setSelectedProfile(I)V

    .line 102
    iget-object v0, p0, Lcom/dolby/ds1appUI/DsClientCache;->mProfiles:[Landroid/dolby/DsClientSettings;

    invoke-virtual {p1, p2}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v1

    aput-object v1, v0, p2

    .line 103
    iput p2, p0, Lcom/dolby/ds1appUI/DsClientCache;->mSelectedProfile:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
