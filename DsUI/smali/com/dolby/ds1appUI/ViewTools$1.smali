.class final Lcom/dolby/ds1appUI/ViewTools$1;
.super Ljava/lang/Object;
.source "ViewTools.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/ds1appUI/ViewTools;->showTooltip(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private counter:I

.field final synthetic val$lpTooltipMain:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic val$posPointTo:Landroid/graphics/Point;

.field final synthetic val$rootView:Landroid/view/ViewGroup;

.field final synthetic val$vArrow:Landroid/view/View;

.field final synthetic val$vTooltip:Landroid/view/ViewGroup;

.field final synthetic val$vTooltipMain:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Point;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vArrow:Landroid/view/View;

    iput-object p2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vTooltipMain:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$lpTooltipMain:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p4, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$posPointTo:Landroid/graphics/Point;

    iput-object p5, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vTooltip:Landroid/view/ViewGroup;

    iput-object p6, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$rootView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolby/ds1appUI/ViewTools$1;->counter:I

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 142
    iget v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->counter:I

    if-nez v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vArrow:Landroid/view/View;

    iget-object v3, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vTooltipMain:Landroid/view/ViewGroup;

    invoke-static {v2, v3}, Lcom/dolby/ds1appUI/ViewTools;->getRelativePosition(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/graphics/Point;

    move-result-object v0

    .line 144
    .local v0, posArrow:Landroid/graphics/Point;
    const-string v2, "DsUI::MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "posArrow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$lpTooltipMain:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$posPointTo:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vArrow:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 147
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$lpTooltipMain:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gez v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vArrow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 149
    .local v1, vArrowlp:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$lpTooltipMain:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 150
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$lpTooltipMain:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 153
    .end local v1           #vArrowlp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$lpTooltipMain:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$posPointTo:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vTooltipMain:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 154
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$lpTooltipMain:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x7

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 156
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 157
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vTooltipMain:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 165
    .end local v0           #posArrow:Landroid/graphics/Point;
    :goto_0
    iget v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->counter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->counter:I

    .line 166
    return-void

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 160
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$rootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 162
    iget-object v2, p0, Lcom/dolby/ds1appUI/ViewTools$1;->val$vTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
