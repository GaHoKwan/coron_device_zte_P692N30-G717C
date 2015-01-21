.class public Lcom/mediatek/ja3m/A3mVersion;
.super Ljava/lang/Object;
.source "A3mVersion.java"

# interfaces
.implements Lcom/mediatek/j3m/Version;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/mediatek/ja3m/A3mJni;->new_A3mVersion__SWIG_4()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/ja3m/A3mVersion;-><init>(JZ)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "major"

    .prologue
    .line 53
    invoke-static {p1}, Lcom/mediatek/ja3m/A3mJni;->new_A3mVersion__SWIG_3(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/ja3m/A3mVersion;-><init>(JZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter "major"
    .parameter "minor"

    .prologue
    .line 49
    invoke-static {p1, p2}, Lcom/mediatek/ja3m/A3mJni;->new_A3mVersion__SWIG_2(II)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/ja3m/A3mVersion;-><init>(JZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .parameter "major"
    .parameter "minor"
    .parameter "patch"

    .prologue
    .line 45
    invoke-static {p1, p2, p3}, Lcom/mediatek/ja3m/A3mJni;->new_A3mVersion__SWIG_1(III)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/ja3m/A3mVersion;-><init>(JZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 3
    .parameter "major"
    .parameter "minor"
    .parameter "patch"
    .parameter "extra"

    .prologue
    .line 41
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/ja3m/A3mJni;->new_A3mVersion__SWIG_0(IIILjava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/ja3m/A3mVersion;-><init>(JZ)V

    .line 42
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
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mVersion;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mVersion(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mVersion;->delete()V

    .line 28
    return-void
.end method

.method public getExtra()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mVersion_getExtra(JLcom/mediatek/ja3m/A3mVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMajor()I
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mVersion_getMajor(JLcom/mediatek/ja3m/A3mVersion;)I

    move-result v0

    return v0
.end method

.method public getMinor()I
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mVersion_getMinor(JLcom/mediatek/ja3m/A3mVersion;)I

    move-result v0

    return v0
.end method

.method public getPatch()I
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mVersion_getPatch(JLcom/mediatek/ja3m/A3mVersion;)I

    move-result v0

    return v0
.end method

.method public isEqualTo(Lcom/mediatek/j3m/Version;)Z
    .locals 6
    .parameter "other"

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mVersion;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mVersion;->getCPtr(Lcom/mediatek/ja3m/A3mVersion;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mVersion;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mVersion_isEqualTo(JLcom/mediatek/ja3m/A3mVersion;JLcom/mediatek/ja3m/A3mVersion;)Z

    move-result v0

    return v0
.end method

.method public isGreaterThan(Lcom/mediatek/j3m/Version;)Z
    .locals 6
    .parameter "other"

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mVersion;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mVersion;->getCPtr(Lcom/mediatek/ja3m/A3mVersion;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mVersion;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mVersion_isGreaterThan(JLcom/mediatek/ja3m/A3mVersion;JLcom/mediatek/ja3m/A3mVersion;)Z

    move-result v0

    return v0
.end method

.method public isLessThan(Lcom/mediatek/j3m/Version;)Z
    .locals 6
    .parameter "other"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mVersion;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mVersion;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mVersion;->getCPtr(Lcom/mediatek/ja3m/A3mVersion;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mVersion;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mVersion_isLessThan(JLcom/mediatek/ja3m/A3mVersion;JLcom/mediatek/ja3m/A3mVersion;)Z

    move-result v0

    return v0
.end method
