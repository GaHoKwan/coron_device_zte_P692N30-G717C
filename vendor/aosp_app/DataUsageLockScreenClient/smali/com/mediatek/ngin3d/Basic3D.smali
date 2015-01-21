.class public abstract Lcom/mediatek/ngin3d/Basic3D;
.super Lcom/mediatek/ngin3d/Actor;
.source "Basic3D.java"


# static fields
.field public static final PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/presentation/ImageSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsYUp:Z

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "image_source"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Basic3D;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .parameter "type"
    .parameter "isYUp"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Actor;-><init>()V

    .line 71
    iput p1, p0, Lcom/mediatek/ngin3d/Basic3D;->mType:I

    .line 72
    iput-boolean p2, p0, Lcom/mediatek/ngin3d/Basic3D;->mIsYUp:Z

    .line 73
    return-void
.end method


# virtual methods
.method protected applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 8
    .parameter "property"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 97
    sget-object v4, Lcom/mediatek/ngin3d/Basic3D;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v4}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, p2

    .line 98
    check-cast v1, Lcom/mediatek/ngin3d/presentation/ImageSource;

    .line 99
    .local v1, src:Lcom/mediatek/ngin3d/presentation/ImageSource;
    if-nez v1, :cond_1

    .line 114
    .end local v1           #src:Lcom/mediatek/ngin3d/presentation/ImageSource;
    :cond_0
    :goto_0
    return v2

    .line 102
    .restart local v1       #src:Lcom/mediatek/ngin3d/presentation/ImageSource;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Basic3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/Model3d;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mediatek/ngin3d/presentation/Model3d;->setTexture(Lcom/mediatek/ngin3d/presentation/ImageSource;)V

    move v2, v3

    .line 103
    goto :goto_0

    .line 104
    .end local v1           #src:Lcom/mediatek/ngin3d/presentation/ImageSource;
    :cond_2
    sget-object v4, Lcom/mediatek/ngin3d/Basic3D;->PROP_SCALE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v4}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, p2

    .line 105
    check-cast v0, Lcom/mediatek/ngin3d/Scale;

    .line 106
    .local v0, scale:Lcom/mediatek/ngin3d/Scale;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Basic3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/Model3d;

    move-result-object v2

    new-instance v4, Lcom/mediatek/ngin3d/Scale;

    iget v5, v0, Lcom/mediatek/ngin3d/Scale;->x:F

    iget v6, v0, Lcom/mediatek/ngin3d/Scale;->y:F

    neg-float v6, v6

    iget v7, v0, Lcom/mediatek/ngin3d/Scale;->z:F

    invoke-direct {v4, v5, v6, v7}, Lcom/mediatek/ngin3d/Scale;-><init>(FFF)V

    invoke-interface {v2, v4}, Lcom/mediatek/ngin3d/presentation/Model3d;->setScale(Lcom/mediatek/ngin3d/Scale;)V

    move v2, v3

    .line 107
    goto :goto_0

    .line 110
    .end local v0           #scale:Lcom/mediatek/ngin3d/Scale;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Actor;->applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 111
    goto :goto_0
.end method

.method protected createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Model3d;
    .locals 2
    .parameter "engine"

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/ngin3d/Basic3D;->mType:I

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/Basic3D;->mIsYUp:Z

    invoke-interface {p1, v0, v1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->createModel3d(IZ)Lcom/mediatek/ngin3d/presentation/Model3d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Basic3D;->createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Model3d;

    move-result-object v0

    return-object v0
.end method

.method public getPresentation()Lcom/mediatek/ngin3d/presentation/Model3d;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    check-cast v0, Lcom/mediatek/ngin3d/presentation/Model3d;

    return-object v0
.end method

.method public bridge synthetic getPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Basic3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/Model3d;

    move-result-object v0

    return-object v0
.end method

.method public setImageFromBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bitmap cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    sget-object v0, Lcom/mediatek/ngin3d/Basic3D;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    new-instance v1, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public setImageFromFile(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    sget-object v0, Lcom/mediatek/ngin3d/Basic3D;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    new-instance v1, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public setImageFromResource(Landroid/content/res/Resources;I)V
    .locals 4
    .parameter "resources"
    .parameter "resId"

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resources cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    sget-object v0, Lcom/mediatek/ngin3d/Basic3D;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    new-instance v1, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v2, 0x3

    new-instance v3, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;

    invoke-direct {v3, p1, p2}, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;-><init>(Landroid/content/res/Resources;I)V

    invoke-direct {v1, v2, v3}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 150
    return-void
.end method
