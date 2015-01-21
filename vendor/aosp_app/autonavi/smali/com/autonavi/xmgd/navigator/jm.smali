.class Lcom/autonavi/xmgd/navigator/jm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Start;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Start;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/jm;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jm;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Start;->b(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/logic/l;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/jm;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Start;->a(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/navigator/jz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/l;->a(Lcom/autonavi/xmgd/controls/r;)V

    return-void
.end method
