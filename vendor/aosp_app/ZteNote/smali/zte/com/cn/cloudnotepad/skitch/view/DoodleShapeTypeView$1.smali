.class Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;
.super Ljava/lang/Object;
.source "DoodleShapeTypeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->initImageViewOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 33
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->resetLastTouchTime()V

    .line 34
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_1

    .line 36
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->setViewSelectedStatus(Landroid/widget/ImageView;Z)V

    .line 42
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->setCurrentToolType(Landroid/widget/ImageView;)V

    .line 43
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->lastShapeType:I

    .line 45
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->mOnClickInputTypeToolListener:Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->mOnClickInputTypeToolListener:Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;

    sget v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->lastShapeType:I

    invoke-interface {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;->onClickInputTool(I)V

    .line 49
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->dismiss()V

    .line 51
    :cond_2
    return-void
.end method
