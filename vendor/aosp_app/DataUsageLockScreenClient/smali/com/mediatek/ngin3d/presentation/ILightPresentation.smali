.class public interface abstract Lcom/mediatek/ngin3d/presentation/ILightPresentation;
.super Ljava/lang/Object;
.source "ILightPresentation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/Presentation;


# static fields
.field public static final DIRECTIONAL:I = 0x0

.field public static final POINT:I = 0x1

.field public static final SPOT:I = 0x2


# virtual methods
.method public abstract setAmbientLevel(F)V
.end method

.method public abstract setAttenuationFar(F)V
.end method

.method public abstract setAttenuationNear(F)V
.end method

.method public abstract setColor(Lcom/mediatek/ngin3d/Color;)V
.end method

.method public abstract setIntensity(F)V
.end method

.method public abstract setIsAttenuated(Z)V
.end method

.method public abstract setSpotInnerAngle(F)V
.end method

.method public abstract setSpotOuterAngle(F)V
.end method

.method public abstract setType(I)V
.end method
