.class Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob$1;
.super Ljava/lang/Object;
.source "SelectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob$1;->this$1:Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob$1;->this$1:Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;

    iget-object v0, v0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 483
    return-void
.end method
