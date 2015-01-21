.class Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactImportExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/activities/ContactImportExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountListAdapter"
.end annotation


# instance fields
.field private mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 398
    iput-object p2, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;->mContext:Landroid/content/Context;

    .line 399
    invoke-static {p2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 400
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 401
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #getter for: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListItemObjectList:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$1000(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    .locals 1
    .parameter "position"

    .prologue
    .line 415
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;->getItem(I)Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 410
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 421
    if-eqz p2, :cond_1

    move-object v5, p2

    .line 422
    check-cast v5, Lcom/mediatek/contacts/widget/ImportExportItem;

    .line 427
    .local v5, view:Lcom/mediatek/contacts/widget/ImportExportItem;
    :goto_0
    iget-object v7, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #getter for: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListItemObjectList:Ljava/util/List;
    invoke-static {v7}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$1000(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;

    .line 428
    .local v3, itemObj:Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;
    iput-object v5, v3, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mView:Lcom/mediatek/contacts/widget/ImportExportItem;

    .line 429
    iget-object v0, v3, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mAccount:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    .line 430
    .local v0, account:Lcom/android/contacts/model/account/AccountWithDataSet;
    iget-object v7, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v1

    .line 432
    .local v1, accountType:Lcom/android/contacts/model/account/AccountType;
    iget-object v7, v3, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mAccount:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v7}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getSlotId()I

    move-result v4

    .line 433
    .local v4, slotId:I
    invoke-static {}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dataSet: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " slotId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountType;->isIccCardAccount()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 435
    iget-object v7, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7, v4}, Lcom/android/contacts/model/account/AccountType;->getDisplayIconBySlotId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 439
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v5, v2, v7, v8}, Lcom/mediatek/contacts/widget/ImportExportItem;->bindView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v7, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #getter for: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedPosition:I
    invoke-static {v7}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$700(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)I

    move-result v7

    if-ne v7, p1, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-virtual {v5, v6}, Lcom/mediatek/contacts/widget/ImportExportItem;->setActivated(Z)V

    .line 442
    return-object v5

    .line 424
    .end local v0           #account:Lcom/android/contacts/model/account/AccountWithDataSet;
    .end local v1           #accountType:Lcom/android/contacts/model/account/AccountType;
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #itemObj:Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;
    .end local v4           #slotId:I
    .end local v5           #view:Lcom/mediatek/contacts/widget/ImportExportItem;
    :cond_1
    iget-object v7, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040036

    invoke-virtual {v7, v8, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mediatek/contacts/widget/ImportExportItem;

    .restart local v5       #view:Lcom/mediatek/contacts/widget/ImportExportItem;
    goto :goto_0

    .line 437
    .restart local v0       #account:Lcom/android/contacts/model/account/AccountWithDataSet;
    .restart local v1       #accountType:Lcom/android/contacts/model/account/AccountType;
    .restart local v3       #itemObj:Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;
    .restart local v4       #slotId:I
    :cond_2
    iget-object v7, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method
