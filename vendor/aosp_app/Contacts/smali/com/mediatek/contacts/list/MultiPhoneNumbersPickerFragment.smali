.class public Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;
.super Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;
.source "MultiPhoneNumbersPickerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 13
    .local v0, adapter:Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 15
    return-object v0
.end method
