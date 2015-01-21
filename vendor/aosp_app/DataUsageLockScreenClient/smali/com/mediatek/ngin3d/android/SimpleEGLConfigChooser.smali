.class Lcom/mediatek/ngin3d/android/SimpleEGLConfigChooser;
.super Lcom/mediatek/ngin3d/android/ComponentSizeChooser;
.source "SimpleEGLConfigChooser.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 7
    .parameter "withDepthBuffer"

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 47
    if-eqz p1, :cond_0

    const/16 v5, 0x10

    :goto_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/ngin3d/android/ComponentSizeChooser;-><init>(IIIIII)V

    .line 48
    return-void

    :cond_0
    move v5, v6

    .line 47
    goto :goto_0
.end method
