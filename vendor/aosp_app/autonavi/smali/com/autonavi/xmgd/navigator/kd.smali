.class Lcom/autonavi/xmgd/navigator/kd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Warn;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Warn;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/kd;->a:Lcom/autonavi/xmgd/navigator/Warn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/kd;->a:Lcom/autonavi/xmgd/navigator/Warn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Warn;->showDialog(I)V

    return-void
.end method
