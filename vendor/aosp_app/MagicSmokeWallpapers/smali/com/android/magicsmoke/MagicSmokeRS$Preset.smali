.class Lcom/android/magicsmoke/MagicSmokeRS$Preset;
.super Ljava/lang/Object;
.source "MagicSmokeRS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/magicsmoke/MagicSmokeRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Preset"
.end annotation


# instance fields
.field public mAlphaMul:F

.field public mBackColor:I

.field public mHighColor:I

.field public mLowColor:I

.field public mPreMul:Z

.field public mProcessTextureMode:I

.field public mRotate:Z

.field public mTextureMask:I

.field public mTextureSwap:Z


# direct methods
.method constructor <init>(IIIIFIZZZ)V
    .locals 0
    .parameter "processmode"
    .parameter "backcol"
    .parameter "locol"
    .parameter "hicol"
    .parameter "mul"
    .parameter "mask"
    .parameter "rot"
    .parameter "texswap"
    .parameter "premul"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mProcessTextureMode:I

    .line 98
    iput p2, p0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mBackColor:I

    .line 99
    iput p3, p0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mLowColor:I

    .line 100
    iput p4, p0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mHighColor:I

    .line 101
    iput p5, p0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mAlphaMul:F

    .line 102
    iput p6, p0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mTextureMask:I

    .line 103
    iput-boolean p7, p0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mRotate:Z

    .line 104
    iput-boolean p8, p0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mTextureSwap:Z

    .line 105
    iput-boolean p9, p0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mPreMul:Z

    .line 106
    return-void
.end method
