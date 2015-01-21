.class public Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;
.super Landroid/app/Activity;
.source "BluetoothShareTabActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity$BtShareClearHistoryThread;
    }
.end annotation


# static fields
.field private static final CLEAR_ALL_TASK:I = 0x2

.field private static final CLEAR_SHARE_TASK:I = 0x1

.field private static final EXTRA_KEY_DIR:Ljava/lang/String; = "isOutgoing"

.field private static final INCOMING_SELECTION:Ljava/lang/String; = "type in (11,2,31) AND state in (8,7)"

.field private static final OUTGOING_SELECTION:Ljava/lang/String; = "type in (1,12,21) AND state in (8,7)"

.field private static mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

.field private static sHandler:Landroid/os/Handler;

.field public static sIsClearThreadWorking:Z


# instance fields
.field private mClearWorkThread:Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity$BtShareClearHistoryThread;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->sIsClearThreadWorking:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    .line 329
    return-void
.end method

.method private clearShareTask(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 183
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void
.end method

.method protected static getIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "isOutgoing"

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isOutgoing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    return-object v0
.end method


# virtual methods
.method public clearAllTasks()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 161
    iget-object v5, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, columnIndex:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v4, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v5, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 165
    iget-object v5, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 166
    .local v1, id:I
    sget-object v5, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 167
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v5, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 170
    .end local v1           #id:I
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    new-array v2, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 173
    .local v2, param:[Ljava/lang/Object;
    sget-object v5, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->sHandler:Landroid/os/Handler;

    sget-object v6, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->sHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    return-void
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 273
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 321
    const-string v0, "handleMessage: Unknown Message!"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 326
    :cond_0
    :goto_0
    return v9

    .line 277
    :pswitch_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v8, updateValues:Landroid/content/ContentValues;
    const-string v0, "state"

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0, v8, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 282
    const-string v0, "clear all items in list and trigger check event"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 283
    const/4 v6, 0x0

    .line 285
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "state in (8,7)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 290
    const-string v0, "No record to be showed and cancel notification"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 291
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Lcom/mediatek/bluetooth/util/NotificationFactory;->NID_SHARE_MGMT_NOTIFICATION:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_1
    if-eqz v6, :cond_0

    .line 300
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 300
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 306
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #updateValues:Landroid/content/ContentValues;
    :pswitch_1
    sget-boolean v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->sIsClearThreadWorking:Z

    if-eqz v0, :cond_3

    .line 308
    const-string v0, "ClearThread is working, ignore current message."

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    .line 313
    .local v7, param:[Ljava/lang/Object;
    new-instance v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity$BtShareClearHistoryThread;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aget-object v2, v7, v9

    aput-object v2, v1, v9

    aget-object v2, v7, v3

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity$BtShareClearHistoryThread;-><init>(Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mClearWorkThread:Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity$BtShareClearHistoryThread;

    .line 316
    iget-object v0, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mClearWorkThread:Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity$BtShareClearHistoryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult::resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 262
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 264
    :cond_0
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getTaskUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->clearShareTask(Landroid/net/Uri;)V

    .line 266
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 108
    const-string v0, "BluetoothShareTabActivity.onCreate()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 113
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "isOutgoing"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 116
    .local v7, isOutgoing:Z
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 117
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 120
    .local v9, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    if-eqz v7, :cond_2

    const-string v3, "type in (1,12,21) AND state in (8,7)"

    :goto_0
    const-string v5, "_id DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    .line 124
    iget-object v0, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 126
    new-instance v8, Lcom/mediatek/bluetooth/share/BluetoothShareTabAdapter;

    const v0, 0x7f030017

    iget-object v1, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v8, p0, v0, v1}, Lcom/mediatek/bluetooth/share/BluetoothShareTabAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 128
    .local v8, listAdapter:Lcom/mediatek/bluetooth/share/BluetoothShareTabAdapter;
    invoke-virtual {v9, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    const/high16 v0, 0x100

    invoke-virtual {v9, v0}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 130
    invoke-virtual {v9, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 131
    invoke-virtual {v9, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    .end local v8           #listAdapter:Lcom/mediatek/bluetooth/share/BluetoothShareTabAdapter;
    :cond_0
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->sHandler:Landroid/os/Handler;

    .line 140
    :cond_1
    invoke-static {v7, p0}, Lcom/mediatek/bluetooth/share/BluetoothShareMgmtActivity;->registerTabActivity(ZLcom/mediatek/bluetooth/share/BluetoothShareTabActivity;)V

    .line 141
    return-void

    .line 120
    :cond_2
    const-string v3, "type in (11,2,31) AND state in (8,7)"

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 149
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 194
    new-instance v0, Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    iget-object v1, p0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;-><init>(Landroid/database/Cursor;)V

    sput-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    .line 196
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getDirection()Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;->in:Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;

    if-ne v0, v1, :cond_2

    .line 198
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 201
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getData()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mediatek/bluetooth/util/SystemUtils;->getOpenFileIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 202
    .local v8, openFileIntent:Landroid/content/Intent;
    invoke-virtual {p0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 203
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getTaskUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->clearShareTask(Landroid/net/Uri;)V

    .line 258
    .end local v8           #openFileIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 206
    const v0, 0x7f070169

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07016c

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v5, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getObjectName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    sget-object v5, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getPeerName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07016b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/activity/MessageActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 211
    .local v6, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 213
    .end local v6           #intent:Landroid/content/Intent;
    :cond_2
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getDirection()Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;->out:Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;

    if-ne v0, v1, :cond_0

    .line 214
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v7, 0x0

    .line 217
    .local v7, isFileValid:Z
    :goto_1
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    if-nez v7, :cond_3

    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/data/com.mediatek.bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v4, resendIntent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 223
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v0, "android.intent.extra.STREAM"

    sget-object v1, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getObjectUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sget-object v2, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getPeerAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    const v0, 0x7f070169

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f07016d

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v5, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getObjectName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    sget-object v5, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getPeerName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f07016a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f07016b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/activity/MessageActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 237
    .restart local v6       #intent:Landroid/content/Intent;
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 214
    .end local v4           #resendIntent:Landroid/content/Intent;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #isFileValid:Z
    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    goto/16 :goto_1

    .line 238
    .restart local v7       #isFileValid:Z
    :cond_5
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 239
    const v0, 0x7f070169

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070173

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v5, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getObjectName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    sget-object v5, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getPeerName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07016b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/activity/MessageActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 244
    .restart local v6       #intent:Landroid/content/Intent;
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 245
    .end local v6           #intent:Landroid/content/Intent;
    :cond_6
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 247
    const v0, 0x7f070169

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07016e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v5, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getObjectName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    sget-object v5, Lcom/mediatek/bluetooth/share/BluetoothShareTabActivity;->mTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getPeerName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07016b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/activity/MessageActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 252
    .restart local v6       #intent:Landroid/content/Intent;
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
