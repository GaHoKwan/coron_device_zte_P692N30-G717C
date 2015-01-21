.class public Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;
.super Ljava/lang/Object;
.source "OnSeekBarChangelisenter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public mDecoder:Ljava/lang/Runnable;

.field public mLisenter:Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;)V
    .locals 0
    .parameter "mLisenter"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;->mLisenter:Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;

    .line 13
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;->mLisenter:Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;->progressChanged(Landroid/widget/SeekBar;IZ)V

    .line 28
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;->mLisenter:Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;

    invoke-interface {v0, p1}, Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;->startTrackingTouch(Landroid/widget/SeekBar;)V

    .line 34
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;->mLisenter:Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;

    invoke-interface {v0, p1}, Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;->stopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 40
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;->mDecoder:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method

.method public setDecodeImage(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "mDecoder"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;->mDecoder:Ljava/lang/Runnable;

    .line 17
    return-void
.end method

.method public setLisenter(Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;)V
    .locals 0
    .parameter "mLisenter"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;->mLisenter:Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;

    .line 21
    return-void
.end method
