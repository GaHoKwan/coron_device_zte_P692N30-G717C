.class public abstract Lcom/autonavi/xmgd/logic/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/logic/a;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/n;->a:Z

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/n;->b:Z

    return-void
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/n;->b:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NaviLogic is not init. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/autonavi/xmgd/controls/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/logic/n;->c()V

    return-void
.end method

.method protected aa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/n;->a:Z

    return v0
.end method

.method public b()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/n;->a:Z

    return-void
.end method

.method protected f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/logic/n;->b:Z

    return-void
.end method
