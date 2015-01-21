.class public Lcom/mediatek/contacts/list/ContactGroupListAdapter;
.super Lcom/android/contacts/group/GroupBrowseListAdapter;
.source "ContactGroupListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactGroupListAdapter"


# instance fields
.field private mSparseBooleanArray:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getGroupListItemLayout()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f04006f

    return v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getItem(I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v0

    .line 55
    .local v0, item:Lcom/android/contacts/group/GroupListItem;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getGroupId()J

    move-result-wide v1

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public setSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .locals 0
    .parameter "sparsebooleanarray"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactGroupListAdapter;->mSparseBooleanArray:Landroid/util/SparseBooleanArray;

    .line 37
    return-void
.end method

.method protected setViewWithCheckBox(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "position"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactGroupListAdapter;->mSparseBooleanArray:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_0

    .line 42
    const-string v1, "ContactGroupListAdapter"

    const-string v2, "mSparseBooleanArray is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 46
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactGroupListAdapter;->mSparseBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method
