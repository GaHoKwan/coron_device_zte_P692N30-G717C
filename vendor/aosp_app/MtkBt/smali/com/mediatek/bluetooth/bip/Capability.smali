.class Lcom/mediatek/bluetooth/bip/Capability;
.super Ljava/lang/Object;
.source "BipImage.java"


# instance fields
.field public ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

.field public NumImageFormats:I

.field public PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "numFormats"

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v1, Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    invoke-direct {v1}, Lcom/mediatek/bluetooth/bip/ImageDescriptor;-><init>()V

    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    .line 414
    iput p1, p0, Lcom/mediatek/bluetooth/bip/Capability;->NumImageFormats:I

    .line 415
    new-array v1, p1, [Lcom/mediatek/bluetooth/bip/ImageFormat;

    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    .line 416
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/mediatek/bluetooth/bip/Capability;->NumImageFormats:I

    if-ge v0, v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    new-instance v2, Lcom/mediatek/bluetooth/bip/ImageFormat;

    invoke-direct {v2}, Lcom/mediatek/bluetooth/bip/ImageFormat;-><init>()V

    aput-object v2, v1, v0

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_0
    return-void
.end method
