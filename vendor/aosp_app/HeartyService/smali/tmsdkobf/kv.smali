.class public Ltmsdkobf/kv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mProperty:Ltmsdkobf/kf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ltmsdkobf/kf;

    const-string v1, "networkload"

    invoke-direct {v0, v1}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltmsdkobf/kv;->mProperty:Ltmsdkobf/kf;

    .line 13
    return-void
.end method

.method public static declared-synchronized getSelfMobileDownloadBytes()J
    .locals 5

    .prologue
    .line 28
    const-class v1, Ltmsdkobf/kv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/kv;->mProperty:Ltmsdkobf/kf;

    const-string v2, "mobile_download_bytes"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ltmsdkobf/kf;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSelfMobileUploadBytes()J
    .locals 5

    .prologue
    .line 44
    const-class v1, Ltmsdkobf/kv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/kv;->mProperty:Ltmsdkobf/kf;

    const-string v2, "mobile_upload_bytes"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ltmsdkobf/kf;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateSelfMobileDownloadBytes(J)V
    .locals 4
    .parameter "totalDownloadBytes"

    .prologue
    .line 20
    const-class v1, Ltmsdkobf/kv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/kv;->mProperty:Ltmsdkobf/kf;

    const-string v2, "mobile_download_bytes"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, p1, v3}, Ltmsdkobf/kf;->a(Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v1

    return-void

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateSelfMobileUploadBytes(J)V
    .locals 4
    .parameter "totalUploadBytes"

    .prologue
    .line 36
    const-class v1, Ltmsdkobf/kv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/kv;->mProperty:Ltmsdkobf/kf;

    const-string v2, "mobile_upload_bytes"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, p1, v3}, Ltmsdkobf/kf;->a(Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v1

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
