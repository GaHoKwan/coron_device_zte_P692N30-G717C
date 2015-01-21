.class Lcom/autonavi/xmgd/navigator/cv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/logic/e;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cv;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cv;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->K(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ct;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/ct;->a(Lcom/autonavi/xmgd/navigator/ct;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cv;->a:Lcom/autonavi/xmgd/navigator/Map;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->showDialog(I)V

    return-void
.end method
