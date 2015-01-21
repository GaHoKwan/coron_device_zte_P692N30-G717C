.class Lcom/autonavi/xmgd/navigator/gd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/gj;

.field private synthetic b:I


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/RoutesSet;Lcom/autonavi/xmgd/navigator/gj;I)V
    .locals 0

    iput-object p2, p0, Lcom/autonavi/xmgd/navigator/gd;->a:Lcom/autonavi/xmgd/navigator/gj;

    iput p3, p0, Lcom/autonavi/xmgd/navigator/gd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gd;->a:Lcom/autonavi/xmgd/navigator/gj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gd;->a:Lcom/autonavi/xmgd/navigator/gj;

    iget v1, p0, Lcom/autonavi/xmgd/navigator/gd;->b:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/gj;->a(I)V

    :cond_0
    return-void
.end method
