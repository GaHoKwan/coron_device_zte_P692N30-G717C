.class public Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;
.super Ljava/lang/Object;
.source "PictureQualityTool.java"

# interfaces
.implements Lcom/mediatek/gallery3d/pq/SetViewVisible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/pq/PictureQualityTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VisibleLisenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVisible(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 818
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 820
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 821
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 822
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 824
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, v1, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 825
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 826
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 827
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 829
    :cond_1
    return-void
.end method
