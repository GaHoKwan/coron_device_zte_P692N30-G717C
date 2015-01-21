.class public interface abstract Lcom/mediatek/j3m/AssetPool;
.super Ljava/lang/Object;
.source "AssetPool.java"


# virtual methods
.method public abstract applyAppearance(Lcom/mediatek/j3m/Appearance;Ljava/lang/String;)V
.end method

.method public abstract createCube()Lcom/mediatek/j3m/Solid;
.end method

.method public abstract createCube(FF)Lcom/mediatek/j3m/Solid;
.end method

.method public abstract createSphere(II)Lcom/mediatek/j3m/Solid;
.end method

.method public abstract createSphere(IIFF)Lcom/mediatek/j3m/Solid;
.end method

.method public abstract createSquare()Lcom/mediatek/j3m/Solid;
.end method

.method public abstract createSquare(FF)Lcom/mediatek/j3m/Solid;
.end method

.method public abstract createTexture2D(IIII[B)Lcom/mediatek/j3m/Texture2D;
.end method

.method public abstract createTexture2D(IIII[BLjava/lang/String;)Lcom/mediatek/j3m/Texture2D;
.end method

.method public abstract flush()V
.end method

.method public abstract getShaderProgram(Ljava/lang/String;)Lcom/mediatek/j3m/ShaderProgram;
.end method

.method public abstract getTexture2D(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;
.end method

.method public abstract getTexture2DMemoryUsage()I
.end method

.method public abstract getTextureCube(Ljava/lang/String;)Lcom/mediatek/j3m/TextureCube;
.end method

.method public abstract loadAppearance(Ljava/lang/String;)Lcom/mediatek/j3m/Appearance;
.end method

.method public abstract loadModel(Ljava/lang/String;)Lcom/mediatek/j3m/Model;
.end method

.method public abstract loadModel(Ljava/lang/String;Lcom/mediatek/j3m/SceneNode;)Lcom/mediatek/j3m/Model;
.end method

.method public abstract registerSource(Landroid/content/res/AssetManager;)V
.end method

.method public abstract registerSource(Landroid/content/res/Resources;)V
.end method

.method public abstract registerSource(Ljava/lang/String;)V
.end method

.method public abstract release()V
.end method

.method public abstract setCacheSource(Ljava/lang/String;)V
.end method
