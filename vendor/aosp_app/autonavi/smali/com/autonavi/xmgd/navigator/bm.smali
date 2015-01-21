.class Lcom/autonavi/xmgd/navigator/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/ck;->e(Lcom/autonavi/xmgd/navigator/ck;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->b(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
