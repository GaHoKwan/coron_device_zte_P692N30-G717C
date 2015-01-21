.class Lcom/android/mms/ui/ConversationList$ModeCallback;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private final UPDATE_SELECTED_TITLE:I

.field private mCheckedNum:I

.field private mCheckedPosition:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteItem:Landroid/view/MenuItem;

.field private mIsSelectAll:Z

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectedAllHandler:Landroid/os/Handler;

.field private mSelectedThreadIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionTitle:Landroid/widget/Button;

.field private maddshortcutItem:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1812
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1825
    iput v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    .line 1830
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mIsSelectAll:Z

    .line 1832
    iput v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->UPDATE_SELECTED_TITLE:I

    .line 2292
    new-instance v0, Lcom/android/mms/ui/ConversationList$ModeCallback$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$ModeCallback$7;-><init>(Lcom/android/mms/ui/ConversationList$ModeCallback;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedAllHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/ConversationList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1812
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationList$ModeCallback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1812
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList$ModeCallback;->updateActionMode()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ConversationList$ModeCallback;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ConversationList$ModeCallback;Landroid/view/ActionMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1812
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList$ModeCallback;->setAllItemChecked(Landroid/view/ActionMode;Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/ConversationList$ModeCallback;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/ConversationList$ModeCallback;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedAllHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/ConversationList$ModeCallback;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1812
    iget v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/mms/ui/ConversationList$ModeCallback;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1812
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mIsSelectAll:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ConversationList$ModeCallback;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mDeleteItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method private setAllItemChecked(Landroid/view/ActionMode;Z)V
    .locals 4
    .parameter "mode"
    .parameter "checked"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2143
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #setter for: Lcom/android/mms/ui/ConversationList;->mIsRunAsyncTask:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->access$3902(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 2145
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mIsSelectAll:Z

    .line 2146
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    new-instance v1, Lcom/android/mms/ui/AsyncDialog;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    #setter for: Lcom/android/mms/ui/ConversationList;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->access$4102(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/AsyncDialog;)Lcom/android/mms/ui/AsyncDialog;

    .line 2147
    if-eqz p2, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mDeleteItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2150
    :cond_0
    if-eqz p2, :cond_1

    .line 2151
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->maddshortcutItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2153
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$4100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationList$ModeCallback$5;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/ui/ConversationList$ModeCallback$5;-><init>(Lcom/android/mms/ui/ConversationList$ModeCallback;Z)V

    new-instance v2, Lcom/android/mms/ui/ConversationList$ModeCallback$6;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/ConversationList$ModeCallback$6;-><init>(Lcom/android/mms/ui/ConversationList$ModeCallback;Z)V

    const v3, 0x7f0b0110

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 2257
    return-void
.end method

.method private updateActionMode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2113
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mDeleteItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 2114
    iget v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    if-lez v0, :cond_4

    .line 2115
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mDeleteItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2121
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->maddshortcutItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 2122
    iget v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    if-lez v0, :cond_5

    .line 2123
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->maddshortcutItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2128
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2129
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2132
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$2500(Lcom/android/mms/ui/ConversationList;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2133
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$2500(Lcom/android/mms/ui/ConversationList;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2135
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    iget v3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2137
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->updateSelectionTitle()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$4000(Lcom/android/mms/ui/ConversationList;)V

    .line 2138
    return-void

    .line 2117
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mDeleteItem:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2125
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->maddshortcutItem:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method


# virtual methods
.method public confirmSyncCheckedPositons()V
    .locals 13

    .prologue
    .line 2265
    const-string v6, "ConversationList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "confirmSyncCheckedPostions begin and mIsSelectAll is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mIsSelectAll:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mIsSelectAll:Z

    if-eqz v6, :cond_0

    .line 2289
    :goto_0
    return-void

    .line 2270
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2271
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2272
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v6}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 2273
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationListAdapter;

    .line 2274
    .local v0, adapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v4

    .line 2275
    .local v4, num:I
    const/4 v5, 0x0

    .local v5, position:I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 2276
    invoke-virtual {v3, v5}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 2277
    .local v2, cursor:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6, v2}, Lcom/android/mms/data/Conversation;->getConvFromCache(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 2278
    .local v1, conv:Lcom/android/mms/data/Conversation;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2279
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2280
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2275
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2283
    .end local v1           #conv:Lcom/android/mms/data/Conversation;
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    iput v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    .line 2285
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0001

    iget v9, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2288
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->updateSelectionTitle()V
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$4000(Lcom/android/mms/ui/ConversationList;)V

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 1945
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 2042
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2043
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 2048
    :cond_0
    :goto_0
    return v7

    .line 1947
    :sswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1948
    const-string v4, "ConversationList"

    const-string v5, "ConversationList->ModeCallback: delete"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$1300(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 1951
    :cond_1
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1956
    :sswitch_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1957
    const-string v4, "ConversationList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "threadIds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    #calls: Lcom/android/mms/ui/ConversationList;->showExportDialog(Ljava/util/HashSet;Landroid/view/ActionMode;)V
    invoke-static {v4, v5, p1}, Lcom/android/mms/ui/ConversationList;->access$3800(Lcom/android/mms/ui/ConversationList;Ljava/util/HashSet;Landroid/view/ActionMode;)V

    goto :goto_0

    .line 1961
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/ConversationList$ModeCallback$2;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ConversationList$ModeCallback$2;-><init>(Lcom/android/mms/ui/ConversationList$ModeCallback;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1970
    :sswitch_2
    const-string v4, "ConversationList"

    const-string v5, "click shortcut!"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1972
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->addShortcutToLauncher(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 1974
    :cond_3
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 1978
    :sswitch_3
    const-string v4, "ConversationList"

    const-string v5, "click mark as spam!"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1980
    .local v3, threadIds2:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v1, Lcom/android/mms/ui/ConversationList$ModeCallback$3;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/mms/ui/ConversationList$ModeCallback$3;-><init>(Lcom/android/mms/ui/ConversationList$ModeCallback;Ljava/util/HashSet;Landroid/view/ActionMode;)V

    .line 2004
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2005
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b015d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v5

    const/16 v6, 0xea

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0007

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v5

    const/16 v6, 0x85

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2017
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v3           #threadIds2:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :sswitch_4
    const-string v4, "ConversationList"

    const-string v5, "click mark as nonspam!"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    .line 2019
    .local v2, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/ui/ConversationList$ModeCallback$4;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/ui/ConversationList$ModeCallback$4;-><init>(Lcom/android/mms/ui/ConversationList$ModeCallback;Ljava/util/HashSet;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 2037
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 1945
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0054 -> :sswitch_0
        0x7f0f01c5 -> :sswitch_1
        0x7f0f01c6 -> :sswitch_3
        0x7f0f01c7 -> :sswitch_2
        0x7f0f01c8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .parameter "mode"
    .parameter "menu"

    .prologue
    const v5, 0x7f0f007d

    const/4 v4, 0x1

    .line 1836
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1837
    .local v0, inflater:Landroid/view/MenuInflater;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    .line 1840
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    .line 1843
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1844
    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1848
    :goto_0
    const v1, 0x7f0f0054

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mDeleteItem:Landroid/view/MenuItem;

    .line 1849
    const v1, 0x7f0f01c7

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->maddshortcutItem:Landroid/view/MenuItem;

    .line 1851
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1852
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040019

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 1855
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    .line 1859
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1860
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0b032e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1864
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #setter for: Lcom/android/mms/ui/ConversationList;->mDisableSearchFalg:Z
    invoke-static {v1, v4}, Lcom/android/mms/ui/ConversationList;->access$3302(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 1867
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1869
    return v4

    .line 1846
    :cond_1
    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2054
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #setter for: Lcom/android/mms/ui/ConversationList;->mIsRunAsyncTask:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ConversationList;->access$3902(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 2056
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationListAdapter;

    .line 2060
    .local v0, adapter:Lcom/android/mms/ui/ConversationListAdapter;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->uncheckSelect(Ljava/util/HashSet;)V

    .line 2061
    iput-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    .line 2063
    iput-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    .line 2065
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #setter for: Lcom/android/mms/ui/ConversationList;->mDisableSearchFalg:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ConversationList;->access$3302(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 2068
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 2069
    iput v3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    .line 2070
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #setter for: Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, v4}, Lcom/android/mms/ui/ConversationList;->access$2502(Lcom/android/mms/ui/ConversationList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2071
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2072
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    .line 2075
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 11
    .parameter "mode"
    .parameter "menu"

    .prologue
    const v10, 0x7f0f01c8

    const v9, 0x7f0f01c7

    const v8, 0x7f0f01c6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1874
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 1875
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040019

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1877
    .local v2, v:Landroid/view/ViewGroup;
    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1879
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0f007d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    .line 1884
    .end local v2           #v:Landroid/view/ViewGroup;
    :cond_0
    new-instance v0, Lcom/android/mms/ui/CustomMenu;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, v3}, Lcom/android/mms/ui/CustomMenu;-><init>(Landroid/content/Context;)V

    .line 1885
    .local v0, customMenu:Lcom/android/mms/ui/CustomMenu;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    const v5, 0x7f0e0008

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/ui/CustomMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    move-result-object v4

    #setter for: Lcom/android/mms/ui/ConversationList;->mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ConversationList;->access$3402(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/CustomMenu$DropDownMenu;)Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    .line 1886
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$3400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    move-result-object v4

    const v5, 0x7f0f01d0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    #setter for: Lcom/android/mms/ui/ConversationList;->mSelectionMenuItem:Landroid/view/MenuItem;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ConversationList;->access$3502(Lcom/android/mms/ui/ConversationList;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 1887
    new-instance v3, Lcom/android/mms/ui/ConversationList$ModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationList$ModeCallback$1;-><init>(Lcom/android/mms/ui/ConversationList$ModeCallback;)V

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1902
    sget v3, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 1903
    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1904
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 1905
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1907
    :cond_1
    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1908
    if-eqz v1, :cond_2

    .line 1909
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1911
    :cond_2
    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1912
    if-eqz v1, :cond_3

    .line 1913
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1933
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1935
    const v3, 0x7f0f01c5

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1936
    if-eqz v1, :cond_4

    .line 1937
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1940
    :cond_4
    return v7

    .line 1916
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_5
    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1917
    .restart local v1       #item:Landroid/view/MenuItem;
    if-eqz v1, :cond_6

    .line 1918
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1919
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1924
    :cond_6
    :goto_1
    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1925
    if-eqz v1, :cond_7

    .line 1926
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1928
    :cond_7
    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1929
    if-eqz v1, :cond_3

    .line 1930
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1921
    :cond_8
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public setItemChecked(IZLandroid/database/Cursor;)V
    .locals 6
    .parameter "position"
    .parameter "checked"
    .parameter "cursor"

    .prologue
    .line 2078
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v4}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 2079
    .local v1, listView:Landroid/widget/ListView;
    if-nez p3, :cond_1

    .line 2080
    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/database/Cursor;

    .line 2085
    .restart local p3
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4, p3}, Lcom/android/mms/data/Conversation;->getFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 2086
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v4

    if-ne p2, v4, :cond_2

    .line 2108
    :cond_0
    :goto_1
    return-void

    .line 2082
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    :cond_1
    invoke-interface {p3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 2090
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/mms/data/Conversation;->setIsChecked(Z)V

    .line 2091
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    if-eqz v4, :cond_0

    .line 2094
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 2095
    .local v2, threadId:J
    if-eqz p2, :cond_3

    .line 2096
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2098
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2099
    iget v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    goto :goto_1

    .line 2102
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2104
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2105
    iget v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I

    goto :goto_1
.end method
