.class Lcom/autonavi/xmgd/logic/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/e/k;

.field private synthetic b:Z

.field private synthetic c:Lcom/autonavi/xmgd/logic/ai;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/ai;Lcom/autonavi/xmgd/e/k;Z)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/ak;->c:Lcom/autonavi/xmgd/logic/ai;

    iput-object p2, p0, Lcom/autonavi/xmgd/logic/ak;->a:Lcom/autonavi/xmgd/e/k;

    iput-boolean p3, p0, Lcom/autonavi/xmgd/logic/ak;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ak;->c:Lcom/autonavi/xmgd/logic/ai;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/ai;->a(Lcom/autonavi/xmgd/logic/ai;)Lcom/autonavi/xmgd/logic/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_SHOW_CURSOR:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, v3}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ak;->c:Lcom/autonavi/xmgd/logic/ai;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/ai;->a(Lcom/autonavi/xmgd/logic/ai;)Lcom/autonavi/xmgd/logic/k;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ak;->a:Lcom/autonavi/xmgd/e/k;

    iget-boolean v2, p0, Lcom/autonavi/xmgd/logic/ak;->b:Z

    invoke-interface {v0, v1, v3, v2}, Lcom/autonavi/xmgd/logic/k;->a(Lcom/autonavi/xmgd/e/k;ZZ)V

    :cond_0
    return-void
.end method
