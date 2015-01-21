.class public Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source "ImageSlave.java"


# instance fields
.field private mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Z)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 43
    return-void
.end method


# virtual methods
.method public getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedImageBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getDisplayedImageBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getFilteredImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method public getImageRotation()F
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImageRotation()F

    move-result v0

    return v0
.end method

.method public getImageRotationZoomFactor()F
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImageRotationZoomFactor()F

    move-result v0

    return v0
.end method

.method public getMaster()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method public getPanelController()Lcom/android/gallery3d/filtershow/PanelController;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    return-void
.end method

.method public requestFilteredImages()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->requestFilteredImages()V

    .line 106
    return-void
.end method

.method public resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1
    .parameter "caller"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 61
    return-void
.end method

.method public setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 81
    return-void
.end method

.method public setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V
    .locals 1
    .parameter "preset"
    .parameter "addToHistory"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 76
    return-void
.end method

.method public setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 0
    .parameter "master"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 51
    return-void
.end method

.method public setPanelController(Lcom/android/gallery3d/filtershow/PanelController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setPanelController(Lcom/android/gallery3d/filtershow/PanelController;)V

    .line 131
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public updateImage()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    .line 96
    return-void
.end method

.method public updateImagePresets(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 101
    return-void
.end method
