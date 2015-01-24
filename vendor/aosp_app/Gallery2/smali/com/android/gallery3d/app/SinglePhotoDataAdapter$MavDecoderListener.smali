.class Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MavDecoderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "type"

    .prologue
    .line 832
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput p3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;->mType:I

    .line 834
    iput-object p2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 835
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
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;->mFuture:Lcom/android/gallery3d/util/Future;

    .line 840
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMAVSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;->mFuture:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$800(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$800(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 844
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;->mFuture:Lcom/android/gallery3d/util/Future;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;->mItem:Lcom/android/gallery3d/data/MediaItem;

    iget v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;->mType:I

    #calls: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->updateMavDecoder(Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1600(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V

    .line 849
    return-void
.end method