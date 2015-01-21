.class Lcom/android/camera/Camera$MyOrientationEventListener$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$MyOrientationEventListener;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$MyOrientationEventListener;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$MyOrientationEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2755
    iput-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener$1;->this$1:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener$1;->this$1:Lcom/android/camera/Camera$MyOrientationEventListener;

    iget-object v0, v0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->setRotationToParameters()V

    .line 2759
    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener$1;->this$1:Lcom/android/camera/Camera$MyOrientationEventListener;

    iget-object v0, v0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->applyParametersToServer()V

    .line 2760
    return-void
.end method
