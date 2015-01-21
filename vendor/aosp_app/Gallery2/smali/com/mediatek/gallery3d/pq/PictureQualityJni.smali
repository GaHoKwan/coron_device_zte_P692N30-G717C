.class public Lcom/mediatek/gallery3d/pq/PictureQualityJni;
.super Ljava/lang/Object;
.source "PictureQualityJni.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/PictureQualityJni"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "PQjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static native nativeGetGrassToneHIndex()I
.end method

.method public static native nativeGetGrassToneHRange()I
.end method

.method public static native nativeGetGrassToneSIndex()I
.end method

.method public static native nativeGetGrassToneSRange()I
.end method

.method public static native nativeGetHueAdjIndex()I
.end method

.method public static native nativeGetHueAdjRange()I
.end method

.method public static native nativeGetSatAdjIndex()I
.end method

.method public static native nativeGetSatAdjRange()I
.end method

.method public static native nativeGetSharpAdjIndex()I
.end method

.method public static native nativeGetSharpAdjRange()I
.end method

.method public static native nativeGetSkinToneHIndex()I
.end method

.method public static native nativeGetSkinToneHRange()I
.end method

.method public static native nativeGetSkinToneSIndex()I
.end method

.method public static native nativeGetSkinToneSRange()I
.end method

.method public static native nativeGetSkyToneHIndex()I
.end method

.method public static native nativeGetSkyToneHRange()I
.end method

.method public static native nativeGetSkyToneSIndex()I
.end method

.method public static native nativeGetSkyToneSRange()I
.end method

.method public static native nativeGetXAxisIndex()I
.end method

.method public static native nativeGetXAxisRange()I
.end method

.method public static native nativeGetYAxisIndex()I
.end method

.method public static native nativeGetYAxisRange()I
.end method

.method public static native nativeSetGrassToneHIndex(I)Z
.end method

.method public static native nativeSetGrassToneSIndex(I)Z
.end method

.method public static native nativeSetHueAdjIndex(I)Z
.end method

.method public static native nativeSetSatAdjIndex(I)Z
.end method

.method public static native nativeSetSharpAdjIndex(I)Z
.end method

.method public static native nativeSetSkinToneHIndex(I)Z
.end method

.method public static native nativeSetSkinToneSIndex(I)Z
.end method

.method public static native nativeSetSkyToneHIndex(I)Z
.end method

.method public static native nativeSetSkyToneSIndex(I)Z
.end method

.method public static native nativeSetXAxisIndex(I)Z
.end method

.method public static native nativeSetYAxisIndex(I)Z
.end method
