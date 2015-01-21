.class public Lcom/android/mms/ui/WPMessageActivity;
.super Landroid/app/Activity;
.source "WPMessageActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/WPMessageActivity$ModeCallback;,
        Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;,
        Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static ACTIONMODE:Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final DELETE_MESSAGE_TOKEN:I = 0x25e4

.field private static final DISPLAY_UNREAD_COUNT_CONTENT_FOR_ABOVE_99:Ljava/lang/String; = "99+"

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_DISPLAY_UNREAD_COUNT:I = 0x63

.field private static final MENU_DELETE_ALL_WAPPUSH:I = 0x5

.field private static final MENU_MULTI_DELETE_MESSAGES:I = 0x9

.field private static final MESSAGE_LIST_QUERY_TOKEN:I = 0x2537

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x12

.field private static final SEEN_PROJECTION:[Ljava/lang/String; = null

.field public static final SI_ACTION_DELETE:I = 0x4

.field public static final SI_ACTION_HIGH:I = 0x3

.field public static final SI_ACTION_LOW:I = 0x1

.field public static final SI_ACTION_MEDIUM:I = 0x2

.field public static final SI_ACTION_NONE:I = 0x0

.field public static final SL_ACTION_CACHE:I = 0x3

.field public static final SL_ACTION_HIGH:I = 0x2

.field public static final SL_ACTION_LOW:I = 0x1

.field private static final STR_CN:Ljava/lang/String; = "\n"

.field private static final STR_RN:Ljava/lang/String; = "\\r\\n"

.field private static final TAG:Ljava/lang/String; = "Mms/WapPush"

.field private static final TRACE:Z = false

.field private static final UNREAD_MESSAGES_QUERY_TOKEN:I = 0x2538

.field private static final UNSEEN_SELECTION:Ljava/lang/String; = "seen=0"

.field private static mDeleteCounter:I

.field protected static sDestroy:Z


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeListener:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDataSetChangedListener:Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;

.field private mEmptyViewDefault:Landroid/view/View;

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

.field public mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

.field private mMsgListView:Lcom/android/mms/ui/WPMessageListView;

.field private mNeedToMarkAsSeen:Z

.field private mPossiblePendingNotification:Z

.field private mSiExpiredCheck:Lcom/mediatek/wappush/SiExpiredCheck;

.field private mThreadId:Ljava/lang/Long;

.field private mUnreadConvCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    const-string v0, "actionMode"

    sput-object v0, Lcom/android/mms/ui/WPMessageActivity;->ACTIONMODE:Ljava/lang/String;

    .line 165
    sput v2, Lcom/android/mms/ui/WPMessageActivity;->mDeleteCounter:I

    .line 195
    sput-boolean v2, Lcom/android/mms/ui/WPMessageActivity;->sDestroy:Z

    .line 203
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "seen"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/ui/WPMessageActivity;->SEEN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 159
    new-instance v0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;-><init>(Lcom/android/mms/ui/WPMessageActivity;Lcom/android/mms/ui/WPMessageActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mActionModeListener:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    .line 197
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mThreadId:Ljava/lang/Long;

    .line 229
    iput-object v2, p0, Lcom/android/mms/ui/WPMessageActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 245
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    .line 797
    new-instance v0, Lcom/android/mms/ui/WPMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/WPMessageActivity$3;-><init>(Lcom/android/mms/ui/WPMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;

    .line 1020
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/WPMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mNeedToMarkAsSeen:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/WPMessageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/mms/ui/WPMessageActivity;->mNeedToMarkAsSeen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/WPMessageActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mUnreadConvCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-static {p0}, Lcom/android/mms/ui/WPMessageActivity;->blockingMarkAllWapPushMessagesAsSeen(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 138
    sget v0, Lcom/android/mms/ui/WPMessageActivity;->mDeleteCounter:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    sput p0, Lcom/android/mms/ui/WPMessageActivity;->mDeleteCounter:I

    return p0
.end method

.method static synthetic access$208()I
    .locals 2

    .prologue
    .line 138
    sget v0, Lcom/android/mms/ui/WPMessageActivity;->mDeleteCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/mms/ui/WPMessageActivity;->mDeleteCounter:I

    return v0
.end method

.method static synthetic access$210()I
    .locals 2

    .prologue
    .line 138
    sget v0, Lcom/android/mms/ui/WPMessageActivity;->mDeleteCounter:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/mms/ui/WPMessageActivity;->mDeleteCounter:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/WPMessageActivity;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/WPMessageActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageActivity$ModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mActionModeListener:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/android/mms/ui/WPMessageItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-static {p0, p1}, Lcom/android/mms/ui/WPMessageActivity;->getWPMessageDetails(Landroid/content/Context;Lcom/android/mms/ui/WPMessageItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/WPMessageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/mms/ui/WPMessageActivity;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/WPMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageActivity;->startMsgListQuery()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/WPMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageActivity;->startUnreadQuery()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/WPMessageActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mEmptyViewDefault:Landroid/view/View;

    return-object v0
.end method

.method private static blockingMarkAllWapPushMessagesAsSeen(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1217
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/ui/WPMessageActivity;->SEEN_PROJECTION:[Ljava/lang/String;

    const-string v3, "seen=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1218
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1219
    .local v6, count:I
    if-eqz v7, :cond_0

    .line 1221
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1223
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1226
    :cond_0
    if-nez v6, :cond_1

    .line 1232
    :goto_0
    return-void

    .line 1223
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1229
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1230
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "seen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1231
    sget-object v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "seen=0"

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkPendingNotification()V
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mPossiblePendingNotification:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mPossiblePendingNotification:Z

    .line 812
    :cond_0
    return-void
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;Ljava/util/HashSet;Landroid/content/Context;)V
    .locals 7
    .parameter "listener"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, msgIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 638
    const v4, 0x7f04001f

    invoke-static {p2, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 639
    .local v2, contents:Landroid/view/View;
    const v4, 0x7f0f0087

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 641
    .local v3, msg:Landroid/widget/TextView;
    if-nez p1, :cond_0

    .line 642
    const v4, 0x7f0b01f1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 651
    :goto_0
    const v4, 0x7f0f0088

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 652
    .local v1, checkbox:Landroid/widget/CheckBox;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 654
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 655
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b02b6

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b02bf

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0296

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 662
    return-void

    .line 646
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    const v4, 0x7f0b01f2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 313
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 314
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 315
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 954
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/WPMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 956
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 957
    sget-object v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI_THREAD:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 960
    :cond_0
    return-object v0
.end method

.method private getMessageItem(IJZ)Lcom/android/mms/ui/WPMessageItem;
    .locals 2
    .parameter "type"
    .parameter "msgId"
    .parameter "createFromCursorIfNotInCache"

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/mms/ui/WPMessageListAdapter;->getCachedMessageItem(IJLandroid/database/Cursor;)Lcom/android/mms/ui/WPMessageItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getWPMessageDetails(Landroid/content/Context;Lcom/android/mms/ui/WPMessageItem;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "msgItem"

    .prologue
    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v2, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 324
    .local v6, res:Landroid/content/res/Resources;
    const v10, 0x7f0b0021

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget v5, p1, Lcom/android/mms/ui/WPMessageItem;->mAction:I

    .line 326
    .local v5, priority:I
    iget v8, p1, Lcom/android/mms/ui/WPMessageItem;->mType:I

    .line 327
    .local v8, type:I
    if-nez v8, :cond_3

    .line 328
    packed-switch v5, :pswitch_data_0

    .line 345
    const-string v10, "Mms/WapPush"

    const-string v11, "WPMessageActivity: getWPMessageDetails si priority error."

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_0
    const/16 v10, 0xa

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    const v10, 0x7f0b02c6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v10, p1, Lcom/android/mms/ui/WPMessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const/16 v10, 0xa

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    const v10, 0x7f0b02ca

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-wide v0, p1, Lcom/android/mms/ui/WPMessageItem;->mDate:J

    .line 374
    .local v0, date:J
    const/4 v10, 0x1

    invoke-static {p0, v0, v1, v10}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-wide v3, p1, Lcom/android/mms/ui/WPMessageItem;->mExpirationLong:J

    .line 378
    .local v3, expiredDate:J
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-eqz v10, :cond_0

    .line 379
    const/16 v10, 0xa

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    const v10, 0x7f0b0027

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {p0, v3, v4, v13}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_0
    iget-object v9, p1, Lcom/android/mms/ui/WPMessageItem;->mURL:Ljava/lang/String;

    .line 386
    .local v9, url:Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 387
    const-string v10, "\n\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const v10, 0x7f0b00c1

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_1
    iget-object v7, p1, Lcom/android/mms/ui/WPMessageItem;->mText:Ljava/lang/String;

    .line 394
    .local v7, text:Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 395
    const-string v10, "\n\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v10, p1, Lcom/android/mms/ui/WPMessageItem;->mText:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 330
    .end local v0           #date:J
    .end local v3           #expiredDate:J
    .end local v7           #text:Ljava/lang/String;
    .end local v9           #url:Ljava/lang/String;
    :pswitch_0
    const-string v10, "Mms/WapPush"

    const-string v11, "WPMessageActivity: action error, none"

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :pswitch_1
    const v10, 0x7f0b0022

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 336
    :pswitch_2
    const v10, 0x7f0b0023

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 339
    :pswitch_3
    const v10, 0x7f0b0024

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 342
    :pswitch_4
    const-string v10, "Mms/WapPush"

    const-string v11, "WPMessageActivity: action error, delete"

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :cond_3
    const/4 v10, 0x1

    if-ne v10, v8, :cond_4

    .line 348
    packed-switch v5, :pswitch_data_1

    .line 359
    const-string v10, "Mms/WapPush"

    const-string v11, "WPMessageActivity: getWPMessageDetails sl priority error."

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :pswitch_5
    const v10, 0x7f0b0022

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 353
    :pswitch_6
    const v10, 0x7f0b0024

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 356
    :pswitch_7
    const v10, 0x7f0b0022

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 362
    :cond_4
    const-string v10, "Mms/WapPush"

    const-string v11, "WPMessageActivity: getWPMessageDetails type error."

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 348
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private goToConversationList()V
    .locals 2

    .prologue
    .line 599
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 600
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/WPMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 601
    return-void
.end method

.method private initActivityState(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 783
    return-void
.end method

.method private initMessageList()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 702
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    if-eqz v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 706
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 707
    .local v6, highlightString:Ljava/lang/String;
    if-nez v6, :cond_1

    move-object v5, v2

    .line 711
    .local v5, highlight:Ljava/util/regex/Pattern;
    :goto_1
    new-instance v0, Lcom/android/mms/ui/WPMessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/WPMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    .line 712
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 713
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 714
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    new-instance v1, Lcom/android/mms/ui/WPMessageActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/WPMessageActivity$1;-><init>(Lcom/android/mms/ui/WPMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 726
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    new-instance v1, Lcom/android/mms/ui/WPMessageActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/WPMessageActivity$2;-><init>(Lcom/android/mms/ui/WPMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 707
    .end local v5           #highlight:Ljava/util/regex/Pattern;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    goto :goto_1
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 972
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 974
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v0, p0, p0}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->init(Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;Landroid/app/Activity;)V

    .line 977
    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 8
    .parameter "logMsg"

    .prologue
    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 234
    .local v0, current:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    .line 235
    .local v3, tid:J
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 236
    .local v2, stack:[Ljava/lang/StackTraceElement;
    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, methodName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 239
    const-string v5, "Mms/WapPush"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WPMessageActivity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private setupActionBar()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    .line 510
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 511
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 512
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040016

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 514
    .local v1, v:Landroid/view/ViewGroup;
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 515
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v5, v5, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 518
    const v2, 0x7f0f006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/WPMessageActivity;->mUnreadConvCount:Landroid/widget/TextView;

    .line 519
    return-void
.end method

.method private startMsgListQuery()V
    .locals 9

    .prologue
    const/16 v2, 0x2537

    .line 665
    sget-object v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    .line 666
    .local v3, wpMessagesUri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 667
    const-string v0, "Mms/WapPush"

    const-string v1, "startMsgListQuery: wpMessagesUri is null, bail!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :goto_0
    return-void

    .line 670
    :cond_0
    const-string v0, "Mms/WapPush"

    const-string v1, "startMsgListQuery"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v0, v2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/WPMessageListAdapter;->WP_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v8

    .line 679
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startUnreadQuery()V
    .locals 9

    .prologue
    const/16 v2, 0x2538

    .line 684
    sget-object v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    .line 685
    .local v3, wpMessagesUri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 686
    const-string v0, "Mms/WapPush"

    const-string v1, "startUnreadQuery: wpMessagesUri is null, bail!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :goto_0
    return-void

    .line 689
    :cond_0
    const-string v0, "Mms/WapPush"

    const-string v1, "startUnreadQuery"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v0, v2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    const/16 v1, 0x2538

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/WPMessageListAdapter;->WP_PROJECTION:[Ljava/lang/String;

    const-string v5, "read=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v8

    .line 697
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 981
    const/4 v0, 0x0

    .line 982
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v1, p1}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 985
    :cond_0
    if-nez v0, :cond_1

    .line 986
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 988
    :cond_1
    return v0
.end method

.method public initialize(J)V
    .locals 3
    .parameter "originalThreadId"

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 457
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/WPMessageActivity;->initActivityState(Landroid/content/Intent;)V

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "originalThreadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/WPMessageActivity;->log(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageActivity;->initMessageList()V

    .line 463
    return-void
.end method

.method public markAllMessageAsSeen()V
    .locals 2

    .prologue
    .line 1204
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/WPMessageActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/WPMessageActivity$5;-><init>(Lcom/android/mms/ui/WPMessageActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1211
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1212
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1213
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 408
    invoke-direct {p0, p0}, Lcom/android/mms/ui/WPMessageActivity;->initPlugin(Landroid/content/Context;)V

    .line 409
    const-string v0, "Mms/WapPush"

    const-string v1, "WPMessageActivity: Enter onCreate function."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const v0, 0x7f04007d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 414
    invoke-virtual {p0}, Lcom/android/mms/ui/WPMessageActivity;->openApplication()V

    .line 417
    const v0, 0x7f0f0037

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/WPMessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 420
    const v0, 0x7f0f0080

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mEmptyViewDefault:Landroid/view/View;

    .line 421
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 422
    new-instance v0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/WPMessageActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    .line 424
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/WPMessageActivity;->initialize(J)V

    .line 425
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/WPMessageActivity;->sDestroy:Z

    .line 427
    new-instance v0, Lcom/mediatek/wappush/SiExpiredCheck;

    invoke-direct {v0, p0}, Lcom/mediatek/wappush/SiExpiredCheck;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mSiExpiredCheck:Lcom/mediatek/wappush/SiExpiredCheck;

    .line 428
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mSiExpiredCheck:Lcom/mediatek/wappush/SiExpiredCheck;

    invoke-virtual {v0}, Lcom/mediatek/wappush/SiExpiredCheck;->startSiExpiredCheckThread()V

    .line 429
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageActivity;->setupActionBar()V

    .line 430
    const v0, 0x7f0b01e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 431
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/WPMessageActivity;->sDestroy:Z

    .line 563
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mSiExpiredCheck:Lcom/mediatek/wappush/SiExpiredCheck;

    invoke-virtual {v0}, Lcom/mediatek/wappush/SiExpiredCheck;->stopSiExpiredCheckThread()V

    .line 564
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 565
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 569
    packed-switch p1, :pswitch_data_0

    .line 595
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 571
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 581
    .local v8, msgId:J
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 582
    .local v2, msgIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 583
    if-eqz v6, :cond_0

    .line 584
    new-instance v0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;

    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/WPMessageActivity;Ljava/util/HashSet;Landroid/content/AsyncQueryHandler;Landroid/content/Context;Landroid/view/ActionMode;)V

    .line 586
    .local v0, l:Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;
    invoke-static {v0, v2, p0}, Lcom/android/mms/ui/WPMessageActivity;->confirmDeleteMessageDialog(Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;Ljava/util/HashSet;Landroid/content/Context;)V

    .line 587
    const/4 v1, 0x1

    goto :goto_0

    .line 575
    .end local v0           #l:Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;
    .end local v2           #msgIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #msgId:J
    :catch_0
    move-exception v7

    .line 576
    .local v7, e:Ljava/lang/ClassCastException;
    const-string v1, "Mms/WapPush"

    const-string v3, "WPMessageActivity: Unexpected ClassCastException."

    invoke-static {v1, v3, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/high16 v3, 0x10

    .line 467
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 468
    const-string v1, "Mms/WapPush"

    const-string v2, "onNewIntent"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 471
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v3

    if-ne v3, v1, :cond_1

    const/4 v0, 0x1

    .line 473
    .local v0, fromHistory:Z
    :goto_0
    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/mms/ui/WPMessageActivity;->openApplication()V

    .line 476
    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/WPMessageActivity;->initialize(J)V

    .line 479
    return-void

    .line 471
    .end local v0           #fromHistory:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 619
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 632
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 621
    :sswitch_0
    new-instance v0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;

    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    move-object v1, p0

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/WPMessageActivity;Ljava/util/HashSet;Landroid/content/AsyncQueryHandler;Landroid/content/Context;Landroid/view/ActionMode;)V

    .line 623
    .local v0, l:Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;
    invoke-static {v0, v2, p0}, Lcom/android/mms/ui/WPMessageActivity;->confirmDeleteMessageDialog(Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;Ljava/util/HashSet;Landroid/content/Context;)V

    goto :goto_0

    .line 626
    .end local v0           #l:Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 619
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 535
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 537
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 605
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 606
    const-string v1, "Mms/WapPush"

    const-string v2, "onPrepareOptionsMenu"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 609
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 610
    const/4 v1, 0x5

    const v2, 0x7f0b01f3

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200d0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 614
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 483
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 484
    const-string v0, "Mms/WapPush"

    const-string v1, "onRestart function."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 523
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 529
    const-string v0, "Mms/WapPush"

    const-string v1, "onResume function"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mSiExpiredCheck:Lcom/mediatek/wappush/SiExpiredCheck;

    invoke-virtual {v0}, Lcom/mediatek/wappush/SiExpiredCheck;->startExpiredCheck()V

    .line 531
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 489
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 490
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mNeedToMarkAsSeen:Z

    .line 491
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAdjustFontSizeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    const-string v1, "message_font_size"

    const/high16 v2, 0x4190

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getPreferenceValueFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    .line 494
    .local v0, textSize:F
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/WPMessageActivity;->setTextSize(F)V

    .line 496
    .end local v0           #textSize:F
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    if-eqz v1, :cond_1

    .line 497
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/WPMessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;)V

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v1, :cond_2

    .line 500
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v1}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->refresh()V

    .line 503
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageActivity;->startMsgListQuery()V

    .line 504
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageActivity;->startUnreadQuery()V

    .line 505
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 541
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/WPMessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;)V

    .line 546
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/WPMessageListAdapter;->clearAllContactListeners()V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    const/16 v1, 0x2538

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 550
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    const/16 v1, 0x2537

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 552
    :cond_1
    const-string v0, "Mms/WapPush"

    const-string v1, "WPMessageActivity: onStop stopExpiredCheck."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mSiExpiredCheck:Lcom/mediatek/wappush/SiExpiredCheck;

    invoke-virtual {v0}, Lcom/mediatek/wappush/SiExpiredCheck;->stopExpiredCheck()V

    .line 554
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/WPMessageActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/WPMessageActivity$4;-><init>(Lcom/android/mms/ui/WPMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 951
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageActivity;->checkPendingNotification()V

    .line 788
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 792
    if-eqz p1, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageActivity;->checkPendingNotification()V

    .line 795
    :cond_0
    return-void
.end method

.method public openApplication()V
    .locals 8

    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 438
    .local v1, initIntent:Landroid/content/Intent;
    const-string v5, "URL"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, url:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 440
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->checkAndModifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 441
    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 442
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const/high16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 445
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/WPMessageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 446
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 447
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v5, 0x7f0b0028

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 449
    const-string v5, "Mms/WapPush"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "is not supported!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextSize(F)V
    .locals 5
    .parameter "size"

    .prologue
    .line 992
    iget-object v4, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    if-eqz v4, :cond_0

    .line 993
    iget-object v4, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/mms/ui/WPMessageListAdapter;->setTextSize(F)V

    .line 995
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    if-eqz v4, :cond_2

    .line 996
    iget-object v4, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 997
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 998
    iget-object v4, p0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 999
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/android/mms/ui/WPMessageListItem;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 1000
    check-cast v2, Lcom/android/mms/ui/WPMessageListItem;

    .line 1001
    .local v2, item:Lcom/android/mms/ui/WPMessageListItem;
    invoke-virtual {v2, p1}, Lcom/android/mms/ui/WPMessageListItem;->setTextSize(F)V

    .line 997
    .end local v2           #item:Lcom/android/mms/ui/WPMessageListItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #view:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1011
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :goto_0
    return-void

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 1014
    .local v1, mChooserIntent:Landroid/content/Intent;
    invoke-super {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
