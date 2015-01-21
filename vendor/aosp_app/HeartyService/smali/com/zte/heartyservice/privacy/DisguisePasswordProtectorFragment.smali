.class public Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;
.super Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;
.source "DisguisePasswordProtectorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$1;,
        Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$DisguisedPasswordRecordLoader;,
        Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$HeaderViewHolder;
    }
.end annotation


# instance fields
.field mListContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->mListContainer:Landroid/view/View;

    .line 119
    return-void
.end method

.method private addPasswordRecord()V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected deleteReal(Ljava/util/List;Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;)Z
    .locals 1
    .parameter
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;",
            "Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, deleteList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300d7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$HeaderViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$HeaderViewHolder;-><init>(Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$1;)V

    .line 75
    .local v0, holder:Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$HeaderViewHolder;
    const v2, 0x7f0e031d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    .line 85
    .local v1, pwr:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-object p2

    .line 78
    .end local v0           #holder:Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$HeaderViewHolder;
    .end local v1           #pwr:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$HeaderViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$HeaderViewHolder;
    goto :goto_0
.end method

.method protected handleItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    .line 94
    .local v1, item:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "_id"

    iget-wide v3, v1, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->id:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->mIsDefaultLayout:Z

    .line 60
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->setHasOptionsMenu(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->mListContainer:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->mListContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 33
    .local v0, viewId:I
    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->addPasswordRecord()V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x7f0e00b2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$DisguisedPasswordRecordLoader;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->mCurState:I

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$DisguisedPasswordRecordLoader;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 167
    iget v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->mCurState:I

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    const v0, 0x7f0d0009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 45
    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0e00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, arg0:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;"
    invoke-super {p0, p1, p2}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    .line 109
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 110
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 179
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 186
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 181
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;->addPasswordRecord()V

    .line 182
    const/4 v1, 0x1

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0407
        :pswitch_0
    .end packed-switch
.end method
