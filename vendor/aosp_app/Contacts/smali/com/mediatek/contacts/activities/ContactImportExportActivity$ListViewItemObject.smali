.class Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;
.super Ljava/lang/Object;
.source "ContactImportExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/activities/ContactImportExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewItemObject"
.end annotation


# instance fields
.field public mAccount:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

.field public mView:Lcom/mediatek/contacts/widget/ImportExportItem;

.field final synthetic this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity;Lcom/mediatek/contacts/model/AccountWithDataSetEx;)V
    .locals 0
    .parameter
    .parameter "account"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mAccount:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    .line 118
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mAccount:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-nez v1, :cond_1

    .line 122
    const-string v0, "null"

    .line 133
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    const/4 v0, 0x0

    .line 125
    .local v0, displayName:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mAccount:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mAccount:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/contacts/util/AccountFilterUtil;->getAccountDisplayNameByAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mAccount:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->isLocalPhone(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    const v2, 0x7f0c00f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mAccount:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method
