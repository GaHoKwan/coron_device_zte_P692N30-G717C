.class public interface abstract Lcom/mediatek/j3m/SceneNode;
.super Ljava/lang/Object;
.source "SceneNode.java"


# static fields
.field public static final NODE_TYPE:C = 'N'


# virtual methods
.method public abstract find(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;
.end method

.method public abstract getChild(I)Lcom/mediatek/j3m/SceneNode;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getDerivedFlags(Lcom/mediatek/j3m/FlagMask;)Z
.end method

.method public abstract getFlags(Lcom/mediatek/j3m/FlagMask;)Z
.end method

.method public abstract getLocalMirrored()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNodeType()C
.end method

.method public abstract getParent()Lcom/mediatek/j3m/SceneNode;
.end method

.method public abstract getPositionX()F
.end method

.method public abstract getPositionY()F
.end method

.method public abstract getPositionZ()F
.end method

.method public abstract getRotationA()F
.end method

.method public abstract getRotationB()F
.end method

.method public abstract getRotationC()F
.end method

.method public abstract getRotationD()F
.end method

.method public abstract getScaleX()F
.end method

.method public abstract getScaleY()F
.end method

.method public abstract getScaleZ()F
.end method

.method public abstract getWorldMirrored()Z
.end method

.method public abstract point(FFF)V
.end method

.method public abstract point(FFFFFF)V
.end method

.method public abstract point(FFFFFFFFF)V
.end method

.method public abstract point(FFFFFFFFFFFF)V
.end method

.method public abstract setFlags(Lcom/mediatek/j3m/FlagMask;Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setParent(Lcom/mediatek/j3m/SceneNode;)V
.end method

.method public abstract setParent(Lcom/mediatek/j3m/SceneNode;Z)V
.end method

.method public abstract setPosition(FFF)V
.end method

.method public abstract setRotation(FFFF)V
.end method

.method public abstract setScale(FFF)V
.end method
