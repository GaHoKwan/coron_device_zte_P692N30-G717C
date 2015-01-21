.class Lcom/autonavi/xmgd/navigator/go;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/go;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/go;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/go;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchActivity;->i(Lcom/autonavi/xmgd/navigator/SearchActivity;)Lcom/autonavi/xmgd/controls/q;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/controls/q;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/SearchActivity;->a(Lcom/autonavi/xmgd/navigator/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/go;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchActivity;->f(Lcom/autonavi/xmgd/navigator/SearchActivity;)V

    return-void
.end method
