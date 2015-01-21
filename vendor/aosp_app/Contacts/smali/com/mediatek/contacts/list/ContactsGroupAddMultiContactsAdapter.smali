.class public Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;
.super Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
.source "ContactsGroupAddMultiContactsAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mExistMemberContactIds:[J

.field public final mMembersSelection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1
    .parameter "context"
    .parameter "lv"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 32
    const-string v0, " IN (SELECT contact_id FROM view_raw_contacts WHERE view_raw_contacts.contact_id NOT IN "

    iput-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->mMembersSelection:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 2
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    move-object v0, p1

    .line 102
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 103
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/16 v1, 0xa

    invoke-virtual {v0, p3, v1}, Lcom/android/contacts/list/ContactListItemView;->showSnippet(Landroid/database/Cursor;I)V

    .line 107
    :cond_0
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 2
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, query:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 62
    const-string v0, ""

    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 69
    .end local v0           #query:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 11
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v6, sb:Ljava/lang/StringBuilder;
    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->mExistMemberContactIds:[J

    .local v1, arr$:[J
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-wide v3, v1, v2

    .line 76
    .local v3, id:J
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v3           #id:J
    :cond_0
    iget-object v8, p0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->mExistMemberContactIds:[J

    array-length v8, v8

    if-lez v8, :cond_1

    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 82
    :cond_1
    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    sget-object v8, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id string "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id IN (SELECT contact_id FROM view_raw_contacts WHERE view_raw_contacts.contact_id NOT IN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, selection:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->mAccountName:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->mAccountType:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND view_raw_contacts.account_name=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND view_raw_contacts."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, accountFilter:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 94
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 95
    sget-object v8, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new selection "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1, v7}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 97
    return-void

    .line 90
    .end local v0           #accountFilter:Ljava/lang/String;
    :cond_2
    const-string v0, " AND view_raw_contacts.account_name IS NULL  AND view_raw_contacts.account_type IS NULL "

    .line 92
    .restart local v0       #accountFilter:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public setExistMemberList([J)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->mExistMemberContactIds:[J

    .line 53
    return-void
.end method

.method public setGroupAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "account"
    .parameter "type"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->mAccountName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->mAccountType:Ljava/lang/String;

    .line 49
    return-void
.end method
