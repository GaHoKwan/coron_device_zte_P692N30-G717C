.class Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;
.super Ljava/lang/Object;
.source "DoodlePenTypeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->initImageViewOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 32
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->resetLastTouchTime()V

    .line 33
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_1

    .line 35
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->setViewSelectedStatus(Landroid/widget/ImageView;Z)V

    .line 41
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->setCurrentToolType(Landroid/widget/ImageView;)V

    .line 43
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->lastPenType:I

    .line 45
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->mOnClickInputTypeToolListener:Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->mOnClickInputTypeToolListener:Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    iget v1, v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->lastPenType:I

    invoke-interface {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;->onClickInputTool(I)V

    .line 50
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->dismiss()V

    .line 51
    return-void
.end method
