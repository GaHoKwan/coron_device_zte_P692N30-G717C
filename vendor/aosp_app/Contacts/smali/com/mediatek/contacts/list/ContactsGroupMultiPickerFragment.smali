.class public Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;
.super Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;
.source "ContactsGroupMultiPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;,
        Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$SimReceiver;,
        Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;,
        Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final MAX_OP_COUNT_IN_ONE_BATCH:I = 0x96

.field private static final TAG:Ljava/lang/String;

.field private static mIsMoveContactsInProcessing:Z

.field private static sSelectedContactsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountName:Ljava/lang/String;

.field private mFromPgroupId:J

.field private mFromUgroupName:Ljava/lang/String;

.field private mGroupQueryToken:I

.field private mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

.field private mMoveGroupTask:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

.field private mQueryHandler:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->sSelectedContactsMap:Ljava/util/HashMap;

    .line 620
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mIsMoveContactsInProcessing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mAccount:Landroid/accounts/Account;

    .line 551
    iput-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    .line 552
    iput-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mQueryHandler:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;

    .line 553
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mGroupQueryToken:I

    .line 554
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mSlotId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mGroupQueryToken:I

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    return-object p1
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->sSelectedContactsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput-boolean p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mIsMoveContactsInProcessing:Z

    return p0
.end method

.method static synthetic access$800(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveGroupTask:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;)Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveGroupTask:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    return-object p1
.end method

.method public static declared-synchronized isMoveContactsInProcessing()Z
    .locals 2

    .prologue
    .line 622
    const-class v0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mIsMoveContactsInProcessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 148
    new-instance v0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 150
    .local v0, adapter:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 152
    invoke-virtual {v0, v3}, Lcom/android/contacts/widget/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 153
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 155
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 157
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mFromUgroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;->setGroupTitle(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerAdapter;->setGroupAccount(Landroid/accounts/Account;)V

    .line 161
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 67
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "mGroupName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mFromUgroupName:Ljava/lang/String;

    .line 68
    const-string v2, "mAccountName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mAccountName:Ljava/lang/String;

    .line 69
    const-string v2, "mSlotId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mSlotId:I

    .line 70
    const-string v2, "mGroupId"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mFromPgroupId:J

    .line 71
    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iput-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mAccount:Landroid/accounts/Account;

    .line 73
    sget-object v2, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreate]mFromUgroupName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mFromUgroupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|mFromPgroupId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mFromPgroupId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|mSlotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|mAccountName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->showFilterHeader(Z)V

    .line 79
    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$SimReceiver;

    invoke-direct {v2, p0}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$SimReceiver;-><init>(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)V

    iput-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    sget-object v2, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->TAG:Ljava/lang/String;

    const-string v3, "registerReceiver mReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 90
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 91
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    sget-object v1, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->TAG:Ljava/lang/String;

    const-string v2, "unregisterReceiver mReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveGroupTask:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveGroupTask:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    .line 98
    .local v0, result:Z
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveGroupTask:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    invoke-virtual {v1, v3}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;->setMoveSwitcher(Z)V

    .line 99
    sget-boolean v1, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mIsMoveContactsInProcessing:Z

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0063

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 102
    :cond_1
    sget-object v1, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestory(), Cancel result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v0           #result:Z
    :cond_2
    return-void
.end method

.method public onOptionAction()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getCheckedItemIds()[J

    move-result-object v2

    .line 110
    .local v2, checkedIds:[J
    array-length v9, v2

    if-nez v9, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c008d

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 144
    :goto_0
    return-void

    .line 114
    :cond_0
    sget-object v9, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->sSelectedContactsMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;

    .line 117
    .local v0, adapter:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
    const/4 v8, 0x0

    .line 118
    .local v8, simIndex:I
    const/4 v6, 0x0

    .line 119
    .local v6, indexSimOrPhone:I
    move-object v1, v2

    .local v1, arr$:[J
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v7, :cond_2

    aget-wide v4, v1, v3

    .line 121
    .local v4, id:J
    sget-object v9, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "contactId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v0}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->getListItemCache()Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->getItemData(J)Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;

    move-result-object v9

    if-nez v9, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c0040

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 129
    sget-object v9, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->TAG:Ljava/lang/String;

    const-string v10, " onOptionAction() getItemData(id) = null,return!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->getListItemCache()Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->getItemData(J)Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;

    move-result-object v9

    iget v8, v9, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->simIndex:I

    .line 135
    invoke-virtual {v0}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->getListItemCache()Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->getItemData(J)Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;

    move-result-object v9

    iget v6, v9, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->contactIndicator:I

    .line 136
    sget-object v9, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->sSelectedContactsMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v11, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;

    invoke-direct {v11}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;-><init>()V

    invoke-virtual {v11, v8, v6}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->initData(II)Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 140
    .end local v4           #id:J
    :cond_2
    sget-object v9, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onOptionAction]selectedContactsMap size"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->sSelectedContactsMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->startTargetGroupQuery()V

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 628
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onStop()V

    .line 636
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    sget-object v0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->TAG:Ljava/lang/String;

    const-string v1, "[onStop]the MoveDialog dismiss and reset"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    .line 643
    :cond_0
    return-void
.end method

.method public startTargetGroupQuery()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 601
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mQueryHandler:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;-><init>(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mQueryHandler:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;

    .line 605
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 606
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "mAccountName"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 607
    .local v8, accountName:Ljava/lang/String;
    const-string v0, "mGroupId"

    const-wide/16 v4, -0x1

    invoke-virtual {v9, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 608
    .local v10, originalGroupId:J
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 610
    .local v3, viewGroupUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mQueryHandler:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;

    iget v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mGroupQueryToken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mGroupQueryToken:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_name= \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " !="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "auto_add"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=0 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "favorites"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=0 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "deleted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    return-void
.end method
