.class public interface abstract Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;
.super Ljava/lang/Object;
.source "IActorNodePresentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/presentation/IActorNodePresentation$CollisionType;
    }
.end annotation


# virtual methods
.method public abstract getOwner()Ljava/lang/Object;
.end method

.method public abstract initialize(Ljava/lang/Object;)V
.end method

.method public abstract requestRender()V
.end method

.method public abstract setCollisionPosition(Lcom/mediatek/ngin3d/Point;)V
.end method

.method public abstract setCollisionRotation(Lcom/mediatek/ngin3d/Rotation;)V
.end method

.method public abstract setCollisionScale(Lcom/mediatek/ngin3d/Scale;)V
.end method

.method public abstract setCollisionShape(I)V
.end method

.method public abstract setCollisionVisible(Z)V
.end method

.method public abstract setColor(Lcom/mediatek/ngin3d/Color;)V
.end method

.method public abstract setOpacity(I)V
.end method

.method public abstract setPosition(Lcom/mediatek/ngin3d/Point;)V
.end method

.method public abstract setRotation(Lcom/mediatek/ngin3d/Rotation;)V
.end method

.method public abstract setScale(Lcom/mediatek/ngin3d/Scale;)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract uninitialize()V
.end method
