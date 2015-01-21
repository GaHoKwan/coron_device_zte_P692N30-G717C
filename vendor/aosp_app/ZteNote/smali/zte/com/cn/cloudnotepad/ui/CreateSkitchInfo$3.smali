.class Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;
.super Ljava/lang/Object;
.source "CreateSkitchInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 658
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;
    invoke-static {v6}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$2(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    move-result-object v6

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getInputType()I

    move-result v2

    .line 659
    .local v2, oldInputType:I
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getPaintToolByInputType(I)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    invoke-static {v6, v2}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$3(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;I)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    move-result-object v3

    .line 661
    .local v3, oldTool:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getCurrentPaintToolByViewId(I)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    invoke-static {v6, v7}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;I)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    move-result-object v0

    .line 662
    .local v0, clickTool:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    if-ne v3, v0, :cond_0

    .line 666
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->showPaintToolView(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)V
    invoke-static {v6, v3}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$5(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)V

    .line 680
    .end local p1
    :goto_0
    return-void

    .line 669
    .restart local p1
    :cond_0
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getViewIdByPaintTool(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I
    invoke-static {v6, v3}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$6(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I

    move-result v5

    .line 670
    .local v5, oldViewId:I
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$7(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 672
    .local v4, oldView:Landroid/widget/ImageView;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getInputTypeByPaintTool(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I
    invoke-static {v6, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$8(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I

    move-result v1

    .line 674
    .local v1, newInputType:I
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    const/4 v7, 0x0

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setViewSelectedState(Landroid/widget/ImageView;IZ)V
    invoke-static {v6, v4, v2, v7}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$9(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Landroid/widget/ImageView;IZ)V

    .line 676
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const/4 v7, 0x1

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setViewSelectedState(Landroid/widget/ImageView;IZ)V
    invoke-static {v6, p1, v1, v7}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$9(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Landroid/widget/ImageView;IZ)V

    .line 678
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setInputTypeByPaintTool(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)V
    invoke-static {v6, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$10(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)V

    goto :goto_0
.end method
