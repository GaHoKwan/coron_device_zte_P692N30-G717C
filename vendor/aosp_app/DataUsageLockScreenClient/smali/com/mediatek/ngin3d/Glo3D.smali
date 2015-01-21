.class public final Lcom/mediatek/ngin3d/Glo3D;
.super Lcom/mediatek/ngin3d/Object3D;
.source "Glo3D.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Object3D;-><init>()V

    .line 55
    return-void
.end method

.method public static createFromAsset(Ljava/lang/String;)Lcom/mediatek/ngin3d/Glo3D;
    .locals 1
    .parameter "assetname"

    .prologue
    .line 89
    new-instance v0, Lcom/mediatek/ngin3d/Glo3D;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Glo3D;-><init>()V

    .line 90
    .local v0, glo3D:Lcom/mediatek/ngin3d/Glo3D;
    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/Object3D;->setObjectFromAsset(Ljava/lang/String;)V

    .line 91
    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Lcom/mediatek/ngin3d/Glo3D;
    .locals 1
    .parameter "filename"

    .prologue
    .line 64
    new-instance v0, Lcom/mediatek/ngin3d/Glo3D;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Glo3D;-><init>()V

    .line 65
    .local v0, glo3D:Lcom/mediatek/ngin3d/Glo3D;
    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/Object3D;->setObjectFromFile(Ljava/lang/String;)V

    .line 66
    return-object v0
.end method

.method public static createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Glo3D;
    .locals 1
    .parameter "resources"
    .parameter "resId"

    .prologue
    .line 77
    new-instance v0, Lcom/mediatek/ngin3d/Glo3D;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Glo3D;-><init>()V

    .line 78
    .local v0, glo3D:Lcom/mediatek/ngin3d/Glo3D;
    invoke-virtual {v0, p0, p1}, Lcom/mediatek/ngin3d/Object3D;->setObjectFromResource(Landroid/content/res/Resources;I)V

    .line 79
    return-object v0
.end method
