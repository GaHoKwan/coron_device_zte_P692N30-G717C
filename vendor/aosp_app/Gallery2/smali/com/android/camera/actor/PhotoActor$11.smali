.class Lcom/android/camera/actor/PhotoActor$11;
.super Ljava/lang/Object;
.source "PhotoActor.java"

# interfaces
.implements Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PhotoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$11;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerStart()V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public onTimerStop()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public onTimerTimeout()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$11;->this$0:Lcom/android/camera/actor/PhotoActor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 528
    return-void
.end method