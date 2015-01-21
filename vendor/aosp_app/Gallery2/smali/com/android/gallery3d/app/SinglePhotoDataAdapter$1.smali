.class Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 181
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 215
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/util/Future;

    #calls: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V

    .line 212
    :goto_1
    return-void

    .line 192
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 196
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/util/Future;

    #calls: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeSecondThumbComplete(Lcom/android/gallery3d/util/Future;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V

    goto :goto_1

    .line 201
    :pswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    #calls: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V

    goto :goto_1

    .line 205
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->updateMavcontent(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$300(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;I)V

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$400(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setProgress(I)V

    goto :goto_1

    .line 211
    :pswitch_5
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/util/Future;

    #calls: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodePanoramaComplete(Lcom/android/gallery3d/util/Future;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$500(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V

    goto :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
