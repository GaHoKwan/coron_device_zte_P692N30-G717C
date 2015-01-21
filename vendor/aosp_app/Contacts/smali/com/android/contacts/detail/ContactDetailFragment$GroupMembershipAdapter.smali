.class Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupMembershipAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 4418
    .local p0, this:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;,"Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 4419
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 4420
    return-void
.end method


# virtual methods
.method public getItemIsCheckable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 4434
    .local p0, this:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;,"Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter<TT;>;"
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 4429
    .local p0, this:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;,"Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;->getItemIsCheckable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 4439
    .local p0, this:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;,"Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .local v2, itemView:Landroid/view/View;
    move-object v0, v2

    .line 4441
    check-cast v0, Landroid/widget/CheckedTextView;

    .local v0, checkedTextView:Landroid/widget/CheckedTextView;
    move-object v3, p3

    .line 4442
    check-cast v3, Landroid/widget/ListView;

    .line 4443
    .local v3, list:Landroid/widget/ListView;
    invoke-virtual {v3, p1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;

    .line 4444
    .local v1, item:Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;
    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->isCreateGroup()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4447
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4448
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 4456
    :goto_0
    return-object v0

    .line 4451
    :cond_0
    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4452
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 4454
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 4424
    .local p0, this:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;,"Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter<TT;>;"
    const/4 v0, 0x2

    return v0
.end method
