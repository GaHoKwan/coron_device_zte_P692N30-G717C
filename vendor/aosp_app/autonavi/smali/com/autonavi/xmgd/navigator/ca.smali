.class Lcom/autonavi/xmgd/navigator/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ca;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x4

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ca;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ca;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
