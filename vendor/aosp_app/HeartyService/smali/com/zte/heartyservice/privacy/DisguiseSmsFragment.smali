.class public Lcom/zte/heartyservice/privacy/DisguiseSmsFragment;
.super Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;
.source "DisguiseSmsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/DisguiseSmsFragment$DisguisedSmsLoader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method protected deleteReal(Ljava/util/List;Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;)Z
    .locals 9
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
    .local p1, deleteList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;"
    const/4 v8, 0x1

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/CommonItem;

    .line 116
    .local v2, item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    iget-object v3, v2, Lcom/zte/heartyservice/common/datatype/CommonItem;->summary:Ljava/lang/String;

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNumberFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, ac:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v3

    const-string v4, "sms"

    const-string v5, "ac=?"

    new-array v6, v8, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v0           #ac:Ljava/lang/String;
    .end local v2           #item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    :cond_1
    return v8
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 35
    .local v1, selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseSmsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/DisguiseSmsItem;

    .line 37
    .local v0, item:Lcom/zte/heartyservice/privacy/DisguiseSmsItem;
    iget-object v2, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/zte/heartyservice/privacy/DisguiseSmsItem;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-object p2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 23
    const v0, 0x7f0300d3

    iput v0, p0, Lcom/zte/heartyservice/privacy/DisguiseSmsFragment;->mItemRes:I

    .line 24
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 26
    iget v0, p0, Lcom/zte/heartyservice/privacy/DisguiseSmsFragment;->mCurState:I

    if-nez v0, :cond_0

    .line 27
    const v0, 0x7f0a0367

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseSmsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseSmsFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 29
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
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
    .line 43
    new-instance v0, Lcom/zte/heartyservice/privacy/DisguiseSmsFragment$DisguisedSmsLoader;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseSmsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/privacy/DisguiseSmsFragment;->mCurState:I

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/DisguiseSmsFragment$DisguisedSmsLoader;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
