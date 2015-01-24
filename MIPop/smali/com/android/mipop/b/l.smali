.class public abstract Lcom/android/mipop/b/l;
.super Landroid/widget/ImageView;


# static fields
.field public static cD:I

.field public static cE:I

.field public static hi:Z

.field public static hj:Ljava/util/Map;

.field private static hk:I

.field public static mContext:Landroid/content/Context;


# instance fields
.field private aE:Z

.field private fN:Landroid/os/Handler;

.field private fO:Ljava/lang/Runnable;

.field public fU:Landroid/view/WindowManager$LayoutParams;

.field private hg:I

.field private hh:I

.field public hl:Z

.field private final hm:J

.field private hn:Z

.field private ho:Landroid/os/Handler;

.field private hp:Ljava/lang/Runnable;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mipop/b/l;->hi:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sput v1, Lcom/android/mipop/b/l;->cD:I

    sget v0, Lcom/android/mipop/b/a;->N:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mipop/b/l;->cE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/android/mipop/b/l;->hg:I

    iput v2, p0, Lcom/android/mipop/b/l;->hh:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/b/l;->mWindowManager:Landroid/view/WindowManager;

    iput-boolean v2, p0, Lcom/android/mipop/b/l;->aE:Z

    iput-boolean v2, p0, Lcom/android/mipop/b/l;->hl:Z

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/mipop/b/l;->hm:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/b/l;->fN:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/mipop/b/l;->hn:Z

    new-instance v0, Lcom/android/mipop/b/k;

    invoke-direct {v0, p0}, Lcom/android/mipop/b/k;-><init>(Lcom/android/mipop/b/l;)V

    iput-object v0, p0, Lcom/android/mipop/b/l;->fO:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/b/l;->ho:Landroid/os/Handler;

    new-instance v0, Lcom/android/mipop/b/j;

    invoke-direct {v0, p0}, Lcom/android/mipop/b/j;-><init>(Lcom/android/mipop/b/l;)V

    iput-object v0, p0, Lcom/android/mipop/b/l;->hp:Ljava/lang/Runnable;

    sput-object p1, Lcom/android/mipop/b/l;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/mipop/b/l;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MipopPosX"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/mipop/b/l;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MipopPosY"

    sget v3, Lcom/android/mipop/b/a;->N:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v0, Lcom/android/mipop/b/l;->cD:I

    sput v1, Lcom/android/mipop/b/l;->cE:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/mipop/b/l;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/mipop/b/l;->cD:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/mipop/b/l;->cE:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/mipop/b/a;->V:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/mipop/b/a;->V:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/mipop/b/l;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/mipop/b/l;)V
    .locals 1

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bq()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/b/l;->aE:Z

    iget-object v0, p0, Lcom/android/mipop/b/l;->fN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mipop/b/l;->fO:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getKeyCode()I
    .locals 1

    sget v0, Lcom/android/mipop/b/l;->hk:I

    return v0
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mipop/b/l;->hn:Z

    return-void
.end method

.method public m(I)V
    .locals 0

    sput p1, Lcom/android/mipop/b/l;->hk:I

    return-void
.end method

.method public n(II)V
    .locals 0

    iput p1, p0, Lcom/android/mipop/b/l;->hg:I

    iput p2, p0, Lcom/android/mipop/b/l;->hh:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const-wide/16 v5, 0x3e8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v4

    :pswitch_1
    const-string v0, "OUT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base DOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mipop/b/l;->aE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/mipop/b/l;->hh:I

    invoke-virtual {p0, v0}, Lcom/android/mipop/b/l;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/mipop/b/l;->fN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mipop/b/l;->fO:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/android/mipop/a/g;->stop()V

    goto :goto_0

    :pswitch_2
    const-string v0, "OUT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base UP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mipop/b/l;->aE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/mipop/b/l;->hg:I

    invoke-virtual {p0, v0}, Lcom/android/mipop/b/l;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/mipop/b/l;->fN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mipop/b/l;->fO:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/mipop/b/l;->hn:Z

    if-eq v0, v4, :cond_0

    invoke-static {}, Lcom/android/mipop/a/g;->start()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/mipop/b/l;->aE:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mipop/b/l;->hl:Z

    if-nez v0, :cond_1

    const-string v0, "Suhao.Click"

    const-string v1, "MeterBase.UP, Click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wxl"

    const-string v1, "base clicked then shrink"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mipop/a/g;->G()V

    invoke-virtual {p0}, Lcom/android/mipop/b/l;->p()V

    :goto_1
    iput-boolean v3, p0, Lcom/android/mipop/b/l;->aE:Z

    iput-boolean v3, p0, Lcom/android/mipop/b/l;->hl:Z

    iget-object v0, p0, Lcom/android/mipop/b/l;->ho:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mipop/b/l;->hp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/mipop/b/l;->ho:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mipop/b/l;->hp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "Suhao.Click"

    const-string v1, "MeterBase.UP, Long click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "Suhao.Click"

    const-string v1, "MeterBase.UP, has moved"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    const-string v0, "OUT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base ACTION_OUTSIDE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mipop/b/l;->aE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mipop/a/g;->G()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract p()V
.end method

.method protected abstract q()V
.end method

.method public update(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/mipop/b/l;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/mipop/b/l;->fU:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
