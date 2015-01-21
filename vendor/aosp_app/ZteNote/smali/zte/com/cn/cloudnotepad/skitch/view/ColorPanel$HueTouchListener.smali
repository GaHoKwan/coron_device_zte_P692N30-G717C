.class public Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;
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
    name = "HueTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const v6, 0x3a83126f

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v0, v4

    .line 298
    .local v0, len:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 301
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 302
    .local v1, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 303
    .local v2, y:F
    cmpg-float v4, v1, v5

    if-gez v4, :cond_3

    .line 304
    const/4 v1, 0x0

    .line 309
    :cond_1
    :goto_0
    cmpg-float v4, v2, v5

    if-gez v4, :cond_4

    .line 310
    const/4 v2, 0x0

    .line 314
    :cond_2
    :goto_1
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$6(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)[F

    move-result-object v4

    div-float v5, v1, v0

    aput v5, v4, v3

    .line 315
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$6(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)[F

    move-result-object v4

    const/high16 v5, 0x3f80

    div-float v6, v2, v0

    sub-float/2addr v5, v6

    aput v5, v4, v7

    .line 316
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F
    invoke-static {v5}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$6(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)[F

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    #setter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I
    invoke-static {v4, v5}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$4(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;I)V

    .line 317
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->reCalcKeker()V

    .line 318
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mBaruView:Landroid/widget/ImageView;
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$2(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I
    invoke-static {v5}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$3(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 319
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->resetLastTouchTime()V

    .line 322
    .end local v1           #x:F
    .end local v2           #y:F
    :goto_2
    return v3

    .line 305
    .restart local v1       #x:F
    .restart local v2       #y:F
    :cond_3
    cmpl-float v4, v1, v0

    if-lez v4, :cond_1

    .line 306
    sub-float v1, v0, v6

    goto :goto_0

    .line 311
    :cond_4
    cmpl-float v4, v2, v0

    if-lez v4, :cond_2

    .line 312
    sub-float v2, v0, v6

    goto :goto_1

    .line 322
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method
