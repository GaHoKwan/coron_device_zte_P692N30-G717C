.class public Ltmsdkobf/ey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ltmsdkobf/ey;",
        ">;"
    }
.end annotation


# instance fields
.field private kS:Ljava/lang/String;

.field private kg:I

.field private ko:J

.field private lf:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Ltmsdkobf/ey;)I
    .locals 4
    .parameter

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ltmsdkobf/ey;->ko:J

    iget-wide v2, p1, Ltmsdkobf/ey;->ko:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized X()J
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ltmsdkobf/ey;->ko:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized av(I)V
    .locals 1
    .parameter

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ltmsdkobf/ey;->kg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aw(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltmsdkobf/ey;->lf:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ax(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltmsdkobf/ey;->kS:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized bf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ey;->lf:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 16
    check-cast p1, Ltmsdkobf/ey;

    invoke-direct {p0, p1}, Ltmsdkobf/ey;->a(Ltmsdkobf/ey;)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized h(J)V
    .locals 1
    .parameter

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Ltmsdkobf/ey;->ko:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
