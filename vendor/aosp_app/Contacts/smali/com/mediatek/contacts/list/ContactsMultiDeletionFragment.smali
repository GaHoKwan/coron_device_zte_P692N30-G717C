.class public Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;
.super Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;
.source "ContactsMultiDeletionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$1;,
        Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;,
        Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;,
        Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$ConfirmDialog;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "confirm"

.field public static final TAG:Ljava/lang/String; = "ContactsMultiDeletionFragment"


# instance fields
.field private mConnection:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRequestHandler:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;

.field private mRetryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;-><init>()V

    .line 48
    const/16 v0, 0x14

    iput v0, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mRetryCount:I

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->handleDelete()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;)Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mConnection:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;

    return-object v0
.end method

.method static synthetic access$210(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mRetryCount:I

    return v0
.end method

.method private dismissDialogIfNeeded()V
    .locals 4

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 220
    .local v0, dialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 221
    const-string v1, "ContactsMultiDeletionFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dismissDialogIfNeeded]dismiss the dialog fragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v1, "ContactsMultiDeletionFragment"

    const-string v2, "[dismissDialogIfNeeded]no dialog found"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleDelete()V
    .locals 17

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mConnection:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "ContactsMultiDeletionFragment"

    const-string v2, "[handleDelete]abort due to mConnection is null"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->startDeleteService()V

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 105
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ContactsMultiDeletionFragment"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mHandlerThread:Landroid/os/HandlerThread;

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 107
    new-instance v1, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;-><init>(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mRequestHandler:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;

    .line 110
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v16, requests:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/list/service/MultiChoiceRequest;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;

    .line 113
    .local v7, adapter:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
    invoke-virtual {v7}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->getListItemCache()Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;

    move-result-object v15

    .line 114
    .local v15, listItemCacher:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getCheckedItemIds()[J

    move-result-object v9

    .line 115
    .local v9, checkedIds:[J
    move-object v8, v9

    .local v8, arr$:[J
    array-length v14, v8

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v14, :cond_2

    aget-wide v11, v8, v10

    .line 116
    .local v11, id:J
    invoke-virtual {v15, v11, v12}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->getItemData(J)Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;

    move-result-object v13

    .line 117
    .local v13, item:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;
    new-instance v1, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;

    iget v2, v13, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->contactIndicator:I

    int-to-long v2, v2

    iget v4, v13, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->simIndex:I

    long-to-int v5, v11

    iget-object v6, v13, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->displayName:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;-><init>(JIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 125
    .end local v11           #id:J
    .end local v13           #item:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mRequestHandler:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mRequestHandler:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;

    const/16 v3, 0x64

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 128
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mRequestHandler:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mRequestHandler:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 52
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method destroyMyself()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "ContactsMultiDeletionFragment"

    const-string v1, "destroyMyself."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mConnection:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "ContactsMultiDeletionFragment"

    const-string v1, "mHandlerThread quit."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 212
    :cond_1
    return-void
.end method

.method public getMultiChoiceLimitCount()I
    .locals 4

    .prologue
    .line 236
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactListExtension()Lcom/android/contacts/ext/ContactListExtension;

    move-result-object v1

    const-string v2, "ExtensionForOP01"

    invoke-virtual {v1, v2}, Lcom/android/contacts/ext/ContactListExtension;->getMultiChoiceLimitCount(Ljava/lang/String;)I

    move-result v0

    .line 238
    .local v0, allowdMaxItemsFromPlugin:I
    const-string v1, "ContactsMultiDeletionFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[providAllowedMaxItems] allowdMaxItemsFromPlugin is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 242
    .end local v0           #allowdMaxItemsFromPlugin:I
    :goto_0
    return v0

    .restart local v0       #allowdMaxItemsFromPlugin:I
    :cond_0
    invoke-super {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getMultiChoiceLimitCount()I

    move-result v0

    goto :goto_0
.end method

.method public onOptionAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getCheckedItemIds()[J

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c008d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$ConfirmDialog;

    invoke-direct {v0}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$ConfirmDialog;-><init>()V

    .line 64
    .local v0, cDialog:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$ConfirmDialog;
    invoke-virtual {v0, p0, v3}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onStart()V

    .line 231
    invoke-direct {p0}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->dismissDialogIfNeeded()V

    .line 232
    return-void
.end method

.method startDeleteService()V
    .locals 4

    .prologue
    .line 193
    new-instance v1, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;-><init>(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$1;)V

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mConnection:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;

    .line 195
    const-string v1, "ContactsMultiDeletionFragment"

    const-string v2, "Bind to MultiChoiceService."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mConnection:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 200
    return-void
.end method
