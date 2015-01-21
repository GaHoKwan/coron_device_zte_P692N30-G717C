.class final Lcom/mediatek/ngin3d/j3m/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utility"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static enableTransparency(Lcom/mediatek/j3m/Appearance;)V
    .locals 2
    .parameter "appearance"

    .prologue
    const/16 v1, 0xb

    const/16 v0, 0x9

    .line 64
    invoke-interface {p0, v1, v1, v0, v0}, Lcom/mediatek/j3m/Appearance;->setBlendFactors(IIII)V

    .line 69
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/mediatek/j3m/Appearance;->setDepthWriteEnabled(Z)V

    .line 70
    return-void
.end method

.method public static setColorRecursive(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Lcom/mediatek/j3m/SceneNode;FFFF)V
    .locals 9
    .parameter "engine"
    .parameter "node"
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderFlags()Lcom/mediatek/ngin3d/j3m/RenderFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/ngin3d/j3m/RenderFlags;->DEBUG:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {p1, v1}, Lcom/mediatek/j3m/SceneNode;->getFlags(Lcom/mediatek/j3m/FlagMask;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    return-void

    .line 88
    :cond_1
    const-class v1, Lcom/mediatek/j3m/Solid;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v8, p1

    .line 89
    check-cast v8, Lcom/mediatek/j3m/Solid;

    .line 90
    .local v8, solid:Lcom/mediatek/j3m/Solid;
    invoke-interface {v8}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v0

    .line 91
    .local v0, appearance:Lcom/mediatek/j3m/Appearance;
    const-string v1, "M_DIFFUSE_COLOUR"

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/j3m/Appearance;->setVector4f(Ljava/lang/String;FFFF)V

    .line 96
    const/high16 v1, 0x3f80

    cmpg-float v1, p5, v1

    if-gez v1, :cond_2

    .line 97
    invoke-static {v0}, Lcom/mediatek/ngin3d/j3m/Utility;->enableTransparency(Lcom/mediatek/j3m/Appearance;)V

    .line 102
    .end local v0           #appearance:Lcom/mediatek/j3m/Appearance;
    .end local v8           #solid:Lcom/mediatek/j3m/Solid;
    :cond_2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {p1}, Lcom/mediatek/j3m/SceneNode;->getChildCount()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 103
    invoke-interface {p1, v7}, Lcom/mediatek/j3m/SceneNode;->getChild(I)Lcom/mediatek/j3m/SceneNode;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/mediatek/ngin3d/j3m/Utility;->setColorRecursive(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Lcom/mediatek/j3m/SceneNode;FFFF)V

    .line 102
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public static setOpacityRecursive(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Lcom/mediatek/j3m/SceneNode;F)V
    .locals 6
    .parameter "engine"
    .parameter "node"
    .parameter "opacity"

    .prologue
    .line 118
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderFlags()Lcom/mediatek/ngin3d/j3m/RenderFlags;

    move-result-object v4

    iget-object v4, v4, Lcom/mediatek/ngin3d/j3m/RenderFlags;->DEBUG:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {p1, v4}, Lcom/mediatek/j3m/SceneNode;->getFlags(Lcom/mediatek/j3m/FlagMask;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    :cond_0
    return-void

    .line 122
    :cond_1
    const-class v4, Lcom/mediatek/j3m/Solid;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 123
    check-cast v3, Lcom/mediatek/j3m/Solid;

    .line 124
    .local v3, solid:Lcom/mediatek/j3m/Solid;
    invoke-interface {v3}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v0

    .line 128
    .local v0, appearance:Lcom/mediatek/j3m/Appearance;
    const-string v4, "_APPEARANCE_OPACITY"

    invoke-interface {v0, v4}, Lcom/mediatek/j3m/Appearance;->propertyExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    const-string v4, "_APPEARANCE_OPACITY"

    invoke-interface {v0, v4}, Lcom/mediatek/j3m/Appearance;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 136
    .local v1, appearanceOpacity:F
    :goto_0
    const-string v4, "M_OPACITY"

    mul-float v5, v1, p2

    invoke-interface {v0, v4, v5}, Lcom/mediatek/j3m/Appearance;->setFloat(Ljava/lang/String;F)V

    .line 141
    const/high16 v4, 0x3f80

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    .line 142
    invoke-static {v0}, Lcom/mediatek/ngin3d/j3m/Utility;->enableTransparency(Lcom/mediatek/j3m/Appearance;)V

    .line 147
    .end local v0           #appearance:Lcom/mediatek/j3m/Appearance;
    .end local v1           #appearanceOpacity:F
    .end local v3           #solid:Lcom/mediatek/j3m/Solid;
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p1}, Lcom/mediatek/j3m/SceneNode;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 148
    invoke-interface {p1, v2}, Lcom/mediatek/j3m/SceneNode;->getChild(I)Lcom/mediatek/j3m/SceneNode;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lcom/mediatek/ngin3d/j3m/Utility;->setOpacityRecursive(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Lcom/mediatek/j3m/SceneNode;F)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    .end local v2           #i:I
    .restart local v0       #appearance:Lcom/mediatek/j3m/Appearance;
    .restart local v3       #solid:Lcom/mediatek/j3m/Solid;
    :cond_3
    const-string v4, "M_OPACITY"

    invoke-interface {v0, v4}, Lcom/mediatek/j3m/Appearance;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 133
    .restart local v1       #appearanceOpacity:F
    const-string v4, "_APPEARANCE_OPACITY"

    invoke-interface {v0, v4, v1}, Lcom/mediatek/j3m/Appearance;->setFloat(Ljava/lang/String;F)V

    goto :goto_0
.end method
