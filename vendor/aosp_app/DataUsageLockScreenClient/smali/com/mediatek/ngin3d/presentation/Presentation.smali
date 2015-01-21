.class public interface abstract Lcom/mediatek/ngin3d/presentation/Presentation;
.super Ljava/lang/Object;
.source "Presentation.java"


# virtual methods
.method public abstract addChild(Lcom/mediatek/ngin3d/presentation/Presentation;)V
.end method

.method public abstract createActorNodePresentation(Ljava/lang/String;)Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;
.end method

.method public abstract getAnchorPoint()Lcom/mediatek/ngin3d/Point;
.end method

.method public abstract getChild(I)Lcom/mediatek/ngin3d/presentation/Presentation;
.end method

.method public abstract getChildrenCount()I
.end method

.method public abstract getColor()Lcom/mediatek/ngin3d/Color;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOpacity()I
.end method

.method public abstract getOwner()Ljava/lang/Object;
.end method

.method public abstract getPosition(Z)Lcom/mediatek/ngin3d/Point;
.end method

.method public abstract getRenderZOrder()I
.end method

.method public abstract getRotation()Lcom/mediatek/ngin3d/Rotation;
.end method

.method public abstract getScale()Lcom/mediatek/ngin3d/Scale;
.end method

.method public abstract getTrulyVisible()Z
.end method

.method public abstract getVisible()Z
.end method

.method public abstract hitTest(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/presentation/RenderLayer;)Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;
.end method

.method public abstract initialize(Ljava/lang/Object;)V
.end method

.method public abstract isDynamic()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract requestRender()V
.end method

.method public abstract setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V
.end method

.method public abstract setColor(Lcom/mediatek/ngin3d/Color;)V
.end method

.method public abstract setDisplayArea(Lcom/mediatek/ngin3d/Box;)V
.end method

.method public abstract setMaterial(Ljava/lang/String;)V
.end method

.method public abstract setMaterial(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMaterialProperty(Ljava/lang/String;F)V
.end method

.method public abstract setMaterialProperty(Ljava/lang/String;I)V
.end method

.method public abstract setMaterialProperty(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract setMaterialProperty(Ljava/lang/String;Lcom/mediatek/ngin3d/Point;)V
.end method

.method public abstract setMaterialProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMaterialProperty(Ljava/lang/String;Ljava/lang/String;F)V
.end method

.method public abstract setMaterialProperty(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/ngin3d/Point;)V
.end method

.method public abstract setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setMaterialProperty(Ljava/lang/String;Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOpacity(I)V
.end method

.method public abstract setPosition(Lcom/mediatek/ngin3d/Point;)V
.end method

.method public abstract setRenderZOrder(I)V
.end method

.method public abstract setRotation(Lcom/mediatek/ngin3d/Rotation;)V
.end method

.method public abstract setScale(Lcom/mediatek/ngin3d/Scale;)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract uninitialize()V
.end method
