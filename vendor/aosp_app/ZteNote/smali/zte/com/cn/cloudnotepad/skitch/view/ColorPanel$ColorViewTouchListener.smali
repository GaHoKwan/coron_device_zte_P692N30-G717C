.class public Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;
.super Ljava/lang/Object;
.source "ColorPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/high16 v8, 0x43b4

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 333
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 334
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 336
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 337
    .local v1, y:F
    cmpg-float v4, v1, v7

    if-gez v4, :cond_1

    .line 338
    const/4 v1, 0x0

    .line 341
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 342
    .local v0, max:F
    cmpl-float v4, v1, v0

    if-lez v4, :cond_2

    .line 343
    const v4, 0x3a83126f

    sub-float v1, v0, v4

    .line 345
    :cond_2
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$6(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)[F

    move-result-object v4

    const/high16 v5, 0x3f80

    div-float v6, v1, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, v8

    aput v5, v4, v2

    .line 346
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$6(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)[F

    move-result-object v4

    aget v4, v4, v2

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    .line 347
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$6(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)[F

    move-result-object v4

    aput v7, v4, v2

    .line 350
    :cond_3
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHueView:Lzte/com/cn/cloudnotepad/skitch/view/HueView;
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$7(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)Lzte/com/cn/cloudnotepad/skitch/view/HueView;

    move-result-object v4

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F
    invoke-static {v5}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$6(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)[F

    move-result-object v5

    aget v2, v5, v2

    invoke-virtual {v4, v2}, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->setHue(F)V

    .line 351
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$6(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)[F

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    #setter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I
    invoke-static {v2, v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$4(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;I)V

    .line 353
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->reCalcPana()V

    .line 354
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mKerkerView:Landroid/widget/ImageView;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$8(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 355
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mBaruView:Landroid/widget/ImageView;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$2(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$3(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 356
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->resetLastTouchTime()V

    move v2, v3

    .line 359
    .end local v0           #max:F
    .end local v1           #y:F
    :cond_4
    return v2
.end method
