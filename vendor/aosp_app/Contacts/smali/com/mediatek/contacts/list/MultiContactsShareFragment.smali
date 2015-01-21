.class public Lcom/mediatek/contacts/list/MultiContactsShareFragment;
.super Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;
.source "MultiContactsShareFragment.java"


# static fields
.field private static final MAX_DATA_SIZE:I = 0x1f000

.field public static final MULTI_CHOICE_MAX_COUNT_FOR_SHARE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MultiContactsShareFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;-><init>()V

    return-void
.end method

.method private doShareVisibleContacts(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Z
    .locals 12
    .parameter "type"
    .parameter "uri"
    .parameter "idArrayUriLookUp"

    .prologue
    .line 67
    if-eqz p3, :cond_0

    array-length v9, p3

    if-nez v9, :cond_1

    .line 68
    :cond_0
    const-string v9, "MultiContactsShareFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[doShareVisibleContacts],idArrayUriLookUp is error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v9, 0x1

    .line 110
    :goto_0
    return v9

    .line 72
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v8, uriListBuilder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 74
    .local v5, index:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v9, p3

    if-ge v4, v9, :cond_3

    .line 75
    if-eqz v5, :cond_2

    .line 76
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_2
    aget-object v9, p3, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v5, v5, 0x1

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 83
    .local v2, dataSize:I
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 84
    .local v7, shareUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v6, intent:Landroid/content/Intent;
    const-string v9, "text/x-vcard"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    const v9, 0x7f0c0202

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 99
    .local v1, chooseTitle:Ljava/lang/CharSequence;
    invoke-static {v6, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, chooseIntent:Landroid/content/Intent;
    const v9, 0x1f000

    if-ge v2, v9, :cond_4

    .line 102
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 103
    const/4 v9, 0x1

    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c00f6

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v9, 0x0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v3

    .line 109
    .local v3, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c0203

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 110
    const/4 v9, 0x1

    goto :goto_0
.end method

.method private getLoopUriArray()[Ljava/lang/String;
    .locals 15

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getCheckedItemIds()[J

    move-result-object v2

    .line 146
    .local v2, checkArray:[J
    array-length v10, v2

    .line 147
    .local v10, selectedCount:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;

    .line 149
    .local v0, adapter:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
    const/4 v3, 0x0

    .line 150
    .local v3, curArray:I
    new-array v11, v10, [Ljava/lang/String;

    .line 152
    .local v11, uriArray:[Ljava/lang/String;
    move-object v1, v2

    .local v1, arr$:[J
    array-length v9, v1

    .local v9, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v4, v3

    .end local v3           #curArray:I
    .local v4, curArray:I
    :goto_0
    if-ge v5, v9, :cond_0

    aget-wide v6, v1, v5

    .line 153
    .local v6, id:J
    if-le v4, v10, :cond_1

    .line 166
    .end local v6           #id:J
    :cond_0
    return-object v11

    .line 156
    .restart local v6       #id:J
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->getListItemCache()Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->getItemData(J)Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;

    move-result-object v8

    .line 157
    .local v8, item:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;
    if-eqz v8, :cond_2

    .line 158
    add-int/lit8 v3, v4, 0x1

    .end local v4           #curArray:I
    .restart local v3       #curArray:I
    iget-object v12, v8, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->lookupUri:Ljava/lang/String;

    aput-object v12, v11, v4

    .line 152
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3           #curArray:I
    .restart local v4       #curArray:I
    goto :goto_0

    .line 160
    :cond_2
    const-string v12, "MultiContactsShareFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#getLoopUriArray(),the item is null. may some error happend.curArray:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",id:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",checkArray.length:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",ListViewCheckedCount:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .end local v4           #curArray:I
    .restart local v3       #curArray:I
    goto :goto_1
.end method


# virtual methods
.method public getMultiChoiceLimitCount()I
    .locals 1

    .prologue
    .line 171
    const/16 v0, 0x3e8

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 16

    .prologue
    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getCheckedItemIds()[J

    move-result-object v1

    .line 116
    .local v1, checkArray:[J
    array-length v6, v1

    .line 117
    .local v6, selectedCount:I
    if-nez v6, :cond_0

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c008d

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 119
    const/4 v7, 0x0

    .line 141
    :goto_0
    return-object v7

    .line 120
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/list/MultiContactsShareFragment;->getMultiChoiceLimitCount()I

    move-result v11

    if-le v6, v11, :cond_1

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00a3

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/list/MultiContactsShareFragment;->getMultiChoiceLimitCount()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, msg:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    const/4 v7, 0x0

    goto :goto_0

    .line 126
    .end local v5           #msg:Ljava/lang/String;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/contacts/list/MultiContactsShareFragment;->getLoopUriArray()[Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, uriArray:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v10, uriListBuilder:Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 130
    .local v3, isFirstItem:Z
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v8, v0, v2

    .line 131
    .local v8, uri:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 132
    const/4 v3, 0x0

    .line 137
    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    :cond_2
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 139
    .end local v8           #uri:Ljava/lang/String;
    :cond_3
    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 141
    .local v7, shareUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public onOptionAction()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getCheckedItemIds()[J

    move-result-object v5

    array-length v3, v5

    .line 39
    .local v3, selectedCount:I
    if-nez v3, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c008d

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiContactsShareFragment;->getMultiChoiceLimitCount()I

    move-result v5

    if-le v3, v5, :cond_2

    .line 43
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00a3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiContactsShareFragment;->getMultiChoiceLimitCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v0           #msg:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsShareFragment;->getLoopUriArray()[Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, uriArray:[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v2, retIntent:Landroid/content/Intent;
    const-string v5, "com.mediatek.contacts.list.pickcontactsresult"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v5, "Multi_Contact"

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v4}, Lcom/mediatek/contacts/list/MultiContactsShareFragment;->doShareVisibleContacts(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v1

    .line 52
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 64
    return-void
.end method
