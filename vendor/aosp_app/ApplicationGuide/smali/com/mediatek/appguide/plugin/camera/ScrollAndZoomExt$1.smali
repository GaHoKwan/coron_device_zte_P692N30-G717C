.class Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$1;
.super Ljava/lang/Object;
.source "ScrollAndZoomExt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;->showCameraGuide(Landroid/app/Activity;Ljava/lang/String;Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;

.field final synthetic val$finishListener:Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;


# direct methods
.method constructor <init>(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$1;->this$0:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;

    iput-object p2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$1;->val$finishListener:Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$1;->val$finishListener:Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;

    invoke-interface {v0}, Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;->onGuideFinish()V

    .line 107
    return-void
.end method
