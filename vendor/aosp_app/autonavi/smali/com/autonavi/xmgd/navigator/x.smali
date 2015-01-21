.class Lcom/autonavi/xmgd/navigator/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/DspEdit;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/x;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/x;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Lcom/autonavi/xmgd/navigator/DspEdit;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/x;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Lcom/autonavi/xmgd/navigator/DspEdit;S)S

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/x;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/DspEdit;->f(Lcom/autonavi/xmgd/navigator/DspEdit;)V

    return-void
.end method
