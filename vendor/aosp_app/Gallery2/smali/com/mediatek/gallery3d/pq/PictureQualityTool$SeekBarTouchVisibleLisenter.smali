.class public Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;
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
    name = "SeekBarTouchVisibleLisenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVisible(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/16 v2, 0x8

    .line 836
    move-object v0, p1

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left_temple:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 838
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 839
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 845
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 840
    .restart local p1
    :cond_1
    check-cast p1, Landroid/widget/SeekBar;

    .end local p1
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left_temple:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 842
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 843
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    goto :goto_0
.end method
