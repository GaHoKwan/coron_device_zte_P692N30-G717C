.class Lcom/autonavi/xmgd/navigator/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Feedback;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Feedback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/af;->a:Lcom/autonavi/xmgd/navigator/Feedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/af;->a:Lcom/autonavi/xmgd/navigator/Feedback;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Feedback;->a(Lcom/autonavi/xmgd/navigator/Feedback;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDMenuItem;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDMenuItem;->onItemClick()V

    return-void
.end method