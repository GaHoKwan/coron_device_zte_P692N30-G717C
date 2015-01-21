.class Lcom/android/gallery3d/app/TimeBar$LayoutExt;
.super Ljava/lang/Object;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/TimeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/TimeBar;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/TimeBar;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->this$0:Lcom/android/gallery3d/app/TimeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/TimeBar;Lcom/android/gallery3d/app/TimeBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/TimeBar$LayoutExt;-><init>(Lcom/android/gallery3d/app/TimeBar;)V

    return-void
.end method


# virtual methods
.method public getBarHeight(I)I
    .locals 2
    .parameter "originalBarHeight"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->this$0:Lcom/android/gallery3d/app/TimeBar;

    iget v0, v0, Lcom/android/gallery3d/app/TimeBar;->mVPaddingInPx:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->this$0:Lcom/android/gallery3d/app/TimeBar;

    iget v1, v1, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->this$0:Lcom/android/gallery3d/app/TimeBar;

    iget-object v1, v1, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getInfoBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter "parent"
    .parameter "timeBounds"

    .prologue
    .line 397
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->this$0:Lcom/android/gallery3d/app/TimeBar;

    iget v5, v5, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 400
    .local v0, bounds:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getPreferredHeight(I)I
    .locals 2
    .parameter "originalPreferredHeight"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->this$0:Lcom/android/gallery3d/app/TimeBar;

    iget v0, v0, Lcom/android/gallery3d/app/TimeBar;->mVPaddingInPx:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->this$0:Lcom/android/gallery3d/app/TimeBar;

    iget v1, v1, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->this$0:Lcom/android/gallery3d/app/TimeBar;

    iget-object v1, v1, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getProgressMargin(I)I
    .locals 1
    .parameter "originalMargin"

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public getProgressOffset()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->this$0:Lcom/android/gallery3d/app/TimeBar;

    iget-object v0, v0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTimeOffset()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->this$0:Lcom/android/gallery3d/app/TimeBar;

    iget v0, v0, Lcom/android/gallery3d/app/TimeBar;->mVPaddingInPx:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method
