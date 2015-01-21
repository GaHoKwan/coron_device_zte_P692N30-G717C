.class public Lcom/android/contacts/activities/GroupDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupDetailActivity.java"


# static fields
.field public static final KEY_ACCOUNT_CATEGORY:Ljava/lang/String; = "AccountCategory"

.field private static final SUBACTIVITY_EDIT_GROUP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GroupDetailActivity"


# instance fields
.field private mAccountTypeString:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mFragment:Lcom/android/contacts/group/GroupDetailFragment;

.field private final mFragmentListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

.field private mIntentExtras:Landroid/os/Bundle;

.field private mShowGroupSourceInActionBar:Z

.field private mSimId:I

.field private mSimName:Ljava/lang/String;

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 115
    new-instance v0, Lcom/android/contacts/activities/GroupDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupDetailActivity$1;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCategory:Ljava/lang/String;

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSlotId:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/activities/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/GroupDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSlotId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/activities/GroupDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSlotId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/GroupDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSimId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/android/contacts/group/GroupDetailFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v4, 0x7f040071

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f07014a

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/group/GroupDetailFragment;

    iput-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    .line 72
    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-virtual {v4, v5}, Lcom/android/contacts/group/GroupDetailFragment;->setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V

    .line 73
    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-boolean v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    invoke-virtual {v4, v5}, Lcom/android/contacts/group/GroupDetailFragment;->setShowGroupSourceInActionBar(Z)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIntentExtras:Landroid/os/Bundle;

    .line 79
    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIntentExtras:Landroid/os/Bundle;

    if-nez v4, :cond_3

    const/4 v0, 0x0

    .line 81
    .local v0, accountCategoryInfo:Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 82
    iget-object v4, v0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mAccountCategory:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCategory:Ljava/lang/String;

    .line 83
    iget v4, v0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mSlotId:I

    iput v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSlotId:I

    .line 84
    iget v4, v0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mSimId:I

    iput v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSimId:I

    .line 85
    iget-object v4, v0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mSimName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSimName:Ljava/lang/String;

    .line 87
    :cond_0
    const-string v4, "GroupDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSlotId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "----mSlotId+++++[groupDetialActivity]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v4, "GroupDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "----mSimId+++++[groupDetialActivity]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v4, "GroupDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSimName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "----mSimName+++++[groupDetialActivity]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCategory:Ljava/lang/String;

    iget v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSlotId:I

    iget v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSimId:I

    iget-object v8, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mSimName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/contacts/group/GroupDetailFragment;->loadExtras(Ljava/lang/String;IILjava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "callBackIntent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, callBackIntent:Ljava/lang/String;
    const-string v4, "GroupDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "----callBackIntent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "mSlotId"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 97
    .local v3, slotId:I
    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v4, v3}, Lcom/android/contacts/group/GroupDetailFragment;->loadExtras(I)V

    .line 98
    const-string v4, "GroupDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "----slotId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v3           #slotId:I
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/group/GroupDetailFragment;->loadGroup(Landroid/net/Uri;)V

    .line 104
    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/group/GroupDetailFragment;->closeActivityAfterDelete(Z)V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 108
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 109
    const/16 v4, 0xc

    const/16 v5, 0xe

    invoke-virtual {v1, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 113
    :cond_2
    return-void

    .line 79
    .end local v0           #accountCategoryInfo:Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;
    .end local v1           #actionBar:Landroid/app/ActionBar;
    .end local v2           #callBackIntent:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "AccountCategory"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;

    move-object v0, v4

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 182
    iget-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 184
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f10000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 229
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 233
    const/4 v1, 0x1

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    iget-boolean v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    if-nez v6, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v4

    .line 194
    :cond_1
    const v6, 0x7f0701fe

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 195
    .local v1, groupSourceMenuItem:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 198
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 199
    .local v3, manager:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 201
    .local v0, accountType:Lcom/android/contacts/model/account/AccountType;
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 203
    :cond_2
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 206
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->getNewGroupSourceView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 207
    .local v2, groupSourceView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;

    invoke-static {p0, v2, v4, v6}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->bindGroupSourceView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v4, Lcom/android/contacts/activities/GroupDetailActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/activities/GroupDetailActivity$2;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;Lcom/android/contacts/model/account/AccountType;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 221
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v4, v5

    .line 222
    goto :goto_0
.end method
