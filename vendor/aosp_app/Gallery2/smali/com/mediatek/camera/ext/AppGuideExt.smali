.class public Lcom/mediatek/camera/ext/AppGuideExt;
.super Ljava/lang/Object;
.source "AppGuideExt.java"

# interfaces
.implements Lcom/mediatek/camera/ext/IAppGuideExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showCameraGuide(Landroid/app/Activity;Ljava/lang/String;Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;)V
    .locals 0
    .parameter "activity"
    .parameter "type"
    .parameter "finishListener"

    .prologue
    .line 12
    invoke-interface {p3}, Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;->onGuideFinish()V

    .line 13
    return-void
.end method
