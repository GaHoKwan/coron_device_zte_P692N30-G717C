.class Lcom/autonavi/xmgd/logic/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/autonavi/xmgd/logic/MapLogicImpl;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/r;->b:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iput-boolean p2, p0, Lcom/autonavi/xmgd/logic/r;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/r;->b:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/r;->b:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/autonavi/xmgd/logic/r;->a:Z

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/c;->d(Z)V

    goto :goto_0
.end method
