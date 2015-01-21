.class Lcom/android/camera/actor/PanoramaActor$1;
.super Ljava/lang/Object;
.source "PanoramaActor.java"

# interfaces
.implements Lcom/android/camera/FileSaver$FileSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PanoramaActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PanoramaActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PanoramaActor;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor$1;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Lcom/android/camera/SaveRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$1;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    return-void
.end method
