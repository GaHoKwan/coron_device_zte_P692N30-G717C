.class public Lcom/android/mms/ui/MmsPlayerActivity;
.super Landroid/app/Activity;
.source "MmsPlayerActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsPlayerActivity$OnDataSetChangedListener;,
        Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;
    }
.end annotation


# static fields
.field private static final COLUMN_MMS_DATE:I = 0x8

.field private static final COLUMN_MMS_DELIVERY_REPORT:I = 0x6

.field private static final COLUMN_MMS_LOCKED:I = 0xa

.field private static final COLUMN_MMS_READ_REPORT:I = 0x7

.field private static final COLUMN_MMS_SIM_ID:I = 0x9

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x4

.field private static final MENU_ADD_CONTACT:I = 0x4

.field private static final MENU_ADD_TO_BOOKMARK:I = 0x2

.field private static final MENU_ADD_TO_CONTACTS:I = 0x3

.field private static final MENU_CALL_BACK:I = 0x6

.field private static final MENU_CALL_RECIPIENT:I = 0x9

.field private static final MENU_CALL_RECIPIENT_BY_VT:I = 0xa

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0x1

.field private static final MENU_COPY_TO_SDCARD:I = 0xb

.field private static final MENU_DELETE:I = 0x7

.field private static final MENU_FORWARD:I = 0x6

.field private static final MENU_LOCK:I = 0x5a

.field private static final MENU_PLAYASSLIDE:I = 0x1

.field private static final MENU_REPLY:I = 0x2

.field private static final MENU_RESEND:I = 0x3

.field private static final MENU_SELECT_TEXT:I = 0x8

.field private static final MENU_SEND_EMAIL:I = 0x5

.field private static final MENU_SEND_SMS:I = 0x7

.field private static final MENU_UNLOCK:I = 0x64

.field private static final MENU_VIEW_REPORT:I = 0x5

.field private static final MNEU_DETAIL:I = 0x8

.field private static final PDU_COLUMN_ID:I = 0x0

.field private static final PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final PDU_COLUMN_SUBJECT:I = 0x4

.field private static final PDU_COLUMN_SUBJECT_CHARSET:I = 0x5

.field private static final PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final PDU_PROJECTION:[Ljava/lang/String; = null

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MmsPlayerActivity"

.field private static mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

.field public static sCurrentActivity:Lcom/android/mms/ui/MmsPlayerActivity;


# instance fields
.field private mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

.field private mAttachName:Landroid/widget/TextView;

.field private mByCard:Landroid/widget/TextView;

.field private mClearCache:Z

.field private mContactList:Lcom/android/mms/data/ContactList;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCopyText:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDate:Landroid/widget/TextView;

.field private mDateLong:Ljava/lang/Long;

.field private mDeliveryReport:I

.field private mDirMode:Z

.field private mHasFileAttachment:Landroid/widget/ImageView;

.field private mHighlight:Ljava/util/regex/Pattern;

.field private mHomeBox:I

.field private mIndex:I

.field private mListAdapter:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLocked:Z

.field private mLockedInd:Landroid/widget/ImageView;

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsSubject:Landroid/widget/TextView;

.field private mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

.field private mMsgBox:I

.field private mMsgId:J

.field private mMsgUri:Landroid/net/Uri;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mParseMsgUriSuccess:Z

.field private mParser:Lcom/android/mms/util/SmileyParser2;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mReadReport:I

.field private mRecipient:Landroid/widget/TextView;

.field private mShowAddContact:Z

.field private mShowResend:Z

.field private mSimId:I

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mSubject:Ljava/lang/String;

.field private final mTextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mThreadId:J

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 212
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "retr_txt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MmsPlayerActivity;->PDU_PROJECTION:[Ljava/lang/String;

    .line 259
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MmsPlayerActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 160
    iput-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mCursor:Landroid/database/Cursor;

    .line 161
    iput-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 162
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mURLs:Ljava/util/ArrayList;

    .line 184
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mIndex:I

    .line 199
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mShowAddContact:Z

    .line 209
    iput v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mHomeBox:I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mClearCache:Z

    .line 211
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mParseMsgUriSuccess:Z

    .line 251
    iput-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 254
    iput-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mHighlight:Ljava/util/regex/Pattern;

    .line 706
    new-instance v0, Lcom/android/mms/ui/MmsPlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerActivity$4;-><init>(Lcom/android/mms/ui/MmsPlayerActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mTextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 879
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerActivity;->forwardMms()V

    return-void
.end method

.method static synthetic access$100()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/android/mms/ui/MmsPlayerActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MmsPlayerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mCopyText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MmsPlayerActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mURLs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mRecipient:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mLockedInd:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MmsPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerActivity;->parseMsgUri()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MmsPlayerActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsPlayerActivity;->initListAdapter(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MmsPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerActivity;->setListTextSize()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MmsPlayerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mParseMsgUriSuccess:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MmsPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerActivity;->updateRecipient()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/MmsPlayerActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsPlayerActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/MmsPlayerActivity;Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideshowModel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsPlayerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSimId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsPlayerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsPlayerActivity;)Lcom/android/mms/ui/MmsPlayerActivityAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mListAdapter:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MmsPlayerActivity;Landroid/view/ContextMenu;Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MmsPlayerActivity;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;Ljava/lang/CharSequence;)V
    .locals 22
    .parameter "menu"
    .parameter "l"
    .parameter "text"

    .prologue
    .line 788
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    .local v15, textToSpannify:Ljava/lang/StringBuilder;
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 791
    new-instance v10, Landroid/text/SpannableString;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 792
    .local v10, msg:Landroid/text/SpannableString;
    const/16 v18, 0xf

    move/from16 v0, v18

    invoke-static {v10, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 793
    const/16 v18, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v19

    const-class v20, Landroid/text/style/URLSpan;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/URLSpan;

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v17

    .line 795
    .local v17, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mURLs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 796
    const v18, 0x7f0b024d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 797
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-lez v18, :cond_0

    .line 798
    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const v21, 0x7f0b024c

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 801
    const/16 v18, 0x0

    const/16 v19, 0x8

    const/16 v20, 0x0

    const v21, 0x7f0b00af

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-object/from16 v18, p3

    .line 803
    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MmsPlayerActivity;->mCopyText:Ljava/lang/String;

    .line 805
    :cond_0
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_a

    .line 806
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 808
    .local v16, uriString:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 809
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 812
    :cond_1
    const-string v18, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 813
    .local v14, sep:I
    const/4 v11, 0x0

    .line 814
    .local v11, prefix:Ljava/lang/String;
    if-ltz v14, :cond_3

    .line 815
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 816
    const-string v18, "mailto"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "tel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 817
    :cond_2
    add-int/lit8 v18, v14, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 820
    :cond_3
    const/4 v6, 0x0

    .line 821
    .local v6, addToContacts:Z
    const-string v18, "mailto"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b0230

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 824
    .local v12, sendEmailString:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mailto:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 826
    .local v8, intent:Landroid/content/Intent;
    const/high16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 827
    const-string v18, "MmsPlayerActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "send email number: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/16 v18, 0x0

    const/16 v19, 0x5

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->haveEmailContact(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_4

    const/4 v6, 0x1

    .line 864
    .end local v8           #intent:Landroid/content/Intent;
    .end local v12           #sendEmailString:Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_0

    .line 865
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 866
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b0233

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 868
    .local v5, addContactString:Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 831
    .end local v5           #addContactString:Ljava/lang/String;
    .restart local v12       #sendEmailString:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 832
    .end local v8           #intent:Landroid/content/Intent;
    .end local v12           #sendEmailString:Ljava/lang/String;
    :cond_5
    const-string v18, "tel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b022f

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 835
    .local v7, callBackString:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.DIAL"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "tel:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 837
    .restart local v8       #intent:Landroid/content/Intent;
    const/high16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 838
    const-string v18, "MmsPlayerActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "call back number: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 843
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "\\-"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b002f

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 846
    .local v13, sendSmsString:Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.intent.action.SENDTO"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "smsto:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 848
    .local v9, intentSms:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "com.android.mms.ui.SendMessageToActivity"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    const/high16 v18, 0x1000

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 850
    const-string v18, "MmsPlayerActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "send sms number: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/16 v18, 0x0

    const/16 v19, 0x7

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v13}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 855
    .end local v9           #intentSms:Landroid/content/Intent;
    .end local v13           #sendSmsString:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MmsPlayerActivity;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_7

    const/4 v6, 0x1

    .line 856
    :goto_3
    goto/16 :goto_2

    .line 855
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 858
    .end local v7           #callBackString:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mURLs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-gtz v18, :cond_9

    .line 859
    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    const v21, 0x7f0b0026

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 862
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mURLs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 873
    .end local v6           #addToContacts:Z
    .end local v11           #prefix:Ljava/lang/String;
    .end local v14           #sep:I
    .end local v16           #uriString:Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private addToContact()V
    .locals 3

    .prologue
    .line 1159
    iget v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    iget v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1161
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1171
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private asyncLoadMms()V
    .locals 4

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/AsyncDialog;->clearPendingProgressDialog()V

    .line 1387
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    new-instance v1, Lcom/android/mms/ui/MmsPlayerActivity$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsPlayerActivity$8;-><init>(Lcom/android/mms/ui/MmsPlayerActivity;)V

    new-instance v2, Lcom/android/mms/ui/MmsPlayerActivity$9;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsPlayerActivity$9;-><init>(Lcom/android/mms/ui/MmsPlayerActivity;)V

    const v3, 0x7f0b0110

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 1421
    return-void
.end method

.method private checkSendFail()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 1096
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 1097
    .local v9, msgId:J
    const-string v0, "MmsPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mms id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 1099
    .local v11, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v11, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1100
    const-string v0, "message"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1102
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1104
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1106
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    const-string v0, "err_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1108
    .local v8, errorType:I
    const/16 v0, 0xa

    if-ne v8, v0, :cond_0

    .line 1109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mShowResend:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    .end local v8           #errorType:I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1122
    :goto_1
    return-void

    .line 1111
    .restart local v8       #errorType:I
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mShowResend:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1117
    .end local v8           #errorType:I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1114
    :cond_1
    :try_start_2
    const-string v0, "MmsPlayerActivity"

    const-string v1, "query result not 1.!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1120
    :cond_2
    const-string v0, "MmsPlayerActivity"

    const-string v1, "query PendingMessages get null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private confirmToDeleteMessage(Landroid/net/Uri;)V
    .locals 3
    .parameter "msgUri"

    .prologue
    .line 682
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 683
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b02b6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 684
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 685
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 686
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mLocked:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0b02bb

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 688
    const v1, 0x7f0b02bf

    new-instance v2, Lcom/android/mms/ui/MmsPlayerActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MmsPlayerActivity$3;-><init>(Lcom/android/mms/ui/MmsPlayerActivity;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 702
    const v1, 0x7f0b0296

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 703
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 704
    return-void

    .line 686
    :cond_0
    const v1, 0x7f0b02ba

    goto :goto_0
.end method

.method private dialRecipient(Z)V
    .locals 5
    .parameter "isVideoCall"

    .prologue
    .line 1209
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerActivity;->isRecipientCallable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1210
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 1211
    .local v1, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1212
    .local v0, dialIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1213
    const-string v2, "com.android.phone.extra.video"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1215
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1217
    .end local v0           #dialIntent:Landroid/content/Intent;
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private formatSimStatus()V
    .locals 7

    .prologue
    .line 1022
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1023
    .local v0, buffer:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1024
    .local v4, simInfoStart:I
    iget v5, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSimId:I

    invoke-direct {p0, p0, v5}, Lcom/android/mms/ui/MmsPlayerActivity;->getSimInfo(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1025
    .local v3, simInfo:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1026
    const v5, 0x7f0b00fd

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1027
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1028
    const-string v5, " "

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1029
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1031
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1032
    .local v1, color:I
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1033
    .local v2, colorSpan:Landroid/text/style/ForegroundColorSpan;
    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v0, v2, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1034
    iget-object v5, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mByCard:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    return-void
.end method

.method private forwardMms()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1125
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1126
    .local v1, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const v2, 0x7f0b0272

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1127
    .local v8, subject:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1130
    :cond_0
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1131
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->makeCopy()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1133
    const/4 v9, 0x0

    .line 1135
    .local v9, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1137
    .local v0, persister:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1144
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1145
    .local v7, intent:Landroid/content/Intent;
    const-string v2, "forwarded_message"

    invoke-virtual {v7, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1146
    const-string v2, "msg_uri"

    invoke-virtual {v7, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1147
    const-string v2, "subject"

    invoke-virtual {v7, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    const-string v2, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v7, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1150
    .end local v0           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v7           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1138
    :catch_0
    move-exception v6

    .line 1139
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v2, "MmsPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1140
    invoke-static {}, Lcom/android/mms/MmsApp;->getToastHandler()Lcom/android/mms/MmsApp$ToastHandler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private getSimInfo(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 12
    .parameter "context"
    .parameter "simId"

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x0

    .line 1039
    const-string v6, "MmsPlayerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimInfo simId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 1042
    const-string v0, ""

    .line 1079
    :goto_0
    return-object v0

    .line 1045
    :cond_0
    int-to-long v6, p2

    invoke-static {p1, v6, v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSIMInfoById(Landroid/content/Context;J)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v5

    .line 1046
    .local v5, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v5, :cond_4

    .line 1047
    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 1049
    .local v3, displayName:Ljava/lang/String;
    const-string v6, "MmsPlayerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIMInfo simId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mDisplayName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    if-nez v3, :cond_1

    .line 1052
    const-string v0, ""

    goto :goto_0

    .line 1055
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1056
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    const-string v6, "   "

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1059
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_2

    .line 1060
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1066
    :goto_1
    const-string v6, "  "

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1069
    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v6

    if-ltz v6, :cond_3

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimBackgroundLightRes()I

    move-result v2

    .line 1071
    .local v2, colorRes:I
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1072
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;

    invoke-direct {v6, v2, v4}, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;-><init>(ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v6, v10, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1075
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1076
    .local v1, color:I
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v6, v10, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 1062
    .end local v1           #color:I
    .end local v2           #colorRes:I
    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x8

    invoke-virtual {v3, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 1069
    :cond_3
    sget v2, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_background_locked:I

    goto :goto_2

    .line 1079
    .end local v0           #buf:Landroid/text/SpannableStringBuilder;
    .end local v3           #displayName:Ljava/lang/String;
    :cond_4
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private haveSomethingToCopyToSDCard(J)Z
    .locals 12
    .parameter "msgId"

    .prologue
    .line 1225
    const/4 v0, 0x0

    .line 1227
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    :try_start_0
    iget-object v9, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMessageUri:Landroid/net/Uri;

    invoke-static {p0, v9}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1232
    :goto_0
    if-nez v0, :cond_1

    .line 1233
    const/4 v7, 0x0

    .line 1282
    :cond_0
    :goto_1
    return v7

    .line 1228
    :catch_0
    move-exception v1

    .line 1229
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v9, "MmsPlayerActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SlideshowModel.getPduBody MmsException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1236
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :cond_1
    const/4 v7, 0x0

    .line 1237
    .local v7, result:Z
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v6

    .line 1238
    .local v6, partNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 1239
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 1240
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 1242
    .local v8, type:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isImageType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v8}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v8}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "application/ogg"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1244
    :cond_2
    const/4 v7, 0x1

    .line 1257
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #type:Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v9, 0x5

    invoke-static {v9}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 1259
    .local v3, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v3, :cond_0

    .line 1260
    invoke-interface {v3}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 1262
    const/4 v4, 0x0

    .line 1264
    .local v4, mSlideShow:Lcom/android/mms/model/SlideshowModel;
    :try_start_1
    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1270
    :goto_4
    if-eqz v4, :cond_0

    .line 1271
    const-string v9, "MmsPlayerActivity"

    const-string v10, "mSlideShowModel != null"

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1273
    const-string v9, "MmsPlayerActivity"

    const-string v10, "mSlideShowModel.getAttachFiles() != null"

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 1275
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1249
    .end local v3           #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .end local v4           #mSlideShow:Lcom/android/mms/model/SlideshowModel;
    .restart local v5       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v8       #type:Ljava/lang/String;
    :cond_4
    invoke-static {v5}, Lcom/android/mms/model/FileAttachmentModel;->isSupportedFile(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1250
    const/4 v7, 0x1

    .line 1251
    goto :goto_3

    .line 1238
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1266
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #type:Ljava/lang/String;
    .restart local v3       #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .restart local v4       #mSlideShow:Lcom/android/mms/model/SlideshowModel;
    :catch_1
    move-exception v1

    .line 1267
    .restart local v1       #e:Lcom/google/android/mms/MmsException;
    const-string v9, "MmsPlayerActivity"

    const-string v10, "Create from pdubody exception!"

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private initListAdapter(Landroid/net/Uri;)V
    .locals 36
    .parameter "msg"

    .prologue
    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, v0

    .line 313
    .local v29, slideshowModel:Lcom/android/mms/model/SlideshowModel;
    if-nez v29, :cond_0

    .line 421
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v28

    .line 318
    .local v28, slideNum:I
    const-string v2, "MmsPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "initListAdapter,getPartsNum:"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .local v20, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MmsPlayerActivityItemData;>;"
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 321
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v27

    .line 322
    .local v27, slideModel:Lcom/android/mms/model/SlideModel;
    if-nez v27, :cond_4

    .line 388
    .end local v27           #slideModel:Lcom/android/mms/model/SlideModel;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z

    if-eqz v2, :cond_3

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mMmsSubject:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const v35, 0x7f0b02cc

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mSubject:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mMmsSubject:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 393
    :cond_2
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->sizeOfFilesAttach()I

    move-result v21

    .line 394
    .local v21, fileAttachmentCount:I
    if-lez v21, :cond_3

    .line 395
    const-string v2, "MmsPlayerActivity"

    const-string v3, "has file attachment"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v31

    .line 397
    .local v31, src:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mAttachName:Landroid/widget/TextView;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mHasFileAttachment:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mAttachName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 403
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 404
    .local v25, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v25, :cond_3

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mAttachName:Landroid/widget/TextView;

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-interface {v0, v2, v1}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->setAttachmentName(Landroid/widget/TextView;I)V

    .line 411
    .end local v21           #fileAttachmentCount:I
    .end local v25           #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .end local v31           #src:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->trimToSize()V

    .line 413
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mHighlight:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_a

    .line 414
    new-instance v2, Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mHighlight:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1, v3}, Lcom/android/mms/ui/MmsPlayerActivityAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/regex/Pattern;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mListAdapter:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    .line 419
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mListAdapter:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mTextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto/16 :goto_0

    .line 325
    .restart local v27       #slideModel:Lcom/android/mms/model/SlideModel;
    :cond_4
    const/4 v7, 0x0

    .line 326
    .local v7, text:Ljava/lang/String;
    const/4 v4, 0x0

    .line 327
    .local v4, imageUri:Landroid/net/Uri;
    const/16 v16, 0x0

    .line 328
    .local v16, imageType:Ljava/lang/String;
    const/4 v5, 0x0

    .line 329
    .local v5, videoUri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 330
    .local v17, videoType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 331
    .local v6, audioName:Ljava/lang/String;
    const/16 v18, 0x0

    .line 332
    .local v18, audioUri:Landroid/net/Uri;
    const/16 v19, 0x0

    .line 333
    .local v19, audioType:Ljava/lang/String;
    const/4 v8, 0x0

    .line 334
    .local v8, mImageOrVideoLeft:I
    const/4 v9, 0x0

    .line 335
    .local v9, mImageOrVideoTop:I
    const/4 v10, 0x0

    .line 336
    .local v10, mImageOrVideoWidth:I
    const/4 v11, 0x0

    .line 337
    .local v11, mImageOrVideoHeight:I
    const/4 v12, 0x0

    .line 338
    .local v12, mTextLeft:I
    const/4 v13, 0x0

    .line 339
    .local v13, mTextTop:I
    const/4 v14, 0x0

    .line 340
    .local v14, mTextWidth:I
    const/4 v15, 0x0

    .line 341
    .local v15, mTextHeight:I
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/mms/model/MediaModel;

    .line 342
    .local v26, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 343
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 344
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v16

    .line 345
    check-cast v26, Lcom/android/mms/model/ImageModel;

    .end local v26           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v24

    .line 346
    .local v24, imageRegionModel:Lcom/android/mms/model/RegionModel;
    if-eqz v24, :cond_5

    .line 347
    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v8

    .line 348
    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v9

    .line 349
    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v10

    .line 350
    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v11

    goto :goto_3

    .line 352
    .end local v24           #imageRegionModel:Lcom/android/mms/model/RegionModel;
    .restart local v26       #media:Lcom/android/mms/model/MediaModel;
    :cond_6
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 353
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 354
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v17

    .line 355
    check-cast v26, Lcom/android/mms/model/VideoModel;

    .end local v26           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v33

    .line 356
    .local v33, videoRegionModel:Lcom/android/mms/model/RegionModel;
    if-eqz v33, :cond_5

    .line 357
    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v8

    .line 358
    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v9

    .line 359
    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v10

    .line 360
    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v11

    goto :goto_3

    .line 362
    .end local v33           #videoRegionModel:Lcom/android/mms/model/RegionModel;
    .restart local v26       #media:Lcom/android/mms/model/MediaModel;
    :cond_7
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 363
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    .line 364
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v18

    .line 365
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v19

    .line 366
    const-string v2, "MmsPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " add audio name: "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 367
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 368
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v30

    .line 369
    .local v30, sm:Lcom/android/mms/model/TextModel;
    if-eqz v30, :cond_5

    .line 370
    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v32

    .line 372
    .local v32, textRegionModel:Lcom/android/mms/model/RegionModel;
    if-eqz v32, :cond_5

    .line 373
    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v12

    .line 374
    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v13

    .line 375
    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v14

    .line 376
    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v15

    goto/16 :goto_3

    .line 381
    .end local v26           #media:Lcom/android/mms/model/MediaModel;
    .end local v30           #sm:Lcom/android/mms/model/TextModel;
    .end local v32           #textRegionModel:Lcom/android/mms/model/RegionModel;
    :cond_9
    const-string v2, "MmsPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Add slide: "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v34, " imageUri is: "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v34, " videoUri is: "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v34, " audio name is: "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v2, Lcom/android/mms/ui/MmsPlayerActivityItemData;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v19}, Lcom/android/mms/ui/MmsPlayerActivityItemData;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 416
    .end local v4           #imageUri:Landroid/net/Uri;
    .end local v5           #videoUri:Landroid/net/Uri;
    .end local v6           #audioName:Ljava/lang/String;
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #mImageOrVideoLeft:I
    .end local v9           #mImageOrVideoTop:I
    .end local v10           #mImageOrVideoWidth:I
    .end local v11           #mImageOrVideoHeight:I
    .end local v12           #mTextLeft:I
    .end local v13           #mTextTop:I
    .end local v14           #mTextWidth:I
    .end local v15           #mTextHeight:I
    .end local v16           #imageType:Ljava/lang/String;
    .end local v17           #videoType:Ljava/lang/String;
    .end local v18           #audioUri:Landroid/net/Uri;
    .end local v19           #audioType:Ljava/lang/String;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v27           #slideModel:Lcom/android/mms/model/SlideModel;
    :cond_a
    new-instance v2, Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Lcom/android/mms/ui/MmsPlayerActivityAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mListAdapter:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    goto/16 :goto_2
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1329
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 1331
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v0, p0, p0}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->init(Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;Landroid/app/Activity;)V

    .line 1334
    :cond_0
    return-void
.end method

.method private isNumberInContacts(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 876
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    return v0
.end method

.method private isRecipientCallable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1197
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-nez v2, :cond_0

    .line 1198
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1199
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    .line 1205
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    move v1, v0

    :goto_1
    return v1

    .line 1201
    :cond_1
    const-string v0, "MmsPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecipientCallable(): no number with msgUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1205
    goto :goto_0
.end method

.method private lockMessage(Z)V
    .locals 4
    .parameter "lock"

    .prologue
    const/4 v1, 0x1

    .line 1368
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1369
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "locked"

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1371
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mLocked:Z

    .line 1372
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/MmsPlayerActivity$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/MmsPlayerActivity$7;-><init>(Lcom/android/mms/ui/MmsPlayerActivity;Landroid/content/ContentValues;Z)V

    const-string v3, "lockMessage"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1383
    return-void

    .line 1369
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private markMmsRead()V
    .locals 2

    .prologue
    .line 1085
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MmsPlayerActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsPlayerActivity$5;-><init>(Lcom/android/mms/ui/MmsPlayerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1093
    return-void
.end method

.method private parseMsgUri()V
    .locals 14

    .prologue
    .line 942
    const-string v0, "MmsPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v7, 0x0

    .line 945
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/MmsPlayerActivity;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 947
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 948
    :cond_0
    const-string v0, "MmsPlayerActivity"

    const-string v1, "count is not 1!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mParseMsgUriSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 991
    if-eqz v7, :cond_1

    .line 992
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1019
    :cond_1
    :goto_0
    return-void

    .line 952
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 953
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgBox:I

    .line 954
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mThreadId:J

    .line 955
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgId:J

    .line 956
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSubject:Ljava/lang/String;

    .line 957
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDeliveryReport:I

    .line 958
    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mReadReport:I

    .line 959
    const/16 v0, 0x8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDateLong:Ljava/lang/Long;

    .line 960
    const/16 v0, 0x9

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSimId:I

    .line 961
    const/16 v0, 0xa

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mLocked:Z

    .line 962
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 963
    new-instance v13, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSubject:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v13, v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 966
    .local v13, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSubject:Ljava/lang/String;

    .line 968
    .end local v13           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    const-string v0, "MmsPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgbox:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgBox:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",subject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v12

    .line 971
    .local v12, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v11

    check-cast v11, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 972
    .local v11, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgBox:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 973
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    .line 974
    const-string v0, "MmsPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this mms is from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :goto_2
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgBox:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 983
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerActivity;->checkSendFail()V

    .line 985
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mParseMsgUriSuccess:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 991
    if-eqz v7, :cond_5

    .line 992
    .end local v11           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v12           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 997
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDateLong:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 998
    .local v8, date:Ljava/lang/String;
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgBox:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1000
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1006
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerActivity;->formatSimStatus()V

    .line 1012
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mLockedInd:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mLocked:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1014
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerActivity;->markMmsRead()V

    .line 1016
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgBox:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1017
    iget-wide v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mThreadId:J

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    goto/16 :goto_0

    .line 961
    .end local v8           #date:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 976
    .restart local v11       #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v12       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_7
    :try_start_2
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    .line 977
    .local v10, numbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    .line 978
    const-string v0, "MmsPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this mms is to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 986
    .end local v10           #numbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v11           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v12           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v9

    .line 987
    .local v9, e:Lcom/google/android/mms/MmsException;
    :try_start_3
    const-string v0, "MmsPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmsException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    if-eqz v7, :cond_5

    goto/16 :goto_3

    .line 988
    .end local v9           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v9

    .line 989
    .local v9, e:Ljava/lang/ClassCastException;
    const-string v0, "MmsPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClassCastException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 991
    if-eqz v7, :cond_5

    goto/16 :goto_3

    .end local v9           #e:Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 992
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 991
    :cond_8
    throw v0

    .line 1003
    .restart local v8       #date:Ljava/lang/String;
    :cond_9
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 1012
    :cond_a
    const/16 v0, 0x8

    goto/16 :goto_5
.end method

.method private setListTextSize()V
    .locals 3

    .prologue
    .line 1424
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAdjustFontSizeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    const-string v1, "message_font_size"

    const/high16 v2, 0x4190

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getPreferenceValueFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    .line 1426
    .local v0, textSize:F
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerActivity;->setTextSize(F)V

    .line 1428
    .end local v0           #textSize:F
    :cond_0
    return-void
.end method

.method private showDeliveryReport()V
    .locals 4

    .prologue
    .line 1187
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mClearCache:Z

    .line 1188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/DeliveryReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1189
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message_id"

    iget-wide v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1190
    const-string v1, "message_type"

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1192
    return-void
.end method

.method private updateRecipient()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1305
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    .line 1307
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1308
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mName:Ljava/lang/String;

    .line 1312
    :goto_0
    const-string v1, "MmsPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgBox:I

    if-ne v1, v4, :cond_1

    .line 1314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0083

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mName:Ljava/lang/String;

    .line 1318
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mName:Ljava/lang/String;

    .line 1319
    .local v0, showString:Ljava/lang/String;
    new-instance v1, Lcom/android/mms/ui/MmsPlayerActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/MmsPlayerActivity$6;-><init>(Lcom/android/mms/ui/MmsPlayerActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1324
    return-void

    .line 1310
    .end local v0           #showString:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->getFirstName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mName:Ljava/lang/String;

    goto :goto_0

    .line 1316
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0084

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mName:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1338
    const/4 v0, 0x0

    .line 1339
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v1, :cond_0

    .line 1340
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v1, p1}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1342
    :cond_0
    if-nez v0, :cond_1

    .line 1343
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1345
    :cond_1
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 1287
    const/4 v1, 0x0

    .line 1288
    .local v1, succeeded:Z
    if-eqz p3, :cond_0

    const-string v2, "multi_save_result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1289
    const-string v2, "multi_save_result"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1290
    if-eqz v1, :cond_1

    const v0, 0x7f0b030c

    .line 1291
    .local v0, resId:I
    :goto_0
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1293
    .end local v0           #resId:I
    :cond_0
    return-void

    .line 1290
    :cond_1
    const v0, 0x7f0b030d

    goto :goto_0
.end method

.method public onClickDetails(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1175
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v2

    iget v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgBox:I

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getMmsDetail(Landroid/content/Context;Landroid/net/Uri;II)Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, messageDetails:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b02c1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1182
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 264
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 268
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 269
    invoke-direct {p0, p0}, Lcom/android/mms/ui/MmsPlayerActivity;->initPlugin(Landroid/content/Context;)V

    .line 270
    iput-object p0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContext:Landroid/content/Context;

    .line 271
    new-instance v3, Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    .line 272
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 273
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMessageUri:Landroid/net/Uri;

    .line 275
    const-string v3, "dirmode"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z

    .line 276
    const-string v3, "folderbox"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mHomeBox:I

    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "highlight"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, highlightString:Ljava/lang/String;
    if-nez v1, :cond_2

    move-object v3, v4

    :goto_0
    iput-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mHighlight:Ljava/util/regex/Pattern;

    .line 286
    const v3, 0x7f040044

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 287
    const v3, 0x7f0f0120

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mListView:Landroid/widget/ListView;

    .line 289
    iget-boolean v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z

    if-eqz v3, :cond_0

    .line 290
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f04002f

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, header:Landroid/view/View;
    const v3, 0x7f0f00c5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mRecipient:Landroid/widget/TextView;

    .line 292
    const v3, 0x7f0f00c7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDate:Landroid/widget/TextView;

    .line 293
    const v3, 0x7f0f00c8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mByCard:Landroid/widget/TextView;

    .line 294
    const v3, 0x7f0f00c9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMmsSubject:Landroid/widget/TextView;

    .line 295
    const v3, 0x7f0f00ca

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mHasFileAttachment:Landroid/widget/ImageView;

    .line 296
    const v3, 0x7f0f00cb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mAttachName:Landroid/widget/TextView;

    .line 297
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMmsSubject:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mHasFileAttachment:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mAttachName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 300
    const v3, 0x7f0f0029

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mLockedInd:Landroid/widget/ImageView;

    .line 301
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mLockedInd:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 304
    .end local v0           #header:Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerActivity;->asyncLoadMms()V

    .line 305
    iget-boolean v3, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z

    if-nez v3, :cond_1

    .line 306
    sput-object p0, Lcom/android/mms/ui/MmsPlayerActivity;->sCurrentActivity:Lcom/android/mms/ui/MmsPlayerActivity;

    .line 308
    :cond_1
    return-void

    .line 280
    :cond_2
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v3, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x4

    const v6, 0x7f0f01d1

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 485
    const v1, 0x7f0b00fb

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 487
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z

    if-eqz v1, :cond_5

    .line 488
    iget-wide v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgId:J

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MmsPlayerActivity;->haveSomethingToCopyToSDCard(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    const/16 v1, 0xb

    const v2, 0x7f0b030b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 491
    :cond_0
    const/4 v1, 0x6

    const v2, 0x7f0b0246

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 492
    const/4 v1, 0x7

    const v2, 0x7f0b023f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 494
    iget v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgBox:I

    if-ne v1, v4, :cond_6

    .line 495
    const v1, 0x7f0b003d

    invoke-interface {p1, v6, v5, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 500
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgBox:I

    if-eq v1, v7, :cond_2

    iget v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgBox:I

    if-ne v1, v5, :cond_4

    :cond_2
    iget v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDeliveryReport:I

    const/16 v2, 0x80

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mReadReport:I

    const/16 v2, 0x80

    if-ne v1, v2, :cond_4

    .line 502
    :cond_3
    const/4 v1, 0x5

    const v2, 0x7f0b023e

    invoke-interface {p1, v6, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 504
    :cond_4
    const/16 v1, 0x8

    const v2, 0x7f0b00f4

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 505
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerActivity;->isRecipientCallable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 506
    const/16 v1, 0x9

    const v2, 0x7f0b0234

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200b4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0b0234

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 509
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 518
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_5
    return v4

    .line 496
    :cond_6
    iget v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgBox:I

    if-ne v1, v7, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mShowResend:Z

    if-eqz v1, :cond_1

    .line 497
    const/4 v1, 0x3

    const v2, 0x7f0b004b

    invoke-interface {p1, v6, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 427
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 428
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MmsPlayerActivity;->sCurrentActivity:Lcom/android/mms/ui/MmsPlayerActivity;

    .line 429
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 27
    .parameter "item"

    .prologue
    .line 524
    const/16 v23, 0x5

    invoke-static/range {v23 .. v23}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 527
    .local v14, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v23

    sparse-switch v23, :sswitch_data_0

    .line 675
    const/16 v23, 0x0

    .line 678
    :goto_0
    return v23

    .line 529
    :sswitch_0
    new-instance v12, Landroid/content/Intent;

    const-class v23, Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 531
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 678
    .end local v12           #intent:Landroid/content/Intent;
    :goto_1
    const/16 v23, 0x0

    goto :goto_0

    .line 536
    :sswitch_1
    new-instance v23, Ljava/lang/Thread;

    new-instance v24, Lcom/android/mms/ui/MmsPlayerActivity$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MmsPlayerActivity$1;-><init>(Lcom/android/mms/ui/MmsPlayerActivity;)V

    invoke-direct/range {v23 .. v24}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 543
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MmsPlayerActivity;->confirmToDeleteMessage(Landroid/net/Uri;)V

    goto :goto_1

    .line 546
    :sswitch_3
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerActivity;->onClickDetails(Landroid/view/View;)V

    goto :goto_1

    .line 549
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsPlayerActivity;->addToContact()V

    goto :goto_1

    .line 552
    :sswitch_5
    const/16 v19, -0x1

    .line 554
    .local v19, simId:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mSimId:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v20

    .line 555
    .local v20, slot:I
    const-string v23, "MmsPlayerActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "slot is:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",simId:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mSimId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    if-ltz v20, :cond_0

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mSimId:I

    move/from16 v19, v0

    .line 562
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->replyMessage(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 566
    .end local v19           #simId:I
    .end local v20           #slot:I
    :sswitch_6
    const/4 v5, 0x0

    .line 567
    .local v5, attachmentSize:I
    const/16 v16, 0x0

    .line 568
    .local v16, messageSize:I
    if-eqz v14, :cond_1

    invoke-interface {v14}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 570
    :cond_1
    const-string v23, "MmsPlayerActivity"

    const-string v24, "ResendMessage(): isSupportAttachmentEnhance is false"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/FileAttachmentModel;

    .line 572
    .local v7, fileAttachment:Lcom/android/mms/model/FileAttachmentModel;
    invoke-virtual {v7}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v23

    add-int v5, v5, v23

    goto :goto_2

    .line 575
    .end local v7           #fileAttachment:Lcom/android/mms/model/FileAttachmentModel;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v23

    add-int v16, v23, v5

    .line 576
    const-string v23, "MmsPlayerActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ResendMessage(): messageSize="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 578
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b026d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b026d

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 586
    :cond_3
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v17

    .line 587
    .local v17, persister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mThreadId:J

    move-wide/from16 v21, v0

    .line 589
    .local v21, threadId:J
    const/16 v18, 0x12e

    .line 590
    .local v18, requestType:I
    sget-object v23, Lcom/android/mms/ui/MmsPlayerActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-nez v23, :cond_4

    .line 591
    new-instance v23, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    invoke-direct/range {v23 .. v23}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;-><init>()V

    sput-object v23, Lcom/android/mms/ui/MmsPlayerActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    .line 593
    :cond_4
    sget-object v23, Lcom/android/mms/ui/MmsPlayerActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->register(Landroid/content/Context;)V

    .line 594
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mSimId:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v15

    .line 595
    .local v15, mSlotId:I
    const-string v23, "Mms/Txn"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "check pin and...: simId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mSimId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\t slotId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    sget-object v23, Lcom/android/mms/ui/MmsPlayerActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    new-instance v24, Lcom/android/mms/ui/MmsPlayerActivity$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-wide/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MmsPlayerActivity$2;-><init>(Lcom/android/mms/ui/MmsPlayerActivity;Lcom/google/android/mms/pdu/PduPersister;J)V

    move-object/from16 v0, v23

    move/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v15, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v15           #mSlotId:I
    .end local v17           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v18           #requestType:I
    .end local v21           #threadId:J
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 623
    :catch_0
    move-exception v6

    .line 624
    .local v6, e:Ljava/lang/Exception;
    const-string v23, "MmsPlayerActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to send message: threadId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mThreadId:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 629
    .end local v5           #attachmentSize:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v16           #messageSize:I
    :sswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsPlayerActivity;->showDeliveryReport()V

    goto/16 :goto_1

    .line 632
    :sswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 633
    new-instance v13, Landroid/content/Intent;

    const-class v23, Lcom/android/mms/ui/FolderViewList;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 634
    .local v13, it:Landroid/content/Intent;
    const-string v23, "floderview_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mHomeBox:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 636
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 639
    .end local v13           #it:Landroid/content/Intent;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 643
    :sswitch_9
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MmsPlayerActivity;->dialRecipient(Z)V

    goto/16 :goto_1

    .line 646
    :sswitch_a
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MmsPlayerActivity;->dialRecipient(Z)V

    goto/16 :goto_1

    .line 649
    :sswitch_b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v23

    const-string v24, "mounted"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 650
    const v23, 0x7f0b0001

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 651
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 654
    :cond_6
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/mms/ui/MmsPlayerActivity;->mMsgId:J

    .line 655
    .local v10, iMsgId:J
    new-instance v8, Landroid/content/Intent;

    const-class v23, Lcom/android/mms/ui/MultiSaveActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 656
    .local v8, i:Landroid/content/Intent;
    const-string v23, "msgid"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 662
    if-eqz v14, :cond_7

    .line 663
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-interface {v14, v8, v0}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->setSaveAttachIntent(Landroid/content/Intent;I)V

    .line 666
    :cond_7
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 667
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 669
    .end local v8           #i:Landroid/content/Intent;
    .end local v10           #iMsgId:J
    :sswitch_c
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MmsPlayerActivity;->lockMessage(Z)V

    goto/16 :goto_1

    .line 672
    :sswitch_d
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MmsPlayerActivity;->lockMessage(Z)V

    goto/16 :goto_1

    .line 527
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_4
        0x5 -> :sswitch_7
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5a -> :sswitch_c
        0x64 -> :sswitch_d
        0x102002c -> :sswitch_8
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mListAdapter:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mClearCache:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mListAdapter:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->clearAllCache()V

    .line 441
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 442
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .parameter "menu"

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x64

    const/16 v9, 0x5a

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 886
    iget-boolean v6, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z

    if-nez v6, :cond_1

    .line 938
    :cond_0
    :goto_0
    return v4

    .line 890
    :cond_1
    iget-boolean v6, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mParseMsgUriSuccess:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 894
    iget-object v6, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-nez v6, :cond_2

    .line 895
    const-string v6, "MmsPlayerActivity"

    const-string v7, "onPrepareOptionsMenu mContactList == null1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v6, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v6, v5, v4}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    .line 897
    iget-object v6, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-nez v6, :cond_2

    .line 898
    const-string v5, "MmsPlayerActivity"

    const-string v6, "onPrepareOptionsMenu mContactList == null2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 904
    :cond_2
    const/4 v1, 0x0

    .line 905
    .local v1, count:I
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mIndex:I

    .line 906
    iget-object v6, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 907
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 908
    iput v1, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mIndex:I

    .line 909
    const-string v6, "MmsPlayerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not in contact[number:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_3
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v6, :cond_7

    move v3, v4

    .line 915
    .local v3, menuAddExist:Z
    :goto_2
    iget v6, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 916
    if-nez v3, :cond_4

    .line 917
    const v6, 0x7f0f01d1

    const v7, 0x7f0b0293

    invoke-interface {p1, v6, v11, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 923
    :cond_4
    :goto_3
    iget-boolean v6, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mLocked:Z

    if-eqz v6, :cond_9

    .line 924
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 925
    invoke-interface {p1, v9}, Landroid/view/Menu;->removeItem(I)V

    .line 927
    :cond_5
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v6, :cond_0

    .line 928
    const v6, 0x7f0b02d7

    invoke-interface {p1, v5, v10, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 912
    .end local v3           #menuAddExist:Z
    .restart local v0       #contact:Lcom/android/mms/data/Contact;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_7
    move v3, v5

    .line 914
    goto :goto_2

    .line 920
    .restart local v3       #menuAddExist:Z
    :cond_8
    invoke-interface {p1, v11}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_3

    .line 931
    :cond_9
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 932
    invoke-interface {p1, v10}, Landroid/view/Menu;->removeItem(I)V

    .line 934
    :cond_a
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v6, :cond_0

    .line 935
    const v6, 0x7f0b02d6

    invoke-interface {p1, v5, v9, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 472
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 473
    const-string v0, "MmsPlayerActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mParseMsgUriSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerActivity;->updateRecipient()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mListAdapter:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mListAdapter:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 480
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mClearCache:Z

    .line 481
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 452
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 453
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAdjustFontSizeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    const-string v2, "message_font_size"

    const/high16 v3, 0x4190

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getPreferenceValueFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v1

    .line 455
    .local v1, textSize:F
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsPlayerActivity;->setTextSize(F)V

    .line 457
    .end local v1           #textSize:F
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v2, :cond_1

    .line 458
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v2}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->refresh()V

    .line 460
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 461
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 462
    const v2, 0x7f0b0266

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 463
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 466
    const-string v2, "MmsPlayerActivity.onStart"

    invoke-static {p0, v2}, Lcom/android/mms/MmsConfig;->printMmsMemStat(Landroid/content/Context;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 446
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 447
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 448
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 3
    .parameter "updated"

    .prologue
    .line 1297
    const-string v0, "MmsPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate,number and name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerActivity;->updateRecipient()V

    .line 1302
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 5
    .parameter "size"

    .prologue
    .line 1351
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mListAdapter:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    if-eqz v4, :cond_0

    .line 1352
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mListAdapter:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    invoke-virtual {v4, p1}, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->setTextSize(F)V

    .line 1354
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 1355
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1356
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1357
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1358
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/android/mms/ui/MmsPlayerActivityItem;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 1359
    check-cast v2, Lcom/android/mms/ui/MmsPlayerActivityItem;

    .line 1360
    .local v2, item:Lcom/android/mms/ui/MmsPlayerActivityItem;
    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MmsPlayerActivityItem;->setTextSize(F)V

    .line 1356
    .end local v2           #item:Lcom/android/mms/ui/MmsPlayerActivityItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1364
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #view:Landroid/view/View;
    :cond_2
    return-void
.end method
