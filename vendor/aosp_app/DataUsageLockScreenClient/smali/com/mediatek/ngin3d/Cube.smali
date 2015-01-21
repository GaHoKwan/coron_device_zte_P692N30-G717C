.class public final Lcom/mediatek/ngin3d/Cube;
.super Lcom/mediatek/ngin3d/Basic3D;
.source "Cube.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Z)V
    .locals 1
    .parameter "isYUp"

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ngin3d/Basic3D;-><init>(IZ)V

    .line 60
    return-void
.end method

.method public static createFromBitmap(Landroid/graphics/Bitmap;)Lcom/mediatek/ngin3d/Cube;
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/ngin3d/Cube;->createFromBitmap(Landroid/graphics/Bitmap;Z)Lcom/mediatek/ngin3d/Cube;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitmap(Landroid/graphics/Bitmap;Z)Lcom/mediatek/ngin3d/Cube;
    .locals 1
    .parameter "bitmap"
    .parameter "isYUp"

    .prologue
    .line 102
    new-instance v0, Lcom/mediatek/ngin3d/Cube;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/Cube;-><init>(Z)V

    .line 103
    .local v0, cube:Lcom/mediatek/ngin3d/Cube;
    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/Basic3D;->setImageFromBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Lcom/mediatek/ngin3d/Cube;
    .locals 1
    .parameter "filename"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/ngin3d/Cube;->createFromFile(Ljava/lang/String;Z)Lcom/mediatek/ngin3d/Cube;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;Z)Lcom/mediatek/ngin3d/Cube;
    .locals 1
    .parameter "filename"
    .parameter "isYUp"

    .prologue
    .line 81
    new-instance v0, Lcom/mediatek/ngin3d/Cube;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/Cube;-><init>(Z)V

    .line 82
    .local v0, cube:Lcom/mediatek/ngin3d/Cube;
    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/Basic3D;->setImageFromFile(Ljava/lang/String;)V

    .line 83
    return-object v0
.end method

.method public static createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Cube;
    .locals 1
    .parameter "resources"
    .parameter "resId"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/ngin3d/Cube;->createFromResource(Landroid/content/res/Resources;IZ)Lcom/mediatek/ngin3d/Cube;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResource(Landroid/content/res/Resources;IZ)Lcom/mediatek/ngin3d/Cube;
    .locals 1
    .parameter "resources"
    .parameter "resId"
    .parameter "isYUp"

    .prologue
    .line 125
    new-instance v0, Lcom/mediatek/ngin3d/Cube;

    invoke-direct {v0, p2}, Lcom/mediatek/ngin3d/Cube;-><init>(Z)V

    .line 126
    .local v0, cube:Lcom/mediatek/ngin3d/Cube;
    invoke-virtual {v0, p0, p1}, Lcom/mediatek/ngin3d/Basic3D;->setImageFromResource(Landroid/content/res/Resources;I)V

    .line 127
    return-object v0
.end method
