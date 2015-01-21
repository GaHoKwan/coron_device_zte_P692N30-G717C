.class public interface abstract Lcom/mediatek/j3m/Camera;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/mediatek/j3m/SceneNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/j3m/Camera$ProjectionType;
    }
.end annotation


# static fields
.field public static final NODE_TYPE:C = 'C'


# virtual methods
.method public abstract getFar()F
.end method

.method public abstract getFov(I)F
.end method

.method public abstract getNear()F
.end method

.method public abstract getProjectionType()I
.end method

.method public abstract getWidth()F
.end method

.method public abstract isStereo()Z
.end method

.method public abstract setFar(F)V
.end method

.method public abstract setFov(IF)V
.end method

.method public abstract setNear(F)V
.end method

.method public abstract setProjectionType(I)V
.end method

.method public abstract setStereo(FF)V
.end method

.method public abstract setWidth(F)V
.end method
