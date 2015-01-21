.class public interface abstract Lcom/mediatek/ngin3d/presentation/ImageDisplay;
.super Ljava/lang/Object;
.source "ImageDisplay.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/Presentation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;
    }
.end annotation


# virtual methods
.method public abstract enableDoubleSided(Z)V
.end method

.method public abstract enableMipmap(Z)V
.end method

.method public abstract getFilterQuality()I
.end method

.method public abstract getOpacity()I
.end method

.method public abstract getRepeatX()I
.end method

.method public abstract getRepeatY()I
.end method

.method public abstract getSize()Lcom/mediatek/ngin3d/Dimension;
.end method

.method public abstract getSourceDimension()Lcom/mediatek/ngin3d/Dimension;
.end method

.method public abstract getTexName()I
.end method

.method public abstract isKeepAspectRatio()Z
.end method

.method public abstract isMipmapEnabled()Z
.end method

.method public abstract setFilterQuality(I)V
.end method

.method public abstract setImageSource(Lcom/mediatek/ngin3d/presentation/ImageSource;)V
.end method

.method public abstract setKeepAspectRatio(Z)V
.end method

.method public abstract setOpacity(I)V
.end method

.method public abstract setRepeat(II)V
.end method

.method public abstract setSize(Lcom/mediatek/ngin3d/Dimension;)V
.end method

.method public abstract setSourceRect(Lcom/mediatek/ngin3d/Box;)V
.end method
