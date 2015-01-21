.class public Ltmsdkobf/ij;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private rb:Ltmsdkobf/kw;

.field private rc:J

.field private rd:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 2
    .parameter "ident"
    .parameter "pkgName"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Ltmsdkobf/ij;->rc:J

    .line 25
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ltmsdkobf/ij;->rd:Ljava/lang/String;

    .line 26
    const-class v0, Ltmsdkobf/kw;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdkobf/kw;

    iput-object v0, p0, Ltmsdkobf/ij;->rb:Ltmsdkobf/kw;

    .line 27
    return-void

    .line 25
    :cond_0
    const-string v0, "no_pkg_name-"

    goto :goto_0
.end method

.method private bi(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "taskName"

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltmsdkobf/ij;->rd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .parameter "priority"
    .parameter "task"
    .parameter "taskName"

    .prologue
    .line 53
    iget-object v0, p0, Ltmsdkobf/ij;->rb:Ltmsdkobf/kw;

    invoke-direct {p0, p3}, Ltmsdkobf/ij;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Ltmsdkobf/ij;->rc:J

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ltmsdkobf/kw;->a(ILjava/lang/Runnable;Ljava/lang/String;J)V

    .line 54
    return-void
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 4
    .parameter "task"
    .parameter "taskName"

    .prologue
    .line 42
    iget-object v0, p0, Ltmsdkobf/ij;->rb:Ltmsdkobf/kw;

    invoke-direct {p0, p2}, Ltmsdkobf/ij;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ltmsdkobf/ij;->rc:J

    invoke-virtual {v0, p1, v1, v2, v3}, Ltmsdkobf/kw;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 43
    return-void
.end method

.method public b(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 4
    .parameter "task"
    .parameter "taskName"

    .prologue
    .line 62
    iget-object v0, p0, Ltmsdkobf/ij;->rb:Ltmsdkobf/kw;

    invoke-direct {p0, p2}, Ltmsdkobf/ij;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ltmsdkobf/ij;->rc:J

    invoke-virtual {v0, p1, v1, v2, v3}, Ltmsdkobf/kw;->c(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 63
    return-void
.end method

.method public bj(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 5
    .parameter "taskName"

    .prologue
    .line 204
    iget-object v0, p0, Ltmsdkobf/ij;->rb:Ltmsdkobf/kw;

    invoke-direct {p0, p1}, Ltmsdkobf/ij;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-wide v3, p0, Ltmsdkobf/ij;->rc:J

    invoke-virtual {v0, v1, v2, v3, v4}, Ltmsdkobf/kw;->a(Ljava/lang/String;IJ)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 4
    .parameter "task"
    .parameter "taskName"

    .prologue
    .line 179
    iget-object v0, p0, Ltmsdkobf/ij;->rb:Ltmsdkobf/kw;

    invoke-direct {p0, p2}, Ltmsdkobf/ij;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ltmsdkobf/ij;->rc:J

    invoke-virtual {v0, p1, v1, v2, v3}, Ltmsdkobf/kw;->a(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 141
    iget-object v0, p0, Ltmsdkobf/ij;->rb:Ltmsdkobf/kw;

    invoke-virtual {v0, p1}, Ltmsdkobf/kw;->c(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public e(Ljava/lang/String;I)Landroid/os/HandlerThread;
    .locals 4
    .parameter "taskName"
    .parameter "priority"

    .prologue
    .line 193
    iget-object v0, p0, Ltmsdkobf/ij;->rb:Ltmsdkobf/kw;

    invoke-direct {p0, p1}, Ltmsdkobf/ij;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ltmsdkobf/ij;->rc:J

    invoke-virtual {v0, v1, p2, v2, v3}, Ltmsdkobf/kw;->a(Ljava/lang/String;IJ)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method
