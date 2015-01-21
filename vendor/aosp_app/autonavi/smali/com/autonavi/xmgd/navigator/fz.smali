.class Lcom/autonavi/xmgd/navigator/fz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/f/n;

.field private synthetic b:Lcom/autonavi/xmgd/navigator/PoiDetail;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/fz;->b:Lcom/autonavi/xmgd/navigator/PoiDetail;

    iput-object p2, p0, Lcom/autonavi/xmgd/navigator/fz;->a:Lcom/autonavi/xmgd/f/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fz;->b:Lcom/autonavi/xmgd/navigator/PoiDetail;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/fz;->a:Lcom/autonavi/xmgd/f/n;

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    return-void
.end method
