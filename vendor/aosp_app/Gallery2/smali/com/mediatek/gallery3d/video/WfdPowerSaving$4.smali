.class Lcom/mediatek/gallery3d/video/WfdPowerSaving$4;
.super Ljava/lang/Object;
.source "WfdPowerSaving.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/video/WfdPowerSaving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$4;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$4;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$1000(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 358
    const-string v0, "Gallery2/WfdPowerSaving"

    const-string v1, "Presentation was dismissed."

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$4;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$1002(Lcom/mediatek/gallery3d/video/WfdPowerSaving;Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;)Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    .line 362
    :cond_0
    return-void
.end method
