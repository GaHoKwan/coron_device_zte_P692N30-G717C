.class Lcom/android/gallery3d/ui/ActionModeHandler$4;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler;->showStereoShareDialog(Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

.field final synthetic val$onlyShareAs2D:Z

.field final synthetic val$shareIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler;Landroid/content/Intent;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$4;->val$shareIntent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$4;->val$onlyShareAs2D:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 750
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 751
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$4;->val$shareIntent:Landroid/content/Intent;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->convertAndShare(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1400(Lcom/android/gallery3d/ui/ActionModeHandler;Landroid/content/Intent;)V

    .line 757
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 758
    return-void

    .line 753
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$4;->val$onlyShareAs2D:Z

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$4;->val$shareIntent:Landroid/content/Intent;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->safeStartIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1500(Lcom/android/gallery3d/ui/ActionModeHandler;Landroid/content/Intent;)V

    goto :goto_0
.end method
