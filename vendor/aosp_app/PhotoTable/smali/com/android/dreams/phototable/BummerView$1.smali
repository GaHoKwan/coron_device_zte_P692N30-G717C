.class Lcom/android/dreams/phototable/BummerView$1;
.super Landroid/os/Handler;
.source "BummerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/BummerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/BummerView;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/BummerView;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/dreams/phototable/BummerView$1;->this$0:Lcom/android/dreams/phototable/BummerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "m"

    .prologue
    const/4 v12, 0x2

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, animate:Z
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v8, p0, Lcom/android/dreams/phototable/BummerView$1;->this$0:Lcom/android/dreams/phototable/BummerView;

    #getter for: Lcom/android/dreams/phototable/BummerView;->mAnimate:Z
    invoke-static {v8}, Lcom/android/dreams/phototable/BummerView;->access$000(Lcom/android/dreams/phototable/BummerView;)Z

    move-result v0

    .line 43
    :pswitch_1
    iget-object v8, p0, Lcom/android/dreams/phototable/BummerView$1;->this$0:Lcom/android/dreams/phototable/BummerView;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 44
    .local v5, parent:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 47
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v2, v8

    .line 48
    .local v2, framew:F
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v1, v8

    .line 49
    .local v1, frameh:F
    iget-object v8, p0, Lcom/android/dreams/phototable/BummerView$1;->this$0:Lcom/android/dreams/phototable/BummerView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v7, v8

    .line 50
    .local v7, textw:F
    iget-object v8, p0, Lcom/android/dreams/phototable/BummerView$1;->this$0:Lcom/android/dreams/phototable/BummerView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v6, v8

    .line 52
    .local v6, texth:F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    sub-float v10, v2, v7

    float-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-float v3, v8

    .line 53
    .local v3, newx:F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    sub-float v10, v1, v6

    float-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-float v4, v8

    .line 54
    .local v4, newy:F
    if-eqz v0, :cond_1

    .line 55
    iget-object v8, p0, Lcom/android/dreams/phototable/BummerView$1;->this$0:Lcom/android/dreams/phototable/BummerView;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/dreams/phototable/BummerView$1;->this$0:Lcom/android/dreams/phototable/BummerView;

    #getter for: Lcom/android/dreams/phototable/BummerView;->mAnimTime:I
    invoke-static {v9}, Lcom/android/dreams/phototable/BummerView;->access$100(Lcom/android/dreams/phototable/BummerView;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 63
    :goto_1
    iget-object v8, p0, Lcom/android/dreams/phototable/BummerView$1;->this$0:Lcom/android/dreams/phototable/BummerView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-virtual {p0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    iget-object v8, p0, Lcom/android/dreams/phototable/BummerView$1;->this$0:Lcom/android/dreams/phototable/BummerView;

    #getter for: Lcom/android/dreams/phototable/BummerView;->mDelay:I
    invoke-static {v8}, Lcom/android/dreams/phototable/BummerView;->access$200(Lcom/android/dreams/phototable/BummerView;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 60
    :cond_1
    iget-object v8, p0, Lcom/android/dreams/phototable/BummerView$1;->this$0:Lcom/android/dreams/phototable/BummerView;

    invoke-virtual {v8, v3}, Landroid/view/View;->setX(F)V

    .line 61
    iget-object v8, p0, Lcom/android/dreams/phototable/BummerView$1;->this$0:Lcom/android/dreams/phototable/BummerView;

    invoke-virtual {v8, v4}, Landroid/view/View;->setY(F)V

    goto :goto_1

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
