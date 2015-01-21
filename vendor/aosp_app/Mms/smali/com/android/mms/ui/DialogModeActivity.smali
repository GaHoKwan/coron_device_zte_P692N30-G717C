.class public Lcom/android/mms/ui/DialogModeActivity;
.super Landroid/app/Activity;
.source "DialogModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
.implements Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;
.implements Lcom/android/mms/ui/MsgNumSlideview$MsgNumBarSlideListener;
.implements Lcom/android/mms/ui/SlideViewInterface;
.implements Lcom/mediatek/mms/ext/IMmsAskIfDownloadHost;
.implements Lcom/mediatek/mms/ext/IMmsDialogModeHost;
.implements Lcom/mediatek/mms/ipmessage/INotificationsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;,
        Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;,
        Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final REQUEST_CODE_ECM_EXIT_DIALOG:I = 0x6b

.field private static final SELECT_TYPE:Ljava/lang/String; = "Select_type"

.field private static final SIM_SELECT_FOR_SEND_MSG:I = 0x1

.field private static final SMS_ADDR:I = 0x2

.field private static final SMS_BODY:I = 0x5

.field private static final SMS_DATE:I = 0x3

.field private static final SMS_ID:I = 0x0

.field private static final SMS_READ:I = 0x4

.field private static final SMS_SIM:I = 0x6

.field private static final SMS_TID:I = 0x1

.field private static final SMS_TYPE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "Mms/DialogMode"

.field private static final TYPE_MMS:Ljava/lang/String; = "mms"

.field private static final TYPE_SMS:Ljava/lang/String; = "sms"

.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mActionButton:Landroid/widget/ImageView;

.field private mAskIfDownloadPlugin:Lcom/mediatek/mms/ext/IMmsAskIfDownload;

.field private mAssociatedSimId:I

.field private mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

.field private mAttachName:Landroid/widget/TextView;

.field private mAttachSize:Landroid/widget/TextView;

.field private mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

.field private mAudioIcon:Landroid/widget/ImageView;

.field private mAudioInfo:Landroid/widget/TextView;

.field private mBodyTextView:Landroid/widget/TextView;

.field private mButtonBig:Landroid/widget/ImageButton;

.field private mButtonColors:[I

.field private mButtonDrawable:[Landroid/graphics/drawable/Drawable;

.field private mButtonSlotIds:[I

.field private mButtonSmall:Landroid/widget/ImageButton;

.field private mCaption:Landroid/widget/TextView;

.field private mCaptionSeparator:Landroid/view/View;

.field private mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

.field private mContactImage:Landroid/widget/ImageView;

.field private mContentSize:Landroid/widget/TextView;

.field private mContentViewSet:Z

.field mCtButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCurUri:Landroid/net/Uri;

.field private mCurUriIdx:I

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteBtn:Landroid/widget/Button;

.field private mGifView:Lcom/mediatek/ipmsg/ui/GifView;

.field private mGroupMmsSender:Landroid/widget/TextView;

.field private mGroupSender:Landroid/widget/TextView;

.field private mHasRegisterReceiver:Z

.field private mImageContent:Landroid/widget/ImageView;

.field private mImageDownloadProgressBar:Landroid/widget/ProgressBar;

.field private mImageLocation:Landroid/widget/ImageView;

.field private mIpAudioView:Landroid/view/View;

.field private mIpEmoticonView:Landroid/view/View;

.field private mIpImageSizeBg:Landroid/view/View;

.field private mIpImageView:Landroid/view/View;

.field private mIpLocationView:Landroid/view/View;

.field private final mIpMessageUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mIpVCalendarView:Landroid/view/View;

.field private mIpVCardView:Landroid/view/View;

.field private mIsGroupMms:Z

.field private mLeftArrow:Landroid/widget/ImageButton;

.field private mLocationAddr:Landroid/widget/TextView;

.field private mMarkAsReadBtn:Landroid/widget/Button;

.field private mMediaPlayView:Landroid/widget/ImageView;

.field mMessageSentRunnable:Ljava/lang/Runnable;

.field private mMmsAttachImageView:Landroid/widget/ImageView;

.field private mMmsAttachView:Landroid/view/View;

.field private mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

.field private mMmsDownloadBtn:Landroid/widget/Button;

.field private mMmsImageView:Landroid/widget/ImageView;

.field private mMmsPlayButton:Landroid/widget/ImageButton;

.field private mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

.field private mMmsView:Landroid/view/View;

.field private mMsgNumText:Landroid/widget/TextView;

.field private mNeedFinish:Z

.field private mPage:I

.field private mParser:Lcom/android/mms/util/SmileyParser2;

.field private mReadedUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;

.field private mRecvTime:Landroid/widget/TextView;

.field private mReplyEditor:Landroid/widget/EditText;

.field mResetMessageRunnable:Ljava/lang/Runnable;

.field private mRightArrow:Landroid/widget/ImageButton;

.field private mSIMSelectDialog:Landroid/app/AlertDialog;

.field private mSelectedSimId:I

.field private mSendButton:Landroid/widget/ImageButton;

.field private mSender:Landroid/widget/TextView;

.field private mSendingMessage:Z

.field private mSimCount:I

.field private mSimHanlder:Landroid/os/Handler;

.field private mSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSimName:Landroid/widget/TextView;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsContentText:Landroid/widget/TextView;

.field private mTextCounter:Landroid/widget/TextView;

.field private final mTextEditorWatcher:Landroid/text/TextWatcher;

.field private mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVCalendarInfo:Landroid/widget/TextView;

.field private mVCardIcon:Landroid/widget/ImageView;

.field private mVCardInfo:Landroid/widget/TextView;

.field private mWaitingForSendMessage:Z

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private send_sim_id:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 366
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 211
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    .line 241
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    .line 247
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mPage:I

    .line 275
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/DialogModeActivity;->send_sim_id:I

    .line 276
    iput-boolean v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mHasRegisterReceiver:Z

    .line 285
    new-instance v0, Lcom/android/mms/ui/DialogModeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DialogModeActivity$1;-><init>(Lcom/android/mms/ui/DialogModeActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    .line 292
    new-instance v0, Lcom/android/mms/ui/DialogModeActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DialogModeActivity$2;-><init>(Lcom/android/mms/ui/DialogModeActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMessageSentRunnable:Ljava/lang/Runnable;

    .line 301
    new-instance v0, Lcom/android/mms/ui/DialogModeActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DialogModeActivity$3;-><init>(Lcom/android/mms/ui/DialogModeActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 327
    iput-boolean v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mNeedFinish:Z

    .line 3549
    new-instance v0, Lcom/android/mms/ui/DialogModeActivity$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DialogModeActivity$14;-><init>(Lcom/android/mms/ui/DialogModeActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCtButtonClickListener:Landroid/view/View$OnClickListener;

    .line 3565
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimHanlder:Landroid/os/Handler;

    .line 3566
    new-instance v0, Lcom/android/mms/ui/DialogModeActivity$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DialogModeActivity$15;-><init>(Lcom/android/mms/ui/DialogModeActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpMessageUris:Ljava/util/ArrayList;

    .line 370
    iput v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 371
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 372
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    .line 373
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    .line 374
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsImageView:Landroid/widget/ImageView;

    .line 375
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsPlayButton:Landroid/widget/ImageButton;

    .line 376
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    .line 377
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReceiver:Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;

    .line 378
    iput-boolean v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mContentViewSet:Z

    .line 379
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 382
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachView:Landroid/view/View;

    .line 383
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachImageView:Landroid/widget/ImageView;

    .line 384
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mAttachName:Landroid/widget/TextView;

    .line 385
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mAttachSize:Landroid/widget/TextView;

    .line 388
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsAskIfDownload;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mAskIfDownloadPlugin:Lcom/mediatek/mms/ext/IMmsAskIfDownload;

    .line 390
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mAskIfDownloadPlugin:Lcom/mediatek/mms/ext/IMmsAskIfDownload;

    invoke-interface {v0, p0}, Lcom/mediatek/mms/ext/IMmsAskIfDownload;->init(Lcom/mediatek/mms/ext/IMmsAskIfDownloadHost;)V

    .line 391
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->resetMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/DialogModeActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/DialogModeActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/DialogModeActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSlotIds:[I

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/DialogModeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput p1, p0, Lcom/android/mms/ui/DialogModeActivity;->send_sim_id:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->simSelection()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/DialogModeActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getSimInfoList()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/DialogModeActivity;)Lcom/mediatek/mms/ext/IMmsDialogMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/DialogModeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimHanlder:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/DialogModeActivity;Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/DialogModeActivity;->updateCounter(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/DialogModeActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DialogModeActivity;->removeMsg(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/mms/ui/DialogModeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput p1, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->confirmSendMessageIfNeeded()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/DialogModeActivity;)Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/DialogModeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DialogModeActivity;->sendMessage(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/DialogModeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mPage:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->showIpMessage()V

    return-void
.end method

.method private addNewUri(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 640
    if-nez p1, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    const-string v2, "com.android.mms.transaction.new_msg_uri"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, newString:Ljava/lang/String;
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogModeActivity.addNewUri, new uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 647
    .local v1, newUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 648
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 649
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v2, "ipmessage"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiver a ipmessage,uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpMessageUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addNewUriforReCreate(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 624
    if-nez p1, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const-string v2, "com.android.mms.transaction.new_msg_uri"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, newString:Ljava/lang/String;
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogModeActivity.addNewUri, new uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 630
    .local v1, newUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 632
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v2, "ipmessage"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiver a ipmessage,uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpMessageUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkConditionsAndSendMessage(Z)V
    .locals 6
    .parameter "bCheckEcmMode"

    .prologue
    .line 1812
    const-string v3, "Mms/DialogMode"

    const-string v4, "DialogModeActivity.checkConditionsAndSendMessage"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const/16 v1, 0x12e

    .line 1818
    .local v1, requestType:I
    const-string v3, "Mms/DialogMode"

    const-string v4, "GEMINI"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    const/16 v1, 0x132

    .line 1820
    iget v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 1821
    .local v2, slotId:I
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check pin and...: simId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    move v0, p1

    .line 1834
    .local v0, bCEM:Z
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-nez v3, :cond_0

    .line 1835
    const-string v3, "Mms/DialogMode"

    const-string v4, "mCellMgr is null!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    :goto_0
    return-void

    .line 1837
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    new-instance v4, Lcom/android/mms/ui/DialogModeActivity$5;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/mms/ui/DialogModeActivity$5;-><init>(Lcom/android/mms/ui/DialogModeActivity;IZ)V

    invoke-virtual {v3, v2, v1, v4}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I

    goto :goto_0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1092
    const-string v1, "Mms/DialogMode"

    const-string v2, "DialogModeActivity.confirmDeleteDialog"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1096
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b02b6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1097
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1098
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1099
    const v1, 0x7f0b02ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1100
    const v1, 0x7f0b02bf

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1101
    const v1, 0x7f0b0296

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1103
    return-void
.end method

.method private confirmSendMessageIfNeeded()V
    .locals 2

    .prologue
    .line 1807
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.confirmSendMessageIfNeeded"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DialogModeActivity;->checkConditionsAndSendMessage(Z)V

    .line 1809
    return-void
.end method

.method private deleteCurMsg()V
    .locals 4

    .prologue
    .line 1072
    const-string v1, "Mms/DialogMode"

    const-string v2, "DialogModeActivity.deleteCurMsg"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1074
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 1075
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 1089
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 1079
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 1080
    const-string v1, "Mms/DialogMode"

    const-string v2, "no uri available"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1085
    :cond_1
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    new-instance v0, Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/DialogModeActivity;Landroid/net/Uri;)V

    .line 1088
    .local v0, l:Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/DialogModeActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private formatMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "body"

    .prologue
    .line 2786
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2788
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    invoke-virtual {v1, p1}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2789
    return-object v0
.end method

.method private getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    return-object v0
.end method

.method private getContactImage()Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1376
    const-string v5, "Mms/DialogMode"

    const-string v6, "DialogModeActivity.getContactImage"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_0

    .line 1379
    const-string v5, "Mms/DialogMode"

    const-string v6, "mCursor null"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    sget-object v5, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 1417
    :goto_0
    return-object v5

    .line 1383
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1385
    const/4 v2, 0x0

    .line 1386
    .local v2, isGroup:Z
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurGroupIpMessage()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1387
    const/4 v2, 0x1

    .line 1388
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    .line 1403
    .local v4, recipients:Lcom/android/mms/data/ContactList;
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 1404
    :cond_2
    sget-object v5, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1389
    .end local v4           #recipients:Lcom/android/mms/data/ContactList;
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurSMS()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1390
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1391
    .local v3, recipientIds:Ljava/lang/String;
    invoke-static {v3, v7, v8}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v4

    .line 1392
    .restart local v4       #recipients:Lcom/android/mms/data/ContactList;
    goto :goto_1

    .line 1393
    .end local v3           #recipientIds:Ljava/lang/String;
    .end local v4           #recipients:Lcom/android/mms/data/ContactList;
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v5

    invoke-static {p0, v5, v6, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1394
    .local v1, conv:Lcom/android/mms/data/Conversation;
    if-nez v1, :cond_5

    .line 1395
    const-string v5, "Mms/DialogMode"

    const-string v6, "conv null"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    sget-object v5, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1398
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    .line 1399
    .restart local v4       #recipients:Lcom/android/mms/data/ContactList;
    if-nez v4, :cond_1

    .line 1400
    sget-object v5, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1406
    .end local v1           #conv:Lcom/android/mms/data/Conversation;
    :cond_6
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1407
    .local v0, contact:Lcom/android/mms/data/Contact;
    if-nez v0, :cond_7

    .line 1408
    const-string v5, "Mms/DialogMode"

    const-string v6, "no contact"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    sget-object v5, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1411
    :cond_7
    if-eqz v2, :cond_8

    .line 1412
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/mms/data/Contact;->getGroupAvatar(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    .line 1414
    :cond_8
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;J)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_0

    .line 1416
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #isGroup:Z
    .end local v4           #recipients:Lcom/android/mms/data/ContactList;
    :cond_9
    const-string v5, "Mms/DialogMode"

    const-string v6, "moveToFirst fail"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    sget-object v5, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method

.method private getContactSIM(Ljava/lang/String;)I
    .locals 11
    .parameter "number"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1665
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogModeActivity.getContactSIM, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    const/4 v9, -0x1

    .line 1668
    .local v9, simId:I
    invoke-static {p1, p0}, Lcom/android/mms/ui/MessageUtils;->formatNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1669
    .local v8, formatNumber:Ljava/lang/String;
    move-object v6, v8

    .line 1670
    .local v6, TrimFormatNumber:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1671
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1673
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "sim_id"

    aput-object v3, v2, v5

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND (data1=? OR data1=? OR data4=?) AND (sim_id!= -1)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object v8, v4, v10

    const/4 v5, 0x2

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1685
    .local v7, associateSIMCursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 1686
    :try_start_0
    const-string v0, "Mms/DialogMode"

    const-string v1, " queryContactInfo : associateSIMCursor is null"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    :goto_0
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1693
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1695
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1699
    :goto_1
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    if-eqz v7, :cond_1

    .line 1702
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1705
    :cond_1
    return v9

    .line 1688
    :cond_2
    :try_start_1
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " queryContactInfo : associateSIMCursor is not null. Count["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1701
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1702
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1701
    :cond_3
    throw v0

    .line 1697
    :cond_4
    const/4 v9, -0x1

    goto :goto_1
.end method

.method private getConversation()Lcom/android/mms/data/Conversation;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1440
    const-string v4, "Mms/DialogMode"

    const-string v5, "DialogModeActivity.getConversation"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v1

    .line 1442
    .local v1, tid:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_1

    .line 1443
    const-string v4, "Mms/DialogMode"

    const-string v5, "invalid tid"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 1454
    :cond_0
    :goto_0
    return-object v0

    .line 1447
    :cond_1
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1449
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-nez v0, :cond_0

    .line 1450
    const-string v4, "Mms/DialogMode"

    const-string v5, "conv null"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 1451
    goto :goto_0
.end method

.method private getCurGroupIpMessageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3169
    const-string v2, ""

    .line 3170
    .local v2, name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurIpMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3171
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 3172
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 3173
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3174
    .local v1, nam:Ljava/lang/String;
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    if-eqz v1, :cond_0

    .line 3177
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/mms/ipmessage/ContactManager;->getNameByThreadId(J)Ljava/lang/String;

    move-result-object v2

    .line 3181
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .end local v1           #nam:Ljava/lang/String;
    :cond_0
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "group message name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    return-object v2
.end method

.method private getCurGroupIpMessageNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3152
    const-string v2, ""

    .line 3153
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurIpMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3154
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 3155
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 3156
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 3157
    .local v1, num:Ljava/lang/String;
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3158
    if-eqz v1, :cond_0

    const-string v3, "7---"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3160
    move-object v2, v1

    .line 3164
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .end local v1           #num:Ljava/lang/String;
    :cond_0
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "group message number:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    return-object v2
.end method

.method private getCurIpMessageId()J
    .locals 7

    .prologue
    .line 2657
    const-wide/16 v0, 0x0

    .line 2658
    .local v0, id:J
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 2659
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 2660
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    move-wide v2, v0

    .line 2670
    .end local v0           #id:J
    .local v2, id:J
    :goto_0
    return-wide v2

    .line 2663
    .end local v2           #id:J
    .restart local v0       #id:J
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 2664
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 2665
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2669
    :goto_1
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 2670
    .end local v0           #id:J
    .restart local v2       #id:J
    goto :goto_0

    .line 2667
    .end local v2           #id:J
    .restart local v0       #id:J
    :cond_1
    const-string v4, "Mms/DialogMode"

    const-string v5, "mCurUri is null!"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getCurrentSimId()J
    .locals 7

    .prologue
    .line 1320
    const-wide/16 v0, -0x1

    .line 1321
    .local v0, simId:J
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    move-wide v2, v0

    .line 1328
    .end local v0           #simId:J
    .local v2, simId:J
    :goto_0
    return-wide v2

    .line 1324
    .end local v2           #simId:J
    .restart local v0       #simId:J
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1325
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1327
    :cond_1
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentSimId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 1328
    .end local v0           #simId:J
    .restart local v2       #simId:J
    goto :goto_0
.end method

.method private getHomes()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 876
    const-string v6, "Mms/DialogMode"

    const-string v7, "DialogModeActivity.getHomes"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v2, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 880
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 881
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 882
    const/high16 v6, 0x1

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 885
    .local v4, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 886
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    const-string v6, "Mms/DialogMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v6, "Mms/DialogMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "class name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 892
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v2
.end method

.method private getNotificationContentString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .parameter "uri"

    .prologue
    const/4 v13, 0x0

    .line 2106
    const-string v7, "Mms/DialogMode"

    const-string v8, "DialogModeActivity.getNotificationContentString"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    .line 2112
    .local v4, p:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    .line 2114
    .local v1, msg:Lcom/google/android/mms/pdu/NotificationInd;
    iget-boolean v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mIsGroupMms:Z

    if-eqz v7, :cond_1

    .line 2115
    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mGroupMmsSender:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-direct {p0, v8, v9}, Lcom/android/mms/ui/DialogModeActivity;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2117
    .local v3, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mGroupMmsSender:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2126
    .end local v3           #name:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_2

    .line 2127
    const-string v7, "Mms/DialogMode"

    const-string v8, "msg null"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    const-string v5, ""

    .line 2149
    .end local v1           #msg:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_0
    :goto_1
    return-object v5

    .line 2119
    .restart local v1       #msg:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mGroupMmsSender:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2122
    .end local v1           #msg:Lcom/google/android/mms/pdu/NotificationInd;
    :catch_0
    move-exception v0

    .line 2123
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v7, "Mms/DialogMode"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    const-string v5, ""

    goto :goto_1

    .line 2131
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .restart local v1       #msg:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0b02cd

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v8

    const-wide/16 v10, 0x3ff

    add-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0b0241

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2135
    .local v2, msgSizeText:Ljava/lang/String;
    const v7, 0x7f0b0240

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-static {p0, v9, v10}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2138
    .local v6, timestamp:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2139
    .local v5, ret:Ljava/lang/String;
    const-string v7, "Mms/DialogMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ret="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2143
    iget-object v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0b02c6

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getSenderNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0b02cc

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v9, v7, v2, v6}, Lcom/mediatek/mms/ext/IMmsDialogMode;->getNotificationContentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_3
    const-string v7, ""

    goto :goto_2
.end method

.method private getReceivedTime()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1289
    const-string v4, "Mms/DialogMode"

    const-string v5, "DialogModeActivity.getReceivedTime"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    .line 1296
    const-string v4, "Mms/DialogMode"

    const-string v5, "mCursor null"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1315
    :goto_0
    return-object v4

    .line 1300
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1301
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1304
    .local v1, date:J
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurSMS()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1305
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 1310
    .local v3, strDate:Ljava/lang/String;
    :goto_1
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1307
    .end local v3           #strDate:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v1

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #strDate:Ljava/lang/String;
    goto :goto_1

    .line 1314
    .end local v1           #date:J
    .end local v3           #strDate:Ljava/lang/String;
    :cond_2
    const-string v4, "Mms/DialogMode"

    const-string v5, "moveToFirst fail"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getSIMColor()I
    .locals 6

    .prologue
    .line 1355
    const-string v3, "Mms/DialogMode"

    const-string v4, "DialogModeActivity.getSIMColor"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    .line 1358
    const-string v3, "Mms/DialogMode"

    const-string v4, "mCursor null"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    sget v3, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_background_locked:I

    .line 1371
    :goto_0
    return v3

    .line 1362
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1363
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1364
    .local v0, simId:J
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSIMInfoById(Landroid/content/Context;J)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v2

    .line 1366
    .local v2, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "color="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimBackgroundLightRes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "color="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    invoke-virtual {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimBackgroundLightRes()I

    move-result v3

    goto :goto_0

    .line 1370
    .end local v0           #simId:J
    .end local v2           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_1
    const-string v3, "Mms/DialogMode"

    const-string v4, "moveToFirst fail"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    sget v3, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_background_locked:I

    goto :goto_0
.end method

.method private getSIMName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1332
    const-string v4, "Mms/DialogMode"

    const-string v5, "DialogModeActivity.getSIMName"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1337
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    .line 1338
    const-string v4, "Mms/DialogMode"

    const-string v5, "mCursor null"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1350
    :goto_0
    return-object v4

    .line 1342
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1343
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1344
    .local v1, simId:J
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSIMInfoById(Landroid/content/Context;J)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v3

    .line 1346
    .local v3, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1349
    .end local v1           #simId:J
    .end local v3           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_1
    const-string v4, "Mms/DialogMode"

    const-string v5, "moveToFirst fail"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getSenderNumber()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1228
    const-string v4, "Mms/DialogMode"

    const-string v5, "DialogModeActivity.getSenderNumber"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    .line 1231
    const-string v4, "Mms/DialogMode"

    const-string v5, "mCursor null"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const-string v0, ""

    .line 1262
    :goto_0
    return-object v0

    .line 1235
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1236
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurSMS()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1237
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurGroupIpMessage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1238
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurGroupIpMessageNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1240
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, addr:Ljava/lang/String;
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1244
    .end local v0           #addr:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static {p0, v4, v5, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1245
    .local v1, conv:Lcom/android/mms/data/Conversation;
    if-nez v1, :cond_3

    .line 1246
    const-string v4, "Mms/DialogMode"

    const-string v5, "conv null"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v0, ""

    goto :goto_0

    .line 1249
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 1250
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    .line 1252
    .local v2, numbers:[Ljava/lang/String;
    if-nez v2, :cond_4

    .line 1253
    const-string v4, "Mms/DialogMode"

    const-string v5, "empty number"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v0, ""

    goto :goto_0

    .line 1256
    :cond_4
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number0="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    aget-object v0, v2, v7

    goto :goto_0

    .line 1261
    .end local v1           #conv:Lcom/android/mms/data/Conversation;
    .end local v2           #numbers:[Ljava/lang/String;
    .end local v3           #recipients:Lcom/android/mms/data/ContactList;
    :cond_5
    const-string v4, "Mms/DialogMode"

    const-string v5, "moveToFirst fail"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private getSenderString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1190
    const-string v5, "Mms/DialogMode"

    const-string v6, "DialogModeActivity.getSenderString"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_0

    .line 1193
    const-string v3, "Mms/DialogMode"

    const-string v4, "mCursor null"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const-string v3, ""

    .line 1223
    :goto_0
    return-object v3

    .line 1197
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1198
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurSMS()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1199
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurGroupIpMessage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1200
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurGroupIpMessageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1202
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1204
    .local v1, recipientIds:Ljava/lang/String;
    invoke-static {v1, v4, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 1206
    .local v2, recipients:Lcom/android/mms/data/ContactList;
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recipients="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v2, v5}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1209
    .end local v1           #recipientIds:Ljava/lang/String;
    .end local v2           #recipients:Lcom/android/mms/data/ContactList;
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v5

    invoke-static {p0, v5, v6, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1210
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-nez v0, :cond_3

    .line 1211
    const-string v3, "Mms/DialogMode"

    const-string v4, "conv null"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v3, ""

    goto :goto_0

    .line 1214
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 1216
    .restart local v2       #recipients:Lcom/android/mms/data/ContactList;
    invoke-static {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_4

    :goto_1
    iput-boolean v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIsGroupMms:Z

    .line 1218
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recipients="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v2, v5}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 1216
    goto :goto_1

    .line 1222
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .end local v2           #recipients:Lcom/android/mms/data/ContactList;
    :cond_5
    const-string v3, "Mms/DialogMode"

    const-string v4, "moveToFirst fail"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v3, ""

    goto/16 :goto_0
.end method

.method private getSimId()J
    .locals 5

    .prologue
    .line 3309
    const-wide/16 v0, 0x0

    .line 3310
    .local v0, simId:J
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3311
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 3312
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    :goto_0
    return-wide v0

    .line 3314
    :cond_0
    const-string v2, "Mms/DialogMode"

    const-string v3, "moveToFirst fail"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSimInfoList()V
    .locals 3

    .prologue
    .line 2451
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.getSimInfoList"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    const-string v0, "Mms/DialogMode"

    const-string v1, "GEMINI"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    .line 2456
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimCount:I

    .line 2457
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComposeMessageActivity.getSimInfoList(): mSimCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    return-void

    .line 2456
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private getSlideShow()Lcom/android/mms/model/SlideshowModel;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2154
    const-string v5, "Mms/DialogMode"

    const-string v6, "DialogModeActivity.getSlideShow "

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_0

    .line 2156
    const-string v5, "Mms/DialogMode"

    const-string v6, "mCursor null"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    :goto_0
    return-object v3

    .line 2160
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2161
    const-string v5, "Mms/DialogMode"

    const-string v6, "cursor ok"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 2164
    .local v2, p:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2165
    .local v4, type:I
    const-string v5, "Mms/DialogMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    const/16 v5, 0x82

    if-ne v5, v4, :cond_1

    .line 2168
    const-string v5, "Mms/DialogMode"

    const-string v6, "mms nofity"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2174
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2181
    .local v1, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_1
    if-eqz v1, :cond_3

    .line 2184
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 2191
    .local v3, slideshow:Lcom/android/mms/model/SlideshowModel;
    :goto_2
    if-nez v3, :cond_2

    .line 2192
    const-string v5, "Mms/DialogMode"

    const-string v6, "getSlideShow(); slideshow null"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2175
    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v3           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 2176
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v5, "Mms/DialogMode"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2178
    const/4 v1, 0x0

    .restart local v1       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    goto :goto_1

    .line 2186
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v0

    .line 2187
    .restart local v0       #e:Lcom/google/android/mms/MmsException;
    const-string v5, "Mms/DialogMode"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2189
    const/4 v3, 0x0

    .restart local v3       #slideshow:Lcom/android/mms/model/SlideshowModel;
    goto :goto_2

    .line 2194
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_2
    const-string v5, "Mms/DialogMode"

    const-string v6, "getSlideShow(); slideshow ok"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2198
    .end local v3           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_3
    const-string v5, "Mms/DialogMode"

    const-string v6, "msg null"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2202
    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v2           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v4           #type:I
    :cond_4
    const-string v5, "Mms/DialogMode"

    const-string v6, "moveToFirst fail"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getSmsContent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1267
    const-string v1, "Mms/DialogMode"

    const-string v2, "DialogModeActivity.getSmsContent"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurSMS()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1270
    const-string v0, ""

    .line 1284
    :goto_0
    return-object v0

    .line 1273
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 1274
    const-string v1, "Mms/DialogMode"

    const-string v2, "mCursor null"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v0, ""

    goto :goto_0

    .line 1278
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1279
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1280
    .local v0, content:Ljava/lang/String;
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1283
    .end local v0           #content:Ljava/lang/String;
    :cond_2
    const-string v1, "Mms/DialogMode"

    const-string v2, "moveToFirst fail"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string v0, ""

    goto :goto_0
.end method

.method private getThreadId()J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 1422
    const-string v2, "Mms/DialogMode"

    const-string v3, "DialogModeActivity.getThreadId"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 1425
    const-string v2, "Mms/DialogMode"

    const-string v3, "mCursor null"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    :goto_0
    return-wide v0

    .line 1429
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1430
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1431
    .local v0, tid:J
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1434
    .end local v0           #tid:J
    :cond_1
    const-string v2, "Mms/DialogMode"

    const-string v3, "moveToFirst fail"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initDialogView()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 657
    const-string v3, "Mms/DialogMode"

    const-string v4, "DialogModeActivity.initDialogView"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-boolean v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mContentViewSet:Z

    if-eqz v3, :cond_0

    .line 660
    const-string v3, "Mms/DialogMode"

    const-string v4, "have init"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :goto_0
    return-void

    .line 665
    :cond_0
    const v3, 0x7f040047

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 666
    iput-boolean v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mContentViewSet:Z

    .line 667
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getSimInfoList()V

    .line 671
    const v3, 0x7f0f0130

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mLeftArrow:Landroid/widget/ImageButton;

    .line 672
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mLeftArrow:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    const v3, 0x7f0f00de

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mRightArrow:Landroid/widget/ImageButton;

    .line 674
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mRightArrow:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    const v3, 0x7f0f012f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mMsgNumText:Landroid/widget/TextView;

    .line 678
    const v3, 0x7f0f012e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSender:Landroid/widget/TextView;

    .line 679
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 680
    .local v2, tf:Landroid/graphics/Typeface;
    if-eqz v2, :cond_1

    .line 681
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSender:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 687
    :cond_1
    const v3, 0x7f0f0131

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgContentSlideView;

    .line 688
    .local v0, contentLayout:Lcom/android/mms/ui/MsgContentSlideView;
    invoke-virtual {v0, p0}, Lcom/android/mms/ui/MsgContentSlideView;->registerFlingListener(Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;)V

    .line 689
    const v3, 0x7f0f0134

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mGroupSender:Landroid/widget/TextView;

    .line 691
    const v3, 0x7f0f0135

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mGroupMmsSender:Landroid/widget/TextView;

    .line 692
    const v3, 0x7f0f0136

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentText:Landroid/widget/TextView;

    .line 693
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentText:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mBodyTextView:Landroid/widget/TextView;

    .line 696
    if-eqz v2, :cond_2

    .line 697
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 699
    :cond_2
    const v3, 0x7f0f0141

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mRecvTime:Landroid/widget/TextView;

    .line 700
    if-eqz v2, :cond_3

    .line 701
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mRecvTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 704
    :cond_3
    const v3, 0x7f0f013f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 705
    .local v1, simInfo:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 707
    const v3, 0x7f0f0140

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimName:Landroid/widget/TextView;

    .line 708
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 713
    if-eqz v2, :cond_4

    .line 714
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 718
    :cond_4
    const v3, 0x7f0f012c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mContactImage:Landroid/widget/ImageView;

    .line 719
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sput-object v3, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 726
    const v3, 0x7f0f0144

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    .line 727
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 728
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    new-array v4, v5, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v6

    invoke-direct {v5, p0, v6}, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;-><init>(Lcom/android/mms/ui/DialogModeActivity;I)V

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 731
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 732
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v4

    const/16 v5, 0x89

    invoke-virtual {v4, v5}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 735
    :cond_5
    const v3, 0x7f0f0145

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    .line 736
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    const v3, 0x7f0f004a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextCounter:Landroid/widget/TextView;

    .line 739
    const v3, 0x7f0f014a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mMarkAsReadBtn:Landroid/widget/Button;

    .line 740
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mMarkAsReadBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    const v3, 0x7f0f014b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mDeleteBtn:Landroid/widget/Button;

    .line 743
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    const v3, 0x7f0f00f4

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageView:Landroid/view/View;

    .line 750
    const v3, 0x7f0f00d3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageContent:Landroid/widget/ImageView;

    .line 751
    const v3, 0x7f0f00f6

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageSizeBg:Landroid/view/View;

    .line 752
    const v3, 0x7f0f00f7

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mActionButton:Landroid/widget/ImageView;

    .line 753
    const v3, 0x7f0f00f8

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mContentSize:Landroid/widget/TextView;

    .line 754
    const v3, 0x7f0f00f9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    .line 755
    const v3, 0x7f0f013e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaptionSeparator:Landroid/view/View;

    .line 756
    const v3, 0x7f0f00fe

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    .line 757
    const v3, 0x7f0f013d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mMediaPlayView:Landroid/widget/ImageView;

    .line 759
    const v3, 0x7f0f00fa

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpAudioView:Landroid/view/View;

    .line 760
    const v3, 0x7f0f00fb

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioIcon:Landroid/widget/ImageView;

    .line 761
    const v3, 0x7f0f00fc

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioInfo:Landroid/widget/TextView;

    .line 762
    const v3, 0x7f0f00fd

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    .line 764
    const v3, 0x7f0f00ff

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCardView:Landroid/view/View;

    .line 765
    const v3, 0x7f0f0117

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mVCardIcon:Landroid/widget/ImageView;

    .line 766
    const v3, 0x7f0f0100

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mVCardInfo:Landroid/widget/TextView;

    .line 768
    const v3, 0x7f0f0101

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCalendarView:Landroid/view/View;

    .line 769
    const v3, 0x7f0f0102

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mVCalendarInfo:Landroid/widget/TextView;

    .line 771
    const v3, 0x7f0f0103

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpLocationView:Landroid/view/View;

    .line 772
    const v3, 0x7f0f0104

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageLocation:Landroid/widget/ImageView;

    .line 773
    const v3, 0x7f0f0105

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mLocationAddr:Landroid/widget/TextView;

    .line 775
    const v3, 0x7f0f0106

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpEmoticonView:Landroid/view/View;

    .line 776
    const v3, 0x7f0f0107

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ipmsg/ui/GifView;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mGifView:Lcom/mediatek/ipmsg/ui/GifView;

    .line 779
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

    invoke-interface {v3}, Lcom/mediatek/mms/ext/IMmsDialogMode;->initCTSendButton()Z

    goto/16 :goto_0
.end method

.method private initDislogSize()V
    .locals 1

    .prologue
    .line 869
    const v0, 0x7f040047

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 873
    return-void
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 3329
    :try_start_0
    const-class v1, Lcom/mediatek/mms/ext/IMmsDialogMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsDialogMode;

    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

    .line 3331
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsDialogModePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3336
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

    invoke-interface {v1, p0}, Lcom/mediatek/mms/ext/IMmsDialogMode;->init(Lcom/mediatek/mms/ext/IMmsDialogModeHost;)V

    .line 3337
    const/16 v1, 0xd

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsUtils;

    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    .line 3338
    return-void

    .line 3332
    :catch_0
    move-exception v0

    .line 3333
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsDialogModeImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/ext/MmsDialogModeImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

    .line 3334
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsDialogModePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "from"
    .parameter "messageUri"

    .prologue
    .line 3296
    if-eqz p1, :cond_0

    .line 3297
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 3301
    .local v0, address:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x104000e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3304
    .local v1, contact:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 3299
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #contact:Ljava/lang/String;
    :cond_0
    invoke-static {p0, p2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #address:Ljava/lang/String;
    goto :goto_0

    .line 3301
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private isAnySimInsert()Z
    .locals 3

    .prologue
    .line 2443
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogModeActivity.isAnySimInsert,mSimCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    iget v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimCount:I

    if-lez v0, :cond_0

    .line 2445
    const/4 v0, 0x1

    .line 2447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurGroupIpMessage()Z
    .locals 6

    .prologue
    .line 3135
    const/4 v2, 0x0

    .line 3136
    .local v2, result:Z
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurIpMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3137
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 3138
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 3139
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 3140
    .local v1, number:Ljava/lang/String;
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    if-eqz v1, :cond_0

    const-string v3, "7---"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3143
    const/4 v2, 0x1

    .line 3147
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .end local v1           #number:Ljava/lang/String;
    :cond_0
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is group message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    return v2
.end method

.method private isCurIpMessage()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2641
    const/4 v0, 0x0

    .line 2642
    .local v0, result:Z
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 2643
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 2644
    iput v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 2653
    :goto_0
    return v1

    .line 2647
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 2648
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 2649
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpMessageUris:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2650
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    :cond_1
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 2653
    goto :goto_0
.end method

.method private isCurSMS()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 974
    const-string v1, "Mms/DialogMode"

    const-string v4, "DialogModeActivity.isCurSMS"

    invoke-static {v1, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 976
    iput-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 977
    iput v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    move v1, v2

    .line 996
    :goto_0
    return v1

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 982
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 983
    const-string v1, "Mms/DialogMode"

    const-string v2, "no uri available"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iput-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    move v1, v3

    .line 985
    goto :goto_0

    .line 990
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, type:Ljava/lang/String;
    const-string v1, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 993
    goto :goto_0

    :cond_2
    move v1, v2

    .line 996
    goto :goto_0
.end method

.method private loadCurMsg()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1000
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogModeActivity.loadCurMsg, idx="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1002
    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 1003
    iput v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 1068
    :goto_0
    return-object v3

    .line 1007
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1008
    const-string v0, "Mms/DialogMode"

    const-string v1, "index out of size. exit dialog"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    .line 1010
    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 1011
    iput v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 1012
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 1017
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 1018
    const-string v0, "Mms/DialogMode"

    const-string v1, "no uri available"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1021
    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    .line 1023
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1027
    :cond_3
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurSMS()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1030
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "thread_id"

    aput-object v0, v2, v7

    const-string v0, "address"

    aput-object v0, v2, v8

    const-string v0, "date"

    aput-object v0, v2, v9

    const/4 v0, 0x4

    const-string v1, "read"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "body"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "sim_id"

    aput-object v1, v2, v0

    .line 1037
    .local v2, projection:[Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 1038
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1041
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1043
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_6

    .line 1044
    const-string v0, "Mms/DialogMode"

    const-string v1, "no msg found"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    .line 1046
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1033
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_5
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "thread_id"

    aput-object v0, v2, v7

    const-string v0, "null as address"

    aput-object v0, v2, v8

    const-string v0, "date"

    aput-object v0, v2, v9

    const/4 v0, 0x4

    const-string v1, "read"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "sub"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "sim_id"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "m_type"

    aput-object v1, v2, v0

    .restart local v2       #projection:[Ljava/lang/String;
    goto :goto_1

    .line 1050
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 1051
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1052
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1053
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1054
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 1056
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1067
    :cond_8
    iput-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    move-object v3, v6

    .line 1068
    goto/16 :goto_0
.end method

.method private loadMmsContents()V
    .locals 25

    .prologue
    .line 1936
    const-string v21, "Mms/DialogMode"

    const-string v22, "DialogModeActivity.loadMmsContents"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 1939
    const-string v21, "Mms/DialogMode"

    const-string v22, "mCursor null"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    :goto_0
    return-void

    .line 1943
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-nez v21, :cond_1

    .line 1944
    const-string v21, "Mms/DialogMode"

    const-string v22, "moveToFirst fail"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1948
    :cond_1
    const-string v21, "Mms/DialogMode"

    const-string v22, "cursor ok"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1951
    .local v20, type:I
    const-string v21, "Mms/DialogMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "type="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    const/16 v21, 0x82

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1954
    const-string v21, "Mms/DialogMode"

    const-string v22, "mms nofity"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/mms/ui/DialogModeActivity;->getNotificationContentString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 1958
    .local v5, content:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 1962
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 1963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 1966
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mAskIfDownloadPlugin:Lcom/mediatek/mms/ext/IMmsAskIfDownload;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/mediatek/mms/ext/IMmsAskIfDownload;->showMmsDownloadBtn()V

    goto/16 :goto_0

    .line 1969
    .end local v5           #content:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDownloadBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDownloadBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 1975
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v12

    .line 1977
    .local v12, p:Lcom/google/android/mms/pdu/PduPersister;
    const/4 v15, 0x0

    .line 1980
    .local v15, slideshow:Lcom/android/mms/model/SlideshowModel;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v9

    check-cast v9, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1986
    .local v9, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_1
    if-nez v9, :cond_6

    .line 1987
    const-string v21, "Mms/DialogMode"

    const-string v22, "msg null"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1981
    .end local v9           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :catch_0
    move-exception v6

    .line 1982
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v21, "Mms/DialogMode"

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    const/4 v9, 0x0

    .restart local v9       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    goto :goto_1

    .line 1993
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    :cond_6
    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 1998
    :goto_2
    if-nez v15, :cond_a

    .line 1999
    const-string v21, "Mms/DialogMode"

    const-string v22, "loadMmsContents(); slideshow null"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    :goto_3
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 2006
    .local v17, subObj:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v18, 0x0

    .line 2008
    .local v18, subject:Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 2009
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v18

    .line 2010
    const-string v21, "Mms/DialogMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "sub="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    :cond_7
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2014
    .local v4, buf:Landroid/text/SpannableStringBuilder;
    const/4 v7, 0x0

    .line 2017
    .local v7, hasSubject:Z
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2020
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_8

    .line 2021
    const/4 v7, 0x1

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 2025
    .local v16, smilizedSubject:Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b0249

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "%s"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2027
    const/16 v21, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v23

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2030
    .end local v16           #smilizedSubject:Ljava/lang/CharSequence;
    :cond_8
    const-string v21, "Mms/DialogMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "with sub="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    if-nez v15, :cond_b

    .line 2033
    const-string v21, "Mms/DialogMode"

    const-string v22, "slideshow null"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 2036
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v21

    if-nez v21, :cond_9

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string v22, "        "

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2095
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mIsGroupMms:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    .line 2096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mGroupMmsSender:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 2097
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/DialogModeActivity;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2098
    .local v10, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mGroupMmsSender:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1994
    .end local v4           #buf:Landroid/text/SpannableStringBuilder;
    .end local v7           #hasSubject:Z
    .end local v10           #name:Ljava/lang/String;
    .end local v17           #subObj:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v18           #subject:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 1995
    .restart local v6       #e:Lcom/google/android/mms/MmsException;
    const/4 v15, 0x0

    .line 1996
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 2001
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    :cond_a
    const-string v21, "Mms/DialogMode"

    const-string v22, "loadMmsContents(); slideshow ok"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2041
    .restart local v4       #buf:Landroid/text/SpannableStringBuilder;
    .restart local v7       #hasSubject:Z
    .restart local v17       #subObj:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v18       #subject:Ljava/lang/String;
    :cond_b
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v14

    .line 2044
    .local v14, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v14, :cond_11

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 2045
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v19

    .line 2046
    .local v19, tm:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    .line 2047
    .local v3, body:Ljava/lang/String;
    const-string v21, "Mms/DialogMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "body="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    if-eqz v7, :cond_c

    .line 2050
    const-string v21, " - "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2052
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2058
    .end local v3           #body:Ljava/lang/String;
    .end local v19           #tm:Lcom/android/mms/model/TextModel;
    :cond_d
    :goto_5
    const-string v21, "Mms/DialogMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "with cont="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2062
    const/4 v11, 0x0

    .line 2063
    .local v11, needPresent:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_6
    invoke-virtual {v15}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_f

    .line 2064
    const-string v21, "Mms/DialogMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "check slide"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    invoke-virtual {v15, v8}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v14

    .line 2066
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v21

    if-nez v21, :cond_e

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v21

    if-nez v21, :cond_e

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 2067
    :cond_e
    const-string v21, "Mms/DialogMode"

    const-string v22, "found"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const/4 v11, 0x1

    .line 2073
    :cond_f
    if-nez v11, :cond_10

    .line 2074
    invoke-virtual {v15}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_10

    .line 2075
    const/4 v11, 0x1

    .line 2078
    :cond_10
    if-eqz v11, :cond_13

    .line 2079
    const-string v21, "Mms/DialogMode"

    const-string v22, "present slidehsow"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    const-string v21, "MmsThumbnailPresenter"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2, v15}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v13

    .line 2082
    .local v13, presenter:Lcom/android/mms/ui/Presenter;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/mms/ui/Presenter;->present(Lcom/android/mms/util/ItemLoadedCallback;)V

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mMmsPlayButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 2085
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/DialogModeActivity;->setSmsContentTextView()V

    goto/16 :goto_4

    .line 2054
    .end local v8           #i:I
    .end local v11           #needPresent:Z
    .end local v13           #presenter:Lcom/android/mms/ui/Presenter;
    :cond_11
    if-nez v7, :cond_d

    .line 2055
    const-string v21, "        "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_5

    .line 2063
    .restart local v8       #i:I
    .restart local v11       #needPresent:Z
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 2087
    :cond_13
    const-string v21, "Mms/DialogMode"

    const-string v22, "no media"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 2090
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/ui/DialogModeActivity;->setVcardOrVcalendar(Lcom/android/mms/model/SlideshowModel;)V

    goto/16 :goto_4

    .line 2100
    .end local v8           #i:I
    .end local v11           #needPresent:Z
    .end local v14           #slide:Lcom/android/mms/model/SlideModel;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity;->mGroupMmsSender:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private loadMmsView()V
    .locals 2

    .prologue
    .line 1548
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.loadMmsView "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1551
    const-string v0, "Mms/DialogMode"

    const-string v1, "set Mms views visible"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const v0, 0x7f0f0138

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    .line 1555
    const v0, 0x7f0f0139

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsImageView:Landroid/widget/ImageView;

    .line 1556
    const v0, 0x7f0f013a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsPlayButton:Landroid/widget/ImageButton;

    .line 1558
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsPlayButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1561
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1562
    const v0, 0x7f0f013b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachView:Landroid/view/View;

    .line 1563
    const v0, 0x7f0f013c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachImageView:Landroid/widget/ImageView;

    .line 1564
    const v0, 0x7f0f00b9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mAttachName:Landroid/widget/TextView;

    .line 1565
    const v0, 0x7f0f00bb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mAttachSize:Landroid/widget/TextView;

    .line 1567
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadMmsContents()V

    .line 1568
    return-void
.end method

.method private markAsRead(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 2567
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogModeActivity.markAsRead, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/DialogModeActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/DialogModeActivity$6;-><init>(Lcom/android/mms/ui/DialogModeActivity;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2580
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->removeCurMsg()V

    .line 2581
    return-void
.end method

.method private markAsRead(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2584
    .local p1, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2585
    .local v0, uriArray:[Ljava/lang/Object;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/DialogModeActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/DialogModeActivity$7;-><init>(Lcom/android/mms/ui/DialogModeActivity;[Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2600
    return-void
.end method

.method private markAsSeen(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2603
    .local p1, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2604
    .local v0, uriArray:[Ljava/lang/Object;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/DialogModeActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/DialogModeActivity$8;-><init>(Lcom/android/mms/ui/DialogModeActivity;[Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2618
    return-void
.end method

.method private openIpMsgThread(JZ)V
    .locals 2
    .parameter "threadId"
    .parameter "isImportant"

    .prologue
    .line 3233
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->CHAT_DETAILS_BY_THREAD_ID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3234
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3235
    const-string v1, "boolean"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3236
    invoke-static {p0, v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3237
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3238
    return-void
.end method

.method private openThread(J)V
    .locals 5
    .parameter "threadId"

    .prologue
    .line 1524
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogModeActivity.openThread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1527
    const-string v2, "Mms/DialogMode"

    const-string v3, "go to inbox"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/FolderViewList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1530
    .local v1, it:Landroid/content/Intent;
    const-string v2, "floderview_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1531
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1533
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1544
    .end local v1           #it:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1545
    :cond_0
    return-void

    .line 1535
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 1539
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1540
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "finish"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1542
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 459
    const-string v1, "Mms/DialogMode"

    const-string v2, "DialogModeActivity.registerReceiver"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReceiver:Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;

    if-eqz v1, :cond_0

    .line 467
    :goto_0
    return-void

    .line 463
    :cond_0
    const-string v1, "Mms/DialogMode"

    const-string v2, "register receiver"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v1, Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;-><init>(Lcom/android/mms/ui/DialogModeActivity;)V

    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReceiver:Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;

    .line 465
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.dialogmode.VIEWED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReceiver:Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private removeCurMsg()V
    .locals 3

    .prologue
    .line 1132
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.removeCurMsg"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 1135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 1160
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 1140
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 1141
    const-string v0, "Mms/DialogMode"

    const-string v1, "no uri available"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1145
    :cond_1
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurUriIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1148
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1149
    const-string v0, "Mms/DialogMode"

    const-string v1, "no msg"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1154
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    if-eqz v0, :cond_3

    .line 1155
    iget v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 1158
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    .line 1159
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->setDialogView()V

    goto :goto_0
.end method

.method private removeMsg(Landroid/net/Uri;)V
    .locals 4
    .parameter "deleteUri"

    .prologue
    .line 1163
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogModeActivity.removeMsg + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1166
    .local v0, idx:I
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurUriIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    if-ne v0, v1, :cond_0

    .line 1170
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->removeCurMsg()V

    .line 1187
    :goto_0
    return-void

    .line 1174
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1175
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    const-string v1, "Mms/DialogMode"

    const-string v2, "no msg"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1181
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    if-eqz v1, :cond_2

    .line 1182
    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 1185
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    .line 1186
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->setDialogView()V

    goto :goto_0
.end method

.method private resetMessage()V
    .locals 2

    .prologue
    .line 562
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.resetMessage"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 573
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 575
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    .line 576
    const-string v0, "Mms/DialogMode"

    const-string v1, "clear working message"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V

    .line 584
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 585
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendingMessage:Z

    .line 587
    return-void
.end method

.method private sendIpTextMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "body"
    .parameter "simId"
    .parameter "to"

    .prologue
    .line 3110
    new-instance v0, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;

    invoke-direct {v0}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;-><init>()V

    .line 3111
    .local v0, ipMessage:Lcom/mediatek/mms/ipmessage/message/IpTextMessage;
    invoke-virtual {v0, p1}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->setBody(Ljava/lang/String;)V

    .line 3112
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->setType(I)V

    .line 3113
    invoke-virtual {v0, p2}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->setSimId(I)V

    .line 3114
    invoke-virtual {v0, p3}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->setTo(Ljava/lang/String;)V

    .line 3115
    const/4 v2, 0x1

    .line 3116
    .local v2, sendModeType:I
    move v1, v2

    .line 3117
    .local v1, sendMode:I
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->onPreMessageSent()V

    .line 3118
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/DialogModeActivity$11;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/mms/ui/DialogModeActivity$11;-><init>(Lcom/android/mms/ui/DialogModeActivity;Lcom/mediatek/mms/ipmessage/message/IpTextMessage;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3132
    return-void
.end method

.method private sendMessage(Z)V
    .locals 9
    .parameter "bCheckEcmMode"

    .prologue
    const/4 v8, 0x1

    .line 1872
    const-string v5, "Mms/DialogMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogModeActivity.sendMessage,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    if-eqz p1, :cond_1

    .line 1875
    const-string v5, "Mms/DialogMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bCheckEcmMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    const-string v5, "ril.cdma.inecmmode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1879
    .local v2, inEcm:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1881
    :try_start_0
    const-string v5, "Mms/DialogMode"

    const-string v6, "show notice to block others"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v6, 0x6b

    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/DialogModeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1933
    .end local v2           #inEcm:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1886
    .restart local v2       #inEcm:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1888
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "Mms/DialogMode"

    const-string v6, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v5, v6, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1897
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #inEcm:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurIpMessage()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    invoke-static {p0, v5}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1898
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1899
    .local v0, body:Ljava/lang/String;
    iget v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    .line 1900
    .local v3, simId:I
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getSenderNumber()Ljava/lang/String;

    move-result-object v4

    .line 1901
    .local v4, to:Ljava/lang/String;
    const-string v5, "Mms/DialogMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendIpTextMessage, to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",simId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",body:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    invoke-direct {p0, v0, v3, v4}, Lcom/android/mms/ui/DialogModeActivity;->sendIpTextMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 1903
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 1904
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/android/mms/ui/DialogModeActivity;->markAsRead(Landroid/net/Uri;)V

    goto :goto_0

    .line 1908
    .end local v0           #body:Ljava/lang/String;
    .end local v3           #simId:I
    .end local v4           #to:Ljava/lang/String;
    :cond_2
    iget-boolean v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendingMessage:Z

    if-nez v5, :cond_0

    .line 1921
    const-string v5, "Mms/DialogMode"

    const-string v6, "new working message"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    invoke-static {p0, p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1924
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 1925
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 1926
    const-string v5, "Mms/DialogMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSelectedSimId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v6, ""

    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;I)V

    .line 1928
    iput-boolean v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendingMessage:Z

    .line 1929
    iput-boolean v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mWaitingForSendMessage:Z

    .line 1930
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 1931
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/android/mms/ui/DialogModeActivity;->markAsRead(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method private sendReplySms()V
    .locals 6

    .prologue
    .line 1571
    const-string v3, "Mms/DialogMode"

    const-string v4, "DialogModeActivity.sendReplySms"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurGroupIpMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1574
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1575
    .local v0, body:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v1, v3

    .line 1576
    .local v1, simId:I
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getSenderNumber()Ljava/lang/String;

    move-result-object v2

    .line 1577
    .local v2, to:Ljava/lang/String;
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendIpTextMessage[group], to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",simId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",body:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/DialogModeActivity;->sendIpTextMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 1579
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 1580
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/DialogModeActivity;->markAsRead(Landroid/net/Uri;)V

    .line 1585
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #simId:I
    .end local v2           #to:Ljava/lang/String;
    :goto_0
    return-void

    .line 1583
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->simSelection()V

    goto :goto_0
.end method

.method private setDialogView()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 783
    const-string v4, "Mms/DialogMode"

    const-string v5, "DialogModeActivity.setDialogView"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 787
    .local v1, msgNum:I
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgNum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const/4 v4, 0x1

    if-gt v1, v4, :cond_2

    .line 789
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mLeftArrow:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 790
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mRightArrow:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 791
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMsgNumText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 805
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mSender:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getSenderString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getSmsContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mRecvTime:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getReceivedTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimName:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurrentSimId()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {p0, v5}, Lcom/android/mms/ui/MessageUtils;->getSimInfo(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurrentSimId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimName:Landroid/widget/TextView;

    invoke-interface {v4, p0, v5, v6, v7}, Lcom/mediatek/mms/ext/IMmsDialogMode;->setSimTypeDrawable(Landroid/content/Context;JLandroid/widget/TextView;)V

    .line 815
    iget-boolean v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIsGroupMms:Z

    if-eqz v4, :cond_3

    .line 816
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mContactImage:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 825
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurIpMessage()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 826
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->showIpMessage()V

    .line 828
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V

    .line 863
    :cond_1
    :goto_2
    return-void

    .line 793
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mLeftArrow:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 794
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mRightArrow:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMsgNumText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 796
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 797
    .local v3, msgNumStrBuilder:Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 798
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, msgNumStr:Ljava/lang/String;
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgNumStr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMsgNumText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 818
    .end local v2           #msgNumStr:Ljava/lang/String;
    .end local v3           #msgNumStrBuilder:Ljava/lang/StringBuilder;
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 819
    .local v0, image:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 820
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mContactImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 832
    .end local v0           #image:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mGroupSender:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 833
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 834
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaptionSeparator:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 835
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 837
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 838
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 841
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpEmoticonView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 843
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 844
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V

    .line 846
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurSMS()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 847
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 848
    const-string v4, "Mms/DialogMode"

    const-string v5, "Hide MMS views"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 851
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachView:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 852
    const-string v4, "Mms/DialogMode"

    const-string v5, "Hide MMS vcard or vcalendar views"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 855
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDownloadBtn:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 856
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDownloadBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 859
    :cond_7
    const-string v4, "Mms/DialogMode"

    const-string v5, "a MMS"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadMmsView()V

    goto/16 :goto_2
.end method

.method private setIpEmoticonItem(Lcom/mediatek/mms/ipmessage/message/IpTextMessage;)V
    .locals 2
    .parameter "textMessage"

    .prologue
    .line 3054
    const-string v0, "Mms/DialogMode"

    const-string v1, "setIpEmoticonItem"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DialogModeActivity;->setIpTextItem(Lcom/mediatek/mms/ipmessage/message/IpTextMessage;)V

    .line 3056
    return-void
.end method

.method private setIpImageItem(Lcom/mediatek/mms/ipmessage/message/IpImageMessage;)V
    .locals 8
    .parameter "imageMessage"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 2816
    const-string v4, "Mms/DialogMode"

    const-string v5, "setIpImageItem()"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2818
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMediaPlayView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2819
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurIpMessageId()J

    move-result-wide v2

    .line 2820
    .local v2, msgId:J
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2821
    invoke-direct {p0, p1, v2, v3}, Lcom/android/mms/ui/DialogModeActivity;->updateIpMessageImageOrVideoView(Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;J)V

    .line 2822
    move-object v1, p1

    .line 2823
    .local v1, imageMsg:Lcom/mediatek/mms/ipmessage/message/IpImageMessage;
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mActionButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/mms/ui/DialogModeActivity$9;

    invoke-direct {v5, p0, v1, v2, v3}, Lcom/android/mms/ui/DialogModeActivity$9;-><init>(Lcom/android/mms/ui/DialogModeActivity;Lcom/mediatek/mms/ipmessage/message/IpImageMessage;J)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2836
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/DialogModeActivity;->setPicView(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2837
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/DialogModeActivity;->setPicView(Ljava/lang/String;)Z

    .line 2852
    .end local v1           #imageMsg:Lcom/mediatek/mms/ipmessage/message/IpImageMessage;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->getCaption()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2853
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaptionSeparator:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2854
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2864
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2865
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpEmoticonView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2867
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2868
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2869
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2871
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2872
    return-void

    .line 2840
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/DialogModeActivity;->setPicView(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2841
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/DialogModeActivity;->setPicView(Ljava/lang/String;)Z

    .line 2843
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageSizeBg:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2844
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2845
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_3

    .line 2846
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2848
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setClickable(Z)V

    .line 2849
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mContentSize:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2856
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaptionSeparator:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2857
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2858
    const-string v0, ""

    .line 2859
    .local v0, caption:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->getCaption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2860
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setIpLocationItem(Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;)V
    .locals 8
    .parameter "locationMessage"

    .prologue
    const/16 v7, 0x8

    .line 2969
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurIpMessageId()J

    move-result-wide v1

    .line 2970
    .local v1, msgId:J
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setIpLocationItem(): message Id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mLocationAddr:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2972
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2973
    .local v3, path:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->isExistsFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2974
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2975
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageLocation:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2979
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpLocationView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2982
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2983
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpEmoticonView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2984
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2986
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2987
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaptionSeparator:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2988
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2990
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2991
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2992
    return-void

    .line 2977
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageLocation:Landroid/widget/ImageView;

    const v5, 0x7f020030

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setIpTextItem(Lcom/mediatek/mms/ipmessage/message/IpTextMessage;)V
    .locals 7
    .parameter "textMessage"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 2733
    const-string v3, "Mms/DialogMode"

    const-string v4, "setIpTextItem()"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2735
    const-string v3, "Mms/DialogMode"

    const-string v4, "setIpTextItem(): No message content!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    :goto_0
    return-void

    .line 2739
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2740
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaptionSeparator:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2741
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2743
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2744
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2745
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2747
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2749
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/util/SmileyParser2;->getDynamicRes(Ljava/lang/String;)I

    move-result v2

    .line 2750
    .local v2, resId:I
    if-gtz v2, :cond_1

    .line 2751
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/util/SmileyParser2;->getAdRes(Ljava/lang/String;)I

    move-result v2

    .line 2753
    :cond_1
    if-gtz v2, :cond_2

    .line 2754
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/util/SmileyParser2;->getXmRes(Ljava/lang/String;)I

    move-result v2

    .line 2756
    :cond_2
    if-lez v2, :cond_3

    .line 2757
    const-string v3, "Mms/DialogMode"

    const-string v4, "set dynamic pic res."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2759
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2760
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mGifView:Lcom/mediatek/ipmsg/ui/GifView;

    invoke-virtual {v3, v2}, Lcom/mediatek/ipmsg/ui/GifView;->setSource(I)V

    .line 2761
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpEmoticonView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2763
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/util/SmileyParser2;->getLargeRes(Ljava/lang/String;)I

    move-result v2

    .line 2764
    if-lez v2, :cond_4

    .line 2765
    const-string v3, "Mms/DialogMode"

    const-string v4, "set static pic res."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2767
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpEmoticonView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2769
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2770
    .local v1, image:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2771
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageSizeBg:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2772
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2774
    .end local v1           #image:Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v3, "Mms/DialogMode"

    const-string v4, "set text res."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/DialogModeActivity;->formatMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2777
    .local v0, formattedMessage:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2778
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpEmoticonView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2779
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2780
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setIpVCalendarItem(Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;)V
    .locals 8
    .parameter "vCalendarMessage"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 2950
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurIpMessageId()J

    move-result-wide v0

    .line 2951
    .local v0, msgId:J
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIpVCalendarItem(): message Id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;->getSummary()Ljava/lang/String;

    move-result-object v2

    .line 2953
    .local v2, summary:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2954
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2956
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mVCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2957
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2958
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2959
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpEmoticonView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2960
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2961
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2962
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaptionSeparator:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2963
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2964
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2965
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2966
    return-void
.end method

.method private setIpVCardItem(Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;)V
    .locals 8
    .parameter "vCardMessage"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 2928
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurIpMessageId()J

    move-result-wide v0

    .line 2929
    .local v0, msgId:J
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIpVCardItem(): message Id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2930
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2931
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2932
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2934
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mVCardInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2935
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2936
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2938
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2939
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpEmoticonView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2941
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2942
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaptionSeparator:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2943
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2944
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2946
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2947
    return-void
.end method

.method private setIpVideoItem(Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;)V
    .locals 9
    .parameter "videoMessage"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 2995
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurIpMessageId()J

    move-result-wide v1

    .line 2996
    .local v1, msgId:J
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setIpVideoItem(): message Id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2997
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2998
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMediaPlayView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2999
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3000
    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/DialogModeActivity;->updateIpMessageImageOrVideoView(Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;J)V

    .line 3001
    move-object v3, p1

    .line 3002
    .local v3, videoMsg:Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mActionButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/mms/ui/DialogModeActivity$10;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/android/mms/ui/DialogModeActivity$10;-><init>(Lcom/android/mms/ui/DialogModeActivity;Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;J)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3015
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/DialogModeActivity;->setPicView(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3016
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/DialogModeActivity;->setVideoView(Ljava/lang/String;)Z

    .line 3031
    .end local v3           #videoMsg:Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->getCaption()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3032
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaptionSeparator:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3033
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3043
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3044
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpEmoticonView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3046
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3047
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3048
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3050
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3051
    return-void

    .line 3019
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/DialogModeActivity;->setPicView(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3020
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/DialogModeActivity;->setVideoView(Ljava/lang/String;)Z

    .line 3022
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageSizeBg:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3023
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3024
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_3

    .line 3025
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3027
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setClickable(Z)V

    .line 3028
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mContentSize:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3035
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaptionSeparator:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3036
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3037
    const-string v0, ""

    .line 3038
    .local v0, caption:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->getCaption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3039
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setIpVoiceItem(Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;)V
    .locals 9
    .parameter "voiceMessage"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 2875
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurIpMessageId()J

    move-result-wide v1

    .line 2876
    .local v1, msgId:J
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setIpVoiceItem(): message Id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2879
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/mediatek/mms/ipmessage/MessageManager;->isDownloading(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2880
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_0

    .line 2881
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2883
    :cond_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/mediatek/mms/ipmessage/MessageManager;->getDownloadProcess(J)I

    move-result v3

    .line 2884
    .local v3, progress:I
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_1

    .line 2885
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2887
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2903
    .end local v3           #progress:I
    :goto_0
    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->getCaption()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2904
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaptionSeparator:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2905
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2915
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2916
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2917
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2919
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2920
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpEmoticonView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2922
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2924
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2925
    return-void

    .line 2889
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_3

    .line 2890
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2892
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2893
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioInfo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getSize()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->formatFileSize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2896
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_5

    .line 2897
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2899
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2900
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mAudioInfo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->getDuration()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->formatAudioTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2907
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaptionSeparator:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2908
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2909
    const-string v0, ""

    .line 2910
    .local v0, caption:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser2;

    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->getCaption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2911
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setPicView(Ljava/lang/String;)Z
    .locals 11
    .parameter "filePath"

    .prologue
    const/16 v10, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3059
    const-string v7, "Mms/DialogMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPicView(): filePath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", imageView = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageContent:Landroid/widget/ImageView;

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 3087
    :goto_0
    return v5

    .line 3063
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageSizeBg:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3064
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3065
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3066
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3067
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3069
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3070
    .local v2, l:I
    div-int/lit16 v0, v2, 0x1f4

    .line 3071
    .local v0, be:I
    if-gtz v0, :cond_2

    .line 3072
    const/4 v0, 0x1

    .line 3074
    :cond_2
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3075
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3077
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090014

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 3078
    .local v3, mWidth:I
    const-string v7, "Mms/DialogMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPicView(): before set layout IpImageSizeBg.width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageSizeBg:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    if-eqz v1, :cond_3

    .line 3080
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v7, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/2addr v7, v8

    invoke-static {v1, v3, v7, v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->resizeImage(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3081
    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3082
    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageSizeBg:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3085
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageContent:Landroid/widget/ImageView;

    const v7, 0x7f0200d3

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3086
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageSizeBg:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    move v5, v6

    .line 3087
    goto :goto_0
.end method

.method private setSmsContentTextView()V
    .locals 3

    .prologue
    .line 3284
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3285
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3286
    .local v0, contentString:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3287
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3290
    .end local v0           #contentString:Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method private setVcardOrVcalendar(Lcom/android/mms/model/SlideshowModel;)V
    .locals 10
    .parameter "slideshow"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3257
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 3281
    :cond_0
    :goto_0
    return-void

    .line 3261
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/FileAttachmentModel;

    .line 3262
    .local v0, attach:Lcom/android/mms/model/FileAttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/FileAttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 3263
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    .line 3264
    .local v5, src:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v6

    int-to-long v3, v6

    .line 3265
    .local v3, size:J
    const-string v6, "text/x-vCard"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "text/x-vCalendar"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3267
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3268
    const-string v6, "Mms/DialogMode"

    const-string v7, "set vcard or vcarlendar to mMmsImageView"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    const-string v2, ""

    .line 3270
    .local v2, nameText:Ljava/lang/String;
    const-string v6, "text/x-vCard"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3271
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachImageView:Landroid/widget/ImageView;

    const v7, 0x7f0200ee

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3272
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00b5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3277
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mAttachName:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3278
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mAttachSize:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->getHumanReadableSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3279
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->setSmsContentTextView()V

    goto :goto_0

    .line 3274
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsAttachImageView:Landroid/widget/ImageView;

    const v7, 0x7f0200ec

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3275
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00b4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private setVideoView(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    .line 3092
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVideoView(): filePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", imageView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3093
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageContent:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 3105
    :cond_0
    :goto_0
    return v1

    .line 3096
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mMediaPlayView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3097
    const/4 v2, 0x3

    invoke-static {p1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3098
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 3099
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3100
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageSizeBg:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3101
    const/4 v1, 0x1

    goto :goto_0

    .line 3103
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageContent:Landroid/widget/ImageView;

    const v3, 0x7f0200d3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3104
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mIpImageSizeBg:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showIpMessage()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 2674
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 2675
    const-string v4, "Mms/DialogMode"

    const-string v5, "Hide MMS views"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2678
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurGroupIpMessage()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    .line 2679
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2680
    .local v3, name:Ljava/lang/String;
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group sender address:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mediatek/mms/ipmessage/ContactManager;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2682
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group sender name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2683
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mGroupSender:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2684
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mGroupSender:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2688
    .end local v3           #name:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurIpMessageId()J

    move-result-wide v0

    .line 2689
    .local v0, id:J
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/mediatek/mms/ipmessage/MessageManager;->getIpMsgInfo(J)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v2

    .line 2690
    .local v2, ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showIpMessage. id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    invoke-virtual {v2}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2727
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error IP message type. type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    .end local v2           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    :goto_1
    return-void

    .line 2686
    .end local v0           #id:J
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mGroupSender:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2693
    .restart local v0       #id:J
    .restart local v2       #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    :pswitch_0
    check-cast v2, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;

    .end local v2           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-direct {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->setIpTextItem(Lcom/mediatek/mms/ipmessage/message/IpTextMessage;)V

    goto :goto_1

    .line 2696
    .restart local v2       #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    :pswitch_1
    check-cast v2, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;

    .end local v2           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-direct {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->setIpImageItem(Lcom/mediatek/mms/ipmessage/message/IpImageMessage;)V

    goto :goto_1

    .line 2699
    .restart local v2       #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    :pswitch_2
    check-cast v2, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;

    .end local v2           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-direct {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->setIpVoiceItem(Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;)V

    goto :goto_1

    .line 2702
    .restart local v2       #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    :pswitch_3
    check-cast v2, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;

    .end local v2           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-direct {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->setIpVCardItem(Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;)V

    goto :goto_1

    .line 2705
    .restart local v2       #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    :pswitch_4
    check-cast v2, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;

    .end local v2           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-direct {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->setIpLocationItem(Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;)V

    goto :goto_1

    .line 2708
    .restart local v2       #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    :pswitch_5
    check-cast v2, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;

    .end local v2           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-direct {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->setIpImageItem(Lcom/mediatek/mms/ipmessage/message/IpImageMessage;)V

    goto :goto_1

    .line 2711
    .restart local v2       #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    :pswitch_6
    check-cast v2, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;

    .end local v2           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-direct {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->setIpVideoItem(Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;)V

    goto :goto_1

    .line 2714
    .restart local v2       #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    :pswitch_7
    check-cast v2, Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;

    .end local v2           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-direct {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->setIpVCalendarItem(Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;)V

    goto :goto_1

    .line 2718
    .restart local v2       #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    :pswitch_8
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown IP message type. type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2724
    :pswitch_9
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Group IP message type. type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2691
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private showSimSelectedDialog(Landroid/content/Intent;)V
    .locals 15
    .parameter "intent"

    .prologue
    .line 1709
    const-string v11, "Mms/DialogMode"

    const-string v12, "DialogModeActivity.showSimSelectedDialog"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    move-object/from16 v5, p1

    .line 1713
    .local v5, it:Landroid/content/Intent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1714
    .local v2, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1715
    .local v7, simListInfobySlot:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    const/4 v9, 0x0

    .local v9, slotId:I
    :goto_0
    sget v11, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    if-ge v9, v11, :cond_a

    .line 1716
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v11, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_9

    .line 1717
    iget-object v11, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 1718
    .local v6, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v11

    if-eq v9, v11, :cond_1

    .line 1716
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1721
    :cond_1
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1722
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1723
    .local v3, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "simIcon"

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimBackgroundLightRes()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    iget-object v11, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    invoke-static {}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->getDefault()Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;

    move-result-object v12

    invoke-static {v4, v11, v12}, Lcom/android/mms/ui/MessageUtils;->getSimStatus(ILjava/util/List;Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;)I

    move-result v10

    .line 1725
    .local v10, state:I
    const-string v11, "simStatus"

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->getSimStatusResource(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    const-string v11, "Mms/DialogMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "simStatus = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {p0, v11}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1729
    const-string v11, "Mms/DialogMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "show ipmessage icon, simId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v11, "ipmsg_indicator"

    const/16 v12, 0x232a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    :goto_3
    const-string v8, ""

    .line 1736
    .local v8, simNumber:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1737
    const-string v11, "Mms/DialogMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "format = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDispalyNumberFormat()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDispalyNumberFormat()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 1761
    :cond_2
    :goto_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1762
    const-string v11, "simNumberShort"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    :goto_5
    const-string v11, "simName"

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    const-string v11, "Mms/DialogMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "simName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1771
    const-string v11, "simNumber"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    :goto_6
    iget v11, p0, Lcom/android/mms/ui/DialogModeActivity;->mAssociatedSimId:I

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v12

    long-to-int v12, v12

    if-ne v11, v12, :cond_8

    .line 1778
    const-string v11, "suggested"

    const v12, 0x7f0b0086

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    :goto_7
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1732
    .end local v8           #simNumber:Ljava/lang/String;
    :cond_3
    const-string v11, "Mms/DialogMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hide ipmessage icon, simId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    const-string v11, "ipmsg_indicator"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1741
    .restart local v8       #simNumber:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-gt v11, v12, :cond_4

    .line 1742
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 1744
    :cond_4
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1746
    goto/16 :goto_4

    .line 1748
    :pswitch_1
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-gt v11, v12, :cond_5

    .line 1749
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 1751
    :cond_5
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1753
    goto/16 :goto_4

    .line 1755
    :pswitch_2
    const-string v8, ""

    .line 1756
    goto/16 :goto_4

    .line 1764
    :cond_6
    const-string v11, "Mms/DialogMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "simNumber = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    const-string v11, "simNumberShort"

    invoke-virtual {v3, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1773
    :cond_7
    const-string v11, "Mms/DialogMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "simNumber = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    const-string v11, "simNumber"

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1780
    :cond_8
    const-string v11, "suggested"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1715
    .end local v3           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v8           #simNumber:Ljava/lang/String;
    .end local v10           #state:I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1786
    .end local v4           #i:I
    :cond_a
    invoke-static {v2, p0}, Lcom/android/mms/ui/MessageUtils;->createSimpleAdapter(Ljava/util/List;Landroid/content/Context;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    .line 1787
    .local v0, a:Landroid/widget/SimpleAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1788
    .local v1, b:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f0b0085

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1789
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1790
    new-instance v11, Lcom/android/mms/ui/DialogModeActivity$4;

    invoke-direct {v11, p0, v7, v5}, Lcom/android/mms/ui/DialogModeActivity$4;-><init>(Lcom/android/mms/ui/DialogModeActivity;Ljava/util/List;Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v11}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1802
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/android/mms/ui/DialogModeActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;

    .line 1803
    iget-object v11, p0, Lcom/android/mms/ui/DialogModeActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 1804
    return-void

    .line 1738
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private simSelection()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x5

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 1588
    const-string v7, "Mms/DialogMode"

    const-string v8, "DialogModeActivity.simSelection"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string v7, "Mms/DialogMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSelectedSimId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimCount:I

    if-nez v7, :cond_1

    .line 1594
    const-string v7, "Mms/DialogMode"

    const-string v8, "no card"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    :cond_0
    :goto_0
    const-string v7, "Mms/DialogMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSelectedSimId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    return-void

    .line 1596
    :cond_1
    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimCount:I

    if-ne v7, v11, :cond_2

    .line 1597
    const-string v7, "Mms/DialogMode"

    const-string v8, "1 card"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    .line 1599
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->confirmSendMessageIfNeeded()V

    goto :goto_0

    .line 1601
    :cond_2
    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->send_sim_id:I

    if-lt v7, v11, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

    invoke-interface {v7}, Lcom/mediatek/mms/ext/IMmsDialogMode;->isDualSendButtonEnable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1602
    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->send_sim_id:I

    iput v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    .line 1603
    iput v10, p0, Lcom/android/mms/ui/DialogModeActivity;->send_sim_id:I

    .line 1604
    const-string v7, "Mms/DialogMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send msg from send_sim_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->confirmSendMessageIfNeeded()V

    goto :goto_0

    .line 1607
    :cond_3
    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimCount:I

    if-le v7, v11, :cond_0

    .line 1608
    const-string v7, "Mms/DialogMode"

    const-string v8, "multi cards"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1610
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "Select_type"

    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1612
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getSenderNumber()Ljava/lang/String;

    move-result-object v4

    .line 1613
    .local v4, number:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 1614
    :cond_4
    iput v10, p0, Lcom/android/mms/ui/DialogModeActivity;->mAssociatedSimId:I

    .line 1618
    :goto_1
    const-string v7, "Mms/DialogMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAssociatedSimId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mAssociatedSimId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sms_sim_setting"

    invoke-static {v7, v8, v12, v13}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1623
    .local v2, messageSimId:J
    const-string v7, "Mms/DialogMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "messageSimId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    const-wide/16 v7, -0x1

    cmp-long v7, v2, v7

    if-nez v7, :cond_6

    .line 1627
    invoke-direct {p0, v1}, Lcom/android/mms/ui/DialogModeActivity;->showSimSelectedDialog(Landroid/content/Intent;)V

    .line 1628
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V

    goto/16 :goto_0

    .line 1616
    .end local v2           #messageSimId:J
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/mms/ui/DialogModeActivity;->getContactSIM(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mAssociatedSimId:I

    goto :goto_1

    .line 1629
    .restart local v2       #messageSimId:J
    :cond_6
    cmp-long v7, v2, v12

    if-nez v7, :cond_8

    .line 1630
    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mAssociatedSimId:I

    if-ne v7, v10, :cond_7

    .line 1631
    invoke-direct {p0, v1}, Lcom/android/mms/ui/DialogModeActivity;->showSimSelectedDialog(Landroid/content/Intent;)V

    .line 1632
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V

    goto/16 :goto_0

    .line 1634
    :cond_7
    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mAssociatedSimId:I

    iput v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    .line 1635
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->confirmSendMessageIfNeeded()V

    goto/16 :goto_0

    .line 1637
    :cond_8
    const-wide/16 v7, -0x3

    cmp-long v7, v2, v7

    if-nez v7, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportAutoSelectSimId()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1638
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurrentSimId()J

    move-result-wide v5

    .line 1639
    .local v5, simId:J
    const/4 v0, 0x0

    .local v0, index:I
    :goto_2
    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimCount:I

    if-ge v0, v7, :cond_9

    .line 1640
    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-nez v7, :cond_a

    .line 1641
    long-to-int v7, v5

    iput v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    .line 1645
    :cond_9
    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    int-to-long v7, v7

    cmp-long v7, v7, v5

    if-nez v7, :cond_b

    .line 1646
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->confirmSendMessageIfNeeded()V

    goto/16 :goto_0

    .line 1639
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1648
    :cond_b
    invoke-direct {p0, v1}, Lcom/android/mms/ui/DialogModeActivity;->showSimSelectedDialog(Landroid/content/Intent;)V

    .line 1649
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V

    goto/16 :goto_0

    .line 1652
    .end local v0           #index:I
    .end local v5           #simId:J
    :cond_c
    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mAssociatedSimId:I

    if-eq v7, v10, :cond_d

    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mAssociatedSimId:I

    int-to-long v7, v7

    cmp-long v7, v2, v7

    if-nez v7, :cond_e

    .line 1653
    :cond_d
    long-to-int v7, v2

    iput v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I

    .line 1654
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->confirmSendMessageIfNeeded()V

    goto/16 :goto_0

    .line 1656
    :cond_e
    invoke-direct {p0, v1}, Lcom/android/mms/ui/DialogModeActivity;->showSimSelectedDialog(Landroid/content/Intent;)V

    .line 1657
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V

    goto/16 :goto_0
.end method

.method private updateCounter(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    .line 2476
    const-string v4, "Mms/DialogMode"

    const-string v5, "DialogModeActivity.updateCounter"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    const/4 v2, 0x0

    .line 2479
    .local v2, params:[I
    invoke-static {p1, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    .line 2485
    aget v1, v2, v6

    .line 2486
    .local v1, msgCount:I
    const/4 v4, 0x2

    aget v3, v2, v4

    .line 2500
    .local v3, remainingInCurrentMessage:I
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    .line 2501
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextCounter:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2506
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2507
    .local v0, counterText:Ljava/lang/String;
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "counterText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2510
    return-void

    .line 2503
    .end local v0           #counterText:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateIpMessageImageOrVideoView(Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;J)V
    .locals 5
    .parameter "message"
    .parameter "msgId"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2793
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2794
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mActionButton:Landroid/widget/ImageView;

    const v2, 0x7f020100

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2795
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/mediatek/mms/ipmessage/MessageManager;->isDownloading(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2796
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mActionButton:Landroid/widget/ImageView;

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2797
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 2798
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2800
    :cond_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/mediatek/mms/ipmessage/MessageManager;->getDownloadProcess(J)I

    move-result v0

    .line 2801
    .local v0, progress:I
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 2802
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2804
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mContentSize:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2813
    .end local v0           #progress:I
    :goto_0
    return-void

    .line 2806
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    .line 2807
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2808
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2810
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mContentSize:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2811
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mContentSize:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getSize()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->formatFileSize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSendButtonState()V
    .locals 6

    .prologue
    .line 2405
    const/4 v0, 0x0

    .line 2406
    .local v0, enable:Z
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReplyEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 2408
    .local v1, len:I
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DialogModeActivity.updateSendButtonState(): len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 2411
    if-lez v1, :cond_0

    .line 2412
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSendButtonState(): mSimCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v2

    .line 2418
    .local v2, phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    if-eqz v2, :cond_0

    .line 2419
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isAnySimInsert()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2420
    const/4 v0, 0x1

    .line 2426
    .end local v2           #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2427
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 2429
    if-eqz v0, :cond_3

    .line 2430
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurIpMessage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2431
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    const v4, 0x7f0200e2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2439
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

    invoke-interface {v3, v0}, Lcom/mediatek/mms/ext/IMmsDialogMode;->updateCTSendButtonStatue(Z)Z

    .line 2440
    return-void

    .line 2433
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    const v4, 0x7f0200e4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2436
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    const v4, 0x7f0200e1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 3

    .prologue
    .line 2400
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogModeActivity.getHeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 2394
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogModeActivity.getWidth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public hideCTButtonPanel()Z
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 3369
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 3370
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3372
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 3373
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3375
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDownloadBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 3376
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDownloadBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3378
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hideCtSendPanel()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3533
    iget v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimCount:I

    if-lez v0, :cond_1

    .line 3546
    :cond_0
    :goto_0
    return v3

    .line 3537
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 3538
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3540
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 3541
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3543
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    .line 3544
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2, v2}, Lcom/android/mms/ui/DialogModeActivity;->updateCounter(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method

.method public initCTSendButton()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3345
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 3346
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3348
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 3349
    const v0, 0x7f0f0147

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    .line 3351
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    .line 3352
    const v0, 0x7f0f0148

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    .line 3355
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3356
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3357
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 3358
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3360
    :cond_3
    const v0, 0x7f0f0143

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextCounter:Landroid/widget/TextView;

    .line 3361
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3363
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsDialogMode;->setCTSendButtonType()Z

    .line 3364
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->hideCtSendPanel()Z

    .line 3365
    const/4 v0, 0x1

    return v0
.end method

.method public isHome()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 896
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getHomes()Ljava/util/List;

    move-result-object v2

    .line 901
    .local v2, homePackageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 902
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 904
    .local v5, rti:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, packageName:Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 906
    .local v1, className:Ljava/lang/String;
    const-string v6, "Mms/DialogMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package0= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " class0="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 909
    .local v4, ret:Z
    if-nez v4, :cond_0

    .line 910
    const-string v6, "com.android.mms.ui.DialogModeActivity"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 911
    const/4 v4, 0x1

    .line 932
    :cond_0
    return v4
.end method

.method public notificationsReceived(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 3187
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DialogModeActivity, notificationReceived: intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3189
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3230
    :goto_0
    return-void

    .line 3192
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3193
    const-string v4, "Mms/DialogMode"

    const-string v5, "activity is being destroied, ignore notification."

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3196
    :cond_1
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DialogModeActivity, action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurIpMessage()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3198
    const-string v4, "Mms/DialogMode"

    const-string v5, "showing one is not ipmessage, ignore action."

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3201
    :cond_2
    const-wide/16 v2, 0x0

    .line 3202
    .local v2, msgId:J
    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getActionTypeByAction(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3227
    const-string v4, "Mms/DialogMode"

    const-string v5, "DialogModeActivity. ignore notification."

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3206
    :pswitch_0
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getActionTypeByAction(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 3207
    const-string v4, "DownloadMsgId"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3211
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurIpMessageId()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_4

    .line 3212
    const-string v4, "Mms/DialogMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current ipmessage is not this:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getCurIpMessageId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3221
    :catch_0
    move-exception v1

    .line 3223
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "Mms/DialogMode"

    const-string v5, "catch a NullPointerExcpetion?"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3209
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_3
    :try_start_1
    const-string v4, "com.mediatek.mms.ipmessage.IpMessageRecdId"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_1

    .line 3215
    :cond_4
    new-instance v4, Lcom/android/mms/ui/DialogModeActivity$12;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/DialogModeActivity$12;-><init>(Lcom/android/mms/ui/DialogModeActivity;)V

    invoke-virtual {p0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3202
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 524
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogModeActivity.onActivityResult, requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 529
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail due to resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    const/16 v1, 0x6b

    if-ne p1, v1, :cond_2

    .line 534
    const-string v1, "exit_ecm_result"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 535
    .local v0, outOfEmergencyMode:Z
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_CODE_ECM_EXIT_DIALOG, mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    if-eqz v0, :cond_0

    .line 537
    invoke-direct {p0, v4}, Lcom/android/mms/ui/DialogModeActivity;->sendMessage(Z)V

    goto :goto_0

    .line 540
    .end local v0           #outOfEmergencyMode:Z
    :cond_2
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bail due to unknown requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAttachmentChanged()V
    .locals 2

    .prologue
    .line 608
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.onAttachmentChanged"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public onAttachmentError(I)V
    .locals 2
    .parameter "error"

    .prologue
    .line 620
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.onAttachmentError"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMarkAsReadBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DialogModeActivity;->onClick(Landroid/view/View;)V

    .line 3253
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1459
    const-string v3, "Mms/DialogMode"

    const-string v4, "DialogModeActivity.onClick"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1461
    const-string v3, "Mms/DialogMode"

    const-string v4, "Clicent content view"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/DialogModeActivity;->openThread(J)V

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1464
    const-string v3, "Mms/DialogMode"

    const-string v4, "View this MMS"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v4

    invoke-static {p0, v3, v6, v4}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V

    .line 1466
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1467
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/DialogModeActivity;->markAsRead(Ljava/util/ArrayList;)V

    .line 1471
    iput-boolean v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mNeedFinish:Z

    goto :goto_0

    .line 1472
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1473
    const-string v3, "Mms/DialogMode"

    const-string v4, "Send SMS"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->sendReplySms()V

    goto :goto_0

    .line 1475
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mMarkAsReadBtn:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1477
    const-string v3, "Mms/DialogMode"

    const-string v4, "mark readbtn"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_5

    .line 1479
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1480
    iput-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    .line 1482
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1483
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurUri"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/DialogModeActivity;->markAsRead(Ljava/util/ArrayList;)V

    .line 1487
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1488
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mDeleteBtn:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 1490
    const-string v3, "Mms/DialogMode"

    const-string v4, "view the message thread"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/DialogModeActivity;->markAsSeen(Ljava/util/ArrayList;)V

    .line 1492
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->isCurGroupIpMessage()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1494
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/ui/DialogModeActivity;->openIpMsgThread(JZ)V

    goto/16 :goto_0

    .line 1496
    :cond_8
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/DialogModeActivity;->openThread(J)V

    goto/16 :goto_0

    .line 1499
    :cond_9
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mLeftArrow:Landroid/widget/ImageButton;

    if-ne p1, v3, :cond_a

    .line 1500
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->onSlideToPrev()V

    goto/16 :goto_0

    .line 1501
    :cond_a
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mRightArrow:Landroid/widget/ImageButton;

    if-ne p1, v3, :cond_b

    .line 1502
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->onSlideToNext()V

    goto/16 :goto_0

    .line 1503
    :cond_b
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDownloadBtn:Landroid/widget/Button;

    if-ne p1, v3, :cond_0

    .line 1504
    const-string v3, "Mms/DialogMode"

    const-string v4, "    mMmsDownloadBtn: onClick()"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    move-object v1, p0

    .line 1508
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1509
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "uri"

    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
    const-string v3, "type"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1511
    const-string v3, "simId"

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getSimId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1512
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1515
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1516
    .local v0, clickIntent:Landroid/content/Intent;
    const/high16 v3, 0x3400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1519
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 398
    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    const-string v1, "uris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    .line 401
    const-string v1, "cururiidx"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 402
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savedInstanceState mUris"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savedInstanceState mCurUriIdx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 410
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 411
    const-string v1, "Mms/DialogMode"

    const-string v2, "DialogModeActivity.onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->isHome()Z

    move-result v1

    if-nez v1, :cond_2

    .line 413
    const-string v1, "Mms/DialogMode"

    const-string v2, "not at Home, just finish"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 444
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    invoke-direct {p0, p0}, Lcom/android/mms/ui/DialogModeActivity;->initPlugin(Landroid/content/Context;)V

    .line 419
    const-string v1, "Mms/DialogMode"

    const-string v2, "at Home"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->registerReceiver()V

    .line 423
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DialogModeActivity;->addNewUriforReCreate(Landroid/content/Intent;)V

    .line 424
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 427
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->initDialogView()V

    .line 428
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->setDialogView()V

    .line 430
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-nez v1, :cond_3

    .line 431
    new-instance v1, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    invoke-direct {v1}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    .line 432
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->register(Landroid/content/Context;)V

    .line 435
    :cond_3
    invoke-static {p0, p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->addIpMsgNotificationListeners(Landroid/content/Context;Lcom/mediatek/mms/ipmessage/INotificationsListener;)V

    .line 437
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->resetMessage()V

    .line 440
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/mediatek/encapsulation/android/content/EncapsulatedAction;->ACTION_SMS_DEFAULT_SIM_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 442
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mHasRegisterReceiver:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 471
    const-string v1, "Mms/DialogMode"

    const-string v2, "DialogModeActivity.onDestroy"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :try_start_0
    iget-boolean v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mHasRegisterReceiver:Z

    if-eqz v1, :cond_0

    .line 475
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mHasRegisterReceiver:Z

    .line 476
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->unregister()V

    .line 484
    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 487
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 488
    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReceiver:Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;

    if-eqz v1, :cond_3

    .line 491
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReceiver:Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 492
    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mReceiver:Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;

    .line 494
    :cond_3
    invoke-static {p0, p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->removeIpMsgNotificationListeners(Landroid/content/Context;Lcom/mediatek/mms/ipmessage/INotificationsListener;)V

    .line 496
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 497
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 498
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/DialogMode"

    const-string v2, "Error occured when unregisterReceiver: mSimReceiver;"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMaxPendingMessagesReached()V
    .locals 2

    .prologue
    .line 616
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.onMaxPendingMessagesReached"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method public onMessageSent()V
    .locals 2

    .prologue
    .line 595
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.onMessageSent"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mWaitingForSendMessage:Z

    .line 600
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMessageSentRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 601
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 502
    const-string v1, "Mms/DialogMode"

    const-string v2, "DialogModeActivity.onNewIntent"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 504
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 506
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->registerReceiver()V

    .line 507
    const-string v1, "com.android.mms.transaction.new_msg_uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, newString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    const-string v1, "Mms/DialogMode"

    const-string v2, "DialogModeActivity.new Uri = current Uri , don\'t show "

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DialogModeActivity;->addNewUri(Landroid/content/Intent;)V

    .line 513
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    .line 514
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->initDialogView()V

    .line 515
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->setDialogView()V

    .line 516
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-nez v1, :cond_0

    .line 517
    new-instance v1, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    invoke-direct {v1}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    .line 518
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->register(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPreMessageSent()V
    .locals 2

    .prologue
    .line 590
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.onPreMessageSent"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 592
    return-void
.end method

.method public onPreMmsSent()V
    .locals 2

    .prologue
    .line 612
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.onPreMmsSent"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public onProtocolChanged(ZZ)V
    .locals 2
    .parameter "mms"
    .parameter "needToast"

    .prologue
    .line 604
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.onProtocolChanged"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 450
    const-string v0, "Mms/DialogMode"

    const-string v1, "onSaveInstanceState is called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUris "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurUriIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 454
    const-string v0, "uris"

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 455
    const-string v0, "cururiidx"

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    return-void
.end method

.method public onSlideToNext()V
    .locals 4

    .prologue
    .line 955
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 956
    .local v0, msgNum:I
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogModeActivity.onSlideToNext, msgNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogModeActivity.onSlideToNext, mCurUriIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 964
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 965
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogModeActivity.onSlideToNext, mCurUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    :cond_2
    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 969
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    .line 970
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->setDialogView()V

    goto :goto_0
.end method

.method public onSlideToPrev()V
    .locals 4

    .prologue
    .line 936
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 937
    .local v0, msgNum:I
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogModeActivity.onSlideToPrev, msgNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogModeActivity.onSlideToPrev, mCurUriIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    if-eqz v1, :cond_0

    .line 945
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 946
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogModeActivity.onSlideToPrev, mCurUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    :cond_2
    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 950
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    .line 951
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->setDialogView()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 3242
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 3243
    iget-boolean v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mNeedFinish:Z

    if-eqz v0, :cond_0

    .line 3244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mNeedFinish:Z

    .line 3245
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3247
    :cond_0
    return-void
.end method

.method public pauseAudio()V
    .locals 2

    .prologue
    .line 2310
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.pauseAudio"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    return-void
.end method

.method public pauseVideo()V
    .locals 2

    .prologue
    .line 2317
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.pauseVideo"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 2293
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.reset"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2298
    :cond_0
    return-void
.end method

.method public seekAudio(I)V
    .locals 2
    .parameter "seekTo"

    .prologue
    .line 2324
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.seekAudio"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    return-void
.end method

.method public seekVideo(I)V
    .locals 2
    .parameter "seekTo"

    .prologue
    .line 2331
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.seekVideo"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "audio"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 2222
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.setAudio"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    return-void
.end method

.method public setCTSendButtonType()Z
    .locals 12

    .prologue
    .line 3470
    const/4 v4, 0x0

    .line 3472
    .local v4, simCardSize:I
    iget-object v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    if-nez v8, :cond_0

    .line 3473
    const/4 v4, 0x0

    .line 3478
    :goto_0
    const/4 v1, 0x0

    .line 3479
    .local v1, bigImageId:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 3480
    .local v7, smallImageId:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    check-cast v3, [[Ljava/lang/Object;

    .line 3481
    .local v3, resIds:[[Ljava/lang/Object;
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    .line 3482
    const/4 v5, 0x0

    .line 3483
    .local v5, slotId:I
    if-nez v4, :cond_1

    .line 3484
    const/4 v8, 0x1

    .line 3529
    :goto_1
    return v8

    .line 3475
    .end local v1           #bigImageId:Landroid/graphics/drawable/Drawable;
    .end local v3           #resIds:[[Ljava/lang/Object;
    .end local v5           #slotId:I
    .end local v7           #smallImageId:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    .line 3485
    .restart local v1       #bigImageId:Landroid/graphics/drawable/Drawable;
    .restart local v3       #resIds:[[Ljava/lang/Object;
    .restart local v5       #slotId:I
    .restart local v7       #smallImageId:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v8, 0x1

    if-ne v4, v8, :cond_5

    .line 3486
    iget-object v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v8}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v5

    .line 3499
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v9, v5, v10}, Lcom/mediatek/mms/ext/IMmsUtils;->getSendButtonResourceIdBySlotId(Landroid/content/Context;IZ)[[Ljava/lang/Object;

    move-result-object v3

    .line 3500
    if-eqz v3, :cond_3

    .line 3501
    iget-object v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v11, 0x0

    aget-object v8, v8, v11

    check-cast v8, Landroid/graphics/drawable/Drawable;

    aput-object v8, v9, v10

    .line 3502
    iget-object v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x1

    const/4 v8, 0x1

    aget-object v8, v3, v8

    const/4 v11, 0x0

    aget-object v8, v8, v11

    check-cast v8, Landroid/graphics/drawable/Drawable;

    aput-object v8, v9, v10

    .line 3504
    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3505
    iget-object v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v8, v9, v5, v10}, Lcom/mediatek/mms/ext/IMmsUtils;->getSendButtonResourceIdBySlotId(Landroid/content/Context;IZ)[[Ljava/lang/Object;

    move-result-object v3

    .line 3508
    :cond_4
    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x0

    aget-object v1, v8, v9

    .end local v1           #bigImageId:Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 3509
    .restart local v1       #bigImageId:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    aget-object v8, v3, v8

    const/4 v9, 0x0

    aget-object v7, v8, v9

    .end local v7           #smallImageId:Landroid/graphics/drawable/Drawable;
    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 3511
    .restart local v7       #smallImageId:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSlotIds:[I

    .line 3512
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonColors:[I

    .line 3514
    iget-object v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSlotIds:[I

    const/4 v10, 0x0

    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v11, 0x1

    aget-object v8, v8, v11

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v9, v10

    .line 3515
    iget-object v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSlotIds:[I

    const/4 v10, 0x1

    const/4 v8, 0x1

    aget-object v8, v3, v8

    const/4 v11, 0x1

    aget-object v8, v8, v11

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v9, v10

    .line 3516
    iget-object v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonColors:[I

    const/4 v10, 0x0

    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v11, 0x2

    aget-object v8, v8, v11

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v9, v10

    .line 3517
    iget-object v9, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonColors:[I

    const/4 v10, 0x1

    const/4 v8, 0x1

    aget-object v8, v3, v8

    const/4 v11, 0x2

    aget-object v8, v8, v11

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v9, v10

    .line 3519
    move-object v0, v1

    .line 3520
    .local v0, bigButtonImageId:Landroid/graphics/drawable/Drawable;
    move-object v6, v7

    .line 3521
    .local v6, smallButtonImageId:Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/android/mms/ui/DialogModeActivity$13;

    invoke-direct {v8, p0, v0, v6}, Lcom/android/mms/ui/DialogModeActivity$13;-><init>(Lcom/android/mms/ui/DialogModeActivity;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3529
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 3487
    .end local v0           #bigButtonImageId:Landroid/graphics/drawable/Drawable;
    .end local v6           #smallButtonImageId:Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v8, 0x2

    if-ne v4, v8, :cond_2

    .line 3488
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sms_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v8, v9, v10, v11}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    long-to-int v2, v8

    .line 3491
    .local v2, defaultSimId:I
    int-to-long v8, v2

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 3492
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 3493
    :cond_6
    int-to-long v8, v2

    const-wide/16 v10, -0x5

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 3494
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 3496
    :cond_7
    int-to-long v8, v2

    invoke-static {p0, v8, v9}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v5

    goto/16 :goto_2
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 6
    .parameter "mUri"

    .prologue
    .line 2260
    const-string v3, "Mms/DialogMode"

    const-string v4, "DialogModeActivity.setImage(uri) "

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    const/4 v0, 0x0

    .line 2263
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p1, :cond_1

    .line 2264
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200d3

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2283
    :cond_0
    :goto_0
    const-string v3, ""

    invoke-virtual {p0, v3, v0}, Lcom/android/mms/ui/DialogModeActivity;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2289
    :goto_1
    return-void

    .line 2268
    :cond_1
    const/4 v2, 0x0

    .line 2270
    .local v2, mInputStream:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 2272
    if-eqz v2, :cond_2

    .line 2273
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 2278
    :cond_2
    if-eqz v2, :cond_0

    .line 2279
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2284
    .end local v2           #mInputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 2285
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "Mms/DialogMode"

    const-string v4, "setImage(Uri): out of memory: "

    invoke-static {v3, v4, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2275
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v2       #mInputStream:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 2276
    .local v1, e:Ljava/io/FileNotFoundException;
    const/4 v0, 0x0

    .line 2278
    if-eqz v2, :cond_0

    .line 2279
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2286
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #mInputStream:Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 2287
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Mms/DialogMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setImage(uri) error."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2278
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #mInputStream:Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 2279
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 2278
    :cond_3
    throw v3
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 2239
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogModeActivity.setImage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    move-object v1, p2

    .line 2244
    .local v1, image:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 2245
    :try_start_0
    const-string v2, "Mms/DialogMode"

    const-string v3, "bitmap null"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2249
    :cond_0
    const-string v2, "Mms/DialogMode"

    const-string v3, "set bitmap to mMmsImageView"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2251
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2252
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2256
    :goto_0
    return-void

    .line 2253
    :catch_0
    move-exception v0

    .line 2254
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImage: out of memory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 2
    .parameter "fit"

    .prologue
    .line 2382
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.setImageRegionFit"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 2388
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.setImageVisibility"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2390
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "text"

    .prologue
    .line 2234
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.setText"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 2228
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.setTextVisibility"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "name"
    .parameter "video"

    .prologue
    .line 2355
    const-string v2, "Mms/DialogMode"

    const-string v3, "DialogModeActivity.setVideo"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2360
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 2361
    const-string v2, "Mms/DialogMode"

    const-string v3, "bitmap null"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d4

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2365
    :cond_0
    const-string v2, "Mms/DialogMode"

    const-string v3, "set bitmap to mMmsImageView"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2367
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2368
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2372
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 2369
    :catch_0
    move-exception v1

    .line 2370
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImage: out of memory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 2376
    const-string v0, "Mms/DialogMode"

    const-string v1, "setVideoThumbnail"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 2338
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.setVideoVisibility"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    return-void
.end method

.method public setVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 2303
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.setVisibility"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2305
    return-void
.end method

.method public showCTButtonPanel()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3382
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 3383
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3385
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 3386
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3388
    :cond_1
    return v1
.end method

.method public showMmsDownloadBtn()V
    .locals 2

    .prologue
    .line 3321
    const v0, 0x7f0f0137

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDownloadBtn:Landroid/widget/Button;

    .line 3322
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDownloadBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3323
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsDownloadBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3324
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 546
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.startActivityForResult"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 552
    return-void
.end method

.method public startAudio()V
    .locals 2

    .prologue
    .line 2210
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.startAudio"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    return-void
.end method

.method public startVideo()V
    .locals 2

    .prologue
    .line 2216
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.startVideo"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    return-void
.end method

.method public stopAudio()V
    .locals 2

    .prologue
    .line 2344
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.stopAudio"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    return-void
.end method

.method public stopVideo()V
    .locals 2

    .prologue
    .line 2350
    const-string v0, "Mms/DialogMode"

    const-string v1, "DialogModeActivity.stopVideo"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    return-void
.end method

.method public updateCTSendButtonStatue(Z)Z
    .locals 12
    .parameter "enable"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3392
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    .line 3393
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3395
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    if-nez v6, :cond_2

    .line 3465
    :cond_1
    :goto_0
    return v9

    .line 3401
    :cond_2
    const/4 v3, 0x0

    .line 3402
    .local v3, simCardSize:I
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    if-nez v6, :cond_9

    .line 3403
    const/4 v3, 0x0

    .line 3407
    :goto_1
    const/4 v1, 0x0

    .line 3408
    .local v1, bigEnable:Z
    const/4 v5, 0x0

    .line 3410
    .local v5, smallEnable:Z
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 3411
    .local v0, bigBtnEnable:Z
    const/4 v4, 0x0

    .line 3412
    .local v4, smallBtnEnable:Z
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    if-eqz v6, :cond_3

    .line 3413
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v4

    .line 3416
    :cond_3
    if-eq v0, p1, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSlotIds:[I

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonColors:[I

    if-eqz v6, :cond_5

    .line 3417
    const/4 v2, 0x0

    .line 3418
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_a

    .line 3419
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSlotIds:[I

    aget v7, v7, v10

    iget-object v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonColors:[I

    aget v8, v8, v10

    invoke-interface {v6, v7, v10, v8}, Lcom/mediatek/mms/ext/IMmsUtils;->getActivatedButtonIconBySlotId(IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3425
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 3426
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3429
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    if-eq v4, p1, :cond_7

    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSlotIds:[I

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonColors:[I

    if-eqz v6, :cond_7

    .line 3430
    const/4 v2, 0x0

    .line 3431
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_b

    .line 3432
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    iget-object v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSlotIds:[I

    aget v7, v7, v9

    iget-object v8, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonColors:[I

    aget v8, v8, v9

    invoke-interface {v6, v7, v9, v8}, Lcom/mediatek/mms/ext/IMmsUtils;->getActivatedButtonIconBySlotId(IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3438
    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 3439
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3443
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    if-nez v3, :cond_c

    .line 3444
    const/4 v1, 0x0

    .line 3445
    const/4 v5, 0x0

    .line 3459
    :cond_8
    :goto_4
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 3460
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v6, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 3462
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    if-eqz v6, :cond_1

    .line 3463
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 3405
    .end local v0           #bigBtnEnable:Z
    .end local v1           #bigEnable:Z
    .end local v4           #smallBtnEnable:Z
    .end local v5           #smallEnable:Z
    :cond_9
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    .line 3421
    .restart local v0       #bigBtnEnable:Z
    .restart local v1       #bigEnable:Z
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #smallBtnEnable:Z
    .restart local v5       #smallEnable:Z
    :cond_a
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 3422
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v6, v10

    goto :goto_2

    .line 3434
    :cond_b
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    .line 3435
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v6, v9

    goto :goto_3

    .line 3446
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_c
    if-ne v3, v9, :cond_d

    .line 3447
    move v1, p1

    .line 3448
    const/4 v5, 0x0

    .line 3449
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    if-eqz v6, :cond_8

    .line 3450
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v6, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 3451
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 3453
    :cond_d
    const/4 v6, 0x2

    if-ne v3, v6, :cond_8

    .line 3454
    move v1, p1

    .line 3455
    move v5, p1

    goto :goto_4
.end method
