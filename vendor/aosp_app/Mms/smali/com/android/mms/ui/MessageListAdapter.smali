.class public Lcom/android/mms/ui/MessageListAdapter;
.super Lcom/android/mms/ui/MessageCursorAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$TaskStack;,
        Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;,
        Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;,
        Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field public static final CACHE_TAG:Ljava/lang/String; = "Mms/MessageItemCache"

.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_MMS_DATE:I = 0xe

.field static final COLUMN_MMS_DATE_SENT:I = 0xf

.field static final COLUMN_MMS_DELIVERY_REPORT:I = 0x13

.field static final COLUMN_MMS_ERROR_TYPE:I = 0x15

.field static final COLUMN_MMS_LOCKED:I = 0x16

.field static final COLUMN_MMS_MESSAGE_BOX:I = 0x12

.field static final COLUMN_MMS_MESSAGE_TYPE:I = 0x11

.field static final COLUMN_MMS_READ:I = 0x10

.field static final COLUMN_MMS_READ_REPORT:I = 0x14

.field static final COLUMN_MMS_SERVICE_CENTER:I = 0x1b

.field static final COLUMN_MMS_SIMID:I = 0x19

.field static final COLUMN_MMS_STATUS:I = 0x17

.field static final COLUMN_MMS_SUBJECT:I = 0xc

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0xd

.field static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_SMS_ADDRESS:I = 0x3

.field static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_DATE:I = 0x5

.field static final COLUMN_SMS_DATE_SENT:I = 0x6

.field static final COLUMN_SMS_ERROR_CODE:I = 0xb

.field static final COLUMN_SMS_IMPOIRTANT:I = 0x1d

.field static final COLUMN_SMS_IP_MESSAGE_ID:I = 0x1c

.field static final COLUMN_SMS_LOCKED:I = 0xa

.field static final COLUMN_SMS_READ:I = 0x7

.field static final COLUMN_SMS_SERVICE_CENTER:I = 0x1a

.field static final COLUMN_SMS_SIMID:I = 0x18

.field static final COLUMN_SMS_SPAM:I = 0x1e

.field static final COLUMN_SMS_STATUS:I = 0x9

.field static final COLUMN_SMS_TYPE:I = 0x8

.field static final COLUMN_THREAD_ID:I = 0x2

.field private static final INCOMING_ITEM_TYPE:I = 0x0

.field private static final INCOMING_ITEM_TYPE_IPMSG:I = 0x2

.field private static final IPMSG_TAG:Ljava/lang/String; = "Mms/ipmsg/MessageListAdapter"

.field private static final LOCAL_LOGV:Z = false

.field public static final MESSAGE_LIST_REFRASH:I = 0x0

.field public static final MESSAGE_LIST_REFRASH_WITH_CLEAR_CACHE:I = 0x1

.field static final MSG_LIST_NEED_REFRASH:I = 0x64

.field private static final OUTGOING_ITEM_TYPE:I = 0x1

.field private static final OUTGOING_ITEM_TYPE_IPMSG:I = 0x3

.field static final PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_IMPOIRTANT:Ljava/lang/String; = "locked"

.field private static final SMS_IP_MESSAGE_ID:Ljava/lang/String; = "ipmsg_id"

.field private static final SMS_SPAM:Ljava/lang/String; = "spam"

.field private static final TAG:Ljava/lang/String; = "MessageListAdapter"

.field private static final TAG_DIVIDER:Ljava/lang/String; = "Mms/divider"


# instance fields
.field private layoutList:[I

.field private mClearCacheFlag:Z

.field private final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

.field private mEnterImportantThreadTime:J

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field public mIsDeleteMode:Z

.field private mIsGroupConversation:Z

.field private mIsImportantThread:Z

.field private mItemDividerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastImportantTime:J

.field mListItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

.field private mMsgListItemHandler:Landroid/os/Handler;

.field private mNeedHideView:Z

.field private mNotifyIndStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mOnlineDividerString:Ljava/lang/String;

.field private mOnlineDividerTime:J

.field private mSimMsgListItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskQueue:Lcom/android/mms/ui/MessageListAdapter$TaskStack;

.field private mTextSize:F

.field private mUnreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ipmsg_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "spam"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
    .locals 5
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 209
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->layoutList:[I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mClearCacheFlag:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextSize:F

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    .line 204
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mNeedHideView:Z

    .line 1146
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mTaskQueue:Lcom/android/mms/ui/MessageListAdapter$TaskStack;

    .line 1370
    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mUnreadCount:I

    .line 1371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnlineDividerTime:J

    .line 1372
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnlineDividerString:Ljava/lang/String;

    .line 1373
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsImportantThread:Z

    .line 1374
    iput-wide v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mEnterImportantThreadTime:J

    .line 1375
    iput-wide v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mLastImportantTime:J

    .line 210
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 211
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 213
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 215
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    .line 218
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    .line 220
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mItemDividerSet:Ljava/util/Set;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mNotifyIndStatusMap:Ljava/util/HashMap;

    .line 224
    if-eqz p4, :cond_0

    .line 225
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 230
    :goto_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 240
    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0

    .line 163
    :array_0
    .array-data 0x4
        0x3ct 0x0t 0x4t 0x7ft
        0x3et 0x0t 0x4t 0x7ft
        0x3dt 0x0t 0x4t 0x7ft
        0x3ft 0x0t 0x4t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;)V
    .locals 2
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"
    .parameter "DeleteAndForwardPlugin"

    .prologue
    .line 245
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    .line 246
    const-string v0, "MessageListAdapter"

    const-string v1, "MessageListAdapter 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput-object p6, p0, Lcom/android/mms/ui/MessageListAdapter;->mDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    .line 248
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;->initBodyandAddress()V

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListAdapter;)Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/MessageListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mNeedHideView:Z

    return p1
.end method

.method private getItemViewType(Landroid/database/Cursor;)I
    .locals 11
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    .line 574
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v8, v8, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 575
    .local v6, type:Ljava/lang/String;
    const-string v8, "Mms/ipmsg/MessageListAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getItemViewType(): message type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v8, "sms"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 580
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v8, v8, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 581
    .local v4, status:J
    const/4 v3, 0x0

    .line 582
    .local v3, isSimMsg:Z
    const-wide/16 v8, 0x5

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x7

    cmp-long v8, v4, v8

    if-nez v8, :cond_2

    .line 584
    :cond_0
    const/4 v3, 0x1

    .line 585
    const/4 v0, 0x2

    .line 595
    .local v0, boxId:I
    :goto_0
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v8, v8, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsIpMessageId:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 596
    .local v1, ipMessageId:J
    const-string v8, "Mms/ipmsg/MessageListAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getItemViewType(): ipMessageId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-lez v8, :cond_7

    if-nez v3, :cond_7

    .line 598
    if-ne v0, v7, :cond_5

    const/4 v7, 0x2

    .line 603
    .end local v1           #ipMessageId:J
    .end local v3           #isSimMsg:Z
    .end local v4           #status:J
    :cond_1
    :goto_1
    return v7

    .line 586
    .end local v0           #boxId:I
    .restart local v3       #isSimMsg:Z
    .restart local v4       #status:J
    :cond_2
    const-wide/16 v8, 0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_3

    const-wide/16 v8, 0x3

    cmp-long v8, v4, v8

    if-nez v8, :cond_4

    .line 588
    :cond_3
    const/4 v3, 0x1

    .line 589
    const/4 v0, 0x1

    .restart local v0       #boxId:I
    goto :goto_0

    .line 591
    .end local v0           #boxId:I
    :cond_4
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v8, v8, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .restart local v0       #boxId:I
    goto :goto_0

    .line 598
    .restart local v1       #ipMessageId:J
    :cond_5
    const/4 v7, 0x3

    goto :goto_1

    .line 601
    .end local v0           #boxId:I
    .end local v1           #ipMessageId:J
    .end local v3           #isSimMsg:Z
    .end local v4           #status:J
    :cond_6
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v8, v8, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 603
    .restart local v0       #boxId:I
    :cond_7
    if-ne v0, v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 517
    const-string v0, "mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    neg-long p1, p1

    .line 520
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private getMessageImportatStatusByCursor(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1198
    const-string v3, "Mms/ipmsg/MessageListAdapter"

    const-string v4, "getMessageImportatStatusByCursor()"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    if-nez p1, :cond_0

    .line 1200
    const-string v1, "Mms/ipmsg/MessageListAdapter"

    const-string v3, "getMessageImportatStatusByCursor(): cursor is null!"

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    :goto_0
    return v2

    .line 1203
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1204
    :cond_1
    const-string v1, "Mms/ipmsg/MessageListAdapter"

    const-string v3, "getMessageImportatStatusByCursor(): cursor is at before first or after last!"

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, type:Ljava/lang/String;
    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1209
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 1211
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private getMessageLockedStateByCursor(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1362
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, type:Ljava/lang/String;
    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1364
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1364
    goto :goto_0

    .line 1366
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private getMessageTimeByCursor(Landroid/database/Cursor;)J
    .locals 5
    .parameter "cursor"

    .prologue
    .line 1188
    const-string v1, "Mms/ipmsg/MessageListAdapter"

    const-string v2, "getMessageTimeByCursor()"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v1, v1, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, type:Ljava/lang/String;
    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v1, v1, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 1193
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v1, v1, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    mul-long/2addr v1, v3

    goto :goto_0
.end method

.method private getNextMessageUnreadStatusByCursor(Landroid/database/Cursor;)Z
    .locals 10
    .parameter "cursor"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1216
    const-string v6, "Mms/ipmsg/MessageListAdapter"

    const-string v7, "getNextMessageUnreadStatusByCursor()"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    if-nez p1, :cond_1

    .line 1218
    const-string v4, "Mms/ipmsg/MessageListAdapter"

    const-string v6, "getNextMessageUnreadStatusByCursor(): cursor is null!"

    invoke-static {v4, v6}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    :cond_0
    :goto_0
    return v5

    .line 1221
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1222
    :cond_2
    const-string v4, "Mms/ipmsg/MessageListAdapter"

    const-string v6, "getNextMessageUnreadStatusByCursor(): cursor is at before first or after last!"

    invoke-static {v4, v6}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1230
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1231
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v6, v6, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1232
    .local v3, type:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1233
    .local v2, isUnread:Z
    const-string v6, "mms"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1234
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v6, v6, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_5

    move v2, v4

    .line 1238
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1239
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getMessageTimeByCursor(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 1240
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mLastImportantTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    .line 1241
    iput-wide v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mLastImportantTime:J

    :cond_4
    move v5, v2

    .line 1244
    goto :goto_0

    .end local v0           #currentTime:J
    :cond_5
    move v2, v5

    .line 1234
    goto :goto_1

    .line 1236
    :cond_6
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v6, v6, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    move v2, v4

    :goto_2
    goto :goto_1

    :cond_7
    move v2, v5

    goto :goto_2
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 510
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    const/4 v0, 0x0

    .line 513
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMessageItemShowLoadAllButton(Landroid/database/Cursor;)Z
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1324
    const-string v2, "Mms/ipmsg/MessageListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMessageItemShowLoadAllButton(): cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string v2, "Mms/divider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adapter.isMessageItemShowLoadAllButton(): cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    if-nez p1, :cond_1

    .line 1327
    const-string v1, "Mms/ipmsg/MessageListAdapter"

    const-string v2, "isMessageItemShowLoadAllButton(): cursor is null!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string v1, "Mms/divider"

    const-string v2, "adapter.isMessageItemShowLoadAllButton(): cursor is null!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :cond_0
    :goto_0
    return v0

    .line 1331
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1332
    :cond_2
    const-string v1, "Mms/ipmsg/MessageListAdapter"

    const-string v2, "isMessageItemShowLoadAllButton(): cursor is at before first or after last!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const-string v1, "Mms/divider"

    const-string v2, "adapter.isMessageItemShowLoadAllButton(): cursor is at before first or after last!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1337
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1338
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getMessageTimeByCursor(Landroid/database/Cursor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mLastImportantTime:J

    move v0, v1

    .line 1339
    goto :goto_0

    .line 1342
    :cond_4
    iget-wide v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mLastImportantTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mLastImportantTime:J

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getMessageTimeByCursor(Landroid/database/Cursor;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    move v0, v1

    .line 1343
    goto :goto_0

    .line 1345
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getMessageImportatStatusByCursor(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1349
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1350
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getMessageTimeByCursor(Landroid/database/Cursor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mLastImportantTime:J

    move v0, v1

    .line 1351
    goto :goto_0

    .line 1354
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getNextMessageUnreadStatusByCursor(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1355
    goto :goto_0
.end method

.method private isMessageItemShowOnlineDivider(Landroid/database/Cursor;)Z
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1298
    const-string v6, "Mms/ipmsg/MessageListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isMessageItemShowOnlineDivider(): cursor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-string v6, "Mms/divider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adapter.isMessageItemShowOnlineDivider(): cursor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    if-nez p1, :cond_1

    .line 1301
    const-string v4, "Mms/ipmsg/MessageListAdapter"

    const-string v6, "isMessageItemShowOnlineDivider(): cursor is null!"

    invoke-static {v4, v6}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v4, "Mms/divider"

    const-string v6, "adapter.isMessageItemShowOnlineDivider(): cursor is null!"

    invoke-static {v4, v6}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1320
    :cond_0
    :goto_0
    return v4

    .line 1305
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1306
    :cond_2
    const-string v4, "Mms/ipmsg/MessageListAdapter"

    const-string v6, "isMessageItemShowOnlineDivider(): cursor is at before first or after last!"

    invoke-static {v4, v6}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const-string v4, "Mms/divider"

    const-string v6, "adapter.isMessageItemShowOnlineDivider(): cursor is at before first or after last!"

    invoke-static {v4, v6}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1308
    goto :goto_0

    .line 1310
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eq v6, v4, :cond_0

    .line 1313
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getMessageTimeByCursor(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 1314
    .local v0, currentTime:J
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1315
    iget-wide v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnlineDividerTime:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 1317
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1318
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getMessageTimeByCursor(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 1319
    .local v2, nextMessageTime:J
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1320
    iget-wide v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnlineDividerTime:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_5

    iget-wide v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnlineDividerTime:J

    cmp-long v6, v2, v6

    if-gtz v6, :cond_0

    :cond_5
    move v4, v5

    goto :goto_0
.end method

.method private isMessageItemShowTimeDivider(Landroid/database/Cursor;)Z
    .locals 10
    .parameter "cursor"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1163
    const-string v7, "Mms/ipmsg/MessageListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMessageItemShowDivider(): cursor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    if-nez p1, :cond_0

    .line 1165
    const-string v6, "Mms/ipmsg/MessageListAdapter"

    const-string v7, "isMessageItemShowDivider(): cursor is null!"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :goto_0
    return v5

    .line 1168
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1169
    :cond_1
    const-string v6, "Mms/ipmsg/MessageListAdapter"

    const-string v7, "isMessageItemShowDivider(): cursor is at before first or after last!"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1172
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 1173
    :cond_3
    const-string v5, "Mms/ipmsg/MessageListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isMessageItemShowDivider(): cursor is the first or cursor count is 1! Is first?="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", count ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 1175
    goto :goto_0

    .line 1177
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getMessageTimeByCursor(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 1178
    .local v0, currentMessageTime:J
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1179
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getMessageTimeByCursor(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 1180
    .local v2, previousMessageTime:J
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1181
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    const-string v5, "Mms/ipmsg/MessageListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMessageItemShowDivider(): currentMessageTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", previousMessageTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-static {v2, v3, v0, v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->shouldShowTimeDivider(JJ)Z

    move-result v5

    goto/16 :goto_0
.end method

.method private isMessageItemShowUnreadDivider(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1252
    const-string v4, "Mms/ipmsg/MessageListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMessageItemShowUnreadDivider(): cursor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v4, "Mms/divider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adapter.isMessageItemShowUnreadDivider(): cursor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    if-nez p1, :cond_0

    .line 1255
    const-string v2, "Mms/ipmsg/MessageListAdapter"

    const-string v4, "isMessageItemShowUnreadDivider(): cursor is null!"

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v2, "Mms/divider"

    const-string v4, "adapter.isMessageItemShowUnreadDivider(): cursor is null!"

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :goto_0
    return v3

    .line 1259
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1260
    :cond_1
    const-string v2, "Mms/ipmsg/MessageListAdapter"

    const-string v4, "isMessageItemShowUnreadDivider(): cursor is at before first or after last!"

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const-string v2, "Mms/divider"

    const-string v4, "adapter.isMessageItemShowUnreadDivider(): cursor is at before first or after last!"

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1264
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 1265
    :cond_3
    const-string v2, "Mms/ipmsg/MessageListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMessageItemShowUnreadDivider(): cursor is the first or cursor count is 1! Is first?="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cursor position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string v2, "Mms/divider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adapter.isMessageItemShowUnreadDivider(): cursor is the first or cursor count is 1! Is first?="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cursor position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->isMessageUnreadByCursor(Landroid/database/Cursor;)Z

    move-result v3

    goto/16 :goto_0

    .line 1271
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->isMessageUnreadByCursor(Landroid/database/Cursor;)Z

    move-result v0

    .line 1272
    .local v0, currentMessageUnreadStatus:Z
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1273
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->isMessageUnreadByCursor(Landroid/database/Cursor;)Z

    move-result v1

    .line 1274
    .local v1, previousMessageUnreadStatus:Z
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1275
    const-string v4, "Mms/ipmsg/MessageListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMessageItemShowUnreadDivider(): currentMessageUnreadStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", previousMessageUnreadStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    const-string v4, "Mms/divider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adapter.isMessageItemShowUnreadDivider(): currentMessageUnreadStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", previousMessageUnreadStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    :goto_1
    move v3, v2

    goto/16 :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method private isMessageUnreadByCursor(Landroid/database/Cursor;)Z
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1283
    const-string v3, "Mms/ipmsg/MessageListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMessageUnreadByCursor(): msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string v3, "Mms/divider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adapter.isMessageUnreadByCursor(): msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, type:Ljava/lang/String;
    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1287
    const-string v3, "Mms/ipmsg/MessageListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMessageUnreadByCursor(): read = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const-string v3, "Mms/divider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adapter.isMessageUnreadByCursor(): read = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1289
    goto :goto_0

    .line 1291
    :cond_2
    const-string v3, "Mms/ipmsg/MessageListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMessageUnreadByCursor(): read = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const-string v3, "Mms/divider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adapter.isMessageUnreadByCursor(): read = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x1

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 253
    const-string v11, "Mms/MessageItemCache"

    const-string v12, "bindView() start."

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v7, 0x0

    .line 255
    .local v7, msgItem:Lcom/android/mms/ui/MessageItem;
    instance-of v11, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v11, :cond_2

    .line 256
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-boolean v11, p0, Lcom/android/mms/ui/MessageCursorAdapter;->mIsScrolling:Z

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    if-eqz v11, :cond_9

    .line 258
    :cond_0
    iget-object v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v11, v11, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 259
    .local v10, type:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v11, v11, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 260
    .local v4, msgId:J
    const-string v11, "Mms/MessageItemCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bindView(): type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", msgId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mNeedHideView:Z

    .line 262
    move-object/from16 v0, p3

    invoke-virtual {p0, v10, v4, v5, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    .line 263
    if-eqz v7, :cond_6

    move-object v3, p1

    .line 264
    check-cast v3, Lcom/android/mms/ui/MessageListItem;

    .line 267
    .local v3, mli:Lcom/android/mms/ui/MessageListItem;
    iget-boolean v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    if-eqz v11, :cond_1

    .line 269
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isSimMsg()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "index_on_icc"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 270
    const-string v11, "index_on_icc"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, msgIndex:Ljava/lang/String;
    const-string v11, "Mms/MessageItemCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bindView(): type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",simMsg msgIndex="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v11, ";"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, index:[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    const/4 v12, 0x0

    aget-object v12, v2, v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3

    .line 275
    iget-object v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    const/4 v12, 0x0

    aget-object v12, v2, v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .end local v2           #index:[Ljava/lang/String;
    .end local v6           #msgIndex:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    .line 292
    .local v9, position:I
    iget-boolean v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroupConversation:Z

    iget-boolean v12, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    invoke-virtual {v3, v7, v11, v9, v12}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;ZIZ)V

    .line 293
    iget-object v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    invoke-virtual {v3, v11}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 294
    invoke-virtual {v3, p0}, Lcom/android/mms/ui/MessageListItem;->setMessageListItemAdapter(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 317
    .end local v3           #mli:Lcom/android/mms/ui/MessageListItem;
    .end local v4           #msgId:J
    .end local v9           #position:I
    .end local v10           #type:Ljava/lang/String;
    :goto_1
    iget v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextSize:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2

    move-object v3, p1

    .line 318
    check-cast v3, Lcom/android/mms/ui/MessageListItem;

    .line 319
    .restart local v3       #mli:Lcom/android/mms/ui/MessageListItem;
    iget v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextSize:F

    invoke-virtual {v3, v11}, Lcom/android/mms/ui/MessageListItem;->setBodyTextSize(F)V

    .line 322
    .end local v3           #mli:Lcom/android/mms/ui/MessageListItem;
    :cond_2
    :goto_2
    return-void

    .line 277
    .restart local v2       #index:[Ljava/lang/String;
    .restart local v3       #mli:Lcom/android/mms/ui/MessageListItem;
    .restart local v4       #msgId:J
    .restart local v6       #msgIndex:Ljava/lang/String;
    .restart local v10       #type:Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    const/4 v12, 0x0

    aget-object v12, v2, v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v7, v11}, Lcom/android/mms/ui/MessageItem;->setSelectedState(Z)V

    goto :goto_0

    .line 281
    .end local v2           #index:[Ljava/lang/String;
    .end local v6           #msgIndex:Ljava/lang/String;
    :cond_4
    invoke-static {v10, v4, v5}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    .line 282
    iget-object v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_5

    .line 283
    iget-object v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 285
    :cond_5
    iget-object v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v7, v11}, Lcom/android/mms/ui/MessageItem;->setSelectedState(Z)V

    goto :goto_0

    .end local v3           #mli:Lcom/android/mms/ui/MessageListItem;
    :cond_6
    move-object v3, p1

    .line 296
    check-cast v3, Lcom/android/mms/ui/MessageListItem;

    .line 297
    .restart local v3       #mli:Lcom/android/mms/ui/MessageListItem;
    iget-boolean v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mNeedHideView:Z

    if-eqz v11, :cond_7

    .line 298
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mNeedHideView:Z

    .line 299
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem;->hideAllView()V

    .line 300
    const/16 v11, 0x8

    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 303
    :cond_7
    const/4 v12, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v11, v13, :cond_8

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v3, v12, v11}, Lcom/android/mms/ui/MessageListItem;->bindDefault(Lcom/android/mms/ui/MessageItem;Z)V

    goto :goto_1

    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 308
    .end local v3           #mli:Lcom/android/mms/ui/MessageListItem;
    .end local v4           #msgId:J
    .end local v10           #type:Ljava/lang/String;
    :cond_9
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object v3, v0

    .line 309
    .restart local v3       #mli:Lcom/android/mms/ui/MessageListItem;
    new-instance v8, Lcom/android/mms/ui/MessageItem;

    iget-object v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v0, p3

    invoke-direct {v8, v11, v12, v0}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Landroid/database/Cursor;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v7           #msgItem:Lcom/android/mms/ui/MessageItem;
    .local v8, msgItem:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_a

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v3, v8, v11}, Lcom/android/mms/ui/MessageListItem;->bindDefault(Lcom/android/mms/ui/MessageItem;Z)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 314
    .end local v8           #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #msgItem:Lcom/android/mms/ui/MessageItem;
    goto/16 :goto_1

    .line 310
    .end local v7           #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v8       #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_a
    const/4 v11, 0x0

    goto :goto_4

    .line 311
    .end local v3           #mli:Lcom/android/mms/ui/MessageListItem;
    .end local v8           #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #msgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    .line 313
    .local v1, e:Lcom/google/android/mms/MmsException;
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 311
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    .end local v7           #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v3       #mli:Lcom/android/mms/ui/MessageListItem;
    .restart local v8       #msgItem:Lcom/android/mms/ui/MessageItem;
    :catch_1
    move-exception v1

    move-object v7, v8

    .end local v8           #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #msgItem:Lcom/android/mms/ui/MessageItem;
    goto :goto_5
.end method

.method public cancelBackgroundLoading()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 352
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->clearNotifIndStatus()V

    .line 532
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 533
    return-void
.end method

.method public changeSelectedState(J)V
    .locals 4
    .parameter "listId"

    .prologue
    .line 902
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    return-void

    .line 902
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeSelectedState(Ljava/lang/String;)V
    .locals 2
    .parameter "listId"

    .prologue
    .line 907
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearList()V
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;->clearBodyandAddressList()V

    .line 1066
    return-void
.end method

.method public clearNotifIndStatus()V
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mNotifyIndStatusMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 897
    return-void
.end method

.method public destroyTaskStack()V
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mTaskQueue:Lcom/android/mms/ui/MessageListAdapter$TaskStack;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mTaskQueue:Lcom/android/mms/ui/MessageListAdapter$TaskStack;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->destroy()V

    .line 1155
    :cond_0
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 47
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 399
    invoke-static/range {p1 .. p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v5

    .line 400
    .local v5, key:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/mms/ui/MessageItem;

    .line 401
    .local v45, item:Lcom/android/mms/ui/MessageItem;
    const-string v4, "Mms/MessageItemCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getCachedMessageItem(): key="

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v31, ", item is in cache?="

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-eqz v45, :cond_2

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    if-nez v45, :cond_9

    if-eqz p4, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->isMessageItemShowTimeDivider(Landroid/database/Cursor;)Z

    move-result v21

    .line 405
    .local v21, isDrawTimeDivider:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->isMessageItemShowUnreadDivider(Landroid/database/Cursor;)Z

    move-result v22

    .line 406
    .local v22, isDrawUnreadDivider:Z
    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mUnreadCount:I

    move/from16 v23, v0

    .line 407
    .local v23, unreadCount:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsImportantThread:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->isMessageItemShowLoadAllButton(Landroid/database/Cursor;)Z

    move-result v24

    .line 408
    .local v24, isDrawLoadAllMessagesButton:Z
    :goto_2
    const-string v3, "mms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 409
    const-string v3, "Mms/MessageItemCache"

    const-string v4, "getCachedMessageItem(): no cache, create one MessageItem on background."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 411
    .local v7, boxId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 412
    .local v8, messageType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSimId:I

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 413
    .local v9, simId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 414
    .local v10, errorType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 415
    .local v11, locked:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 416
    .local v12, charset:I
    move-wide/from16 v13, p2

    .line 417
    .local v13, mMsgId:J
    move-object/from16 v15, p1

    .line 418
    .local v15, mmsType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 419
    .local v16, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsServiceCenter:I

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 420
    .local v17, serviceCenter:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 421
    .local v18, deliveryReport:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 422
    .local v19, readReport:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    move-object/from16 v20, v0

    .line 423
    .local v20, highlight:Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 426
    .local v25, indDate:J
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->getNotifIndStatus(J)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 427
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->getNotifIndStatus(J)I

    move-result v27

    .line 428
    .local v27, mmsStatus:I
    const-string v3, "Mms/MessageItemCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getCachedMessageItem(): mmsStatus from Map = "

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_3
    const-string v3, "Mms/MessageItemCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getCachedMessageItem(): mmsStatus = "

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v28, Lcom/android/mms/ui/MessageListAdapter$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListAdapter$2;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 443
    .local v28, r:Ljava/lang/Runnable;
    new-instance v29, Ljava/lang/Object;

    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    .line 444
    .local v29, object:Ljava/lang/Object;
    new-instance v3, Lcom/android/mms/ui/MessageListAdapter$3;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v29}, Lcom/android/mms/ui/MessageListAdapter$3;-><init>(Lcom/android/mms/ui/MessageListAdapter;JIIIIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ZZIZJILjava/lang/Runnable;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListAdapter;->pushTask(Ljava/lang/Runnable;)V

    .line 475
    monitor-enter v29

    .line 478
    const/16 v46, 0x258

    .line 480
    .local v46, waitTime:I
    move/from16 v0, v46

    int-to-long v3, v0

    :try_start_0
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_4
    :try_start_1
    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/mms/ui/MessageItem;

    .line 486
    .end local v45           #item:Lcom/android/mms/ui/MessageItem;
    .local v30, item:Lcom/android/mms/ui/MessageItem;
    if-eqz v30, :cond_0

    .line 487
    const-string v3, "Mms/MessageItemCache"

    const-string v4, "getCachedMessageItem(): get item during wait."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v3, "Mms/MessageItemCache"

    const-string v4, "getCachedMessageItem(): cancel UI thread notify data set change."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    .end local v7           #boxId:I
    .end local v8           #messageType:I
    .end local v9           #simId:I
    .end local v10           #errorType:I
    .end local v11           #locked:I
    .end local v12           #charset:I
    .end local v13           #mMsgId:J
    .end local v15           #mmsType:Ljava/lang/String;
    .end local v16           #subject:Ljava/lang/String;
    .end local v17           #serviceCenter:Ljava/lang/String;
    .end local v18           #deliveryReport:Ljava/lang/String;
    .end local v19           #readReport:Ljava/lang/String;
    .end local v20           #highlight:Ljava/util/regex/Pattern;
    .end local v21           #isDrawTimeDivider:Z
    .end local v22           #isDrawUnreadDivider:Z
    .end local v23           #unreadCount:I
    .end local v24           #isDrawLoadAllMessagesButton:Z
    .end local v25           #indDate:J
    .end local v27           #mmsStatus:I
    .end local v28           #r:Ljava/lang/Runnable;
    .end local v29           #object:Ljava/lang/Object;
    .end local v46           #waitTime:I
    :cond_0
    :goto_5
    if-eqz v30, :cond_1

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mOnlineDividerString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->isMessageItemShowOnlineDivider(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, v30

    iput-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mIsDrawOnlineDivider:Z

    .line 503
    move-object/from16 v0, v30

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mIsDrawOnlineDivider:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mOnlineDividerString:Ljava/lang/String;

    :goto_7
    move-object/from16 v0, v30

    iput-object v3, v0, Lcom/android/mms/ui/MessageItem;->mOnlineString:Ljava/lang/String;

    .line 505
    :cond_1
    return-object v30

    .line 401
    .end local v30           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v45       #item:Lcom/android/mms/ui/MessageItem;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 406
    .restart local v21       #isDrawTimeDivider:Z
    .restart local v22       #isDrawUnreadDivider:Z
    :cond_3
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 407
    .restart local v23       #unreadCount:I
    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 430
    .restart local v7       #boxId:I
    .restart local v8       #messageType:I
    .restart local v9       #simId:I
    .restart local v10       #errorType:I
    .restart local v11       #locked:I
    .restart local v12       #charset:I
    .restart local v13       #mMsgId:J
    .restart local v15       #mmsType:Ljava/lang/String;
    .restart local v16       #subject:Ljava/lang/String;
    .restart local v17       #serviceCenter:Ljava/lang/String;
    .restart local v18       #deliveryReport:Ljava/lang/String;
    .restart local v19       #readReport:Ljava/lang/String;
    .restart local v20       #highlight:Ljava/util/regex/Pattern;
    .restart local v24       #isDrawLoadAllMessagesButton:Z
    .restart local v25       #indDate:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsStatus:I

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .restart local v27       #mmsStatus:I
    goto/16 :goto_3

    .line 481
    .restart local v28       #r:Ljava/lang/Runnable;
    .restart local v29       #object:Ljava/lang/Object;
    .restart local v46       #waitTime:I
    :catch_0
    move-exception v44

    .line 482
    .local v44, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "MessageListAdapter"

    const-string v4, "wait has been intrrupted"

    move-object/from16 v0, v44

    invoke-static {v3, v4, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 484
    .end local v44           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 493
    .end local v7           #boxId:I
    .end local v8           #messageType:I
    .end local v9           #simId:I
    .end local v10           #errorType:I
    .end local v11           #locked:I
    .end local v12           #charset:I
    .end local v13           #mMsgId:J
    .end local v15           #mmsType:Ljava/lang/String;
    .end local v16           #subject:Ljava/lang/String;
    .end local v17           #serviceCenter:Ljava/lang/String;
    .end local v18           #deliveryReport:Ljava/lang/String;
    .end local v19           #readReport:Ljava/lang/String;
    .end local v20           #highlight:Ljava/util/regex/Pattern;
    .end local v25           #indDate:J
    .end local v27           #mmsStatus:I
    .end local v28           #r:Ljava/lang/Runnable;
    .end local v29           #object:Ljava/lang/Object;
    .end local v46           #waitTime:I
    :cond_6
    :try_start_3
    new-instance v30, Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    move-object/from16 v35, v0

    const-wide/16 v40, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroupConversation:Z

    move/from16 v42, v0

    move-object/from16 v32, p1

    move-object/from16 v33, p4

    move/from16 v36, v21

    move/from16 v37, v22

    move/from16 v38, v23

    move/from16 v39, v24

    invoke-direct/range {v30 .. v42}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZIZJZ)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 495
    .end local v45           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v30       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    .line 496
    :catch_1
    move-exception v43

    .line 497
    .local v43, e:Lcom/google/android/mms/MmsException;
    :goto_8
    const-string v3, "MessageListAdapter"

    const-string v4, "getCachedMessageItem: "

    move-object/from16 v0, v43

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 502
    .end local v21           #isDrawTimeDivider:Z
    .end local v22           #isDrawUnreadDivider:Z
    .end local v23           #unreadCount:I
    .end local v24           #isDrawLoadAllMessagesButton:Z
    .end local v43           #e:Lcom/google/android/mms/MmsException;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 503
    :cond_8
    const-string v3, ""

    goto :goto_7

    .line 496
    .end local v30           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v21       #isDrawTimeDivider:Z
    .restart local v22       #isDrawUnreadDivider:Z
    .restart local v23       #unreadCount:I
    .restart local v24       #isDrawLoadAllMessagesButton:Z
    .restart local v45       #item:Lcom/android/mms/ui/MessageItem;
    :catch_2
    move-exception v43

    move-object/from16 v30, v45

    .end local v45           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v30       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_8

    .end local v21           #isDrawTimeDivider:Z
    .end local v22           #isDrawUnreadDivider:Z
    .end local v23           #unreadCount:I
    .end local v24           #isDrawLoadAllMessagesButton:Z
    .end local v30           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v45       #item:Lcom/android/mms/ui/MessageItem;
    :cond_9
    move-object/from16 v30, v45

    .end local v45           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v30       #item:Lcom/android/mms/ui/MessageItem;
    goto/16 :goto_5
.end method

.method public getCursorForItem(Lcom/android/mms/ui/MessageItem;)Landroid/database/Cursor;
    .locals 5
    .parameter "item"

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 608
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 609
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 611
    :cond_0
    iget v3, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 612
    .local v1, id:J
    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 618
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #id:J
    :goto_0
    return-object v0

    .line 615
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #id:J
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 618
    .end local v1           #id:J
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 553
    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 554
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(Landroid/database/Cursor;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 568
    const-string v2, "Mms/ipmsg/MessageListAdapter"

    const-string v3, "getItemViewType(): item type = INCOMING_ITEM_TYPE (default)"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :goto_0
    return v1

    .line 556
    :pswitch_0
    const-string v2, "Mms/ipmsg/MessageListAdapter"

    const-string v3, "getItemViewType(): item type = INCOMING_ITEM_TYPE"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :pswitch_1
    const-string v1, "Mms/ipmsg/MessageListAdapter"

    const-string v2, "getItemViewType(): item type = OUTGOING_ITEM_TYPE"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const/4 v1, 0x1

    goto :goto_0

    .line 562
    :pswitch_2
    const-string v1, "Mms/ipmsg/MessageListAdapter"

    const-string v2, "getItemViewType(): item type = INCOMING_ITEM_TYPE_IPMSG"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const/4 v1, 0x2

    goto :goto_0

    .line 565
    :pswitch_3
    const-string v1, "Mms/ipmsg/MessageListAdapter"

    const-string v2, "getItemViewType(): item type = OUTGOING_ITEM_TYPE_IPMSG"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v1, 0x3

    goto :goto_0

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMessageUri(J)Landroid/net/Uri;
    .locals 4
    .parameter "messageId"

    .prologue
    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, messageUri:Landroid/net/Uri;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 924
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 928
    :goto_0
    return-object v0

    .line 926
    :cond_0
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    neg-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotifIndStatus(J)I
    .locals 3
    .parameter "index"

    .prologue
    .line 887
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mNotifyIndStatusMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 888
    .local v0, result:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 889
    const/4 v1, -0x1

    .line 891
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mNotifyIndStatusMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getOnDataSetChangedListener()Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    return-object v0
.end method

.method public getSelectedNumber()I
    .locals 6

    .prologue
    .line 1069
    const/4 v3, 0x0

    .line 1070
    .local v3, number:I
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 1071
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1072
    .local v2, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1074
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1075
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1076
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1080
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v2           #iter:Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    if-eqz v5, :cond_3

    .line 1081
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1082
    .local v4, simMsgIter:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1084
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1085
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1086
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1090
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v4           #simMsgIter:Ljava/util/Iterator;
    :cond_3
    return v3
.end method

.method public getSimIdFromCursor(Landroid/database/Cursor;)I
    .locals 7
    .parameter "c"

    .prologue
    .line 1413
    const/4 v1, -0x1

    .line 1415
    .local v1, simId:I
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1416
    .local v3, type:Ljava/lang/String;
    const-string v4, "mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1417
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSimId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1424
    :cond_0
    :goto_0
    const-string v4, "MessageListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimId id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #type:Ljava/lang/String;
    :goto_1
    move v2, v1

    .line 1425
    .end local v1           #simId:I
    .local v2, simId:I
    return v2

    .line 1418
    .end local v2           #simId:I
    .restart local v1       #simId:I
    .restart local v3       #type:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v4, "sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1419
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSimId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 1421
    .end local v3           #type:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1422
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "MessageListAdapter"

    const-string v5, "getSimId error happens, please check!"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1424
    const-string v4, "MessageListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimId id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    const-string v4, "MessageListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimId id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSimMsgItemList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 1378
    iget v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mUnreadCount:I

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->layoutList:[I

    array-length v0, v0

    return v0
.end method

.method public initListMap(Landroid/database/Cursor;)V
    .locals 16
    .parameter "cursor"

    .prologue
    .line 932
    if-eqz p1, :cond_5

    .line 933
    const-wide/16 v11, 0x0

    .line 935
    .local v11, itemId:J
    const-wide/16 v7, 0x0

    .line 936
    .local v7, msgId:J
    const-wide/16 v14, 0x0

    .line 937
    .local v14, status:J
    const/4 v10, 0x0

    .line 938
    .local v10, isSimMsg:Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListAdapter;->removeUselessItem(Landroid/database/Cursor;)V

    .line 939
    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 940
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v1, v1, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 942
    const-wide/16 v1, 0x1

    cmp-long v1, v14, v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x3

    cmp-long v1, v14, v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x5

    cmp-long v1, v14, v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x7

    cmp-long v1, v14, v1

    if-nez v1, :cond_2

    .line 946
    :cond_1
    const/4 v10, 0x1

    .line 949
    :cond_2
    if-eqz v10, :cond_3

    const-string v1, "index_on_icc"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 950
    const-string v1, "index_on_icc"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 951
    .local v13, msgIndex:Ljava/lang/String;
    const-string v1, ";"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 953
    .local v9, index:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 954
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 958
    .end local v9           #index:[Ljava/lang/String;
    .end local v13           #msgIndex:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v1, v1, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 959
    .local v6, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v1, v1, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 960
    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v11

    .line 962
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 963
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListAdapter;->mDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v2, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v2, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v2, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v8}, Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;->setBodyandAddress(Landroid/database/Cursor;IIILjava/lang/String;J)V

    goto/16 :goto_0

    .line 971
    .end local v6           #type:Ljava/lang/String;
    .end local v7           #msgId:J
    .end local v10           #isSimMsg:Z
    .end local v11           #itemId:J
    .end local v14           #status:J
    :cond_5
    return-void
.end method

.method public isGroupConversation()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroupConversation:Z

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const v1, 0x7f04003e

    const/4 v2, 0x0

    .line 383
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(Landroid/database/Cursor;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 393
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 385
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04003c

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 389
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04003d

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 391
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04003f

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 361
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mClearCacheFlag:Z

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 364
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mClearCacheFlag:Z

    .line 366
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 369
    :cond_1
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 378
    :cond_0
    return-void
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mTaskQueue:Lcom/android/mms/ui/MessageListAdapter$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->push(Ljava/lang/Runnable;)V

    .line 1149
    return-void
.end method

.method public removeUselessItem(Landroid/database/Cursor;)V
    .locals 19
    .parameter "cursor"

    .prologue
    .line 975
    if-eqz p1, :cond_9

    .line 977
    const-wide/16 v7, 0x0

    .line 978
    .local v7, msgId:J
    const-wide/16 v14, 0x0

    .line 979
    .local v14, status:J
    const/4 v3, 0x0

    .line 980
    .local v3, isSimMsg:Z
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 981
    .local v9, msgIdsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 982
    .local v12, simMsgIdsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 984
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 985
    const-wide/16 v17, 0x1

    cmp-long v17, v14, v17

    if-eqz v17, :cond_1

    const-wide/16 v17, 0x3

    cmp-long v17, v14, v17

    if-eqz v17, :cond_1

    const-wide/16 v17, 0x5

    cmp-long v17, v14, v17

    if-eqz v17, :cond_1

    const-wide/16 v17, 0x7

    cmp-long v17, v14, v17

    if-nez v17, :cond_2

    .line 989
    :cond_1
    const/4 v3, 0x1

    .line 991
    :cond_2
    if-eqz v3, :cond_5

    const-string v17, "index_on_icc"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 992
    const-string v17, "index_on_icc"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 993
    .local v10, msgIndex:Ljava/lang/String;
    const-string v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 994
    .local v2, index:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v2, v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1001
    .end local v2           #index:[Ljava/lang/String;
    .end local v10           #msgIndex:Ljava/lang/String;
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1003
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1004
    .local v5, iter:Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 1005
    .local v4, itemKey:Ljava/lang/Long;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1006
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #itemKey:Ljava/lang/Long;
    check-cast v4, Ljava/lang/Long;

    .line 1007
    .restart local v4       #itemKey:Ljava/lang/Long;
    invoke-virtual {v9, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1008
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 996
    .end local v4           #itemKey:Ljava/lang/Long;
    .end local v5           #iter:Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 997
    .local v16, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 998
    move-object/from16 v0, v16

    invoke-static {v0, v7, v8}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v7

    .line 999
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1011
    .end local v16           #type:Ljava/lang/String;
    .restart local v4       #itemKey:Ljava/lang/Long;
    .restart local v5       #iter:Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3ea

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1013
    .local v6, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1016
    .end local v6           #msg:Landroid/os/Message;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1017
    .local v13, simMsgIter:Ljava/util/Iterator;
    const/4 v11, 0x0

    .line 1018
    .local v11, simItemKey:Ljava/lang/String;
    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1019
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #simItemKey:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 1020
    .restart local v11       #simItemKey:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 1021
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1026
    .end local v3           #isSimMsg:Z
    .end local v4           #itemKey:Ljava/lang/Long;
    .end local v5           #iter:Ljava/util/Iterator;
    .end local v7           #msgId:J
    .end local v9           #msgIdsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v11           #simItemKey:Ljava/lang/String;
    .end local v12           #simMsgIdsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13           #simMsgIter:Ljava/util/Iterator;
    .end local v14           #status:J
    :cond_9
    return-void
.end method

.method public saveNotifIndStatus(JI)V
    .locals 3
    .parameter "index"
    .parameter "Status"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mNotifyIndStatusMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    return-void
.end method

.method public setClearCacheFlag(Z)V
    .locals 0
    .parameter "clearCacheFlag"

    .prologue
    .line 1158
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mClearCacheFlag:Z

    .line 1159
    return-void
.end method

.method public setEnterImportantThreadTime(J)V
    .locals 0
    .parameter "enterImportantThreadTime"

    .prologue
    .line 1401
    iput-wide p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mEnterImportantThreadTime:J

    .line 1402
    return-void
.end method

.method public setIsGroupConversation(Z)V
    .locals 0
    .parameter "isGroup"

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroupConversation:Z

    .line 340
    return-void
.end method

.method public setIsImportantThread(Z)V
    .locals 1
    .parameter "isImportantThread"

    .prologue
    .line 1394
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsImportantThread:Z

    .line 1395
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsImportantThread:Z

    if-nez v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 1398
    :cond_0
    return-void
.end method

.method public setItemsValue(Z[J)V
    .locals 6
    .parameter "value"
    .parameter "keyArray"

    .prologue
    .line 1030
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1032
    .local v2, iter:Ljava/util/Iterator;
    if-nez p2, :cond_0

    .line 1033
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1035
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1036
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1039
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 1040
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1043
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 335
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 331
    return-void
.end method

.method public setOnlineDividerString(Ljava/lang/String;)V
    .locals 0
    .parameter "onlineDividerString"

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnlineDividerString:Ljava/lang/String;

    .line 1391
    return-void
.end method

.method public setSimItemsValue(Z[J)V
    .locals 3
    .parameter "value"
    .parameter "keyArray"

    .prologue
    .line 1046
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimMsgListItem:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1048
    .local v1, iter:Ljava/util/Iterator;
    if-nez p2, :cond_0

    .line 1049
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1051
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1052
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1055
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1095
    iput p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextSize:F

    .line 1096
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0
    .parameter "unreadCount"

    .prologue
    .line 1382
    iput p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mUnreadCount:I

    .line 1383
    return-void
.end method

.method public updateOnlineDividerTime()V
    .locals 2

    .prologue
    .line 1386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnlineDividerTime:J

    .line 1387
    return-void
.end method
