.class public Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;
.super Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;
.source "MultiContactsDuplicationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$1;,
        Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;,
        Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;,
        Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final DST_STORE_TYPE_ACCOUNT:I = 0x5

.field private static final DST_STORE_TYPE_NONE:I = 0x0

.field private static final DST_STORE_TYPE_PHONE:I = 0x1

.field private static final DST_STORE_TYPE_SIM:I = 0x2

.field private static final DST_STORE_TYPE_STORAGE:I = 0x4

.field private static final DST_STORE_TYPE_UIM:I = 0x6

.field private static final DST_STORE_TYPE_USIM:I = 0x3

.field private static final FROMACCOUNT:Ljava/lang/String; = "fromaccount"

.field public static final TAG:Ljava/lang/String; = "CopyMultiContacts"

.field private static final TOACCOUNT:Ljava/lang/String; = "toaccount"


# instance fields
.field private mAccountDst:Landroid/accounts/Account;

.field private mAccountSrc:Landroid/accounts/Account;

.field private mClickCounter:I

.field private mConnection:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;

.field private mDstStoreType:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPHBLoadFinishReceiver:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;

.field private mProgressHandler:Lcom/mediatek/contacts/util/ProgressHandler;

.field private mRequestHandler:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;

.field private mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/list/service/MultiChoiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mDstStoreType:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequests:Ljava/util/List;

    .line 77
    const/16 v0, 0x14

    iput v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRetryCount:I

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mClickCounter:I

    .line 81
    new-instance v0, Lcom/mediatek/contacts/util/ProgressHandler;

    invoke-direct {v0}, Lcom/mediatek/contacts/util/ProgressHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mProgressHandler:Lcom/mediatek/contacts/util/ProgressHandler;

    .line 394
    new-instance v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;-><init>(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$1;)V

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mPHBLoadFinishReceiver:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mConnection:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;

    return-object v0
.end method

.method static synthetic access$310(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRetryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->unRegisterReceiver()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Lcom/mediatek/contacts/util/ProgressHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mProgressHandler:Lcom/mediatek/contacts/util/ProgressHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequestHandler:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;

    return-object v0
.end method

.method private doExportVCardToSDCard()V
    .locals 15

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;

    .line 254
    .local v1, adapter:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getCheckedItemIds()[J

    move-result-object v3

    .line 255
    .local v3, checkedIds:[J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v7, exportSelection:Ljava/lang/StringBuilder;
    const-string v12, "_id IN ("

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const/4 v4, 0x0

    .line 259
    .local v4, curIndex:I
    move-object v2, v3

    .local v2, arr$:[J
    array-length v11, v2

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v5, v4

    .end local v4           #curIndex:I
    .local v5, curIndex:I
    :goto_0
    if-ge v8, v11, :cond_1

    aget-wide v9, v2, v8

    .line 260
    .local v9, id:J
    const-string v12, "CopyMultiContacts"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "contactId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    add-int/lit8 v4, v5, 0x1

    .end local v5           #curIndex:I
    .restart local v4       #curIndex:I
    if-eqz v5, :cond_0

    .line 262
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v5, v4

    .end local v4           #curIndex:I
    .restart local v5       #curIndex:I
    goto :goto_0

    .line 264
    .end local v5           #curIndex:I
    .restart local v4       #curIndex:I
    :cond_0
    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 268
    .end local v4           #curIndex:I
    .end local v9           #id:J
    .restart local v5       #curIndex:I
    :cond_1
    const-string v12, ")"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v12, "CopyMultiContacts"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "doExportVCardToSDCard exportSelection is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-class v13, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v6, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v6, exportIntent:Landroid/content/Intent;
    const-string v12, "exportselection"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v12, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;

    instance-of v12, v12, Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz v12, :cond_2

    .line 275
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 276
    .local v0, account:Lcom/android/contacts/model/account/AccountWithDataSet;
    const-string v12, "dest_path"

    iget-object v13, v0, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    .end local v0           #account:Lcom/android/contacts/model/account/AccountWithDataSet;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x1b207

    invoke-virtual {v12, v6, v13}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 280
    return-void
.end method

.method private static getStoreType(Landroid/accounts/Account;)I
    .locals 2
    .parameter "account"

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    .line 212
    :cond_0
    const-string v0, "_STORAGE_ACCOUNT"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const/4 v0, 0x4

    goto :goto_0

    .line 214
    :cond_1
    const-string v0, "Local Phone Account"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    :cond_2
    const-string v0, "SIM Account"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    const/4 v0, 0x2

    goto :goto_0

    .line 218
    :cond_3
    const-string v0, "USIM Account"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    const/4 v0, 0x3

    goto :goto_0

    .line 220
    :cond_4
    const-string v0, "UIM Account"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    const/4 v0, 0x6

    goto :goto_0

    .line 225
    :cond_5
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 397
    const-string v1, "CopyMultiContacts"

    const-string v2, "registerReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.contacts.ACTION_PHB_LOAD_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, phbLoadIntentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mPHBLoadFinishReceiver:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    return-void
.end method

.method private static storeTypeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 229
    packed-switch p0, :pswitch_data_0

    .line 248
    const-string v0, "DST_STORE_TYPE_UNKNOWN"

    :goto_0
    return-object v0

    .line 231
    :pswitch_0
    const-string v0, "DST_STORE_TYPE_NONE"

    goto :goto_0

    .line 233
    :pswitch_1
    const-string v0, "DST_STORE_TYPE_PHONE"

    goto :goto_0

    .line 235
    :pswitch_2
    const-string v0, "DST_STORE_TYPE_SIM"

    goto :goto_0

    .line 237
    :pswitch_3
    const-string v0, "DST_STORE_TYPE_USIM"

    goto :goto_0

    .line 239
    :pswitch_4
    const-string v0, "DST_STORE_TYPE_STORAGE"

    goto :goto_0

    .line 241
    :pswitch_5
    const-string v0, "DST_STORE_TYPE_ACCOUNT"

    goto :goto_0

    .line 245
    :pswitch_6
    const-string v0, "DST_STORE_TYPE_UIM"

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private unRegisterReceiver()V
    .locals 2

    .prologue
    .line 406
    const-string v0, "CopyMultiContacts"

    const-string v1, "unRegisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mPHBLoadFinishReceiver:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 408
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-super {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->configureAdapter()V

    .line 108
    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3, v3, v3}, Lcom/android/contacts/list/ContactListFilter;->createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 110
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-super {p0, v0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->setListFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 111
    return-void
.end method

.method destroyMyself()V
    .locals 2

    .prologue
    .line 365
    const-string v0, "CopyMultiContacts"

    const-string v1, "destroyMyself"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 369
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mConnection:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 371
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 373
    :cond_1
    return-void
.end method

.method public isAccountFilterEnable()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 128
    const-string v0, "CopyMultiContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 89
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 90
    const-string v1, "CopyMultiContacts"

    const-string v2, "The ClassLoader of bundle is null, will reset it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 95
    :cond_0
    const-string v1, "fromaccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    .line 96
    const-string v1, "toaccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;

    .line 98
    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;

    invoke-static {v1}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->getStoreType(Landroid/accounts/Account;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mDstStoreType:I

    .line 101
    const-string v1, "CopyMultiContacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination store type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mDstStoreType:I

    invoke-static {v3}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->storeTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 412
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 413
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "CopyMultiContacts"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 123
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mProgressHandler:Lcom/mediatek/contacts/util/ProgressHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/util/ProgressHandler;->dismissDialog(Landroid/app/FragmentManager;)V

    .line 124
    return-void
.end method

.method public onOptionAction()V
    .locals 19

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getCheckedItemIds()[J

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c008d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 205
    :goto_0
    return-void

    .line 141
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mDstStoreType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 142
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mClickCounter:I

    if-lez v1, :cond_2

    .line 143
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mClickCounter:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mClickCounter:I

    .line 151
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mDstStoreType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->doExportVCardToSDCard()V

    goto :goto_0

    .line 145
    :cond_2
    const-string v1, "CopyMultiContacts"

    const-string v2, "Avoid re-entrence"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->startCopyService()V

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_4

    .line 157
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CopyMultiContacts"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mHandlerThread:Landroid/os/HandlerThread;

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 159
    new-instance v1, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;-><init>(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequestHandler:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;

    .line 162
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;

    .line 163
    .local v7, adapter:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
    invoke-virtual {v7}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->getListItemCache()Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;

    move-result-object v15

    .line 164
    .local v15, listItemCacher:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getCheckedItemIds()[J

    move-result-object v9

    .line 165
    .local v9, checkedIds:[J
    move-object v8, v9

    .local v8, arr$:[J
    array-length v14, v8

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v14, :cond_5

    aget-wide v11, v8, v10

    .line 166
    .local v11, id:J
    invoke-virtual {v15, v11, v12}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->getItemData(J)Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;

    move-result-object v13

    .line 167
    .local v13, item:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequests:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v1, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;

    iget v2, v13, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->contactIndicator:I

    int-to-long v2, v2

    iget v4, v13, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->simIndex:I

    long-to-int v5, v11

    iget-object v6, v13, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->displayName:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;-><init>(JIILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 171
    .end local v11           #id:J
    .end local v13           #item:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mDstStoreType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mDstStoreType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mDstStoreType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_9

    .line 174
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;

    check-cast v1, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v1}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getSlotId()I

    move-result v17

    .line 182
    .local v17, slot:I
    invoke-static/range {v17 .. v17}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 183
    invoke-static/range {v17 .. v17}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->isServiceRunning(I)Z

    move-result v16

    .line 184
    .local v16, serviceRunning:Z
    const-string v1, "CopyMultiContacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractService state is running? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-eqz v16, :cond_7

    .line 186
    const-string v1, "CopyMultiContacts"

    const-string v2, "service is running, we would wait the service finished."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->registerReceiver()V

    goto/16 :goto_0

    .line 189
    :cond_7
    const-string v1, "CopyMultiContacts"

    const-string v2, "service is finished."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequestHandler:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequestHandler:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;

    const/16 v3, 0x64

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequests:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 195
    .end local v16           #serviceRunning:Z
    :cond_8
    const-string v1, "CopyMultiContacts"

    const-string v2, "[onOptionAction] isPhoneBookReady return false."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0082

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;II)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->destroyMyself()V

    goto/16 :goto_0

    .line 201
    .end local v17           #slot:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequestHandler:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequestHandler:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;

    const/16 v3, 0x64

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequests:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method startCopyService()V
    .locals 4

    .prologue
    .line 355
    new-instance v1, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;-><init>(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$1;)V

    iput-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mConnection:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;

    .line 357
    const-string v1, "CopyMultiContacts"

    const-string v2, "Bind to MultiChoiceService."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 361
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mConnection:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 362
    return-void
.end method
