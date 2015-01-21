.class public Lcom/mediatek/ngin3d/Light;
.super Lcom/mediatek/ngin3d/Actor;
.source "Light.java"


# static fields
.field public static final PROP_AMBIENT_LEVEL:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ATTN_FAR:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ATTN_NEAR:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_COLOR:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Color;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_INTENSITY:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_ATTN:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SPOT_INNER:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SPOT_OUTER:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_TYPE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TAG:Ljava/lang/String; = "Light"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 79
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "light_type"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Light;->PROP_TYPE:Lcom/mediatek/ngin3d/Property;

    .line 86
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "color"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Light;->PROP_COLOR:Lcom/mediatek/ngin3d/Property;

    .line 93
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "ambient_level"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Light;->PROP_AMBIENT_LEVEL:Lcom/mediatek/ngin3d/Property;

    .line 100
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "intensity"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Light;->PROP_INTENSITY:Lcom/mediatek/ngin3d/Property;

    .line 107
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "attn_near"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Light;->PROP_ATTN_NEAR:Lcom/mediatek/ngin3d/Property;

    .line 114
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "attn_far"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Light;->PROP_ATTN_FAR:Lcom/mediatek/ngin3d/Property;

    .line 121
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "spot_inner"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Light;->PROP_SPOT_INNER:Lcom/mediatek/ngin3d/Property;

    .line 128
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "spot_outer"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Light;->PROP_SPOT_OUTER:Lcom/mediatek/ngin3d/Property;

    .line 135
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "spot_is_attn"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Light;->PROP_IS_ATTN:Lcom/mediatek/ngin3d/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Actor;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 3
    .parameter "property"
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 147
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Actor;->applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    .end local p2
    :cond_0
    :goto_0
    return v0

    .line 151
    .restart local p2
    :cond_1
    if-eqz p2, :cond_0

    .line 154
    sget-object v1, Lcom/mediatek/ngin3d/Light;->PROP_TYPE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Light;->getPresentation()Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    move-result-object v1

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/ngin3d/presentation/ILightPresentation;->setType(I)V

    goto :goto_0

    .line 157
    .restart local p2
    :cond_2
    sget-object v1, Lcom/mediatek/ngin3d/Light;->PROP_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Light;->getPresentation()Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    move-result-object v1

    check-cast p2, Lcom/mediatek/ngin3d/Color;

    .end local p2
    invoke-interface {v1, p2}, Lcom/mediatek/ngin3d/presentation/ILightPresentation;->setColor(Lcom/mediatek/ngin3d/Color;)V

    goto :goto_0

    .line 160
    .restart local p2
    :cond_3
    sget-object v1, Lcom/mediatek/ngin3d/Light;->PROP_AMBIENT_LEVEL:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Light;->getPresentation()Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    move-result-object v1

    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/ngin3d/presentation/ILightPresentation;->setAmbientLevel(F)V

    goto :goto_0

    .line 163
    .restart local p2
    :cond_4
    sget-object v1, Lcom/mediatek/ngin3d/Light;->PROP_INTENSITY:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 164
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Light;->getPresentation()Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    move-result-object v1

    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/ngin3d/presentation/ILightPresentation;->setIntensity(F)V

    goto :goto_0

    .line 166
    .restart local p2
    :cond_5
    sget-object v1, Lcom/mediatek/ngin3d/Light;->PROP_ATTN_NEAR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Light;->getPresentation()Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    move-result-object v1

    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/ngin3d/presentation/ILightPresentation;->setAttenuationNear(F)V

    goto :goto_0

    .line 169
    .restart local p2
    :cond_6
    sget-object v1, Lcom/mediatek/ngin3d/Light;->PROP_ATTN_FAR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Light;->getPresentation()Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    move-result-object v1

    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/ngin3d/presentation/ILightPresentation;->setAttenuationFar(F)V

    goto/16 :goto_0

    .line 172
    .restart local p2
    :cond_7
    sget-object v1, Lcom/mediatek/ngin3d/Light;->PROP_IS_ATTN:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 173
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Light;->getPresentation()Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    move-result-object v1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/ngin3d/presentation/ILightPresentation;->setIsAttenuated(Z)V

    goto/16 :goto_0

    .line 175
    .restart local p2
    :cond_8
    sget-object v1, Lcom/mediatek/ngin3d/Light;->PROP_SPOT_INNER:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 176
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Light;->getPresentation()Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    move-result-object v1

    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/ngin3d/presentation/ILightPresentation;->setSpotInnerAngle(F)V

    goto/16 :goto_0

    .line 178
    .restart local p2
    :cond_9
    sget-object v1, Lcom/mediatek/ngin3d/Light;->PROP_SPOT_OUTER:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 179
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Light;->getPresentation()Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    move-result-object v1

    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/ngin3d/presentation/ILightPresentation;->setSpotOuterAngle(F)V

    goto/16 :goto_0

    .line 183
    .restart local p2
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/ILightPresentation;
    .locals 1
    .parameter "engine"

    .prologue
    .line 60
    invoke-interface {p1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->createLight()Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Light;->createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    move-result-object v0

    return-object v0
.end method

.method public getPresentation()Lcom/mediatek/ngin3d/presentation/ILightPresentation;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    check-cast v0, Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    return-object v0
.end method

.method public bridge synthetic getPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Light;->getPresentation()Lcom/mediatek/ngin3d/presentation/ILightPresentation;

    move-result-object v0

    return-object v0
.end method

.method public setAmbientColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Light;->setColor(Lcom/mediatek/ngin3d/Color;)V

    .line 245
    return-void
.end method

.method public setAmbientLevel(F)V
    .locals 2
    .parameter "level"

    .prologue
    .line 223
    sget-object v0, Lcom/mediatek/ngin3d/Light;->PROP_AMBIENT_LEVEL:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public setAttenuationFar(F)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 268
    sget-object v0, Lcom/mediatek/ngin3d/Light;->PROP_ATTN_FAR:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public setAttenuationNear(F)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 260
    sget-object v0, Lcom/mediatek/ngin3d/Light;->PROP_ATTN_NEAR:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method public setColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 1
    .parameter "color"

    .prologue
    .line 212
    sget-object v0, Lcom/mediatek/ngin3d/Light;->PROP_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public setDiffuseColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Light;->setColor(Lcom/mediatek/ngin3d/Color;)V

    .line 231
    return-void
.end method

.method public setIntensity(F)V
    .locals 2
    .parameter "intensity"

    .prologue
    .line 252
    sget-object v0, Lcom/mediatek/ngin3d/Light;->PROP_INTENSITY:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public setIsAttenuated(Z)V
    .locals 2
    .parameter "isAttenuated"

    .prologue
    .line 292
    sget-object v0, Lcom/mediatek/ngin3d/Light;->PROP_IS_ATTN:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public setSpecularColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Light;->setColor(Lcom/mediatek/ngin3d/Color;)V

    .line 238
    return-void
.end method

.method public setSpotInnerAngle(F)V
    .locals 2
    .parameter "angle"

    .prologue
    .line 276
    sget-object v0, Lcom/mediatek/ngin3d/Light;->PROP_SPOT_INNER:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public setSpotOuterAngle(F)V
    .locals 2
    .parameter "angle"

    .prologue
    .line 284
    sget-object v0, Lcom/mediatek/ngin3d/Light;->PROP_SPOT_OUTER:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method public setTypeDirectional()V
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/mediatek/ngin3d/Light;->PROP_TYPE:Lcom/mediatek/ngin3d/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public setTypePoint()V
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/mediatek/ngin3d/Light;->PROP_TYPE:Lcom/mediatek/ngin3d/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method public setTypeSpot()V
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/mediatek/ngin3d/Light;->PROP_TYPE:Lcom/mediatek/ngin3d/Property;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 205
    return-void
.end method
