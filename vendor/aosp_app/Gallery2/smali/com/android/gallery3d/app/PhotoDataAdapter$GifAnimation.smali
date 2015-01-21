.class Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifAnimation"
.end annotation


# instance fields
.field public animatedIndex:I

.field public currentFrame:I

.field public entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

.field public gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

.field public totalFrameCount:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2731
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;-><init>()V

    return-void
.end method
