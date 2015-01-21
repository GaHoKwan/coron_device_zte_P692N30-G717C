.class Lcom/mediatek/gallery3d/conshots/ContainerPage$5;
.super Ljava/lang/Object;
.source "ContainerPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;


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
    .line 573
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$5;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$5;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-virtual {v0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPopUpItemClicked(I)Z
    .locals 1
    .parameter "itemId"

    .prologue
    .line 578
    const/4 v0, 0x1

    return v0
.end method
