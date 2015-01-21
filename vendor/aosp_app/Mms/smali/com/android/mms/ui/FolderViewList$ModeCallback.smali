.class Lcom/android/mms/ui/FolderViewList$ModeCallback;
.super Ljava/lang/Object;
.source "FolderViewList.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderViewList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mAddShort:Landroid/view/MenuItem;

.field private mDeleteitem:Landroid/view/MenuItem;

.field private mIsSelectAll:Z

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

.field private mSelectionMenuItem:Landroid/view/MenuItem;

.field private mSelectionTitle:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/mms/ui/FolderViewList;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/FolderViewList;)V
    .locals 1
    .parameter

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mIsSelectAll:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/FolderViewList;Lcom/android/mms/ui/FolderViewList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1541
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FolderViewList$ModeCallback;-><init>(Lcom/android/mms/ui/FolderViewList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/FolderViewList$ModeCallback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1541
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList$ModeCallback;->updateActionMode()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/FolderViewList$ModeCallback;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1541
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FolderViewList$ModeCallback;->isSelectAll(Z)V

    return-void
.end method

.method private cancelSelect()V
    .locals 2

    .prologue
    .line 1695
    const-string v0, "FolderViewList"

    const-string v1, "cancel select messages."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/FolderViewListAdapter;->clearbackupstate()V

    .line 1697
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/FolderViewListAdapter;->clearstate()V

    .line 1698
    return-void
.end method

.method private isSelectAll(Z)V
    .locals 7
    .parameter "check"

    .prologue
    .line 1676
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList$ModeCallback;->cancelSelect()V

    .line 1677
    if-eqz p1, :cond_2

    .line 1678
    const-string v4, "FolderViewList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select all messages, count is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const-wide/16 v1, -0x1

    .line 1680
    .local v1, itemId:J
    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    .line 1681
    .local v3, selectCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1682
    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/FolderViewListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1683
    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/android/mms/ui/FolderViewListAdapter;->setSelectedState(J)V

    .line 1681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1685
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mDeleteitem:Landroid/view/MenuItem;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1690
    .end local v0           #i:I
    .end local v1           #itemId:J
    .end local v3           #selectCount:I
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1691
    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1693
    :cond_1
    return-void

    .line 1687
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mDeleteitem:Landroid/view/MenuItem;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateActionMode()V
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/FolderViewListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    iget-object v0, v0, Lcom/android/mms/ui/FolderViewList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    iget-object v0, v0, Lcom/android/mms/ui/FolderViewList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1709
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList$ModeCallback;->updateSelectionTitle()V

    .line 1710
    return-void
.end method

.method private updateSelectionTitle()V
    .locals 7

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/FolderViewListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/FolderViewListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1716
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mSelectionMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/FolderViewListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1718
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mSelectionMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0b00b0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mSelectionMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0b0074

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1621
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1632
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1623
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/FolderViewListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #calls: Lcom/android/mms/ui/FolderViewList;->confirmMultiDelete()V
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$3300(Lcom/android/mms/ui/FolderViewList;)V

    goto :goto_0

    .line 1626
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1621
    :pswitch_data_0
    .packed-switch 0x7f0f0054
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8
    .parameter "mode"
    .parameter "menu"

    .prologue
    const v7, 0x7f0f007d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1550
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 1552
    .local v1, inflater:Landroid/view/MenuInflater;
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #setter for: Lcom/android/mms/ui/FolderViewList;->mDisableSearchFlag:Z
    invoke-static {v2, v6}, Lcom/android/mms/ui/FolderViewList;->access$2902(Lcom/android/mms/ui/FolderViewList;Z)Z

    .line 1553
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/FolderViewListAdapter;->clearstate()V

    .line 1554
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/FolderViewListAdapter;->clearbackupstate()V

    .line 1556
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mIsNeedRestoreAdapterState:Z
    invoke-static {v2}, Lcom/android/mms/ui/FolderViewList;->access$3000(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1557
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListSelectedItem:[J
    invoke-static {v2}, Lcom/android/mms/ui/FolderViewList;->access$3100(Lcom/android/mms/ui/FolderViewList;)[J

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1558
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListSelectedItem:[J
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$3100(Lcom/android/mms/ui/FolderViewList;)[J

    move-result-object v3

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/FolderViewListAdapter;->setSelectedState(J)V

    .line 1557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1560
    :cond_0
    const-string v2, "FolderViewList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateActionMode: saved selected number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/FolderViewListAdapter;->getSelectedNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #setter for: Lcom/android/mms/ui/FolderViewList;->mIsNeedRestoreAdapterState:Z
    invoke-static {v2, v5}, Lcom/android/mms/ui/FolderViewList;->access$3002(Lcom/android/mms/ui/FolderViewList;Z)Z

    .line 1565
    .end local v0           #i:I
    :goto_1
    const v2, 0x7f0e0003

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1567
    const v2, 0x7f0f0054

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mDeleteitem:Landroid/view/MenuItem;

    .line 1570
    const v2, 0x7f0f01c7

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mAddShort:Landroid/view/MenuItem;

    .line 1571
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mAddShort:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1573
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1574
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 1577
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    .line 1581
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1582
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0b032e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1586
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-virtual {v2}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setLongClickable(Z)V

    .line 1587
    return v6

    .line 1563
    :cond_2
    const-string v2, "FolderViewList"

    const-string v3, "onCreateActionMode: no need to restore adapter state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/FolderViewListAdapter;->clearstate()V

    .line 1637
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/FolderViewList;->mDisableSearchFlag:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/FolderViewList;->access$2902(Lcom/android/mms/ui/FolderViewList;Z)Z

    .line 1638
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mDeletedThreadIds:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1600(Lcom/android/mms/ui/FolderViewList;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1640
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 1641
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/mms/ui/FolderViewList;->mActionMode:Landroid/view/ActionMode;

    .line 1642
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1645
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1591
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1592
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1594
    .local v1, v:Landroid/view/ViewGroup;
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1596
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0f007d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    .line 1600
    .end local v1           #v:Landroid/view/ViewGroup;
    :cond_0
    new-instance v0, Lcom/android/mms/ui/CustomMenu;

    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-direct {v0, v2}, Lcom/android/mms/ui/CustomMenu;-><init>(Landroid/content/Context;)V

    .line 1601
    .local v0, customMenu:Lcom/android/mms/ui/CustomMenu;
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    const v3, 0x7f0e0008

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/CustomMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    .line 1602
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    const v3, 0x7f0f01d0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mSelectionMenuItem:Landroid/view/MenuItem;

    .line 1603
    new-instance v2, Lcom/android/mms/ui/FolderViewList$ModeCallback$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/FolderViewList$ModeCallback$1;-><init>(Lcom/android/mms/ui/FolderViewList$ModeCallback;)V

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1617
    const/4 v2, 0x1

    return v2
.end method

.method public setItemChecked(IZ)V
    .locals 10
    .parameter "position"
    .parameter "checked"

    .prologue
    const/4 v9, 0x1

    .line 1648
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/FolderViewListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1649
    .local v1, itemId:J
    const-string v6, "FolderViewList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "itemId ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " checked ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-virtual {v6}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1651
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1652
    .local v4, threadId:J
    if-eqz p2, :cond_1

    .line 1653
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mDeletedThreadIds:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/mms/ui/FolderViewList;->access$1600(Lcom/android/mms/ui/FolderViewList;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1654
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/android/mms/ui/FolderViewListAdapter;->setSelectedState(J)V

    .line 1659
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/FolderViewListAdapter;->getSelectedNumber()I

    move-result v3

    .line 1660
    .local v3, num:I
    if-lez v3, :cond_3

    .line 1662
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mDeleteitem:Landroid/view/MenuItem;

    if-eqz v6, :cond_0

    .line 1663
    if-lez v3, :cond_2

    .line 1664
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mDeleteitem:Landroid/view/MenuItem;

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1672
    :cond_0
    :goto_1
    const-string v6, "FolderViewList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setItemChecked:checked count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    return-void

    .line 1656
    .end local v3           #num:I
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mDeletedThreadIds:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/mms/ui/FolderViewList;->access$1600(Lcom/android/mms/ui/FolderViewList;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1657
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/android/mms/ui/FolderViewListAdapter;->removeSelectedState(J)V

    goto :goto_0

    .line 1666
    .restart local v3       #num:I
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->mDeleteitem:Landroid/view/MenuItem;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1669
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    iget-object v6, v6, Lcom/android/mms/ui/FolderViewList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_0

    .line 1670
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ModeCallback;->this$0:Lcom/android/mms/ui/FolderViewList;

    iget-object v6, v6, Lcom/android/mms/ui/FolderViewList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v6}, Landroid/view/ActionMode;->finish()V

    goto :goto_1
.end method
