.class public Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;
.super Ljava/lang/Object;
.source "PictureQualityTool.java"

# interfaces
.implements Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/pq/PictureQualityTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarChangeLisenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 859
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSharpness:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 860
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1402(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 861
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSharpness:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sharpness:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGlobal:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 863
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobleSatRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobalSatOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1802(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 864
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGlobal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlobalSat:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobalSatOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinTone:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 866
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 867
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinTone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skin tone(Hue):   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 868
    :cond_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 869
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2702(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 870
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassTone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grass tone(Hue):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 871
    :cond_4
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkyTone:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_5

    .line 872
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3102(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 873
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyTone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sky tone(Hue):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 874
    :cond_5
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 875
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3402(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 876
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinSat:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skin tone(Sat):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 877
    :cond_6
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassSat:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 878
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3802(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 879
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassSat:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grass tone(Sat):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 880
    :cond_7
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkySat:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_8

    .line 881
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 882
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkySat:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sky tone(Sat):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 883
    :cond_8
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 884
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudOptionADV:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4502(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 885
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hue:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudOptionADV:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 886
    :cond_9
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    if-ne v0, p1, :cond_0

    .line 887
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatRangeADV:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatOptionADV:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4802(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 888
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$5000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sat:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatOptionADV:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public startTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 895
    return-void
.end method

.method public stopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSharpness:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 901
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSharpAdjIndex(I)Z

    .line 902
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sharpness Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSharpAdjIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGlobal:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 904
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobalSatOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSatAdjIndex(I)Z

    .line 905
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSatAdjIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 906
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinTone:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 907
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSkinToneHIndex(I)Z

    .line 908
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkinTone Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkinToneHIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 909
    :cond_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 910
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetGrassToneHIndex(I)Z

    .line 911
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GrassTone Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetGrassToneHIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 912
    :cond_4
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkyTone:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_5

    .line 913
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSkyToneHIndex(I)Z

    .line 914
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkyTone Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneHIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 915
    :cond_5
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 916
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSkinToneSIndex(I)Z

    goto/16 :goto_0

    .line 917
    :cond_6
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassSat:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 918
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetGrassToneSIndex(I)Z

    goto/16 :goto_0

    .line 919
    :cond_7
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkySat:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_8

    .line 920
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSkyToneSIndex(I)Z

    goto/16 :goto_0

    .line 921
    :cond_8
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 922
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudOptionADV:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetHueAdjIndex(I)Z

    goto/16 :goto_0

    .line 923
    :cond_9
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    if-ne v0, p1, :cond_0

    .line 924
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatOptionADV:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSatAdjIndex(I)Z

    goto/16 :goto_0
.end method
