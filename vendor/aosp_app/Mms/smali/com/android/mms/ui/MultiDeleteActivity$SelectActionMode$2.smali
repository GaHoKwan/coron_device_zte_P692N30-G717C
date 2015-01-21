.class Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$2;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->showMmsTipsDialog(Landroid/view/ActionMode;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;Landroid/view/ActionMode;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1365
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iput-object p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$2;->val$mode:Landroid/view/ActionMode;

    iput-object p3, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$2;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1367
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1368
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationHasRun:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3902(Lcom/android/mms/ui/MultiDeleteActivity;Z)Z

    .line 1369
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$2;->val$mode:Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$2;->val$item:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 1370
    return-void
.end method
