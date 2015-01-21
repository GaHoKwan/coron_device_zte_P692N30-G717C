.class public Lcom/android/email/activity/setup/DropdownAddressFilter;
.super Lcom/android/email/activity/setup/DropdownAccountsFilter;
.source "DropdownAddressFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/email/activity/setup/DropdownAccountsFilter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, this:Lcom/android/email/activity/setup/DropdownAddressFilter;,"Lcom/android/email/activity/setup/DropdownAddressFilter<TT;>;"
    .local p1, referenceAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/DropdownAccountsFilter;-><init>(Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 18
    .local p0, this:Lcom/android/email/activity/setup/DropdownAddressFilter;,"Lcom/android/email/activity/setup/DropdownAddressFilter<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mFilterString:Ljava/lang/String;

    .line 20
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mObjects:Ljava/util/List;

    .line 21
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mReferenceAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    iget-object v1, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mObjects:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->setObjects(Ljava/util/List;)V

    .line 22
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mReferenceAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->notifyDataSetChanged()V

    .line 27
    :goto_1
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mReferenceAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method
