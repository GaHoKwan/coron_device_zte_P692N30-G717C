.class public Lcom/mediatek/omacp/message/OmacpMessageList;
.super Landroid/app/ListActivity;
.source "OmacpMessageList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;,
        Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;
    }
.end annotation


# static fields
.field private static final ALLMESSAGESURI:Landroid/net/Uri; = null

.field private static final ALL_MESSAGES_PROJECTION:[Ljava/lang/String; = null

.field private static final APP_CAPABILITY_ACTION:Ljava/lang/String; = "com.mediatek.omacp.capability"

.field private static final APP_CAPABILITY_RESULT_ACTION:Ljava/lang/String; = "com.mediatek.omacp.capability.result"

.field private static final APP_ID_KEY:Ljava/lang/String; = "appId"

.field static final BODY:I = 0xd

.field static final CONTEXT:I = 0xe

.field private static final CONTEXT_MENU_DELETE:I = 0x3e9

.field private static final CONTEXT_MENU_VIEW:I = 0x3e8

.field private static final CONTEXT_MENU_VIEW_MESSAGE_DETAIL:I = 0x3ea

.field static final DATE:I = 0x6

.field private static final DEBUG:Z = true

.field public static final DELETE_MESSAGE_TOKEN:I = 0x641

.field static final ID:I = 0x0

.field static final INSTALLED:I = 0x7

.field static final MAC:I = 0xa

.field private static final MESSAGE_LIST_QUERY_TOKEN:I = 0x640

.field static final MILLISECOND:I = 0x3e8

.field static final MIME_TYPE:I = 0xf

.field private static final OPTION_MENU_DELETE_ALL:I = 0x64

.field static final PIN_LOCK:I = 0x8

.field static final READ:I = 0x5

.field static final SEC:I = 0x9

.field static final SEEN:I = 0x4

.field private static final SEEN_PROJECTION:[Ljava/lang/String; = null

.field static final SENDER:I = 0x2

.field static final SERVICE_CENTER:I = 0x3

.field static final SIM_ID:I = 0x1

.field static final SUMMARY:I = 0xc

.field private static final TAG:Ljava/lang/String; = "Omacp/OmacpMessageList"

.field static final TITLE:I = 0xb


# instance fields
.field private final mContentChangedListener:Lcom/mediatek/omacp/message/OmacpMessageListAdapter$OnContentChangedListener;

.field private final mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mDetailDialog:Landroid/app/AlertDialog;

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private mListAdapter:Lcom/mediatek/omacp/message/OmacpMessageListAdapter;

.field private mMessageId:J

.field private mQueryHandler:Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    sget-object v0, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageList;->ALLMESSAGESURI:Landroid/net/Uri;

    .line 110
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sim_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "sender"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "seen"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "installed"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pin_unlock"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sec"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mac"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "context"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageList;->ALL_MESSAGES_PROJECTION:[Ljava/lang/String;

    .line 154
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "seen"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageList;->SEEN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mMessageId:J

    .line 221
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageList$1;

    invoke-direct {v0, p0}, Lcom/mediatek/omacp/message/OmacpMessageList$1;-><init>(Lcom/mediatek/omacp/message/OmacpMessageList;)V

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 423
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageList$2;

    invoke-direct {v0, p0}, Lcom/mediatek/omacp/message/OmacpMessageList$2;-><init>(Lcom/mediatek/omacp/message/OmacpMessageList;)V

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 496
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageList$3;

    invoke-direct {v0, p0}, Lcom/mediatek/omacp/message/OmacpMessageList$3;-><init>(Lcom/mediatek/omacp/message/OmacpMessageList;)V

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 518
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageList$4;

    invoke-direct {v0, p0}, Lcom/mediatek/omacp/message/OmacpMessageList$4;-><init>(Lcom/mediatek/omacp/message/OmacpMessageList;)V

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mContentChangedListener:Lcom/mediatek/omacp/message/OmacpMessageListAdapter$OnContentChangedListener;

    .line 646
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageList;->handleBrowserCapability(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageList;->handleMmsCapability(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/omacp/message/OmacpMessageList;)Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mQueryHandler:Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/omacp/message/OmacpMessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageList;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/omacp/message/OmacpMessageList;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/mediatek/omacp/message/OmacpMessageList;->blockingMarkAllMessagesAsSeen(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageList;->handleDmCapability(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageList;->handleEmailCapability(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageList;->handleRtspCapability(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageList;->handleSuplCapability(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageList;->handleDsCapability(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageList;->handleImpsCapability(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/omacp/message/OmacpMessageList;)Lcom/mediatek/omacp/message/OmacpMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mListAdapter:Lcom/mediatek/omacp/message/OmacpMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/omacp/message/OmacpMessageList;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mMessageId:J

    return-wide p1
.end method

.method private static blockingMarkAllMessagesAsSeen(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 584
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 585
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/omacp/message/OmacpMessageList;->SEEN_PROJECTION:[Ljava/lang/String;

    const-string v3, "seen=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 588
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 590
    .local v6, count:I
    if-eqz v7, :cond_0

    .line 592
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 594
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 598
    :cond_0
    if-nez v6, :cond_1

    .line 610
    :goto_0
    return-void

    .line 594
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 603
    :cond_1
    const-string v1, "Omacp/OmacpMessageList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OmacpMessageList mark "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " messages as seen."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 607
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "seen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    sget-object v1, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "seen=0"

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;ZLandroid/content/Context;)V
    .locals 4
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "context"

    .prologue
    const v3, 0x7f050005

    .line 636
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 637
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p1, :cond_0

    const v1, 0x7f050010

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 644
    return-void

    .line 637
    :cond_0
    const v1, 0x7f050011

    goto :goto_0
.end method

.method private getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v5, 0xa

    .line 696
    if-nez p2, :cond_0

    .line 697
    const-string v4, "Omacp/OmacpMessageList"

    const-string v5, "OmacpMessageList getMessageDetails cursor is null."

    invoke-static {v4, v5}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const/4 v4, 0x0

    .line 719
    :goto_0
    return-object v4

    .line 701
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .local v2, details:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 705
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f05000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    const v4, 0x7f05000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    const v4, 0x7f05000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const/4 v4, 0x6

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .line 717
    .local v0, date:J
    const/4 v4, 0x1

    invoke-static {p1, v0, v1, v4}, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private handleBrowserCapability(Landroid/content/Intent;)V
    .locals 2
    .parameter "it"

    .prologue
    const/4 v1, 0x0

    .line 410
    const-string v0, "browser"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowser:Z

    .line 411
    const-string v0, "browser_bookmark_folder"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserBookMarkFolder:Z

    .line 413
    const-string v0, "browser_to_proxy"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserToProxy:Z

    .line 414
    const-string v0, "browser_to_napid"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserToNapId:Z

    .line 415
    const-string v0, "browser_bookmark_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserBookMarkName:Z

    .line 417
    const-string v0, "browser_bookmark"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserBookMark:Z

    .line 418
    const-string v0, "browser_username"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserUserName:Z

    .line 419
    const-string v0, "browser_password"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserPassWord:Z

    .line 420
    const-string v0, "browser_homepage"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserHomePage:Z

    .line 421
    return-void
.end method

.method private handleDmCapability(Landroid/content/Intent;)V
    .locals 2
    .parameter "it"

    .prologue
    const/4 v1, 0x0

    .line 379
    const-string v0, "dm"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDm:Z

    .line 380
    const-string v0, "dm_provider_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmProviderId:Z

    .line 381
    const-string v0, "dm_server_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmServerName:Z

    .line 382
    const-string v0, "dm_to_proxy"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmToProxy:Z

    .line 383
    const-string v0, "dm_to_napid"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmToNapid:Z

    .line 384
    const-string v0, "dm_server_address"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmServerAddress:Z

    .line 386
    const-string v0, "dm_addr_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAddrType:Z

    .line 387
    const-string v0, "dm_port_number"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmPortNumber:Z

    .line 388
    const-string v0, "dm_auth_level"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthLevel:Z

    .line 389
    const-string v0, "dm_auth_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthType:Z

    .line 390
    const-string v0, "dm_auth_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthName:Z

    .line 391
    const-string v0, "dm_auth_secret"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthSecret:Z

    .line 392
    const-string v0, "dm_auth_data"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthData:Z

    .line 393
    const-string v0, "dm_init"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmInit:Z

    .line 394
    return-void
.end method

.method private handleDsCapability(Landroid/content/Intent;)V
    .locals 2
    .parameter "it"

    .prologue
    const/4 v1, 0x0

    .line 286
    const-string v0, "ds"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDs:Z

    .line 287
    const-string v0, "ds_server_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsServerName:Z

    .line 288
    const-string v0, "ds_to_proxy"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsToProxy:Z

    .line 289
    const-string v0, "ds_to_napid"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsToNapid:Z

    .line 290
    const-string v0, "ds_provider_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsProviderId:Z

    .line 291
    const-string v0, "ds_server_address"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsServerAddress:Z

    .line 293
    const-string v0, "ds_address_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAddressType:Z

    .line 294
    const-string v0, "ds_port_number"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsPortNumber:Z

    .line 295
    const-string v0, "ds_auth_level"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthLevel:Z

    .line 296
    const-string v0, "ds_auth_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthType:Z

    .line 297
    const-string v0, "ds_auth_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthName:Z

    .line 298
    const-string v0, "ds_auth_secret"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthSecret:Z

    .line 299
    const-string v0, "ds_auth_data"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthData:Z

    .line 300
    const-string v0, "ds_database_content_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseContentType:Z

    .line 302
    const-string v0, "ds_database_url"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseUrl:Z

    .line 303
    const-string v0, "ds_database_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseName:Z

    .line 304
    const-string v0, "ds_database_auth_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseAuthType:Z

    .line 306
    const-string v0, "ds_database_auth_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseAuthName:Z

    .line 308
    const-string v0, "ds_database_auth_secret"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseAuthSecret:Z

    .line 310
    const-string v0, "ds_client_database_url"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsClientDatabaseUrl:Z

    .line 312
    const-string v0, "ds_sync_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsSyncType:Z

    .line 313
    return-void
.end method

.method private handleEmailCapability(Landroid/content/Intent;)V
    .locals 2
    .parameter "it"

    .prologue
    const/4 v1, 0x0

    .line 340
    const-string v0, "email"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmail:Z

    .line 341
    const-string v0, "email_provider_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailProviderId:Z

    .line 343
    const-string v0, "email_setting_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailSettingName:Z

    .line 345
    const-string v0, "email_to_napid"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailToNapid:Z

    .line 346
    const-string v0, "email_outbound_addr"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundAddr:Z

    .line 348
    const-string v0, "email_outbound_addr_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundAddrType:Z

    .line 350
    const-string v0, "email_outbound_port_number"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundPortNumber:Z

    .line 352
    const-string v0, "email_outbound_secure"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundSecure:Z

    .line 354
    const-string v0, "email_outbound_auth_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundAuthType:Z

    .line 356
    const-string v0, "email_outbound_user_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundUserName:Z

    .line 358
    const-string v0, "email_outbound_password"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundPassword:Z

    .line 360
    const-string v0, "email_from"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailFrom:Z

    .line 361
    const-string v0, "email_rt_addr"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailRtAddr:Z

    .line 362
    const-string v0, "email_inbound_addr"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundAddr:Z

    .line 364
    const-string v0, "email_inbound_addr_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundAddrType:Z

    .line 366
    const-string v0, "email_inbound_port_number"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundPortNumber:Z

    .line 368
    const-string v0, "email_inbound_secure"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundSecure:Z

    .line 370
    const-string v0, "email_inbound_auth_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundAuthType:Z

    .line 372
    const-string v0, "email_inbound_user_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundUserName:Z

    .line 374
    const-string v0, "email_inbound_password"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundPassword:Z

    .line 376
    return-void
.end method

.method private handleImpsCapability(Landroid/content/Intent;)V
    .locals 2
    .parameter "it"

    .prologue
    const/4 v1, 0x0

    .line 266
    const-string v0, "imps"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImps:Z

    .line 267
    const-string v0, "imps_provider_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsProviderId:Z

    .line 268
    const-string v0, "imps_server_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsServerName:Z

    .line 269
    const-string v0, "imps_content_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsContentType:Z

    .line 271
    const-string v0, "imps_server_address"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsServerAddress:Z

    .line 273
    const-string v0, "imps_address_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsAddressType:Z

    .line 275
    const-string v0, "imps_to_proxy"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsToProxy:Z

    .line 276
    const-string v0, "imps_to_napid"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsToNapid:Z

    .line 277
    const-string v0, "imps_auth_level"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsAuthLevel:Z

    .line 278
    const-string v0, "imps_auth_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsAuthName:Z

    .line 279
    const-string v0, "imps_auth_secret"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsAuthSecret:Z

    .line 280
    const-string v0, "imps_services"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsServices:Z

    .line 281
    const-string v0, "imps_client_id_prefix"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsClientIdPrefix:Z

    .line 283
    return-void
.end method

.method private handleMmsCapability(Landroid/content/Intent;)V
    .locals 2
    .parameter "it"

    .prologue
    const/4 v1, 0x0

    .line 397
    const-string v0, "mms"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMms:Z

    .line 398
    const-string v0, "mms_mmsc_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsMmscName:Z

    .line 399
    const-string v0, "mms_to_proxy"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsToProxy:Z

    .line 400
    const-string v0, "mms_to_napid"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsToNapid:Z

    .line 401
    const-string v0, "mms_mmsc"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsMmsc:Z

    .line 402
    const-string v0, "mms_cm"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsCm:Z

    .line 403
    const-string v0, "mms_rm"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsRm:Z

    .line 404
    const-string v0, "mms_ms"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsMs:Z

    .line 405
    const-string v0, "mms_pc_addr"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsPcAddr:Z

    .line 406
    const-string v0, "mms_ma"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsMa:Z

    .line 407
    return-void
.end method

.method private handleRtspCapability(Landroid/content/Intent;)V
    .locals 2
    .parameter "it"

    .prologue
    const/4 v1, 0x0

    .line 325
    const-string v0, "rtsp"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtsp:Z

    .line 326
    const-string v0, "rtsp_provider_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspProviderId:Z

    .line 327
    const-string v0, "rtsp_server_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspName:Z

    .line 328
    const-string v0, "rtsp_to_proxy"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspToProxy:Z

    .line 329
    const-string v0, "rtsp_to_napid"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspToNapid:Z

    .line 330
    const-string v0, "rtsp_max_bandwidth"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspMaxBandwidth:Z

    .line 332
    const-string v0, "rtsp_net_info"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspNetInfo:Z

    .line 333
    const-string v0, "rtsp_min_udp_port"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspMinUdpPort:Z

    .line 335
    const-string v0, "rtsp_max_udp_port"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspMaxUdpPort:Z

    .line 337
    return-void
.end method

.method private handleSuplCapability(Landroid/content/Intent;)V
    .locals 2
    .parameter "it"

    .prologue
    const/4 v1, 0x0

    .line 316
    const-string v0, "supl"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSupl:Z

    .line 317
    const-string v0, "supl_provider_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplProviderId:Z

    .line 318
    const-string v0, "supl_server_name"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplServerName:Z

    .line 319
    const-string v0, "supl_to_napid"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplToNapid:Z

    .line 320
    const-string v0, "supl_server_addr"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplServerAddr:Z

    .line 321
    const-string v0, "supl_addr_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplAddrType:Z

    .line 322
    return-void
.end method

.method private initListAdapter()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mListAdapter:Lcom/mediatek/omacp/message/OmacpMessageListAdapter;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/omacp/message/OmacpMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mListAdapter:Lcom/mediatek/omacp/message/OmacpMessageListAdapter;

    .line 513
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mListAdapter:Lcom/mediatek/omacp/message/OmacpMessageListAdapter;

    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mContentChangedListener:Lcom/mediatek/omacp/message/OmacpMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/omacp/message/OmacpMessageListAdapter;->setOnContentChangedListener(Lcom/mediatek/omacp/message/OmacpMessageListAdapter$OnContentChangedListener;)V

    .line 514
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mListAdapter:Lcom/mediatek/omacp/message/OmacpMessageListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 516
    :cond_0
    return-void
.end method

.method public static markAllMessagesAsSeen(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 575
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/omacp/message/OmacpMessageList$5;

    invoke-direct {v1, p0}, Lcom/mediatek/omacp/message/OmacpMessageList$5;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 581
    return-void
.end method

.method private openMessage(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 692
    invoke-static {p0, p1, p2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 693
    return-void
.end method

.method private startAsyncQuery()V
    .locals 9

    .prologue
    .line 614
    const v0, 0x7f050009

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 615
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 616
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mQueryHandler:Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;

    const/16 v1, 0x640

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 617
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mQueryHandler:Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;

    const/16 v1, 0x640

    const/4 v2, 0x0

    sget-object v3, Lcom/mediatek/omacp/message/OmacpMessageList;->ALLMESSAGESURI:Landroid/net/Uri;

    sget-object v4, Lcom/mediatek/omacp/message/OmacpMessageList;->ALL_MESSAGES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v8

    .line 620
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 442
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mListAdapter:Lcom/mediatek/omacp/message/OmacpMessageListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 443
    .local v0, cursor:Landroid/database/Cursor;
    iget-wide v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mMessageId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 444
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 463
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 446
    :pswitch_0
    new-instance v2, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;

    iget-wide v3, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mMessageId:J

    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mQueryHandler:Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Lcom/mediatek/omacp/message/OmacpMessageList;->confirmDeleteMessageDialog(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;ZLandroid/content/Context;)V

    goto :goto_0

    .line 450
    :pswitch_1
    iget-wide v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mMessageId:J

    invoke-direct {p0, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageList;->openMessage(J)V

    goto :goto_0

    .line 453
    :pswitch_2
    invoke-direct {p0, p0, v0}, Lcom/mediatek/omacp/message/OmacpMessageList;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, messageDetails:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f05000b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mDetailDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 170
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mTitle:Ljava/lang/CharSequence;

    .line 172
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 174
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 175
    .local v1, listView:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 176
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 178
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageList;->initListAdapter()V

    .line 180
    new-instance v2, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;-><init>(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mQueryHandler:Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;

    .line 183
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mResultReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.mediatek.omacp.capability.result"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.mediatek.omacp.capability"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mListAdapter:Lcom/mediatek/omacp/message/OmacpMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 194
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 195
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 489
    instance-of v2, p2, Lcom/mediatek/omacp/message/OmacpMessageListItem;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 490
    check-cast v1, Lcom/mediatek/omacp/message/OmacpMessageListItem;

    .line 491
    .local v1, itemView:Lcom/mediatek/omacp/message/OmacpMessageListItem;
    invoke-virtual {v1}, Lcom/mediatek/omacp/message/OmacpMessageListItem;->getConversationHeader()Lcom/mediatek/omacp/message/OmacpMessageListItemData;

    move-result-object v0

    .line 492
    .local v0, ch:Lcom/mediatek/omacp/message/OmacpMessageListItemData;
    invoke-virtual {v0}, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->getMessageId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageList;->openMessage(J)V

    .line 494
    .end local v0           #ch:Lcom/mediatek/omacp/message/OmacpMessageListItemData;
    .end local v1           #itemView:Lcom/mediatek/omacp/message/OmacpMessageListItem;
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageList;->startAsyncQuery()V

    .line 219
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 480
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 481
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mQueryHandler:Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    invoke-static {v0, v4, p0}, Lcom/mediatek/omacp/message/OmacpMessageList;->confirmDeleteMessageDialog(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;ZLandroid/content/Context;)V

    .line 484
    :cond_0
    return v4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 468
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 470
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList;->mListAdapter:Lcom/mediatek/omacp/message/OmacpMessageListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 471
    const/16 v0, 0x64

    const v1, 0x7f050007

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 475
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 200
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageList;->startAsyncQuery()V

    .line 201
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 212
    return-void
.end method
