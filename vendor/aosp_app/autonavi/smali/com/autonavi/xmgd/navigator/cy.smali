.class Lcom/autonavi/xmgd/navigator/cy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/logic/i;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cy;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cy;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/autonavi/xmgd/navigator/ck;->a(Lcom/autonavi/xmgd/navigator/ck;Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cy;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->J(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/cz;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/cz;->f(Lcom/autonavi/xmgd/navigator/cz;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cy;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->J(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/cz;->b()V

    return-void
.end method

.method public b(Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cy;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/autonavi/xmgd/navigator/ck;->a(Lcom/autonavi/xmgd/navigator/ck;Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cy;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->J(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/cz;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/cz;->f(Lcom/autonavi/xmgd/navigator/cz;)V

    return-void
.end method
