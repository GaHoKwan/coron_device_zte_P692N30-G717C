.class public Lcom/mediatek/contacts/list/MultiDataItemsPickerFragment;
.super Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;
.source "MultiDataItemsPickerFragment.java"


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 24
    .local v0, adapter:Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;
    const/4 v2, -0x2

    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 26
    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiDataItemsPickerFragment;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiDataItemsPickerFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "restrictlist"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 28
    .local v1, phoneIds:[J
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 29
    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->setRestrictList([J)V

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiDataItemsPickerFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->setMimetype(Ljava/lang/String;)V

    .line 33
    .end local v1           #phoneIds:[J
    :cond_1
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiDataItemsPickerFragment;->mIntent:Landroid/content/Intent;

    .line 18
    return-void
.end method
