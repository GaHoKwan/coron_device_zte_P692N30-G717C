.class public Lcom/mediatek/ja3m/A3mFlagMask;
.super Ljava/lang/Object;
.source "A3mFlagMask.java"

# interfaces
.implements Lcom/mediatek/j3m/FlagMask;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/mediatek/ja3m/A3mJni;->new_A3mFlagMask__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/ja3m/A3mFlagMask;-><init>(JZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3
    .parameter "flagIndex"
    .parameter "defaultState"

    .prologue
    .line 45
    invoke-static {p1, p2}, Lcom/mediatek/ja3m/A3mJni;->new_A3mFlagMask__SWIG_1(IZ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/ja3m/A3mFlagMask;-><init>(JZ)V

    .line 46
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0
    .parameter "cPtr"
    .parameter "cMemoryOwn"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mFlagMask;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mFlagMask;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mFlagMask;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mFlagMask;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public and(Lcom/mediatek/j3m/FlagMask;)Lcom/mediatek/j3m/FlagMask;
    .locals 7
    .parameter "other"

    .prologue
    .line 53
    new-instance v6, Lcom/mediatek/ja3m/A3mFlagMask;

    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mFlagMask;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mFlagMask;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mFlagMask;->getCPtr(Lcom/mediatek/ja3m/A3mFlagMask;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mFlagMask;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mFlagMask_and(JLcom/mediatek/ja3m/A3mFlagMask;JLcom/mediatek/ja3m/A3mFlagMask;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/mediatek/ja3m/A3mFlagMask;-><init>(JZ)V

    return-object v6
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mFlagMask;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mFlagMask;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mFlagMask;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mFlagMask;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mFlagMask(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mFlagMask;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mFlagMask;->delete()V

    .line 28
    return-void
.end method

.method public inverse()Lcom/mediatek/j3m/FlagMask;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/mediatek/ja3m/A3mFlagMask;

    iget-wide v1, p0, Lcom/mediatek/ja3m/A3mFlagMask;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mFlagMask_inverse(JLcom/mediatek/ja3m/A3mFlagMask;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mFlagMask;-><init>(JZ)V

    return-object v0
.end method

.method public or(Lcom/mediatek/j3m/FlagMask;)Lcom/mediatek/j3m/FlagMask;
    .locals 7
    .parameter "other"

    .prologue
    .line 57
    new-instance v6, Lcom/mediatek/ja3m/A3mFlagMask;

    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mFlagMask;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mFlagMask;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mFlagMask;->getCPtr(Lcom/mediatek/ja3m/A3mFlagMask;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mFlagMask;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mFlagMask_or(JLcom/mediatek/ja3m/A3mFlagMask;JLcom/mediatek/ja3m/A3mFlagMask;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/mediatek/ja3m/A3mFlagMask;-><init>(JZ)V

    return-object v6
.end method

.method public xor(Lcom/mediatek/j3m/FlagMask;)Lcom/mediatek/j3m/FlagMask;
    .locals 7
    .parameter "other"

    .prologue
    .line 61
    new-instance v6, Lcom/mediatek/ja3m/A3mFlagMask;

    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mFlagMask;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mFlagMask;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mFlagMask;->getCPtr(Lcom/mediatek/ja3m/A3mFlagMask;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mFlagMask;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mFlagMask_xor(JLcom/mediatek/ja3m/A3mFlagMask;JLcom/mediatek/ja3m/A3mFlagMask;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/mediatek/ja3m/A3mFlagMask;-><init>(JZ)V

    return-object v6
.end method
