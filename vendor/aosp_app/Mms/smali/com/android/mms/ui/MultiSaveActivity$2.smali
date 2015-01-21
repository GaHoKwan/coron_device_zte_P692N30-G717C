.class Lcom/android/mms/ui/MultiSaveActivity$2;
.super Ljava/lang/Object;
.source "MultiSaveActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiSaveActivity;->setUpActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiSaveActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiSaveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/mms/ui/MultiSaveActivity$2;->this$0:Lcom/android/mms/ui/MultiSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity$2;->this$0:Lcom/android/mms/ui/MultiSaveActivity;

    #getter for: Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MultiSaveActivity;->access$000(Lcom/android/mms/ui/MultiSaveActivity;)Lcom/android/mms/ui/MultiSaveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiSaveListAdapter;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity$2;->this$0:Lcom/android/mms/ui/MultiSaveActivity;

    #calls: Lcom/android/mms/ui/MultiSaveActivity;->cancelSelectAll()V
    invoke-static {v0}, Lcom/android/mms/ui/MultiSaveActivity;->access$200(Lcom/android/mms/ui/MultiSaveActivity;)V

    .line 342
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity$2;->this$0:Lcom/android/mms/ui/MultiSaveActivity;

    #calls: Lcom/android/mms/ui/MultiSaveActivity;->selectAll()V
    invoke-static {v0}, Lcom/android/mms/ui/MultiSaveActivity;->access$300(Lcom/android/mms/ui/MultiSaveActivity;)V

    goto :goto_0
.end method
