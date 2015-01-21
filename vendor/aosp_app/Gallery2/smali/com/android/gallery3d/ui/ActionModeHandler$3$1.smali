.class Lcom/android/gallery3d/ui/ActionModeHandler$3$1;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler$3;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler$3;)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/Menu;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->updateSupportedMenuEnabled(Landroid/view/Menu;IZ)V

    .line 595
    return-void
.end method
