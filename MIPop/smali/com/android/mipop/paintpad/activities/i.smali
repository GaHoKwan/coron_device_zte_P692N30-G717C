.class Lcom/android/mipop/paintpad/activities/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic aD:Lcom/android/mipop/paintpad/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/i;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x4080

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/i;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->a(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    return v3

    :pswitch_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/i;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->a(Lcom/android/mipop/paintpad/activities/MainActivity;F)F

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/i;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->b(Lcom/android/mipop/paintpad/activities/MainActivity;F)F

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/i;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->b(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/i;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->c(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/i;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0, v4}, Lcom/android/mipop/paintpad/activities/MainActivity;->a(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/i;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->d(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/i;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->d(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0x828283

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/i;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->e(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/i;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->e(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0x3d3d3e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
