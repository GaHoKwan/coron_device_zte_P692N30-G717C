.class Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;
.super Ljava/lang/Object;
.source "TrimTimeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/TrimTimeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrimLayoutExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/TrimTimeBar;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/TrimTimeBar;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;->this$0:Lcom/android/gallery3d/app/TrimTimeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/TrimTimeBar;Lcom/android/gallery3d/app/TrimTimeBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;-><init>(Lcom/android/gallery3d/app/TrimTimeBar;)V

    return-void
.end method


# virtual methods
.method public getPreferredHeight(I)I
    .locals 1
    .parameter "originalPreferredHeight"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;->this$0:Lcom/android/gallery3d/app/TrimTimeBar;

    #getter for: Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/gallery3d/app/TrimTimeBar;->access$100(Lcom/android/gallery3d/app/TrimTimeBar;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getProgressOffset(I)I
    .locals 2
    .parameter "height"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;->this$0:Lcom/android/gallery3d/app/TrimTimeBar;

    iget-object v0, v0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public getTimeOffset()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;->this$0:Lcom/android/gallery3d/app/TrimTimeBar;

    iget v0, v0, Lcom/android/gallery3d/app/TimeBar;->mVPaddingInPx:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method
