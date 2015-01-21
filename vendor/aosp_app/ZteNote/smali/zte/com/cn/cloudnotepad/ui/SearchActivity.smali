.class public Lzte/com/cn/cloudnotepad/ui/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# instance fields
.field public mActionBar:Landroid/app/ActionBar;

.field public mEmptyHint:Landroid/widget/TextView;

.field public mExpandableListView:Landroid/widget/ExpandableListView;

.field public mNoteId:I

.field private mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

.field private mSearch:Z

.field public mSearchAdapter:Lzte/com/cn/cloudnotepad/ui/SearchAdapter;

.field public mSearchString:Ljava/lang/String;

.field private mSearchTitle:Landroid/widget/TextView;

.field private mSearchingString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearch:Z

    .line 23
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/SearchActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchingString:Ljava/lang/String;

    return-object v0
.end method

.method private initActionBar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 58
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mActionBar:Landroid/app/ActionBar;

    .line 59
    const v0, 0x7f09008c

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchingString:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchingString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    return-void
.end method

.method private startSearch()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;-><init>(Lzte/com/cn/cloudnotepad/ui/SearchActivity;)V

    .line 130
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    return-void
.end method

.method private updateView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 152
    const v1, 0x7f09008b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v3, v3, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, searchResult:Ljava/lang/String;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mEmptyHint:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mEmptyHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected doneSearch()V
    .locals 2

    .prologue
    .line 143
    const v0, 0x7f0600b9

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 144
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchAdapter:Lzte/com/cn/cloudnotepad/ui/SearchAdapter;

    .line 145
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchAdapter:Lzte/com/cn/cloudnotepad/ui/SearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 146
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->updateView()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearch:Z

    .line 148
    return-void
.end method

.method public getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    return-object v0
.end method

.method protected getSearchData()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/cloudnotepad/data/NotesData;->getSearchNoteDateGroupList(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v2, 0x7f030025

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->setContentView(I)V

    .line 46
    new-instance v2, Lzte/com/cn/cloudnotepad/data/NotesData;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/data/NotesData;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    .line 47
    const v2, 0x7f0600ba

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mEmptyHint:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "query"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, searchStringParameter:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .end local v1           #searchStringParameter:Ljava/lang/String;
    :cond_0
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->initActionBar()V

    .line 52
    const/4 v2, 0x1

    iput-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearch:Z

    .line 53
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->startSearch()V

    .line 54
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 166
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 168
    :pswitch_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->finish()V

    .line 169
    const/4 v1, 0x1

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    sput-boolean v4, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 85
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 86
    .local v0, lAvailableFlash:J
    const-wide/32 v2, 0x300000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 87
    const/4 v2, 0x1

    sput-boolean v2, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 88
    const v2, 0x7f09009e

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 89
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->finish()V

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearch:Z

    if-nez v2, :cond_1

    .line 93
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->getSearchData()V

    .line 94
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchAdapter:Lzte/com/cn/cloudnotepad/ui/SearchAdapter;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_1
    const-string v2, "wangna"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
