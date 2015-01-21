.class public interface abstract Lcom/mediatek/ngin3d/presentation/PresentationEngine;
.super Ljava/lang/Object;
.source "PresentationEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;
    }
.end annotation


# virtual methods
.method public abstract addRenderLayer(Lcom/mediatek/ngin3d/presentation/Presentation;)V
.end method

.method public abstract createContainer()Lcom/mediatek/ngin3d/presentation/Presentation;
.end method

.method public abstract createEmpty()Lcom/mediatek/ngin3d/presentation/Presentation;
.end method

.method public abstract createGraphics2d(Z)Lcom/mediatek/ngin3d/presentation/Graphics2d;
.end method

.method public abstract createGraphics3d()Lcom/mediatek/ngin3d/presentation/Graphics3d;
.end method

.method public abstract createImageDisplay(Z)Lcom/mediatek/ngin3d/presentation/ImageDisplay;
.end method

.method public abstract createLight()Lcom/mediatek/ngin3d/presentation/ILightPresentation;
.end method

.method public abstract createModel3d(IZ)Lcom/mediatek/ngin3d/presentation/Model3d;
.end method

.method public abstract createObject3d()Lcom/mediatek/ngin3d/presentation/IObject3d;
.end method

.method public abstract createRenderLayer()Lcom/mediatek/ngin3d/presentation/RenderLayer;
.end method

.method public abstract createVideoDisplay(Z)Lcom/mediatek/ngin3d/presentation/VideoDisplay;
.end method

.method public abstract dump()V
.end method

.method public abstract enableStereoscopic3D(ZFF)V
.end method

.method public abstract getDebugCameraNames()[Ljava/lang/String;
.end method

.method public abstract getFPS()D
.end method

.method public abstract getFrameInterval()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getScreenShot()Ljava/lang/Object;
.end method

.method public abstract getTotalCImageBytes()I
.end method

.method public abstract getTotalTextureBytes()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract initialize(II)V
.end method

.method public abstract initialize(IILandroid/content/res/Resources;)V
.end method

.method public abstract initialize(IILandroid/content/res/Resources;Ljava/lang/String;)V
.end method

.method public abstract initialize(IILandroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isReady()Z
.end method

.method public abstract isRenderingPaused()Z
.end method

.method public abstract pauseRendering()V
.end method

.method public abstract render()Z
.end method

.method public abstract resize(II)V
.end method

.method public abstract resumeRendering()V
.end method

.method public abstract setCamera(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V
.end method

.method public abstract setCameraFov(F)V
.end method

.method public abstract setCameraWidth(F)V
.end method

.method public abstract setCameraZ(F)V
.end method

.method public abstract setClipDistances(FF)V
.end method

.method public abstract setDebugCamera(Ljava/lang/String;)V
.end method

.method public abstract setFogColor(Lcom/mediatek/ngin3d/Color;)V
.end method

.method public abstract setFogDensity(F)V
.end method

.method public abstract setMaxFPS(I)V
.end method

.method public abstract setProjectionMode(I)V
.end method

.method public abstract setRenderCallback(Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;)V
.end method

.method public abstract uninitialize()V
.end method
