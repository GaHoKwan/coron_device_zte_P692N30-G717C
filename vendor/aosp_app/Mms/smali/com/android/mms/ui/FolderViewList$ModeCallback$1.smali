.class Lcom/android/mms/ui/FolderViewList$ModeCallback$1;
.super Ljava/lang/Object;
.source "FolderViewList.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderViewList$ModeCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/FolderViewList$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderViewList$ModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback$1;->this$1:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 1606
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback$1;->this$1:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback$1;->this$1:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    iget-object v1, v1, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/FolderViewListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback$1;->this$1:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    #calls: Lcom/android/mms/ui/FolderViewList$ModeCallback;->isSelectAll(Z)V
    invoke-static {v0, v2}, Lcom/android/mms/ui/FolderViewList$ModeCallback;->access$3200(Lcom/android/mms/ui/FolderViewList$ModeCallback;Z)V

    .line 1613
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback$1;->this$1:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    #calls: Lcom/android/mms/ui/FolderViewList$ModeCallback;->updateActionMode()V
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList$ModeCallback;->access$1100(Lcom/android/mms/ui/FolderViewList$ModeCallback;)V

    .line 1614
    return v2

    .line 1610
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback$1;->this$1:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    const/4 v1, 0x1

    #calls: Lcom/android/mms/ui/FolderViewList$ModeCallback;->isSelectAll(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/FolderViewList$ModeCallback;->access$3200(Lcom/android/mms/ui/FolderViewList$ModeCallback;Z)V

    goto :goto_0
.end method
