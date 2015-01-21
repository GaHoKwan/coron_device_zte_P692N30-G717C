.class Lcom/android/camera/actor/PanoramaActor$6;
.super Ljava/lang/Object;
.source "PanoramaActor.java"

# interfaces
.implements Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;


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
    .line 172
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor$6;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBegin()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$6;->this$0:Lcom/android/camera/actor/PanoramaActor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->showGuideString(I)V

    .line 176
    return-void
.end method
