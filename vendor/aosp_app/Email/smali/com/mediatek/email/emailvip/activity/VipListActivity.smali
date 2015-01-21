.class public Lcom/mediatek/email/emailvip/activity/VipListActivity;
.super Landroid/app/Activity;
.source "VipListActivity.java"

# interfaces
.implements Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/emailvip/activity/VipListActivity$AccountContentObserver;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "accountId"

.field public static final EXTRA_PICK_DATA_RESULT:Ljava/lang/String; = "com.mediatek.contacts.list.pickdataresult"

.field public static final PICK_MULTI_EMAILS_ACTION:Ljava/lang/String; = "android.intent.action.contacts.list.PICKMULTIEMAILS"

.field public static final REQUEST_CODE_PICK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "VIP_Settings/VipListActivity"

.field public static final VIP_LIST_ACITON:Ljava/lang/String; = "android.intent.action.EMAIL_VIP_ACTIVITY"


# instance fields
.field private mAccountId:J

.field private mAccountObserver:Landroid/database/ContentObserver;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarCustomView:Landroid/view/ViewGroup;

.field private mVipMembers:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/email/emailvip/activity/VipListActivity;[J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/mediatek/email/emailvip/activity/VipListActivity;->saveContactsAsVips([J)V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.EMAIL_VIP_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 57
    return-object v0
.end method

.method private getEmailAddressesFromContacts([J)[Lcom/android/emailcommon/mail/Address;
    .locals 10
    .parameter "contactIds"

    .prologue
    const/4 v1, 0x0

    .line 165
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v6, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    .line 167
    :cond_0
    new-array v0, v1, [Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Address;

    .line 192
    :cond_1
    :goto_0
    return-object v0

    .line 169
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v9, selection:Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v0, " IN ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    aget-wide v0, p1, v1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 173
    const/4 v8, 0x1

    .local v8, i:I
    :goto_1
    array-length v0, p1

    if-ge v8, v0, :cond_3

    .line 174
    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    aget-wide v0, p1, v8

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 177
    :cond_3
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const/4 v7, 0x0

    .line 180
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 183
    if-nez v7, :cond_4

    .line 184
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Address;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-eqz v7, :cond_1

    .line 192
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 186
    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 191
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 192
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 189
    :cond_6
    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Address;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    if-eqz v7, :cond_1

    .line 192
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private onChooseVIPFromContact()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.contacts.list.PICKMULTIEMAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-static {p0, v0, v2, v2}, Lcom/android/email/activity/UiUtilities;->startRemoteActivityForResult(Landroid/app/Activity;Landroid/content/Intent;IZ)V

    .line 127
    return-void
.end method

.method private saveContactsAsVips([J)V
    .locals 10
    .parameter "contactIds"

    .prologue
    .line 198
    if-eqz p1, :cond_0

    array-length v7, p1

    if-gtz v7, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/email/emailvip/activity/VipListActivity;->getEmailAddressesFromContacts([J)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 203
    .local v2, addresses:[Lcom/android/emailcommon/mail/Address;
    const/4 v4, 0x0

    .line 204
    .local v4, hasInvalidAddress:Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, addressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    move-object v3, v2

    .local v3, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v0, v3, v5

    .line 206
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 207
    const/4 v4, 0x1

    .line 205
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 212
    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    :cond_3
    if-eqz v4, :cond_4

    .line 213
    const v7, 0x7f0800e0

    invoke-static {p0, v7}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 217
    :cond_4
    iget-wide v7, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mAccountId:J

    new-instance v9, Lcom/mediatek/email/emailvip/activity/VipListActivity$2;

    invoke-direct {v9, p0}, Lcom/mediatek/email/emailvip/activity/VipListActivity$2;-><init>(Lcom/mediatek/email/emailvip/activity/VipListActivity;)V

    invoke-static {p0, v7, v8, v1, v9}, Lcom/android/emailcommon/provider/VipMember;->addVIPs(Landroid/content/Context;JLjava/util/ArrayList;Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 148
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 149
    const-string v1, "com.mediatek.contacts.list.pickdataresult"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 150
    .local v0, ids:[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 162
    .end local v0           #ids:[J
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local v0       #ids:[J
    :cond_1
    new-instance v1, Lcom/mediatek/email/emailvip/activity/VipListActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/email/emailvip/activity/VipListActivity$1;-><init>(Lcom/mediatek/email/emailvip/activity/VipListActivity;[J)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v3, 0x7f040031

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, i:Landroid/content/Intent;
    const-string v3, "accountId"

    invoke-virtual {v1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mAccountId:J

    .line 67
    if-nez p1, :cond_0

    iget-wide v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mAccountId:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 70
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-wide v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->newInstance(Ljava/lang/Long;)Lcom/mediatek/email/emailvip/activity/VipListFragment;

    move-result-object v2

    .line 71
    .local v2, newFragment:Landroid/app/Fragment;
    const v3, 0x7f0f0096

    invoke-virtual {v0, v3, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 72
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 74
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    .end local v2           #newFragment:Landroid/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mActionBar:Landroid/app/ActionBar;

    .line 76
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 78
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 79
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 81
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mActionBar:Landroid/app/ActionBar;

    const v4, 0x7f04005a

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 82
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mActionBarCustomView:Landroid/view/ViewGroup;

    .line 83
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v4, 0x7f0f0110

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mVipMembers:Landroid/widget/TextView;

    .line 88
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mAccountObserver:Landroid/database/ContentObserver;

    if-nez v3, :cond_1

    .line 89
    new-instance v3, Lcom/mediatek/email/emailvip/activity/VipListActivity$AccountContentObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p0}, Lcom/mediatek/email/emailvip/activity/VipListActivity$AccountContentObserver;-><init>(Lcom/mediatek/email/emailvip/activity/VipListActivity;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mAccountObserver:Landroid/database/ContentObserver;

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mAccountObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mAccountObserver:Landroid/database/ContentObserver;

    .line 135
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 136
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 119
    :goto_0
    return v0

    .line 111
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 119
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/activity/VipListActivity;->onChooseVIPFromContact()V

    goto :goto_1

    .line 105
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f0139 -> :sswitch_1
    .end sparse-switch
.end method

.method public onVipMemberChanged(I)V
    .locals 5
    .parameter "vipNumber"

    .prologue
    .line 140
    const v1, 0x7f08003c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity;->mVipMembers:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method
