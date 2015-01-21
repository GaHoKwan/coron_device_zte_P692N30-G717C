.class public Lcom/zte/heartyservice/privacy/DisguiseContactFragment;
.super Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;
.source "DisguiseContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/DisguiseContactFragment$3;,
        Lcom/zte/heartyservice/privacy/DisguiseContactFragment$DisguisedSmsLoader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method protected deleteReal(Ljava/util/List;Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;)Z
    .locals 10
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 98
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v1

    .line 100
    .local v1, helper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/CommonItem;

    .line 101
    .local v4, item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    iget-wide v5, v4, Lcom/zte/heartyservice/common/datatype/CommonItem;->id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    sget-object v5, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$3;->$SwitchMap$com$zte$heartyservice$privacy$DisguiseAbstractCommunicationFragment$DeleteType:[I

    invoke-virtual {p2}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 116
    :goto_1
    const-string v5, "contact"

    const-string v6, "_id=?"

    new-array v7, v8, [Ljava/lang/String;

    aput-object v3, v7, v9

    invoke-virtual {v1, v5, v6, v7}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :pswitch_0
    iget-object v5, v4, Lcom/zte/heartyservice/common/datatype/CommonItem;->summary:Ljava/lang/String;

    invoke-static {v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNumberFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, ac:Ljava/lang/String;
    const-string v5, "calllog"

    const-string v6, "ac=?"

    new-array v7, v8, [Ljava/lang/String;

    aput-object v0, v7, v9

    invoke-virtual {v1, v5, v6, v7}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    const-string v5, "sms"

    const-string v6, "ac=?"

    new-array v7, v8, [Ljava/lang/String;

    aput-object v0, v7, v9

    invoke-virtual {v1, v5, v6, v7}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 120
    .end local v0           #ac:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    :cond_1
    return v8

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 41
    .local v1, selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/CommonItem;

    .line 42
    .local v0, item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    iget-object v2, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->imageButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$1;-><init>(Lcom/zte/heartyservice/privacy/DisguiseContactFragment;Lcom/zte/heartyservice/common/datatype/CommonItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-object p2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    const v0, 0x7f0300c2

    iput v0, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->mItemRes:I

    .line 30
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 32
    iget v0, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->mCurState:I

    if-nez v0, :cond_0

    .line 33
    const v0, 0x7f0a0420

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 35
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
    .line 54
    new-instance v0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$DisguisedSmsLoader;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->mCurState:I

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$DisguisedSmsLoader;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected showDeleteDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030037

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 128
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0a0176

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070043

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0173

    new-instance v5, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$2;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$2;-><init>(Lcom/zte/heartyservice/privacy/DisguiseContactFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0174

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 159
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 160
    return-void
.end method
