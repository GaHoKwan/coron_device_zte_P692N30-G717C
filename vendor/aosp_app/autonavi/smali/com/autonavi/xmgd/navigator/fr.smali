.class Lcom/autonavi/xmgd/navigator/fr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/e/k;

.field private synthetic b:Lcom/autonavi/xmgd/f/n;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/f/n;)V
    .locals 0

    iput-object p2, p0, Lcom/autonavi/xmgd/navigator/fr;->a:Lcom/autonavi/xmgd/e/k;

    iput-object p3, p0, Lcom/autonavi/xmgd/navigator/fr;->b:Lcom/autonavi/xmgd/f/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v0}, Lcom/autonavi/xmgd/f/z;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xmgd/e/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/fr;->a:Lcom/autonavi/xmgd/e/k;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/fr;->b:Lcom/autonavi/xmgd/f/n;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/z;)V

    return-void
.end method
