.class public Lcom/mediatek/contacts/widget/SimPickerDialog;
.super Ljava/lang/Object;
.source "SimPickerDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;JLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "suggestedSimId"
    .parameter "listener"

    .prologue
    .line 45
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/mediatek/contacts/widget/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;JZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected static create(Landroid/content/Context;Ljava/lang/String;JLjava/util/List;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "suggestedSimId"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 81
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/mediatek/contacts/widget/SimPickerAdapter;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/mediatek/contacts/widget/SimPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 83
    .local v1, simAdapter:Lcom/mediatek/contacts/widget/SimPickerAdapter;
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method protected static create(Landroid/content/Context;Ljava/lang/String;JLjava/util/List;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 7
    .parameter "context"
    .parameter "title"
    .parameter "suggestedSimId"
    .parameter
    .parameter "listener"
    .parameter "isDark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            "Z)",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 67
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;>;"
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    new-instance v0, Lcom/mediatek/contacts/widget/SimPickerAdapter;

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p2

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/contacts/widget/SimPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;JZ)V

    .line 70
    .local v0, simAdapter:Lcom/mediatek/contacts/widget/SimPickerAdapter;
    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1, p5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;JZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "suggestedSimId"
    .parameter "internet"
    .parameter "listener"

    .prologue
    .line 50
    invoke-static {p0, p4}, Lcom/mediatek/contacts/widget/SimPickerDialog;->createItemHolder(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/mediatek/contacts/widget/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;JLjava/util/List;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 35
    const-wide/16 v2, -0x5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/mediatek/contacts/widget/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;JZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "internet"
    .parameter "listener"

    .prologue
    .line 40
    const-wide/16 v2, -0x5

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/contacts/widget/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;JZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 7
    .parameter "context"
    .parameter "title"
    .parameter "internet"
    .parameter "listener"
    .parameter "isDark"

    .prologue
    .line 59
    const-wide/16 v2, -0x5

    invoke-static {p0, p2}, Lcom/mediatek/contacts/widget/SimPickerDialog;->createItemHolder(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/contacts/widget/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;JLjava/util/List;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected static createItemHolder(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .parameter "phone"
    .parameter "internet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    .local p3, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/mediatek/contacts/widget/SimPickerDialog;->createItemHolder(Landroid/content/Context;Ljava/lang/String;ZZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static createItemHolder(Landroid/content/Context;Ljava/lang/String;ZZLjava/util/ArrayList;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .parameter "phone"
    .parameter "internet"
    .parameter "forceInternet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    .local p4, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 100
    .local v7, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v4, itemHolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;>;"
    const/4 v9, 0x0

    .line 103
    .local v9, temp:Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 104
    new-instance v9, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;

    .end local v9           #temp:Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;
    const/4 v10, 0x2

    invoke-direct {v9, p1, v10}, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 105
    .restart local v9       #temp:Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    const/4 v3, 0x0

    .line 109
    .local v3, index:I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 110
    .local v6, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    new-instance v9, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;

    .end local v9           #temp:Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;
    const/4 v10, 0x0

    invoke-direct {v9, v6, v10}, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 111
    .restart local v9       #temp:Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;
    if-nez v3, :cond_1

    .line 112
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .line 115
    .local v5, lastPos:I
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;

    iget-object v8, v10, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v8, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 116
    .local v8, temInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v10, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iget v11, v8, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ge v10, v11, :cond_2

    .line 117
    invoke-virtual {v4, v5, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    .end local v5           #lastPos:I
    .end local v6           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v8           #temInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enable_internet_call_value"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 126
    .local v1, enabled:I
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 127
    if-nez p3, :cond_4

    if-eqz p2, :cond_5

    const/4 v10, 0x1

    if-ne v1, v10, :cond_5

    .line 128
    :cond_4
    new-instance v9, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;

    .end local v9           #temp:Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0149

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 130
    .restart local v9       #temp:Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_5
    if-eqz p4, :cond_6

    .line 135
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 136
    .local v0, account:Landroid/accounts/Account;
    new-instance v9, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;

    .end local v9           #temp:Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;
    const/4 v10, 0x3

    invoke-direct {v9, v0, v10}, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 137
    .restart local v9       #temp:Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 141
    .end local v0           #account:Landroid/accounts/Account;
    :cond_6
    return-object v4
.end method

.method protected static createItemHolder(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .parameter "context"
    .parameter "internet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-static {p0, v0, p1, v0}, Lcom/mediatek/contacts/widget/SimPickerDialog;->createItemHolder(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static createSingleChoice(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "choiceItem"
    .parameter "listener"

    .prologue
    const/4 v5, 0x1

    .line 24
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c0028

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v5, v5, v4}, Lcom/mediatek/contacts/widget/SimPickerDialog;->createItemHolder(Landroid/content/Context;Ljava/lang/String;ZZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    .line 27
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;>;"
    new-instance v2, Lcom/mediatek/contacts/widget/SimPickerAdapter;

    const-wide/16 v3, -0x5

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/mediatek/contacts/widget/SimPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 28
    .local v2, simAdapter:Lcom/mediatek/contacts/widget/SimPickerAdapter;
    invoke-virtual {v2, v5}, Lcom/mediatek/contacts/widget/SimPickerAdapter;->setSingleChoice(Z)V

    .line 29
    invoke-virtual {v2, p2}, Lcom/mediatek/contacts/widget/SimPickerAdapter;->setSingleChoiceIndex(I)V

    .line 30
    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, p3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 31
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
