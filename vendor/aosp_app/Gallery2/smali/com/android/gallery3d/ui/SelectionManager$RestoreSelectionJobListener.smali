.class Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener;
.super Ljava/lang/Object;
.source "SelectionManager.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SelectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreSelectionJobListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/SelectionManager;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SelectionManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener;-><init>(Lcom/android/gallery3d/ui/SelectionManager;)V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SelectionManager;->access$200(Lcom/android/gallery3d/ui/SelectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener$1;-><init>(Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method
