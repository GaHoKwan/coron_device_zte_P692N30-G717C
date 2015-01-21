.class Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModeCallback"
.end annotation


# instance fields
.field private mAddStar:Landroid/view/MenuItem;

.field mClosedByUser:Z

.field private mMarkRead:Landroid/view/MenuItem;

.field private mMarkUnread:Landroid/view/MenuItem;

.field private mMove:Landroid/view/MenuItem;

.field private mRemoveStar:Landroid/view/MenuItem;

.field private mSelectionButton:Landroid/widget/Button;

.field private mSelectionMenu:Landroid/widget/PopupMenu;

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1873
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mSelectionMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private startSelectionMode(Landroid/view/ActionMode;)V
    .locals 5
    .parameter "actionMode"

    .prologue
    .line 1905
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1906
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1908
    .local v1, customView:Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1909
    const v2, 0x7f0f006a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mSelectionButton:Landroid/widget/Button;

    .line 1910
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mSelectionButton:Landroid/widget/Button;

    invoke-direct {v2, v0, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mSelectionMenu:Landroid/widget/PopupMenu;

    .line 1911
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mSelectionMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0e0008

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mSelectionMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1912
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mSelectionMenu:Landroid/widget/PopupMenu;

    new-instance v3, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;

    invoke-direct {v3, p0, p1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1917
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mSelectionButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$2;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1922
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1923
    return-void
.end method

.method private updateSelectionMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1930
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$3800(Lcom/android/email/activity/MessageListFragment;)I

    move-result v1

    .line 1932
    .local v1, num:I
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mSelectionButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0005

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1934
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mSelectionMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0f0138

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1935
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1936
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->isSelectedAll()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1937
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1938
    const v2, 0x7f080037

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1944
    :cond_0
    :goto_0
    return-void

    .line 1940
    :cond_1
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1941
    const v2, 0x7f080036

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1963
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    .line 1964
    .local v0, selectedConversations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2002
    :goto_0
    return v2

    .line 1967
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1984
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->showConfirmIfNeeded(Ljava/util/Set;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListFragment;->access$4200(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V

    goto :goto_0

    .line 1970
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->toggleRead(Ljava/util/Set;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListFragment;->access$4000(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V

    goto :goto_0

    .line 1973
    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onAdvancingOpAccepted(Ljava/util/Set;)V

    .line 1974
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->toggleRead(Ljava/util/Set;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListFragment;->access$4000(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V

    goto :goto_0

    .line 1980
    :pswitch_4
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->toggleFavorite(Ljava/util/Set;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListFragment;->access$4100(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V

    goto :goto_0

    .line 1988
    :pswitch_5
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->showMoveMessagesDialog(Ljava/util/Set;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListFragment;->access$4300(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V

    goto :goto_0

    .line 1992
    :pswitch_6
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->isSelectedAll()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1993
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->clearSelection()V

    .line 1997
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->updateSelectionMenu()V

    .line 1998
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    goto :goto_0

    .line 1995
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->selectAll()V

    goto :goto_1

    .line 1967
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0130
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1888
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/email/activity/MessageListFragment;->access$3602(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1889
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->startSelectionMode(Landroid/view/ActionMode;)V

    .line 1890
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1891
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1892
    const v1, 0x7f0f0132

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    .line 1893
    const v1, 0x7f0f0133

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    .line 1894
    const v1, 0x7f0f0134

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    .line 1895
    const v1, 0x7f0f0135

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    .line 1896
    const v1, 0x7f0f0131

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    .line 1897
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mSelectionMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2010
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$3602(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2011
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$4400(Lcom/android/email/activity/MessageListFragment;)V

    .line 2018
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1949
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->updateSelectionMenu()V

    .line 1951
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainNonStarredMessage()Z

    move-result v0

    .line 1952
    .local v0, nonStarExists:Z
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainReadMessage()Z

    move-result v1

    .line 1953
    .local v1, readExists:Z
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    if-nez v1, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1954
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1955
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1956
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    move v4, v3

    :cond_0
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1957
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mShowMoveCommand:Z
    invoke-static {v4}, Lcom/android/email/activity/MessageListFragment;->access$3900(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1958
    return v3

    :cond_1
    move v2, v4

    .line 1953
    goto :goto_0
.end method
