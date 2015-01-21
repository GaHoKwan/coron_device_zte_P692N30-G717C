.class Lcom/android/camera/actor/MavActor$5;
.super Ljava/lang/Object;
.source "MavActor.java"

# interfaces
.implements Lcom/android/camera/Camera$OnFullScreenChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/MavActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/MavActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/MavActor;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/camera/actor/MavActor$5;->this$0:Lcom/android/camera/actor/MavActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 173
    const-string v0, "MavActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFullScreenChanged full = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$5;->this$0:Lcom/android/camera/actor/MavActor;

    #calls: Lcom/android/camera/actor/MavActor;->lockOrientation()V
    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$200(Lcom/android/camera/actor/MavActor;)V

    .line 178
    :cond_0
    return-void
.end method
