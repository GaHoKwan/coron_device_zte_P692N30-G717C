.class public Lzte/com/cn/cloudnotepad/ui/SearchAdapter;
.super Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    move-object v0, p1

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ExpandableListView;)V

    .line 21
    check-cast p1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    .end local p1
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    .line 22
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;-><init>(Lzte/com/cn/cloudnotepad/ui/SearchAdapter;Landroid/content/Context;I)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->ZeroPositionAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    .line 23
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->ZeroPositionAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mGridItemAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    .line 24
    return-void
.end method

.method private updateView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 90
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f09008b

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v5, 0x1

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, searchResult:Ljava/lang/String;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mEmptyHint:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mEmptyHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 30
    invoke-super/range {p0 .. p5}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0600ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/widget/MyGridView;

    .line 32
    .local v0, mGridView:Lzte/com/cn/cloudnotepad/ui/widget/MyGridView;
    if-eqz p1, :cond_0

    .line 33
    new-instance v2, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;-><init>(Lzte/com/cn/cloudnotepad/ui/SearchAdapter;Landroid/content/Context;I)V

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mGridItemAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    .line 37
    :goto_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mGridItemAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    invoke-virtual {v0, v2}, Lzte/com/cn/cloudnotepad/ui/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    return-object v1

    .line 35
    :cond_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->ZeroPositionAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mGridItemAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->notifyDataSetChanged()V

    .line 85
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->updateView()V

    .line 86
    return-void
.end method

.method public onMoveItemSelected(ILzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
    .locals 5
    .parameter "which"
    .parameter "data"

    .prologue
    .line 68
    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "notebook"

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v0

    .line 74
    .local v0, notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    iget v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-virtual {v0, v2, v1}, Lzte/com/cn/cloudnotepad/data/NotesData;->updateNoteData(ILandroid/content/ContentValues;)V

    .line 75
    sget-object v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v4, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Lzte/com/cn/cloudnotepad/data/NotesData;->getSearchNoteDateGroupList(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->notifyDataSetChanged()V

    .line 78
    .end local v0           #notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
