.class public Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;
.super Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;
.source "MultiPhoneAndEmailsPickerFragment.java"


# static fields
.field private static final RESULTINTENTEXTRANAME:Ljava/lang/String; = "com.mediatek.contacts.list.pickdataresult"


# instance fields
.field private mNumberBalance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;-><init>()V

    .line 19
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;->mNumberBalance:I

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 42
    .local v0, adapter:Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 44
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 30
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f07009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, selectItems:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->isSelectedNone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const v1, 0x7f0c016f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public onOptionAction()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getCheckedItemIds()[J

    move-result-object v1

    .line 51
    .local v1, idArray:[J
    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v3, retIntent:Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 58
    const/4 v4, 0x0

    invoke-virtual {v0, v8, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 62
    :cond_1
    array-length v4, v1

    iget v5, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;->mNumberBalance:I

    if-le v4, v5, :cond_2

    .line 63
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00d2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;->mNumberBalance:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, limitString:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 71
    .end local v2           #limitString:Ljava/lang/String;
    :cond_2
    const-string v4, "com.mediatek.contacts.list.pickdataresult"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 72
    const/4 v4, -0x1

    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public setNumberBalance(I)V
    .locals 0
    .parameter "numberBalance"

    .prologue
    .line 23
    iput p1, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;->mNumberBalance:I

    .line 24
    return-void
.end method
