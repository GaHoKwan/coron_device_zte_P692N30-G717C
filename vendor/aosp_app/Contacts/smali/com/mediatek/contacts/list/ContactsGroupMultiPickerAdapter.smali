.class public Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;
.super Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
.source "ContactsGroupMultiPickerAdapter.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field public final mContactsGroupSelection:Ljava/lang/String;

.field private mGroupTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1
    .parameter "context"
    .parameter "lv"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 22
    const-string v0, " IN (SELECT contact_id FROM view_raw_contacts WHERE view_raw_contacts._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1 IN (SELECT groups._id FROM groups WHERE deleted=0 AND title=?)) AND deleted=0 "

    iput-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;->mContactsGroupSelection:Ljava/lang/String;

    .line 42
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
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    move-object v0, p1

    .line 93
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 94
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/16 v1, 0xa

    invoke-virtual {v0, p3, v1}, Lcom/android/contacts/list/ContactListItemView;->showSnippet(Landroid/database/Cursor;I)V

    .line 97
    :cond_0
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 2
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    .line 56
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, query:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 59
    const-string v0, ""

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 66
    .end local v0           #query:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 5
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 71
    const-string v1, "_id IN (SELECT contact_id FROM view_raw_contacts WHERE view_raw_contacts._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1 IN (SELECT groups._id FROM groups WHERE deleted=0 AND title=?)) AND deleted=0 "

    .line 73
    .local v1, selection:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND view_raw_contacts.account_name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND view_raw_contacts."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, accountFilter:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;->mGroupTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;->mGroupTitle:Ljava/lang/String;

    .line 87
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;->mGroupTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 88
    return-void

    .line 78
    .end local v0           #accountFilter:Ljava/lang/String;
    :cond_1
    const-string v0, " AND view_raw_contacts.account_name IS NULL  AND view_raw_contacts.account_type IS NULL "

    .line 80
    .restart local v0       #accountFilter:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setGroupAccount(Landroid/accounts/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;->mAccount:Landroid/accounts/Account;

    .line 50
    return-void
.end method

.method public setGroupTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "groupTitle"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;->mGroupTitle:Ljava/lang/String;

    .line 46
    return-void
.end method
