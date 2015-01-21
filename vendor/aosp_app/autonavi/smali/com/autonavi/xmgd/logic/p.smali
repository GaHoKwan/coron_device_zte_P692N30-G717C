.class Lcom/autonavi/xmgd/logic/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/logic/MapLogicImpl;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/p;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/p;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/p;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    :cond_0
    return-void
.end method
