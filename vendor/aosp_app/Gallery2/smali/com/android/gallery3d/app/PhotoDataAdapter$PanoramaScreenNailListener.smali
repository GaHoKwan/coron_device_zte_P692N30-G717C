.class Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaScreenNailListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mItem:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 3112
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3113
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailListener;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 3114
    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3118
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailListener;->mFuture:Lcom/android/gallery3d/util/Future;

    .line 3119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3120
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailListener;->mItem:Lcom/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailListener;->mFuture:Lcom/android/gallery3d/util/Future;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updatePanoramaScreenNail(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/util/Future;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4900(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/util/Future;)V

    .line 3125
    return-void
.end method
