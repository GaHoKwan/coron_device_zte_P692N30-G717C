.class Lcom/autonavi/xmgd/navigator/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/by;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/autonavi/xmgd/application/NaviApplication;->setExternalAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/by;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->e(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/by;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->e(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/by;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/c/l;->b(Lcom/autonavi/xmgd/c/h;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/by;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->e(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/by;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->f(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/GDPageableListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/c/l;->b(Lcom/autonavi/xmgd/c/h;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/by;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/by;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->B()V

    :cond_1
    return-void
.end method
