.class Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener$1;
.super Ljava/lang/Object;
.source "SelectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener;->onFutureDone(Lcom/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener$1;->this$1:Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener$1;->this$1:Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener;

    iget-object v0, v0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJobListener;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SelectionManager;->access$100(Lcom/android/gallery3d/ui/SelectionManager;)Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionRestoreDone()V

    .line 432
    return-void
.end method
