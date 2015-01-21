.class Lcom/autonavi/xmgd/navigator/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xm/navigation/server/GCoord;

.field private synthetic b:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;Lcom/autonavi/xm/navigation/server/GCoord;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bz;->b:Lcom/autonavi/xmgd/navigator/Map;

    iput-object p2, p0, Lcom/autonavi/xmgd/navigator/bz;->a:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bz;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/bz;->a:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/b;->e(Lcom/autonavi/xm/navigation/server/GCoord;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bz;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->R()V

    return-void
.end method
