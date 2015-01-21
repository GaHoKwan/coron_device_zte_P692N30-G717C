.class Lcom/mediatek/gallery3d/conshots/ContainerPage$3;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "ContainerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/conshots/ContainerPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$3;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 451
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 464
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 453
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$3;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/gallery3d/conshots/ContainerPage;->pickPhoto(I)V
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1000(Lcom/mediatek/gallery3d/conshots/ContainerPage;I)V

    .line 466
    :goto_0
    return-void

    .line 457
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$3;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #calls: Lcom/mediatek/gallery3d/conshots/ContainerPage;->onUpPressed()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V

    goto :goto_0

    .line 460
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$3;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget-object v0, v0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 461
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$3;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #calls: Lcom/mediatek/gallery3d/conshots/ContainerPage;->onUpPressed()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V

    goto :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
