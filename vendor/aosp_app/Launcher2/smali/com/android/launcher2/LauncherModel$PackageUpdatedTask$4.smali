.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

.field final synthetic val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

.field final synthetic val$permanent:Z

.field final synthetic val$removedFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3061
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->val$removedFinal:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->val$permanent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3063
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v0, v1

    .line 3064
    .local v0, cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 3065
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->val$removedFinal:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->val$permanent:Z

    invoke-interface {v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAppWidgetRemoved(Ljava/util/ArrayList;Z)V

    .line 3067
    :cond_0
    return-void

    .line 3063
    .end local v0           #cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
