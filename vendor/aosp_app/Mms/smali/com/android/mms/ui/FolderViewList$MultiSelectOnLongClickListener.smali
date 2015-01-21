.class Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;
.super Ljava/lang/Object;
.source "FolderViewList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderViewList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectOnLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderViewList;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/FolderViewList;)V
    .locals 0
    .parameter

    .prologue
    .line 1839
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/FolderViewList;Lcom/android/mms/ui/FolderViewList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1839
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;-><init>(Lcom/android/mms/ui/FolderViewList;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 1843
    const-string v0, "FolderViewList"

    const-string v1, "folder view: MultiSelectOnLongClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 1846
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    iget-object v2, v2, Lcom/android/mms/ui/FolderViewList;->mModeCallBack:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mms/ui/FolderViewList;->mActionMode:Landroid/view/ActionMode;

    .line 1847
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    iget-object v0, v0, Lcom/android/mms/ui/FolderViewList;->mModeCallBack:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    invoke-virtual {v0, p3, v3}, Lcom/android/mms/ui/FolderViewList$ModeCallback;->setItemChecked(IZ)V

    .line 1848
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    iget-object v0, v0, Lcom/android/mms/ui/FolderViewList;->mModeCallBack:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    #calls: Lcom/android/mms/ui/FolderViewList$ModeCallback;->updateActionMode()V
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList$ModeCallback;->access$1100(Lcom/android/mms/ui/FolderViewList$ModeCallback;)V

    .line 1849
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1852
    :cond_0
    return v3
.end method
