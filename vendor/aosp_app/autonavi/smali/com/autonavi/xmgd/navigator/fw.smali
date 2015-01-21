.class Lcom/autonavi/xmgd/navigator/fw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/ImageView;

.field private synthetic b:Lcom/autonavi/xmgd/f/n;

.field private synthetic c:Lcom/autonavi/xmgd/navigator/PoiDetail;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Landroid/widget/ImageView;Lcom/autonavi/xmgd/f/n;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/fw;->c:Lcom/autonavi/xmgd/navigator/PoiDetail;

    iput-object p2, p0, Lcom/autonavi/xmgd/navigator/fw;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/autonavi/xmgd/navigator/fw;->b:Lcom/autonavi/xmgd/f/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fw;->c:Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Lcom/autonavi/xmgd/navigator/PoiDetail;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fw;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fw;->a:Landroid/widget/ImageView;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fw;->c:Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Lcom/autonavi/xmgd/navigator/PoiDetail;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fw;->c:Lcom/autonavi/xmgd/navigator/PoiDetail;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/fw;->b:Lcom/autonavi/xmgd/f/n;

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fw;->c:Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/navigator/PoiDetail;->showDialog(I)V

    goto :goto_0
.end method
