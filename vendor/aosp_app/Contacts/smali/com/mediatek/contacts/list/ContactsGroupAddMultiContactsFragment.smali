.class public Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsFragment;
.super Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;
.source "ContactsGroupAddMultiContactsFragment.java"

# interfaces
.implements Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 20
    new-instance v2, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 22
    .local v2, adapter:Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;
    const/4 v4, -0x2

    invoke-static {v4}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 24
    invoke-virtual {v2, v6}, Lcom/android/contacts/widget/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 25
    invoke-virtual {v2, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 26
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 27
    invoke-virtual {v2, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "intent"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 30
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "account_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, accountName:Ljava/lang/String;
    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, accountType:Ljava/lang/String;
    invoke-virtual {v2, v0, v1}, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->setGroupAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v4, "member_ids"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsAdapter;->setExistMemberList([J)V

    .line 34
    return-object v2
.end method

.method public isAccountFilterEnable()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 47
    sget-object v0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate setScrubListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setScrubListener(Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;)V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 55
    invoke-static {p0}, Lcom/android/contacts/group/GroupEditorFragment;->removeScrubListener(Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;)V

    .line 56
    return-void
.end method

.method public scrubAffinity()V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 43
    return-void
.end method
