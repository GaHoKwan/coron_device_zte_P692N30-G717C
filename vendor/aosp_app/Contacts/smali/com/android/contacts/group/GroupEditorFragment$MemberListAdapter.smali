.class final Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MemberListAdapter"
.end annotation


# instance fields
.field private mIsGroupMembershipEditable:Z

.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->mIsGroupMembershipEditable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1371
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1424
    invoke-static {}, Lcom/android/contacts/group/GroupEditorFragment;->access$1800()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/group/GroupEditorFragment$Member;
    .locals 1
    .parameter "position"

    .prologue
    .line 1429
    invoke-static {}, Lcom/android/contacts/group/GroupEditorFragment;->access$1800()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1371
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->getItem(I)Lcom/android/contacts/group/GroupEditorFragment$Member;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1434
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 1378
    if-nez p2, :cond_2

    .line 1379
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v6}, Lcom/android/contacts/group/GroupEditorFragment;->access$1500(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget-boolean v6, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->mIsGroupMembershipEditable:Z

    if-eqz v6, :cond_1

    const v6, 0x7f040079

    :goto_0
    invoke-virtual {v7, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1385
    .local v5, result:Landroid/view/View;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->getItem(I)Lcom/android/contacts/group/GroupEditorFragment$Member;

    move-result-object v2

    .line 1386
    .local v2, member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    move v4, p1

    .line 1388
    .local v4, posi:I
    const v6, 0x7f070142

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    .line 1389
    .local v0, badge:Landroid/widget/QuickContactBadge;
    invoke-virtual {v2}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getLookupUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 1391
    invoke-virtual {v0, v9}, Landroid/view/View;->setClickable(Z)V

    .line 1404
    const v6, 0x7f070090

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1405
    .local v3, name:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1407
    const v6, 0x7f07013f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1408
    .local v1, deleteButton:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1409
    new-instance v6, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter$1;-><init>(Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;Lcom/android/contacts/group/GroupEditorFragment$Member;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1417
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    invoke-static {v6}, Lcom/android/contacts/group/GroupEditorFragment;->access$1700(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getPhotoUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v0}, Lcom/android/contacts/util/ViewUtil;->getConstantPreLayoutWidth(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    .line 1419
    return-object v5

    .line 1379
    .end local v0           #badge:Landroid/widget/QuickContactBadge;
    .end local v1           #deleteButton:Landroid/view/View;
    .end local v2           #member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    .end local v3           #name:Landroid/widget/TextView;
    .end local v4           #posi:I
    .end local v5           #result:Landroid/view/View;
    :cond_1
    const v6, 0x7f040066

    goto :goto_0

    .line 1383
    :cond_2
    move-object v5, p2

    .restart local v5       #result:Landroid/view/View;
    goto :goto_1
.end method

.method public setIsGroupMembershipEditable(Z)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 1438
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->mIsGroupMembershipEditable:Z

    .line 1439
    return-void
.end method
