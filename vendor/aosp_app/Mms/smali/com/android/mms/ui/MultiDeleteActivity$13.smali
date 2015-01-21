.class Lcom/android/mms/ui/MultiDeleteActivity$13;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity;->forwardMessage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$13;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1870
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$13;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const v1, 0x7f0b01e2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1871
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$13;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v0

    if-lez v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$13;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1602(Lcom/android/mms/ui/MultiDeleteActivity;Z)Z

    .line 1873
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$13;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$13;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1600(Lcom/android/mms/ui/MultiDeleteActivity;)Z

    move-result v1

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->markCheckedState(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$5200(Lcom/android/mms/ui/MultiDeleteActivity;Z)V

    .line 1874
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$13;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1800(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$13;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1800(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1878
    :cond_0
    return-void
.end method
