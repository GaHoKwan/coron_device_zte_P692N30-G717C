.class Lcom/mediatek/gallery3d/conshots/ContainerPage$4;
.super Lcom/android/gallery3d/ui/SlotView$SimpleListener;
.source "ContainerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/conshots/ContainerPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$4;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$4;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #calls: Lcom/mediatek/gallery3d/conshots/ContainerPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1200(Lcom/mediatek/gallery3d/conshots/ContainerPage;I)V

    .line 555
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$4;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-virtual {v0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->onLongTap(I)V

    .line 570
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$4;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #calls: Lcom/mediatek/gallery3d/conshots/ContainerPage;->onSingleTapUp(I)V
    invoke-static {v0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1400(Lcom/mediatek/gallery3d/conshots/ContainerPage;I)V

    .line 565
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .parameter "followedByLongPress"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$4;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #calls: Lcom/mediatek/gallery3d/conshots/ContainerPage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1300(Lcom/mediatek/gallery3d/conshots/ContainerPage;Z)V

    .line 560
    return-void
.end method
