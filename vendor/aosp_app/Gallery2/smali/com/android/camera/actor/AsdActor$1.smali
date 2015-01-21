.class Lcom/android/camera/actor/AsdActor$1;
.super Ljava/lang/Object;
.source "AsdActor.java"

# interfaces
.implements Landroid/hardware/Camera$ASDCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/AsdActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/AsdActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/AsdActor;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/camera/actor/AsdActor$1;->this$0:Lcom/android/camera/actor/AsdActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetecte(I)V
    .locals 3
    .parameter "scene"

    .prologue
    .line 39
    const-string v0, "AsdActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsdActor onDetecte scene="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/android/camera/actor/AsdActor$1;->this$0:Lcom/android/camera/actor/AsdActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIndicatorManager()Lcom/android/camera/manager/IndicatorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/IndicatorManager;->onDetectedSceneMode(I)V

    .line 41
    return-void
.end method
