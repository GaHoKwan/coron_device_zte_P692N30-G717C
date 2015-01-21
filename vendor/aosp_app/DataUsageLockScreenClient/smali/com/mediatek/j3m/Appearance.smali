.class public interface abstract Lcom/mediatek/j3m/Appearance;
.super Ljava/lang/Object;
.source "Appearance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/j3m/Appearance$Operation;,
        Lcom/mediatek/j3m/Appearance$Face;,
        Lcom/mediatek/j3m/Appearance$BlendFactor;,
        Lcom/mediatek/j3m/Appearance$BlendFunction;,
        Lcom/mediatek/j3m/Appearance$Function;,
        Lcom/mediatek/j3m/Appearance$WindingOrder;,
        Lcom/mediatek/j3m/Appearance$CullingMode;
    }
.end annotation


# virtual methods
.method public abstract getBlendColourA()F
.end method

.method public abstract getBlendColourB()F
.end method

.method public abstract getBlendColourG()F
.end method

.method public abstract getBlendColourR()F
.end method

.method public abstract getBlendFactorDstAlpha()I
.end method

.method public abstract getBlendFactorDstRgb()I
.end method

.method public abstract getBlendFactorSrcAlpha()I
.end method

.method public abstract getBlendFactorSrcRgb()I
.end method

.method public abstract getBlendFunctionAlpha()I
.end method

.method public abstract getBlendFunctionRgb()I
.end method

.method public abstract getBoolean(Ljava/lang/String;)Z
.end method

.method public abstract getBoolean(Ljava/lang/String;I)Z
.end method

.method public abstract getColourWriteMaskA()Z
.end method

.method public abstract getColourWriteMaskB()Z
.end method

.method public abstract getColourWriteMaskG()Z
.end method

.method public abstract getColourWriteMaskR()Z
.end method

.method public abstract getCullingMode()I
.end method

.method public abstract getDepthOffsetFactor()F
.end method

.method public abstract getDepthOffsetUnits()F
.end method

.method public abstract getDepthTestFunction()I
.end method

.method public abstract getFloat(Ljava/lang/String;)F
.end method

.method public abstract getFloat(Ljava/lang/String;I)F
.end method

.method public abstract getForceOpaque()Z
.end method

.method public abstract getInt(Ljava/lang/String;)I
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLineWidth()F
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getScissorRectangleBottom()I
.end method

.method public abstract getScissorRectangleHeight()I
.end method

.method public abstract getScissorRectangleLeft()I
.end method

.method public abstract getScissorRectangleWidth()I
.end method

.method public abstract getShaderProgram()Lcom/mediatek/j3m/ShaderProgram;
.end method

.method public abstract getStencilFunction(I)I
.end method

.method public abstract getStencilMask(I)I
.end method

.method public abstract getStencilOperationStencilFail(I)I
.end method

.method public abstract getStencilOperationStencilPassDepthFail(I)I
.end method

.method public abstract getStencilOperationStencilPassDepthPass(I)I
.end method

.method public abstract getStencilReference(I)I
.end method

.method public abstract getStencilWriteMask(I)I
.end method

.method public abstract getTexture2D(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;
.end method

.method public abstract getTexture2D(Ljava/lang/String;I)Lcom/mediatek/j3m/Texture2D;
.end method

.method public abstract getTextureCube(Ljava/lang/String;)Lcom/mediatek/j3m/TextureCube;
.end method

.method public abstract getTextureCube(Ljava/lang/String;I)Lcom/mediatek/j3m/TextureCube;
.end method

.method public abstract getVector2bX(Ljava/lang/String;)Z
.end method

.method public abstract getVector2bX(Ljava/lang/String;I)Z
.end method

.method public abstract getVector2bY(Ljava/lang/String;)Z
.end method

.method public abstract getVector2bY(Ljava/lang/String;I)Z
.end method

.method public abstract getVector2fX(Ljava/lang/String;)F
.end method

.method public abstract getVector2fX(Ljava/lang/String;I)F
.end method

.method public abstract getVector2fY(Ljava/lang/String;)F
.end method

.method public abstract getVector2fY(Ljava/lang/String;I)F
.end method

.method public abstract getVector2iX(Ljava/lang/String;)I
.end method

.method public abstract getVector2iX(Ljava/lang/String;I)I
.end method

.method public abstract getVector2iY(Ljava/lang/String;)I
.end method

.method public abstract getVector2iY(Ljava/lang/String;I)I
.end method

.method public abstract getVector3bX(Ljava/lang/String;)Z
.end method

.method public abstract getVector3bX(Ljava/lang/String;I)Z
.end method

.method public abstract getVector3bY(Ljava/lang/String;)Z
.end method

.method public abstract getVector3bY(Ljava/lang/String;I)Z
.end method

.method public abstract getVector3bZ(Ljava/lang/String;)Z
.end method

.method public abstract getVector3bZ(Ljava/lang/String;I)Z
.end method

.method public abstract getVector3fX(Ljava/lang/String;)F
.end method

.method public abstract getVector3fX(Ljava/lang/String;I)F
.end method

.method public abstract getVector3fY(Ljava/lang/String;)F
.end method

.method public abstract getVector3fY(Ljava/lang/String;I)F
.end method

.method public abstract getVector3fZ(Ljava/lang/String;)F
.end method

.method public abstract getVector3fZ(Ljava/lang/String;I)F
.end method

.method public abstract getVector3iX(Ljava/lang/String;)I
.end method

.method public abstract getVector3iX(Ljava/lang/String;I)I
.end method

.method public abstract getVector3iY(Ljava/lang/String;)I
.end method

.method public abstract getVector3iY(Ljava/lang/String;I)I
.end method

.method public abstract getVector3iZ(Ljava/lang/String;)I
.end method

.method public abstract getVector3iZ(Ljava/lang/String;I)I
.end method

.method public abstract getVector4bW(Ljava/lang/String;)Z
.end method

.method public abstract getVector4bW(Ljava/lang/String;I)Z
.end method

.method public abstract getVector4bX(Ljava/lang/String;)Z
.end method

.method public abstract getVector4bX(Ljava/lang/String;I)Z
.end method

.method public abstract getVector4bY(Ljava/lang/String;)Z
.end method

.method public abstract getVector4bY(Ljava/lang/String;I)Z
.end method

.method public abstract getVector4bZ(Ljava/lang/String;)Z
.end method

.method public abstract getVector4bZ(Ljava/lang/String;I)Z
.end method

.method public abstract getVector4fW(Ljava/lang/String;)F
.end method

.method public abstract getVector4fW(Ljava/lang/String;I)F
.end method

.method public abstract getVector4fX(Ljava/lang/String;)F
.end method

.method public abstract getVector4fX(Ljava/lang/String;I)F
.end method

.method public abstract getVector4fY(Ljava/lang/String;)F
.end method

.method public abstract getVector4fY(Ljava/lang/String;I)F
.end method

.method public abstract getVector4fZ(Ljava/lang/String;)F
.end method

.method public abstract getVector4fZ(Ljava/lang/String;I)F
.end method

.method public abstract getVector4iW(Ljava/lang/String;)I
.end method

.method public abstract getVector4iW(Ljava/lang/String;I)I
.end method

.method public abstract getVector4iX(Ljava/lang/String;)I
.end method

.method public abstract getVector4iX(Ljava/lang/String;I)I
.end method

.method public abstract getVector4iY(Ljava/lang/String;)I
.end method

.method public abstract getVector4iY(Ljava/lang/String;I)I
.end method

.method public abstract getVector4iZ(Ljava/lang/String;)I
.end method

.method public abstract getVector4iZ(Ljava/lang/String;I)I
.end method

.method public abstract getWindingOrder()I
.end method

.method public abstract isDepthTestEnabled()Z
.end method

.method public abstract isDepthWriteEnabled()Z
.end method

.method public abstract isOpaque()Z
.end method

.method public abstract isScissorTestEnabled()Z
.end method

.method public abstract propertyExists(Ljava/lang/String;)Z
.end method

.method public abstract setBlendColour(FFFF)V
.end method

.method public abstract setBlendFactors(II)V
.end method

.method public abstract setBlendFactors(IIII)V
.end method

.method public abstract setBlendFunctions(II)V
.end method

.method public abstract setBoolean(Ljava/lang/String;Z)V
.end method

.method public abstract setBoolean(Ljava/lang/String;ZI)V
.end method

.method public abstract setColourWriteMask(ZZZZ)V
.end method

.method public abstract setCullingMode(I)V
.end method

.method public abstract setDepthOffsetFactor(F)V
.end method

.method public abstract setDepthOffsetUnits(F)V
.end method

.method public abstract setDepthTestEnabled(Z)V
.end method

.method public abstract setDepthTestFunction(I)V
.end method

.method public abstract setDepthWriteEnabled(Z)V
.end method

.method public abstract setFloat(Ljava/lang/String;F)V
.end method

.method public abstract setFloat(Ljava/lang/String;FI)V
.end method

.method public abstract setForceOpaque(Z)V
.end method

.method public abstract setInt(Ljava/lang/String;I)V
.end method

.method public abstract setInt(Ljava/lang/String;II)V
.end method

.method public abstract setLineWidth(F)V
.end method

.method public abstract setMatrix4f(Ljava/lang/String;[F)V
.end method

.method public abstract setMatrix4f(Ljava/lang/String;[FI)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setScissorRectangle(IIII)V
.end method

.method public abstract setScissorTestEnabled(Z)V
.end method

.method public abstract setShaderProgram(Lcom/mediatek/j3m/ShaderProgram;)V
.end method

.method public abstract setStencilFunction(IIII)V
.end method

.method public abstract setStencilOperations(IIII)V
.end method

.method public abstract setStencilWriteMask(II)V
.end method

.method public abstract setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;)V
.end method

.method public abstract setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;I)V
.end method

.method public abstract setTextureCube(Ljava/lang/String;Lcom/mediatek/j3m/TextureCube;)V
.end method

.method public abstract setTextureCube(Ljava/lang/String;Lcom/mediatek/j3m/TextureCube;I)V
.end method

.method public abstract setVector2b(Ljava/lang/String;ZZ)V
.end method

.method public abstract setVector2b(Ljava/lang/String;ZZI)V
.end method

.method public abstract setVector2f(Ljava/lang/String;FF)V
.end method

.method public abstract setVector2f(Ljava/lang/String;FFI)V
.end method

.method public abstract setVector2i(Ljava/lang/String;II)V
.end method

.method public abstract setVector2i(Ljava/lang/String;III)V
.end method

.method public abstract setVector3b(Ljava/lang/String;ZZZ)V
.end method

.method public abstract setVector3b(Ljava/lang/String;ZZZI)V
.end method

.method public abstract setVector3f(Ljava/lang/String;FFF)V
.end method

.method public abstract setVector3f(Ljava/lang/String;FFFI)V
.end method

.method public abstract setVector3i(Ljava/lang/String;III)V
.end method

.method public abstract setVector3i(Ljava/lang/String;IIII)V
.end method

.method public abstract setVector4b(Ljava/lang/String;ZZZZ)V
.end method

.method public abstract setVector4b(Ljava/lang/String;ZZZZI)V
.end method

.method public abstract setVector4f(Ljava/lang/String;FFFF)V
.end method

.method public abstract setVector4f(Ljava/lang/String;FFFFI)V
.end method

.method public abstract setVector4i(Ljava/lang/String;IIII)V
.end method

.method public abstract setVector4i(Ljava/lang/String;IIIII)V
.end method

.method public abstract setWindingOrder(I)V
.end method
