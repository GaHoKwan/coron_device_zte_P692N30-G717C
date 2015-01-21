.class public Lcom/android/mms/ui/ManageSimMessages;
.super Landroid/app/Activity;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSimMessages$QueryProcessDialog;,
        Lcom/android/mms/ui/ManageSimMessages$CheckSimCapacityTask;,
        Lcom/android/mms/ui/ManageSimMessages$QueryHandler;
    }
.end annotation


# static fields
.field private static final ALL_SMS:Ljava/lang/String; = "999999"

.field private static COLUMN_ADDRESS:I = 0x0

.field private static COLUMN_BODY:I = 0x0

.field private static COLUMN_DATE:I = 0x0

.field private static COLUMN_ERROR_CODE:I = 0x0

.field private static COLUMN_ID:I = 0x0

.field private static COLUMN_INDEX_ON_ICC:I = 0x0

.field private static COLUMN_IS_STATUS_REPORT:I = 0x0

.field private static COLUMN_LOCKED:I = 0x0

.field private static COLUMN_MESSAGE_CLASS:I = 0x0

.field private static COLUMN_SERVICE_CENTER_ADDRESS:I = 0x0

.field private static COLUMN_SIM_ID:I = 0x0

.field private static COLUMN_STATUS:I = 0x0

.field private static COLUMN_TRANSPORT_TYPE:I = 0x0

.field private static COLUMN_TYPE:I = 0x0

.field private static final DIALOG_REFRESH:I = 0x1

.field private static final FOR_MULTIDELETE:Ljava/lang/String; = "ForMultiDelete"

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x7

.field private static final MENU_ADD_CONTACT:I = 0xa

.field private static final MENU_ADD_TO_BOOKMARK:I = 0x4

.field private static final MENU_CALL_BACK:I = 0x5

.field private static final MENU_COPY_TO_PHONE_MEMORY:I = 0x0

.field private static final MENU_DELETE_FROM_SIM:I = 0x1

.field private static final MENU_FORWARD:I = 0x2

.field private static final MENU_REPLY:I = 0x3

.field private static final MENU_SEND_EMAIL:I = 0x6

.field private static final MENU_SEND_SMS:I = 0x9

.field private static final OPTION_MENU_DELETE:I = 0x0

.field private static final OPTION_MENU_SIM_CAPACITY:I = 0x1

.field private static final SHOW_BUSY:I = 0x2

.field private static final SHOW_EMPTY:I = 0x1

.field private static final SHOW_IN_ONE:Ljava/lang/String; = "showInOne"

.field private static final SHOW_LIST:I = 0x0

.field public static final SIM_FULL_NOTIFICATION_ID:I = 0xea

.field private static final TAG:Ljava/lang/String; = "ManageSimMessages"

.field private static sDeleteAllContentUri:Landroid/net/Uri;

.field public static sDeletedMessageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sMultiDeleteContentUri:Landroid/net/Uri;

.field protected static sObserverCount:I


# instance fields
.field private final airPlaneReceiver:Landroid/content/BroadcastReceiver;

.field public isDeleting:Z

.field public isQuerying:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarText:Landroid/widget/Button;

.field private mContactList:Lcom/android/mms/data/ContactList;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentSlotId:I

.field private mCursor:Landroid/database/Cursor;

.field mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHaveDeleted:Z

.field private mIsCurrentSimFull:Z

.field private mMessage:Landroid/widget/TextView;

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;

.field private mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

.field private mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private mOptionMenu:Landroid/view/Menu;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSelectionItem:Landroid/view/MenuItem;

.field private mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

.field private mSimList:Landroid/widget/ListView;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field private mStringReplacePlugin:Lcom/mediatek/mms/ext/IStringReplacement;

.field private mURLs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final simChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    sput v1, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_SERVICE_CENTER_ADDRESS:I

    .line 162
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_ADDRESS:I

    .line 163
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_MESSAGE_CLASS:I

    .line 164
    const/4 v0, 0x3

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_BODY:I

    .line 165
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_DATE:I

    .line 166
    const/4 v0, 0x5

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_STATUS:I

    .line 167
    const/4 v0, 0x6

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_INDEX_ON_ICC:I

    .line 168
    const/4 v0, 0x7

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_IS_STATUS_REPORT:I

    .line 169
    const/16 v0, 0x8

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_TRANSPORT_TYPE:I

    .line 170
    const/16 v0, 0x9

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_TYPE:I

    .line 171
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_LOCKED:I

    .line 172
    const/16 v0, 0xb

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_ERROR_CODE:I

    .line 173
    const/16 v0, 0xc

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_ID:I

    .line 174
    const/16 v0, 0xd

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_SIM_ID:I

    .line 183
    sput v1, Lcom/android/mms/ui/ManageSimMessages;->sObserverCount:I

    .line 206
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->sDeletedMessageSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 134
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    .line 137
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 138
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 180
    iput v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    .line 181
    iput-boolean v2, p0, Lcom/android/mms/ui/ManageSimMessages;->isQuerying:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/mms/ui/ManageSimMessages;->isDeleting:Z

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mURLs:Ljava/util/ArrayList;

    .line 188
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mHandler:Landroid/os/Handler;

    .line 196
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    .line 197
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IStringReplacement;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mStringReplacePlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    .line 202
    iput-boolean v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mHaveDeleted:Z

    .line 208
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ManageSimMessages$1;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    .line 1056
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$6;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessageListItemHandler:Landroid/os/Handler;

    .line 1245
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$8;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 1370
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$13;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->airPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 1509
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ManageSimMessages;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mHaveDeleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ManageSimMessages;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mHaveDeleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ManageSimMessages;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mURLs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ManageSimMessages;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->getMsgIndexByCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ManageSimMessages;)Lcom/mediatek/mms/ext/IMmsManageSimMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ManageSimMessages;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->markCheckedState(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->checkDeleteMode()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->confirmMultiDelete()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ManageSimMessages;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ManageSimMessages;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsCurrentSimFull:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ManageSimMessages;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsCurrentSimFull:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->updateListWithCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->updateActionBarText()V

    return-void
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/mms/ui/ManageSimMessages;->sMultiDeleteContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method private addCallAndContactMenuItems(Landroid/view/ContextMenu;Landroid/database/Cursor;)V
    .locals 21
    .parameter "menu"
    .parameter "cursor"

    .prologue
    .line 921
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 922
    .local v14, textToSpannify:Ljava/lang/StringBuilder;
    const-string v17, "body"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 923
    .local v10, reciBody:Ljava/lang/String;
    const-string v17, "address"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 924
    .local v11, reciNumber:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    new-instance v8, Landroid/text/SpannableString;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 927
    .local v8, msg:Landroid/text/SpannableString;
    const/16 v17, 0xf

    move/from16 v0, v17

    invoke-static {v8, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 928
    const/16 v17, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v18

    const-class v19, Landroid/text/style/URLSpan;

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/style/URLSpan;

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v16

    .line 930
    .local v16, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages;->mURLs:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 931
    const-string v17, "ManageSimMessages"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addCallAndContactMenuItems uris.size() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_9

    .line 933
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 935
    .local v15, uriString:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 936
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 939
    :cond_1
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 940
    .local v13, sep:I
    const-string v9, ""

    .line 941
    .local v9, prefix:Ljava/lang/String;
    if-ltz v13, :cond_3

    .line 942
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 943
    const-string v17, "mailto"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "tel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 944
    :cond_2
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 947
    :cond_3
    const/4 v6, 0x0

    .line 948
    .local v6, addToContacts:Z
    const-string v17, "mailto"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 949
    const v17, 0x7f0b0230

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "%s"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 950
    .local v12, sendEmailString:Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mailto:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 952
    .local v7, intent:Landroid/content/Intent;
    const/high16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 954
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/android/mms/ui/MessageUtils;->haveEmailContact(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_4

    const/4 v6, 0x1

    .line 965
    .end local v7           #intent:Landroid/content/Intent;
    .end local v12           #sendEmailString:Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_0

    .line 966
    invoke-static {v15}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 969
    .restart local v7       #intent:Landroid/content/Intent;
    const v17, 0x7f0b0233

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "%s"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 971
    .local v5, addContactString:Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x7

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 954
    .end local v5           #addContactString:Ljava/lang/String;
    .restart local v12       #sendEmailString:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 955
    .end local v7           #intent:Landroid/content/Intent;
    .end local v12           #sendEmailString:Ljava/lang/String;
    :cond_5
    const-string v17, "tel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 956
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/ui/ManageSimMessages;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    const/4 v6, 0x1

    .line 957
    :goto_3
    const-string v17, "ManageSimMessages"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addCallAndContactMenuItems  addToContacts2 = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 956
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 960
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages;->mURLs:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_8

    .line 961
    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const v20, 0x7f0b0026

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 963
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages;->mURLs:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 975
    .end local v6           #addToContacts:Z
    .end local v9           #prefix:Ljava/lang/String;
    .end local v13           #sep:I
    .end local v15           #uriString:Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private addRecipientToContact(Landroid/view/ContextMenu;Landroid/database/Cursor;)Z
    .locals 11
    .parameter "menu"
    .parameter "cursor"

    .prologue
    const/16 v10, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 978
    const/4 v4, 0x0

    .line 979
    .local v4, showAddContact:Z
    const-string v7, "address"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 980
    .local v3, reciNumber:Ljava/lang/String;
    const-string v7, "ManageSimMessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addRecipientToContact reciNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-static {v3, v6, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mContactList:Lcom/android/mms/data/ContactList;

    .line 983
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 984
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v7

    if-nez v7, :cond_0

    .line 985
    const/4 v4, 0x1

    .line 986
    const-string v7, "ManageSimMessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not in contact[number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v7, :cond_3

    move v2, v5

    .line 991
    .local v2, menuAddExist:Z
    :goto_0
    if-eqz v4, :cond_4

    .line 992
    if-nez v2, :cond_2

    .line 993
    const v7, 0x7f0b0293

    invoke-interface {p1, v6, v10, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f0200b6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 998
    :cond_2
    :goto_1
    return v5

    .end local v2           #menuAddExist:Z
    :cond_3
    move v2, v6

    .line 990
    goto :goto_0

    .line 996
    .restart local v2       #menuAddExist:Z
    :cond_4
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_1
.end method

.method private addSMRow(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 4
    .parameter "targetCursor"
    .parameter "sourceCursor"

    .prologue
    .line 1425
    const/16 v1, 0xe

    new-array v0, v1, [Ljava/lang/Object;

    .line 1426
    .local v0, row:[Ljava/lang/Object;
    const/4 v1, 0x0

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_SERVICE_CENTER_ADDRESS:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1427
    const/4 v1, 0x1

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_ADDRESS:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1428
    const/4 v1, 0x2

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_MESSAGE_CLASS:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1429
    const/4 v1, 0x3

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_BODY:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1430
    const/4 v1, 0x4

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_DATE:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1431
    const/4 v1, 0x5

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_STATUS:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1432
    const/4 v1, 0x6

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_INDEX_ON_ICC:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1433
    const/4 v1, 0x7

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_IS_STATUS_REPORT:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1434
    const/16 v1, 0x8

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_TRANSPORT_TYPE:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1435
    const/16 v1, 0x9

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_TYPE:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1436
    const/16 v1, 0xa

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_LOCKED:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1437
    const/16 v1, 0xb

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_ERROR_CODE:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1438
    const/16 v1, 0xc

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_ID:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1439
    const/16 v1, 0xd

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->COLUMN_SIM_ID:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1440
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1441
    return-void
.end method

.method private buildFilteredCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4
    .parameter "messages"

    .prologue
    .line 1413
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1414
    .local v0, cursor:Landroid/database/MatrixCursor;
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1415
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1416
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Landroid/database/AbstractCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1417
    .local v1, messageId:Ljava/lang/Long;
    sget-object v2, Lcom/android/mms/ui/ManageSimMessages;->sDeletedMessageSet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1418
    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/ManageSimMessages;->addSMRow(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_0

    .line 1421
    .end local v1           #messageId:Ljava/lang/Long;
    :cond_1
    return-object v0
.end method

.method private checkDeleteMode()V
    .locals 3

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-nez v0, :cond_0

    .line 1179
    :goto_0
    return-void

    .line 1169
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->markCheckedState(Z)V

    .line 1170
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    if-eqz v0, :cond_1

    .line 1171
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->setUpActionBar()V

    .line 1178
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    goto :goto_0

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0xa

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_1
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 4
    .parameter "listener"
    .parameter "messageId"

    .prologue
    .line 776
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 777
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b02b6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 778
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 779
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 780
    const v2, 0x7f0b0295

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 781
    const v2, 0x7f0b0296

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 784
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mStringReplacePlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, ctString:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 791
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 792
    return-void

    .line 788
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private confirmMultiDelete()V
    .locals 3

    .prologue
    .line 1106
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1107
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b02b6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1108
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1110
    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1112
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getSimMsgItemList()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/mms/ext/IMmsManageSimMessage;->hasIncludeUnoperatedMessage(Ljava/util/Iterator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mStringReplacePlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1118
    :cond_0
    const v1, 0x7f0b02bf

    new-instance v2, Lcom/android/mms/ui/ManageSimMessages$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ManageSimMessages$7;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1161
    const v1, 0x7f0b0296

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1163
    return-void
.end method

.method private copyToPhoneMemory(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    .line 614
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, address:Ljava/lang/String;
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, body:Ljava/lang/String;
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 617
    .local v6, date:Ljava/lang/Long;
    const-string v0, "service_center_address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 618
    .local v5, serviceCenter:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v2

    .line 619
    .local v2, isIncomingMessage:Z
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t address \t="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t body \t="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t date \t="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t sc \t="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t isIncoming \t="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ManageSimMessages$5;-><init>(Lcom/android/mms/ui/ManageSimMessages;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "copyToPhoneMemory"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 674
    return-void
.end method

.method private forwardMessage(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 901
    const-string v2, "body"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, body:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 903
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    const-string v2, "forwarded_message"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 905
    if-eqz v0, :cond_0

    .line 906
    const-string v2, "sms_body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->startActivity(Landroid/content/Intent;)V

    .line 910
    return-void
.end method

.method private getMsgIndexByCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 685
    const-string v0, "index_on_icc"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsCurrentSimFull:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xea

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    .line 294
    return-void
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1212
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 1214
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v1, :cond_0

    .line 1215
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v1, p0, p0}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->init(Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;Landroid/app/Activity;)V

    .line 1218
    :cond_0
    :try_start_0
    const-class v1, Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    .line 1220
    const-string v1, "ManageSimMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsManageSimMessagePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    :goto_0
    return-void

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsManageSimMessageImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/ext/MmsManageSimMessageImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    .line 1223
    const-string v1, "ManageSimMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsManageSimMessagePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initResourceRefs()V
    .locals 11

    .prologue
    const v10, 0x7f0b02da

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 1005
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    .line 1006
    new-instance v5, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v5, p0, v6, p0}, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 1007
    const v5, 0x7f0f016f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    .line 1008
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    if-eqz v5, :cond_0

    .line 1009
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1011
    :cond_0
    const v5, 0x7f0f0170

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    .line 1015
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v1

    .line 1017
    .local v1, iTelephony:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    new-instance v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephonyManager;

    invoke-direct {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephonyManager;-><init>()V

    .line 1019
    .local v3, mEncapsulatedTelephonyManager:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephonyManager;
    const/4 v2, 0x0

    .line 1021
    .local v2, isSimInsert:Z
    :try_start_0
    iget v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-virtual {v1, v5}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1025
    :goto_0
    iget v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-virtual {v3, v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephonyManager;->hasIccCardGemini(I)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v2, :cond_1

    .line 1027
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    const v6, 0x7f0b0071

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1054
    :goto_1
    return-void

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "ManageSimMessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get insert state fail "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1033
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v4, 0x0

    .line 1034
    .local v4, mIsSim1Ready:Z
    if-eqz v1, :cond_2

    .line 1035
    :try_start_1
    iget v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-virtual {v1, v5}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->isRadioOnGemini(I)Z

    move-result v4

    .line 1040
    :goto_2
    if-nez v4, :cond_3

    .line 1041
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    sget v6, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->sim_close:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1043
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    const v5, 0x7f0b02da

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1048
    :catch_1
    move-exception v0

    .line 1049
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v5, "ManageSimMessages"

    const-string v6, "RemoteException happens......"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1037
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_2
    const-string v5, "ManageSimMessages"

    const-string v6, "Can not get phone service !"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1046
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private isCurrentSimFull()Z
    .locals 5

    .prologue
    .line 1387
    const/4 v0, 0x0

    .line 1388
    .local v0, isFull:Z
    const/4 v1, 0x0

    .line 1390
    .local v1, simMemStatus:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;
    iget v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-static {v2}, Lcom/mediatek/encapsulation/android/telephony/gemini/EncapsulatedGeminiSmsManager;->getSmsSimMemoryStatusGemini(I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;

    move-result-object v1

    .line 1394
    if-eqz v1, :cond_0

    .line 1395
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;->getUsed()I

    move-result v2

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;->getTotal()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 1396
    :goto_0
    const-string v2, "ManageSimMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCurrentSimFull isFull= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_0
    return v0

    .line 1395
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIncomingMessage(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 677
    const-string v2, "status"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 679
    .local v0, messageStatus:I
    const-string v2, "Mms/Txn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNumberInContacts(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 1001
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    return v0
.end method

.method private markCheckedState(Z)V
    .locals 5
    .parameter "checkedState"

    .prologue
    .line 1182
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/mms/ui/MessageListAdapter;->setSimItemsValue(Z[J)V

    .line 1184
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1185
    .local v0, count:I
    const/4 v2, 0x0

    .line 1186
    .local v2, item:Lcom/android/mms/ui/MessageListItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1187
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #item:Lcom/android/mms/ui/MessageListItem;
    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 1188
    .restart local v2       #item:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_0

    .line 1189
    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MessageListItem;->setSelectedBackGroud(Z)V

    .line 1186
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1192
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->updateActionBarText()V

    .line 1193
    return-void
.end method

.method private refreshMessageList()V
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 447
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    .line 452
    return-void
.end method

.method private registerSimChangeObserver()V
    .locals 4

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->sDeleteAllContentUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 611
    return-void
.end method

.method private replyMessage(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 913
    const-string v2, "address"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, address:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 916
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->startActivity(Landroid/content/Intent;)V

    .line 917
    return-void
.end method

.method private setOptionMenu()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 710
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mOptionMenu:Landroid/view/Menu;

    if-nez v6, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v5

    .line 715
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_7

    iget v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    if-nez v6, :cond_7

    move v1, v4

    .line 718
    .local v1, isShowDelectAll:Z
    :goto_1
    iget v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-ne v6, v4, :cond_8

    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    if-nez v6, :cond_8

    :cond_3
    move v0, v4

    .line 722
    .local v0, isShowCapacity:Z
    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mOptionMenu:Landroid/view/Menu;

    invoke-interface {v6, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 723
    .local v2, miDeleteAll:Landroid/view/MenuItem;
    if-eqz v2, :cond_4

    .line 724
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 727
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mOptionMenu:Landroid/view/Menu;

    invoke-interface {v6, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 728
    .local v3, miSimCapacity:Landroid/view/MenuItem;
    if-eqz v3, :cond_5

    .line 729
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 732
    :cond_5
    if-nez v1, :cond_6

    if-eqz v0, :cond_0

    :cond_6
    move v5, v4

    goto :goto_0

    .end local v0           #isShowCapacity:Z
    .end local v1           #isShowDelectAll:Z
    .end local v2           #miDeleteAll:Landroid/view/MenuItem;
    .end local v3           #miSimCapacity:Landroid/view/MenuItem;
    :cond_7
    move v1, v5

    .line 715
    goto :goto_1

    .restart local v1       #isShowDelectAll:Z
    :cond_8
    move v0, v5

    .line 718
    goto :goto_2
.end method

.method private setUpActionBar()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 1285
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    const/16 v5, 0x10

    const/16 v6, 0x1a

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1289
    new-instance v1, Lcom/android/mms/ui/CustomMenu;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CustomMenu;-><init>(Landroid/content/Context;)V

    .line 1290
    .local v1, customMenu:Lcom/android/mms/ui/CustomMenu;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04004e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1294
    .local v2, customView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x77

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v2, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1299
    const v4, 0x7f0f007d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBarText:Landroid/widget/Button;

    .line 1300
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBarText:Landroid/widget/Button;

    const v5, 0x7f0e0008

    invoke-virtual {v1, v4, v5}, Lcom/android/mms/ui/CustomMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    .line 1301
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    const v5, 0x7f0f01d0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectionItem:Landroid/view/MenuItem;

    .line 1303
    new-instance v4, Lcom/android/mms/ui/ManageSimMessages$10;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSimMessages$10;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1315
    const v4, 0x7f0f0156

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1316
    .local v0, cancelSelection:Landroid/widget/Button;
    new-instance v4, Lcom/android/mms/ui/ManageSimMessages$11;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSimMessages$11;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1331
    const v4, 0x7f0f0157

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1332
    .local v3, deleteSelection:Landroid/widget/Button;
    new-instance v4, Lcom/android/mms/ui/ManageSimMessages$12;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSimMessages$12;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1342
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->updateActionBarText()V

    .line 1343
    return-void
.end method

.method private startQuery()V
    .locals 10

    .prologue
    .line 425
    const-string v0, "ManageSimMessages"

    const-string v1, "startQuery"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->isQuerying:Z

    .line 428
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSIMLongSmsConcatenateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v9, "1"

    .line 429
    .local v9, flag:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/android/mms/ui/ManageSimMessages;->sDeleteAllContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "showInOne"

    invoke-virtual {v0, v1, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 431
    .local v3, queryUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    iget v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsManageSimMessage;->isInternationalCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    iget v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsManageSimMessage;->getAllContentUriForInternationalCard(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "showInOne"

    invoke-virtual {v0, v1, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "ManageSimMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQuery  mQueryHandler.postDelayed ten sec; uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .end local v3           #queryUri:Landroid/net/Uri;
    .end local v9           #flag:Ljava/lang/String;
    :goto_1
    return-void

    .line 428
    :cond_1
    const-string v9, "0"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v8

    .line 439
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1
.end method

.method private updateActionBarText()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1346
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBarText:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBarText:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectionItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1356
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectionItem:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1357
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectionItem:Landroid/view/MenuItem;

    const v1, 0x7f0b00b0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1363
    :cond_1
    :goto_0
    return-void

    .line 1359
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectionItem:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1360
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectionItem:Landroid/view/MenuItem;

    const v1, 0x7f0b0074

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateListWithCursor(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 361
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 412
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 418
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 419
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->checkDeleteMode()V

    .line 420
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListAdapter;->initListMap(Landroid/database/Cursor;)V

    .line 423
    :cond_1
    return-void

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-nez v0, :cond_5

    .line 371
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 375
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAdjustFontSizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    const-string v0, "message_font_size"

    const/high16 v1, 0x4190

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPreferenceValueFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v6

    .line 378
    .local v6, textSize:F
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ManageSimMessages;->setTextSize(F)V

    .line 380
    .end local v6           #textSize:F
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->refresh()V

    .line 383
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSimMessages$2;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 406
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 407
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    goto :goto_0

    .line 409
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 410
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    goto :goto_0

    .line 415
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    goto :goto_1
.end method

.method private updateState(I)V
    .locals 10
    .parameter "state"

    .prologue
    const v9, 0x7f0b02da

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 795
    const-string v2, "ManageSimMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateState, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-ne v2, p1, :cond_0

    .line 841
    :goto_0
    return-void

    .line 800
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    .line 801
    packed-switch p1, :pswitch_data_0

    .line 839
    const-string v2, "ManageSimMessages"

    const-string v3, "Invalid State"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 803
    :pswitch_0
    invoke-virtual {p0, v6}, Landroid/app/Activity;->removeDialog(I)V

    .line 804
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 805
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 806
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 807
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 810
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mStringReplacePlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v2, v8}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, ctString:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 812
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 818
    .end local v0           #ctString:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0, v6}, Landroid/app/Activity;->removeDialog(I)V

    .line 819
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 822
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mStringReplacePlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v2, v8}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, string:Ljava/lang/String;
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 824
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mStringReplacePlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 827
    :cond_2
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 833
    .end local v1           #string:Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 834
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 835
    const v2, 0x7f0b0238

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 836
    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 801
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private viewMessage(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 845
    return-void
.end method


# virtual methods
.method public checkSimCapacity()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1473
    const/4 v1, 0x0

    .line 1474
    .local v1, message:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1476
    .local v2, simMemStatus:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;
    iget v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-static {v3}, Lcom/mediatek/encapsulation/android/telephony/gemini/EncapsulatedGeminiSmsManager;->getSmsSimMemoryStatusGemini(I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;

    move-result-object v2

    .line 1480
    if-eqz v2, :cond_1

    .line 1481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0093

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;->getUsed()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0094

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;->getTotal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1485
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    iget v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-interface {v3, v4}, Lcom/mediatek/mms/ext/IMmsManageSimMessage;->isInternationalCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mStringReplacePlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/16 v5, 0xc

    invoke-interface {v4, v5}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1502
    :cond_0
    :goto_0
    return-object v1

    .line 1493
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mStringReplacePlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, ctString:Ljava/lang/String;
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1496
    move-object v1, v0

    goto :goto_0

    .line 1498
    :cond_2
    const v3, 0x7f0b0095

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1228
    const/4 v0, 0x0

    .line 1229
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v1, :cond_0

    .line 1230
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v1, p1}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1232
    :cond_0
    if-nez v0, :cond_1

    .line 1233
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1235
    :cond_1
    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 494
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v9, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget v10, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v9, v10}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 501
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 502
    const-string v8, "ManageSimMessages"

    const-string v9, "Bad menuInfo, cursor is null"

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return v7

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, exception:Ljava/lang/ClassCastException;
    const-string v8, "ManageSimMessages"

    const-string v9, "Bad menuInfo."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 505
    .end local v1           #exception:Ljava/lang/ClassCastException;
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 567
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    goto :goto_0

    .line 507
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;)V

    move v7, v8

    .line 508
    goto :goto_0

    .line 510
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->getMsgIndexByCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 511
    .local v5, msgIndex:Ljava/lang/String;
    new-instance v7, Lcom/android/mms/ui/ManageSimMessages$3;

    invoke-direct {v7, p0, v0, v5}, Lcom/android/mms/ui/ManageSimMessages$3;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;Ljava/lang/String;)V

    const v9, 0x7f0b02bd

    invoke-direct {p0, v7, v9}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    move v7, v8

    .line 536
    goto :goto_0

    .line 538
    .end local v5           #msgIndex:Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->forwardMessage(Landroid/database/Cursor;)V

    move v7, v8

    .line 539
    goto :goto_0

    .line 541
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->replyMessage(Landroid/database/Cursor;)V

    move v7, v8

    .line 542
    goto :goto_0

    .line 544
    :pswitch_5
    iget-object v9, p0, Lcom/android/mms/ui/ManageSimMessages;->mURLs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v8, :cond_2

    .line 545
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/mms/ui/ManageSimMessages;->mURLs:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {p0, v9, v7}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    move v7, v8

    .line 560
    goto :goto_0

    .line 546
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mURLs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v8, :cond_1

    .line 547
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mURLs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/CharSequence;

    .line 548
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mURLs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 549
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mURLs:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    aput-object v7, v4, v2

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 551
    :cond_3
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0b0026

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v9, Lcom/android/mms/ui/ManageSimMessages$4;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/ManageSimMessages$4;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v7, v4, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 563
    .end local v2           #i:I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :pswitch_6
    const-string v7, "address"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 564
    .local v6, number:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ManageSimMessages;->startActivity(Landroid/content/Intent;)V

    move v7, v8

    .line 565
    goto/16 :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 231
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->airPlaneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    invoke-direct {p0, p0}, Lcom/android/mms/ui/ManageSimMessages;->initPlugin(Landroid/content/Context;)V

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 241
    .local v2, it:Landroid/content/Intent;
    const-string v3, "SlotId"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    .line 242
    const-string v3, "ManageSimMessages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got slot id is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    if-nez v3, :cond_0

    .line 244
    const-string v3, "content://sms/icc"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/mms/ui/ManageSimMessages;->sDeleteAllContentUri:Landroid/net/Uri;

    .line 245
    const-string v3, "content://sms/icc/#"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/mms/ui/ManageSimMessages;->sMultiDeleteContentUri:Landroid/net/Uri;

    .line 251
    :goto_0
    const v3, 0x7f040066

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 253
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->isCurrentSimFull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsCurrentSimFull:Z

    .line 254
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->initResourceRefs()V

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    .line 257
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 260
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->registerSimChangeObserver()V

    .line 263
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 265
    return-void

    .line 247
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://sms/icc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, contentUri:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/mms/ui/ManageSimMessages;->sDeleteAllContentUri:Landroid/net/Uri;

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/mms/ui/ManageSimMessages;->sMultiDeleteContentUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 458
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v4, v4, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    if-eqz v4, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mediatek/mms/ext/IMmsManageSimMessage;->canBeOperated(Landroid/database/Cursor;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 465
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mStringReplacePlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/16 v5, 0xa

    invoke-interface {v4, v5}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 470
    :cond_2
    const v4, 0x7f0b024d

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 471
    const/4 v3, 0x0

    .line 473
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_1
    if-eqz v3, :cond_3

    .line 478
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 479
    .local v1, cursor:Landroid/database/Cursor;
    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/ManageSimMessages;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Landroid/database/Cursor;)V

    .line 481
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    const/4 v4, 0x2

    const v5, 0x7f0b0246

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 482
    const/4 v4, 0x3

    const v5, 0x7f0b003d

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 483
    const v4, 0x7f0b02d8

    invoke-interface {p1, v6, v6, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 485
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 486
    const v4, 0x7f0b02d9

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 474
    :catch_0
    move-exception v2

    .line 475
    .local v2, exception:Ljava/lang/ClassCastException;
    const-string v4, "ManageSimMessages"

    const-string v5, "Bad menuInfo."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 1072
    if-ne p1, v2, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1074
    invoke-virtual {p0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 1075
    const-string v0, "ManageSimMessages"

    const-string v1, "onCreateDialog mDialog is not null"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$QueryProcessDialog;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/ui/ManageSimMessages$QueryProcessDialog;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/ProgressDialog;

    .line 1080
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1081
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1082
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0238

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/ProgressDialog;

    .line 1086
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 691
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 692
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mOptionMenu:Landroid/view/Menu;

    .line 693
    const v0, 0x7f0b02d5

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 695
    const v0, 0x7f0b0091

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 697
    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 849
    const-string v0, "ManageSimMessages"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mHaveDeleted:Z

    .line 855
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 857
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->airPlaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 858
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 860
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 863
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 864
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1091
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    .line 1094
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->checkDeleteMode()V

    .line 1096
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1098
    const/4 v0, 0x1

    .line 1102
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 271
    const-string v1, "ManageSimMessages"

    const-string v2, "onNewIntent ....."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "SlotId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    .line 273
    const-string v1, "ManageSimMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent Got slot id is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    if-nez v1, :cond_0

    .line 275
    const-string v1, "content://sms/icc"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/ManageSimMessages;->sDeleteAllContentUri:Landroid/net/Uri;

    .line 282
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->isCurrentSimFull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsCurrentSimFull:Z

    .line 283
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    .line 284
    return-void

    .line 277
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://sms/icc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, contentUri:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/ManageSimMessages;->sDeleteAllContentUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 737
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 772
    :goto_0
    return v3

    .line 739
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iput-boolean v3, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    .line 740
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 741
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->checkDeleteMode()V

    .line 743
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 763
    :sswitch_1
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$CheckSimCapacityTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ManageSimMessages$CheckSimCapacityTask;-><init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 768
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 737
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 602
    const-string v0, "ManageSimMessages"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 605
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 606
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 702
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 705
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->setOptionMenu()Z

    move-result v0

    .line 706
    .local v0, isShowMenu:Z
    return v0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 572
    const-string v4, "ManageSimMessages"

    const-string v5, "onResume"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 576
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 578
    .local v0, airplaneOn:Z
    :goto_0
    const/4 v2, 0x0

    .line 579
    .local v2, simReady:Z
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v1

    .line 581
    .local v1, iTelephony:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :try_start_0
    iget v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I

    invoke-virtual {v1, v4}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 584
    :goto_1
    if-nez v0, :cond_0

    if-nez v2, :cond_3

    .line 585
    :cond_0
    const-string v4, "ManageSimMessages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "will finish airplaneOn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simReady "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->sim_close:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 588
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 598
    :cond_1
    :goto_2
    return-void

    .end local v0           #airplaneOn:Z
    .end local v1           #iTelephony:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    .end local v2           #simReady:Z
    :cond_2
    move v0, v3

    .line 576
    goto :goto_0

    .line 593
    .restart local v0       #airplaneOn:Z
    .restart local v1       #iTelephony:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    .restart local v2       #simReady:Z
    :cond_3
    iget-boolean v3, p0, Lcom/android/mms/ui/ManageSimMessages;->isQuerying:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    .line 596
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    goto :goto_2

    .line 582
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSimMessages$9;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1276
    return-void
.end method

.method public setTextSize(F)V
    .locals 4
    .parameter "size"

    .prologue
    .line 1196
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v3, :cond_0

    .line 1197
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/mms/ui/MessageListAdapter;->setTextSize(F)V

    .line 1200
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 1201
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1202
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1203
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 1204
    .local v2, item:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_1

    .line 1205
    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MessageListItem;->setBodyTextSize(F)V

    .line 1202
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1209
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #item:Lcom/android/mms/ui/MessageListItem;
    :cond_2
    return-void
.end method

.method public showAirPlaneToast()V
    .locals 3

    .prologue
    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->sim_close:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b021e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, airPlaneString:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1242
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 893
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :goto_0
    return-void

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 896
    .local v1, mChooserIntent:Landroid/content/Intent;
    invoke-super {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 6
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 868
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mailto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 871
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    return-void

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ManageSimMessages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to startActivityForResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.email"

    const-string v5, "com.android.email.activity.setup.AccountSetupBasics"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 877
    .local v2, i:Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 883
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 878
    :catch_1
    move-exception v1

    .line 879
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "ManageSimMessages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to startActivityForResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const v3, 0x7f0b0063

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 886
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public updateListAfterDelete()V
    .locals 3

    .prologue
    .line 1402
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    const/4 v0, 0x0

    .line 1406
    .local v0, filertedMessges:Landroid/database/Cursor;
    sget-object v2, Lcom/android/mms/ui/ManageSimMessages;->sDeletedMessageSet:Ljava/util/HashSet;

    monitor-enter v2

    .line 1407
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->buildFilteredCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 1408
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateListWithCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1408
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
