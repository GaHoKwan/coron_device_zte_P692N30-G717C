.class public Ljava/util/concurrent/atomic/Fences;
.super Ljava/lang/Object;
.source "Fences.java"


# static fields
.field private static volatile theVolatile:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 461
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static orderAccesses(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, ref:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    sput v0, Ljava/util/concurrent/atomic/Fences;->theVolatile:I

    .line 517
    return-object p0
.end method

.method public static orderReads(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, ref:Ljava/lang/Object;,"TT;"
    sget v0, Ljava/util/concurrent/atomic/Fences;->theVolatile:I

    .line 488
    .local v0, ignore:I
    return-object p0
.end method

.method public static orderWrites(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, ref:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    sput v0, Ljava/util/concurrent/atomic/Fences;->theVolatile:I

    .line 503
    return-object p0
.end method

.method public static reachabilityFence(Ljava/lang/Object;)V
    .locals 1
    .parameter "ref"

    .prologue
    .line 536
    if-eqz p0, :cond_0

    .line 537
    monitor-enter p0

    :try_start_0
    monitor-exit p0

    .line 539
    :cond_0
    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
