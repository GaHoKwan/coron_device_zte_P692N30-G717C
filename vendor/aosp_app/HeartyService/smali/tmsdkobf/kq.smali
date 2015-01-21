.class public Ltmsdkobf/kq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static yG:Ltmsdkobf/km;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fs()Ltmsdkobf/km;
    .locals 4

    .prologue
    .line 24
    sget-object v0, Ltmsdkobf/kq;->yG:Ltmsdkobf/km;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Ltmsdkobf/kq;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Ltmsdkobf/kq;->yG:Ltmsdkobf/km;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ltmsdkobf/kp;

    const-string v2, "logic_thread"

    new-instance v3, Ltmsdkobf/kr;

    invoke-direct {v3}, Ltmsdkobf/kr;-><init>()V

    invoke-direct {v0, v2, v3}, Ltmsdkobf/kp;-><init>(Ljava/lang/String;Ltmsdkobf/kn;)V

    sput-object v0, Ltmsdkobf/kq;->yG:Ltmsdkobf/km;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Ltmsdkobf/kq;->yG:Ltmsdkobf/km;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
