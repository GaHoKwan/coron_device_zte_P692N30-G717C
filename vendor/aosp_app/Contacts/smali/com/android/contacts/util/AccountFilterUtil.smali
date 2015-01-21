.class public Lcom/android/contacts/util/AccountFilterUtil;
.super Ljava/lang/Object;
.source "AccountFilterUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/contacts/util/AccountFilterUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountDisplayNameByAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, accountDisplayName:Ljava/lang/String;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 235
    :cond_0
    sget-object v6, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v7, "[getAccountDisplayNameByAccount] accountType or accountName is null, returned null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 259
    .end local v0           #accountDisplayName:Ljava/lang/String;
    .local v1, accountDisplayName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 239
    .end local v1           #accountDisplayName:Ljava/lang/String;
    .restart local v0       #accountDisplayName:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v4

    .line 240
    .local v4, contactsApp:Lcom/android/contacts/ContactsApplication;
    if-nez v4, :cond_2

    .line 241
    sget-object v6, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v7, "[getAccountDisplayNameByAccount] contactsApp is null, returned null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 242
    .end local v0           #accountDisplayName:Ljava/lang/String;
    .restart local v1       #accountDisplayName:Ljava/lang/String;
    goto :goto_0

    .line 244
    .end local v1           #accountDisplayName:Ljava/lang/String;
    .restart local v0       #accountDisplayName:Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v2

    .line 247
    .local v2, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    if-nez v2, :cond_3

    .line 248
    sget-object v6, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v7, "[getAccountDisplayNameByAccount] accounts is null, returned null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 249
    .end local v0           #accountDisplayName:Ljava/lang/String;
    .restart local v1       #accountDisplayName:Ljava/lang/String;
    goto :goto_0

    .line 251
    .end local v1           #accountDisplayName:Ljava/lang/String;
    .restart local v0       #accountDisplayName:Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 252
    .local v3, ads:Lcom/android/contacts/model/account/AccountWithDataSet;
    instance-of v6, v3, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-eqz v6, :cond_4

    .line 253
    iget-object v6, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 254
    check-cast v3, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    .end local v3           #ads:Lcom/android/contacts/model/account/AccountWithDataSet;
    invoke-virtual {v3}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v1, v0

    .line 259
    .end local v0           #accountDisplayName:Ljava/lang/String;
    .restart local v1       #accountDisplayName:Ljava/lang/String;
    goto :goto_0
.end method

.method public static handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V
    .locals 4
    .parameter "filterController"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 215
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 216
    const-string v1, "contactListFilter"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 218
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    if-nez v0, :cond_1

    .line 228
    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_0
    :goto_0
    return-void

    .line 221
    .restart local v0       #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_1
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    .line 224
    :cond_2
    sget-object v1, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0
.end method

.method public static startAccountFilterActivityForResult(Landroid/app/Activity;ILcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .parameter "activity"
    .parameter "requestCode"
    .parameter "currentFilter"

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "currentFilter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    return-void
.end method

.method public static startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/list/ContactListFilter;)V
    .locals 4
    .parameter "fragment"
    .parameter "requestCode"
    .parameter "currentFilter"

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 197
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 198
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "currentFilter"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 204
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 202
    :cond_0
    sget-object v2, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v3, "getActivity() returned null. Ignored"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;ZZ)Z
    .locals 9
    .parameter "filterContainer"
    .parameter "filter"
    .parameter "showTitleForAllAccounts"
    .parameter "forPhone"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, context:Landroid/content/Context;
    const v6, 0x7f070033

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    .local v2, headerTextView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 85
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v4

    .line 86
    .local v4, textColor:I
    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    :cond_0
    const/4 v5, 0x0

    .line 93
    .local v5, textWasSet:Z
    if-eqz p1, :cond_e

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, displayName:Ljava/lang/String;
    iget-object v6, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/contacts/util/AccountFilterUtil;->getAccountDisplayNameByAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    if-nez v1, :cond_1

    .line 100
    iget-object v6, p1, Lcom/android/contacts/list/ContactListFilter;->displayName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 101
    iget-object v1, p1, Lcom/android/contacts/list/ContactListFilter;->displayName:Ljava/lang/String;

    .line 114
    :cond_1
    :goto_0
    if-eqz p3, :cond_8

    .line 115
    iget v6, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_4

    .line 116
    if-eqz p2, :cond_2

    .line 117
    const v6, 0x7f0c029a

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 118
    const/4 v5, 0x1

    .line 171
    .end local v1           #displayName:Ljava/lang/String;
    :cond_2
    :goto_1
    return v5

    .line 106
    .restart local v1       #displayName:Ljava/lang/String;
    :cond_3
    iget-object v6, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/contacts/model/account/AccountType;->getDisplayAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    if-nez v1, :cond_1

    .line 108
    iget-object v1, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_4
    iget v6, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v6, :cond_6

    .line 126
    iget-object v6, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->isLocalPhone(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0100

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_5
    const v6, 0x7f0c016a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const/4 v5, 0x1

    goto :goto_1

    .line 133
    :cond_6
    iget v6, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v7, -0x3

    if-ne v6, v7, :cond_7

    .line 134
    const v6, 0x7f0c016c

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 135
    const/4 v5, 0x1

    goto :goto_1

    .line 137
    :cond_7
    sget-object v6, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filter type \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" isn\'t expected."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    :cond_8
    iget v6, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_9

    .line 141
    if-eqz p2, :cond_2

    .line 142
    const v6, 0x7f0c0296

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 143
    const/4 v5, 0x1

    goto :goto_1

    .line 145
    :cond_9
    iget v6, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v6, :cond_b

    .line 151
    iget-object v6, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->isLocalPhone(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 152
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0100

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_a
    const v6, 0x7f0c016a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 158
    :cond_b
    iget v6, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v7, -0x3

    if-ne v6, v7, :cond_c

    .line 159
    const v6, 0x7f0c016c

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 160
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 161
    :cond_c
    iget v6, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v7, -0x6

    if-ne v6, v7, :cond_d

    .line 162
    const v6, 0x7f0c016b

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 163
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 165
    :cond_d
    sget-object v6, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filter type \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" isn\'t expected."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 169
    .end local v1           #displayName:Ljava/lang/String;
    :cond_e
    sget-object v6, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v7, "Filter is null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static updateAccountFilterTitleForPeople(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;Z)Z
    .locals 1
    .parameter "filterContainer"
    .parameter "filter"
    .parameter "showTitleForAllAccounts"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;ZZ)Z

    move-result v0

    return v0
.end method

.method public static updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;Z)Z
    .locals 1
    .parameter "filterContainer"
    .parameter "filter"
    .parameter "showTitleForAllAccounts"

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;ZZ)Z

    move-result v0

    return v0
.end method
