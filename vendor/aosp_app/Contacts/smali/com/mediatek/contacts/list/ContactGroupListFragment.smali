.class public Lcom/mediatek/contacts/list/ContactGroupListFragment;
.super Lcom/android/contacts/group/GroupBrowseListFragment;
.source "ContactGroupListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/list/ContactGroupListFragment$GroupQueryTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/mediatek/contacts/list/ContactGroupListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/ContactGroupListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;-><init>()V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/list/ContactGroupListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/mediatek/contacts/list/ContactGroupListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/list/ContactGroupListFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactGroupListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected configAdapter()Lcom/android/contacts/group/GroupBrowseListAdapter;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/mediatek/contacts/list/ContactGroupListAdapter;

    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactGroupListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/list/ContactGroupListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected configOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/mediatek/contacts/list/ContactGroupListFragment$1;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/list/ContactGroupListFragment$1;-><init>(Lcom/mediatek/contacts/list/ContactGroupListFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 43
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 48
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactGroupListFragment;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->onDetach()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/list/ContactGroupListFragment;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public onOkClick()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 86
    sget-object v5, Lcom/mediatek/contacts/list/ContactGroupListFragment;->TAG:Ljava/lang/String;

    const-string v6, "tap OK when no item selected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 111
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v4, selectedGroupIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListAdapter;

    .line 93
    .local v0, adapter:Lcom/android/contacts/group/GroupBrowseListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    .line 95
    .local v2, listSize:I
    const/4 v3, 0x0

    .local v3, position:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    invoke-virtual {v0, v3}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getItem(I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v1

    .line 98
    .local v1, item:Lcom/android/contacts/group/GroupListItem;
    invoke-virtual {v1}, Lcom/android/contacts/group/GroupListItem;->getGroupId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v1           #item:Lcom/android/contacts/group/GroupListItem;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    :cond_1
    sget-object v5, Lcom/mediatek/contacts/list/ContactGroupListFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " item is not checked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 104
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    sget-object v5, Lcom/mediatek/contacts/list/ContactGroupListFragment;->TAG:Ljava/lang/String;

    const-string v6, "finally, no group selected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 110
    :cond_3
    new-instance v5, Lcom/mediatek/contacts/list/ContactGroupListFragment$GroupQueryTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/mediatek/contacts/list/ContactGroupListFragment$GroupQueryTask;-><init>(Lcom/mediatek/contacts/list/ContactGroupListFragment;Landroid/app/Activity;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/util/List;

    aput-object v4, v6, v8

    invoke-virtual {v5, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 78
    .local v1, checkstates:Landroid/util/SparseBooleanArray;
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/list/ContactGroupListAdapter;

    .line 79
    .local v0, adapter:Lcom/mediatek/contacts/list/ContactGroupListAdapter;
    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/list/ContactGroupListAdapter;->setSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 81
    invoke-super {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->onStart()V

    .line 82
    return-void
.end method
