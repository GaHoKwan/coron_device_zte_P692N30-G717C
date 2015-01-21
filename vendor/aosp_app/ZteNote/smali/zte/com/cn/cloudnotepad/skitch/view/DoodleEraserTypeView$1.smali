.class Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;
.super Ljava/lang/Object;
.source "DoodleEraserTypeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 89
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->resetLastTouchTime()V

    .line 90
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->access$0(Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 92
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->access$0(Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->access$0(Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->setViewSelectedStatus(Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->access$1(Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;Landroid/widget/ImageView;Z)V

    .line 95
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->access$2(Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;Landroid/widget/ImageView;)V

    .line 96
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->access$0(Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->setViewSelectedStatus(Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->access$1(Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;Landroid/widget/ImageView;Z)V

    .line 98
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->setEraserwidth(F)V

    .line 100
    :cond_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->dismiss()V

    .line 101
    return-void
.end method
