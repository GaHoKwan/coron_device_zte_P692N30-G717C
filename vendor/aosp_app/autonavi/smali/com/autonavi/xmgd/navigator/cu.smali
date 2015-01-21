.class Lcom/autonavi/xmgd/navigator/cu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/ct;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cu;->a:Lcom/autonavi/xmgd/navigator/ct;

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

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cu;->a:Lcom/autonavi/xmgd/navigator/ct;

    const/4 v1, 0x1

    invoke-static {v0, p3, v1}, Lcom/autonavi/xmgd/navigator/ct;->a(Lcom/autonavi/xmgd/navigator/ct;IZ)V

    return-void
.end method
