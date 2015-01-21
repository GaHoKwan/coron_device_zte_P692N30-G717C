.class Lcom/mediatek/gallery3d/conshots/ContainerPage$6;
.super Ljava/lang/Object;
.source "ContainerPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/conshots/ContainerPage;->showDetails()V
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
    .line 609
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$6;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$6;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #calls: Lcom/mediatek/gallery3d/conshots/ContainerPage;->hideDetails()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1600(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V

    .line 612
    return-void
.end method
