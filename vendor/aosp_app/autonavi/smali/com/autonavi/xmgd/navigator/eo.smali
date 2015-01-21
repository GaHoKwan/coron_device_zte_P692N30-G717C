.class Lcom/autonavi/xmgd/navigator/eo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/NaviSetting;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/eo;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/eo;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(Lcom/autonavi/xmgd/navigator/NaviSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/eo;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/eo;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->onItemClick()V

    :cond_0
    return-void
.end method
