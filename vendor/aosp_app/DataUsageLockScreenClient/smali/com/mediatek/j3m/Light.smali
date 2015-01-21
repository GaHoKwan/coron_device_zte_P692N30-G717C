.class public interface abstract Lcom/mediatek/j3m/Light;
.super Ljava/lang/Object;
.source "Light.java"

# interfaces
.implements Lcom/mediatek/j3m/SceneNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/j3m/Light$Type;
    }
.end annotation


# static fields
.field public static final NODE_TYPE:C = 'L'


# virtual methods
.method public abstract getAmbientLevel()F
.end method

.method public abstract getAttenuationFar()F
.end method

.method public abstract getAttenuationNear()F
.end method

.method public abstract getColourA()F
.end method

.method public abstract getColourB()F
.end method

.method public abstract getColourG()F
.end method

.method public abstract getColourR()F
.end method

.method public abstract getIntensity()F
.end method

.method public abstract getIsAttenuated()Z
.end method

.method public abstract getLightType()I
.end method

.method public abstract getSpotInnerAngle(I)F
.end method

.method public abstract getSpotOuterAngle(I)F
.end method

.method public abstract setAmbientLevel(F)V
.end method

.method public abstract setAttenuationFar(F)V
.end method

.method public abstract setAttenuationNear(F)V
.end method

.method public abstract setColour(FFFF)V
.end method

.method public abstract setIntensity(F)V
.end method

.method public abstract setIsAttenuated(Z)V
.end method

.method public abstract setLightType(I)V
.end method

.method public abstract setSpotInnerAngle(IF)V
.end method

.method public abstract setSpotOuterAngle(IF)V
.end method
