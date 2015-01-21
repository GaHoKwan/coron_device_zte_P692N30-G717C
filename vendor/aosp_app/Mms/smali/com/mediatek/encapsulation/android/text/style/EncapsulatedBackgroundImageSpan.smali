.class public Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "EncapsulatedBackgroundImageSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mBackgroundImageSpan:Lcom/mediatek/text/style/BackgroundImageSpan;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mWidth:I

    .line 32
    new-instance v0, Lcom/mediatek/text/style/BackgroundImageSpan;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/text/style/BackgroundImageSpan;-><init>(ILandroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mBackgroundImageSpan:Lcom/mediatek/text/style/BackgroundImageSpan;

    .line 34
    iput p1, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mImageId:I

    .line 35
    iput-object p2, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mWidth:I

    .line 40
    new-instance v0, Lcom/mediatek/text/style/BackgroundImageSpan;

    invoke-direct {v0, p1}, Lcom/mediatek/text/style/BackgroundImageSpan;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mBackgroundImageSpan:Lcom/mediatek/text/style/BackgroundImageSpan;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mImageId:I

    .line 43
    return-void
.end method

.method public static convert(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 0
    .parameter "text"
    .parameter "context"

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/mediatek/text/style/BackgroundImageSpan;->convert(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 110
    return-void
.end method


# virtual methods
.method public convertToDrawable(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mBackgroundImageSpan:Lcom/mediatek/text/style/BackgroundImageSpan;

    invoke-virtual {v0, p1}, Lcom/mediatek/text/style/BackgroundImageSpan;->convertToDrawable(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mBackgroundImageSpan:Lcom/mediatek/text/style/BackgroundImageSpan;

    invoke-virtual {v0}, Lcom/mediatek/text/style/BackgroundImageSpan;->describeContents()I

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;IFIIILandroid/graphics/Paint;)V
    .locals 8
    .parameter "canvas"
    .parameter "width"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mBackgroundImageSpan:Lcom/mediatek/text/style/BackgroundImageSpan;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/text/style/BackgroundImageSpan;->draw(Landroid/graphics/Canvas;IFIIILandroid/graphics/Paint;)V

    .line 61
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 10
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mBackgroundImageSpan:Lcom/mediatek/text/style/BackgroundImageSpan;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/text/style/BackgroundImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 123
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 6
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mBackgroundImageSpan:Lcom/mediatek/text/style/BackgroundImageSpan;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/text/style/BackgroundImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mBackgroundImageSpan:Lcom/mediatek/text/style/BackgroundImageSpan;

    invoke-virtual {v0}, Lcom/mediatek/text/style/BackgroundImageSpan;->getSpanTypeId()I

    move-result v0

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter "tp"

    .prologue
    .line 64
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;->mBackgroundImageSpan:Lcom/mediatek/text/style/BackgroundImageSpan;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/text/style/BackgroundImageSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    return-void
.end method
