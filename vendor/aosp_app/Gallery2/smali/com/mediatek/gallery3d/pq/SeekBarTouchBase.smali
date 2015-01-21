.class public Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;
.super Ljava/lang/Object;
.source "SeekBarTouchBase.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field TAG:Ljava/lang/String;

.field private WindowsHeight:I

.field private WindowsWidth:I

.field private center:Landroid/widget/TextView;

.field lastY:I

.field private left:Landroid/widget/TextView;

.field private mLisenter:Lcom/mediatek/gallery3d/pq/SetViewVisible;

.field private obj:Ljava/lang/Object;

.field private right:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(IILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3
    .parameter "WindowsWidth"
    .parameter "WindowsHeight"
    .parameter "left"
    .parameter "right"
    .parameter "center"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "Gallery2/SeekBarTouchBase"

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->TAG:Ljava/lang/String;

    .line 24
    iput p1, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->WindowsWidth:I

    .line 25
    iput p2, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->WindowsHeight:I

    .line 26
    iput-object p3, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->left:Landroid/widget/TextView;

    .line 27
    iput-object p4, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->right:Landroid/widget/TextView;

    .line 28
    iput-object p5, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->center:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  h=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x2

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 39
    .local v2, ea:I
    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "V.l:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " V.r=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " v.t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " v.b=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "V.padingbottom=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " v.getScrollX=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Touch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    packed-switch v2, :pswitch_data_0

    .line 90
    :goto_0
    :pswitch_0
    return v11

    .line 44
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->lastY:I

    .line 45
    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->mLisenter:Lcom/mediatek/gallery3d/pq/SetViewVisible;

    if-eqz v7, :cond_0

    .line 46
    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->mLisenter:Lcom/mediatek/gallery3d/pq/SetViewVisible;

    iget-object v8, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->obj:Ljava/lang/Object;

    invoke-interface {v7, v8}, Lcom/mediatek/gallery3d/pq/SetViewVisible;->setVisible(Ljava/lang/Object;)V

    .line 48
    :cond_0
    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->left:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 49
    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->left:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->right:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->center:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_1
    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lastY=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->lastY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->lastY:I

    sub-int v1, v7, v8

    .line 64
    .local v1, dy:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    add-int v6, v7, v1

    .line 65
    .local v6, top:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v0, v7, v1

    .line 66
    .local v0, bottom:I
    if-gez v6, :cond_2

    .line 67
    const/4 v6, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v0, v6, v7

    .line 70
    :cond_2
    iget v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->WindowsHeight:I

    if-le v0, v7, :cond_3

    .line 71
    iget v0, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->WindowsHeight:I

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v6, v0, v7

    .line 74
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {p1, v7, v6, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->lastY:I

    .line 76
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-direct {v4, v10, v10, v7, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 78
    .local v4, paramsLeft:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->left:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/lit8 v7, v7, -0x14

    invoke-direct {v5, v10, v10, v7, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 81
    .local v5, paramsRight:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->right:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-direct {v3, v10, v10, v7, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 84
    .local v3, paramsCenter:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->center:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setLisenter(Lcom/mediatek/gallery3d/pq/SetViewVisible;Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "lisenter"
    .parameter "obj"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->mLisenter:Lcom/mediatek/gallery3d/pq/SetViewVisible;

    .line 33
    iput-object p2, p0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->obj:Ljava/lang/Object;

    .line 34
    return-void
.end method
