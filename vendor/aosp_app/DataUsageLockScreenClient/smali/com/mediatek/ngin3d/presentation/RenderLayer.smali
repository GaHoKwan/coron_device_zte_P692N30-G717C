.class public interface abstract Lcom/mediatek/ngin3d/presentation/RenderLayer;
.super Ljava/lang/Object;
.source "RenderLayer.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/Presentation;


# static fields
.field public static final MOTION_BLUR_QUALITY_HIGH:I = 0x1

.field public static final MOTION_BLUR_QUALITY_LOW:I


# virtual methods
.method public abstract enableDepthOfField(Z)V
.end method

.method public abstract enableMotionBlur(Z)V
.end method

.method public abstract getGloCameraNames()[Ljava/lang/String;
.end method

.method public abstract setCameraFar(F)V
.end method

.method public abstract setCameraFov(F)V
.end method

.method public abstract setCameraNear(F)V
.end method

.method public abstract setCameraPosition(Lcom/mediatek/ngin3d/Point;)V
.end method

.method public abstract setCameraRotation(Lcom/mediatek/ngin3d/Rotation;)V
.end method

.method public abstract setCameraWidth(F)V
.end method

.method public abstract setClipDistances(FF)V
.end method

.method public abstract setDepthClear(Z)V
.end method

.method public abstract setFocusBlurFactor(F)V
.end method

.method public abstract setFocusDistance(F)V
.end method

.method public abstract setFocusRange(F)V
.end method

.method public abstract setMotionBlurFactor(F)V
.end method

.method public abstract setMotionBlurQuality(I)V
.end method

.method public abstract setProjectionMode(I)V
.end method

.method public abstract setRenderTarget(Lcom/mediatek/ngin3d/presentation/ImageDisplay;)V
.end method

.method public abstract useNamedCamera(Ljava/lang/String;)V
.end method
