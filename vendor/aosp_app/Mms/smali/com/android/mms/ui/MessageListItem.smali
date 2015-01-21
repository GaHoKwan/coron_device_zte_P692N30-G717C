.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/LinearLayout;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mms/ui/SlideViewInterface;
.implements Lcom/mediatek/mms/ext/IMmsMessageListItemHost;
.implements Lcom/mediatek/mms/ipmessage/INotificationsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;
    }
.end annotation


# static fields
.field private static final COMP_NUMBER:F = 0.5f

.field private static final DEBUG:Z = false

.field private static final DEBUG_DONT_LOAD_IMAGES:Z = false

.field public static final EXTRA_URLS:Ljava/lang/String; = "com.android.mms.ExtraUrls"

.field private static final GIF_VIEW_SIZE_BIG:I = 0xa0

.field private static final GIF_VIEW_SIZE_SMALL:I = 0x80

.field private static final IPMSG_TAG:Ljava/lang/String; = "Mms/ipmsg/MessageListItem"

.field static final ITEM_CLICK:I = 0x5

.field static final ITEM_MARGIN:I = 0x32

.field public static final LOAD_ALL_MESSAGES:I = 0x15

.field private static final MAX_SCALE:F = 0.4f

.field private static final MIN_SCALE:F = 0.3f

.field static final MSG_LIST_DETAILS:I = 0x3

.field static final MSG_LIST_EDIT:I = 0x1

.field static final MSG_LIST_EDIT_MMS:I = 0x1

.field static final MSG_LIST_EDIT_SMS:I = 0x2

.field static final MSG_LIST_PLAY:I = 0x2

.field public static final MSG_LIST_RESEND_IPMSG:I = 0x14

.field private static final M_TAG:Ljava/lang/String; = "Mms/MessageListItem"

.field private static final PADDING_LEFT_THR:I = 0x3

.field private static final PADDING_LEFT_TWE:I = 0xd

.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan; = null

.field private static final TAG:Ljava/lang/String; = "MessageListItem"

.field public static final TAG_DIVIDER:Ljava/lang/String; = "Mms/divider"

.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;

.field private static sImageButtonCanClick:Z


# instance fields
.field private isRegistNotificationListener:Z

.field private mActionButton:Landroid/widget/ImageView;

.field private mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

.field private mAudioIcon:Landroid/widget/ImageView;

.field private mAudioInfo:Landroid/widget/TextView;

.field private mAvatar:Lcom/android/mms/ui/QuickContactDivot;

.field private mBodyTextView:Landroid/widget/TextView;

.field private mCaption:Landroid/widget/TextView;

.field mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mContentSize:Landroid/widget/TextView;

.field private mDateView:Landroid/widget/TextView;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mDeliveredIndicator:Landroid/widget/ImageView;

.field private mDetailsIndicator:Landroid/widget/ImageView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mExpireText:Landroid/widget/TextView;

.field private mFileAttachmentView:Landroid/view/View;

.field private mGifView:Lcom/mediatek/ipmsg/ui/GifView;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerTime:J

.field private mImageContent:Landroid/widget/ImageView;

.field private mImageDownloadProgressBar:Landroid/widget/ProgressBar;

.field private mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

.field private mImageLocation:Landroid/widget/ImageView;

.field private mImageView:Landroid/widget/ImageView;

.field private mImportantIndicator:Landroid/widget/ImageView;

.field private mInvalidContactToast:Landroid/widget/Toast;

.field private mIpAudioView:Landroid/view/View;

.field private mIpDynamicEmoticonView:Landroid/view/View;

.field private mIpImageSizeBg:Landroid/view/View;

.field private mIpImageView:Landroid/view/View;

.field private mIpLocationView:Landroid/view/View;

.field private mIpVCalendarView:Landroid/view/View;

.field private mIpVCardView:Landroid/view/View;

.field private mIpmsgAcceptButton:Landroid/widget/TextView;

.field private mIpmsgCancelDownloadButton:Landroid/widget/ImageView;

.field private mIpmsgDownloadFileProgress:Landroid/widget/ProgressBar;

.field private mIpmsgFileDownloadContrller:Landroid/view/View;

.field private mIpmsgFileDownloadView:Landroid/view/View;

.field private mIpmsgFileSize:Landroid/widget/TextView;

.field private mIpmsgRejectButton:Landroid/widget/TextView;

.field private mIpmsgResendButton:Landroid/widget/TextView;

.field private mIsGroupMms:Z

.field private mIsLastItemInList:Z

.field private mIsTel:Z

.field private mLeadingMarginSpan:Landroid/text/style/LeadingMarginSpan;

.field private mLoadAllMessages:Landroid/widget/ImageView;

.field private mLoadAllMessagesView:Landroid/view/View;

.field private mLocationAddr:Landroid/widget/TextView;

.field private mLockedIndicator:Landroid/widget/ImageView;

.field private mMediaPlayView:Landroid/widget/ImageView;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private mMmsCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

.field private mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

.field private mMmsView:Landroid/view/View;

.field private mOnLineDivider:Landroid/view/View;

.field private mOnLineDividertextView:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathLeft:Landroid/graphics/Path;

.field private mPathRight:Landroid/graphics/Path;

.field private mPosition:I

.field private mPresenter:Lcom/android/mms/ui/Presenter;

.field public mSelectedBox:Landroid/widget/CheckBox;

.field private mSendNameSeparator:Landroid/view/View;

.field private mSenderName:Landroid/widget/TextView;

.field private mSenderPhoto:Landroid/widget/QuickContactBadge;

.field private mSimDivider:Landroid/view/View;

.field private mSimStatus:Landroid/widget/TextView;

.field private mSlideShowButton:Landroid/widget/ImageButton;

.field private mSpan:Landroid/text/style/LineHeightSpan;

.field mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

.field private mTimeDivider:Landroid/view/View;

.field private mTimeDividerStr:Landroid/widget/TextView;

.field private mUnreadDivider:Landroid/view/View;

.field private mUnreadDividerStr:Landroid/widget/TextView;

.field private mVCalendarInfo:Landroid/widget/TextView;

.field private mVCardInfo:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 225
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    .line 273
    sput-boolean v1, Lcom/android/mms/ui/MessageListItem;->sImageButtonCanClick:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 352
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 271
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandlerTime:J

    .line 332
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListItem;->isRegistNotificationListener:Z

    .line 346
    iput-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    .line 347
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsCancelDownload;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 1121
    new-instance v0, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 1129
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 1132
    iput-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 1968
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListItem;->mIsTel:Z

    .line 353
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    .line 355
    sget-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 358
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->initPlugin(Landroid/content/Context;)V

    .line 359
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 362
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 271
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/mms/ui/MessageListItem;->mHandlerTime:J

    .line 332
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->isRegistNotificationListener:Z

    .line 346
    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    .line 347
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsCancelDownload;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 1121
    new-instance v1, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 1129
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x1030046

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 1132
    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 1968
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mIsTel:Z

    .line 364
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 365
    .local v0, color:I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 366
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    .line 367
    sget-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->initPlugin(Landroid/content/Context;)V

    .line 371
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget v0, p0, Lcom/android/mms/ui/MessageListItem;->mPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->recomposeFailedMessage()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/MessageListItem;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->copyTextSingleAttachment(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/MessageListItem;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->copySingleAttachment(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/MessageListItem;)Lcom/mediatek/mms/ext/IMmsCancelDownload;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/MessageListItem;)Lcom/mediatek/mms/ext/IMmsMessageListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage()V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 212
    sget-boolean v0, Lcom/android/mms/ui/MessageListItem;->sImageButtonCanClick:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 212
    sput-boolean p0, Lcom/android/mms/ui/MessageListItem;->sImageButtonCanClick:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindCommonMessage()V
    .locals 15

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 824
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->hideAllButton()Z

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mExpireText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mExpireText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 837
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    if-eqz v0, :cond_2

    .line 838
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSimMsg()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 839
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v12

    .line 841
    .local v12, isSelf:Z
    if-eqz v12, :cond_5

    const/4 v9, 0x0

    .line 842
    .local v9, addr:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v9, v12}, Lcom/android/mms/ui/MessageListItem;->updateAvatarView(Ljava/lang/String;Z)V

    .line 852
    .end local v9           #addr:Ljava/lang/String;
    .end local v12           #isSelf:Z
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v10

    .line 855
    .local v10, formattedMessage:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSimStatus()Ljava/lang/CharSequence;

    move-result-object v11

    .line 858
    .local v11, formattedSimStatus:Ljava/lang/CharSequence;
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 860
    .local v14, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-nez v10, :cond_3

    .line 861
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 868
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->formatSimStatus(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 869
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedSimStatus(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 874
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 875
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 906
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 907
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 924
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSimMsg()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 925
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 933
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 934
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageItem;->setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V

    .line 936
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideFileAttachmentViewIfNeeded()V

    .line 1021
    :goto_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 1023
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1024
    return-void

    .line 841
    .end local v10           #formattedMessage:Ljava/lang/CharSequence;
    .end local v11           #formattedSimStatus:Ljava/lang/CharSequence;
    .end local v14           #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .restart local v12       #isSelf:Z
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 844
    .end local v12           #isSelf:Z
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 877
    .restart local v10       #formattedMessage:Ljava/lang/CharSequence;
    .restart local v11       #formattedSimStatus:Ljava/lang/CharSequence;
    .restart local v14       #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 909
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b032b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 914
    .local v2, dateStr:Ljava/lang/String;
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 915
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v5, v5, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mSmsSentDate:J

    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v8, v8, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-interface/range {v0 .. v8}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->getSentDateStr(Landroid/content/Context;Ljava/lang/String;JIJI)Ljava/lang/String;

    move-result-object v2

    .line 918
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 912
    .end local v2           #dateStr:Ljava/lang/String;
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->buildTimestampLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 928
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 943
    :cond_c
    const/4 v13, 0x0

    .line 944
    .local v13, isShowFileAttachmentView:Z
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    sget v1, Lcom/android/mms/ui/MessageItem;->ATTACHMENT_TYPE_NOT_LOADED:I

    if-eq v0, v1, :cond_13

    .line 946
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 947
    const/4 v13, 0x1

    .line 948
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 950
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->showFileAttachmentView(Ljava/util/ArrayList;)V

    .line 988
    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_14

    if-nez v13, :cond_14

    .line 989
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageItem;->setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V

    goto/16 :goto_5

    .line 954
    :cond_e
    if-eqz v14, :cond_12

    .line 955
    invoke-interface {v14}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 957
    const-string v0, "MessageListItem"

    const-string v1, "mMmsAttachmentEnhancePlugin.isSupportAttachmentEnhance() == true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->showFileAttachmentView(Ljava/util/ArrayList;)V

    .line 960
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    .line 962
    :cond_f
    const-string v0, "MessageListItem"

    const-string v1, "hideFileAttachmentViewIfNeeded "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideFileAttachmentViewIfNeeded()V

    .line 976
    :cond_10
    :goto_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 978
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V

    .line 979
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 980
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setMediaOnClickListener(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_7

    .line 967
    :cond_11
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideFileAttachmentViewIfNeeded()V

    .line 968
    const-string v0, "MessageListItem"

    const-string v1, "mMmsAttachmentEnhancePlugin.isSupportAttachmentEnhance() == false"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 973
    :cond_12
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideFileAttachmentViewIfNeeded()V

    .line 974
    const-string v0, "MessageListItem"

    const-string v1, "mMmsAttachmentEnhancePlugin= null"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 984
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 986
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideFileAttachmentViewIfNeeded()V

    goto/16 :goto_7

    .line 1005
    :cond_14
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-nez v0, :cond_15

    .line 1006
    const-string v0, "MmsThumbnailPresenter"

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v1, p0, v3}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    .line 1013
    :goto_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    if-nez v0, :cond_16

    .line 1014
    new-instance v0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    .line 1018
    :goto_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Presenter;->present(Lcom/android/mms/util/ItemLoadedCallback;)V

    goto/16 :goto_5

    .line 1010
    :cond_15
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Presenter;->setModel(Lcom/android/mms/model/Model;)V

    .line 1011
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/Presenter;->setView(Lcom/android/mms/ui/ViewInterface;)V

    goto :goto_9

    .line 1016
    :cond_16
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->reset(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_a
.end method

.method private bindDividers(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 6
    .parameter "msgItem"
    .parameter "isDeleteMode"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 3220
    const-string v0, "Mms/divider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listItem.bindDividers(): draw time divider ?= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mIsDrawTimeDivider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    const-string v0, "Mms/divider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listItem.bindDividers(): draw unread divider ?= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mIsDrawUnreadDivider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unread count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/mms/ui/MessageItem;->mUnreadCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3223
    const-string v0, "Mms/divider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listItem.bindDividers(): draw online divider ?= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mIsDrawUnreadDivider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unread count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/mms/ui/MessageItem;->mUnreadCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3226
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mIsDrawTimeDivider:Z

    if-eqz v0, :cond_3

    .line 3227
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3228
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDividerStr:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mTimeDividerString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3233
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mUnreadDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3234
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mIsDrawUnreadDivider:Z

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mUnreadCount:I

    if-lez v0, :cond_4

    .line 3235
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mUnreadDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3236
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mUnreadDividerStr:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0143

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/mms/ui/MessageItem;->mUnreadCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3244
    :cond_1
    :goto_1
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnLineDivider:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mIsDrawOnlineDivider:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3246
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnLineDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3247
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnLineDividertextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mOnlineString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3252
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLoadAllMessagesView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3253
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mIsDrawLoadAllButton:Z

    if-eqz v0, :cond_6

    .line 3254
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLoadAllMessagesView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3255
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLoadAllMessages:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$19;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$19;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3270
    :cond_2
    :goto_3
    return-void

    .line 3230
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3240
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mUnreadDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 3249
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnLineDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 3266
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLoadAllMessagesView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3267
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLoadAllMessages:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method private bindNotifInd()V
    .locals 11

    .prologue
    const v10, 0x7f0f0025

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 569
    invoke-direct {p0, v8}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 571
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideFileAttachmentViewIfNeeded()V

    .line 574
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    add-int/lit16 v1, v1, 0x3ff

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0241

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 581
    .local v6, msgSizeText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mExpireText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mExpireText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f0b02c6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x7f0b02cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v3, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mExpireText:Landroid/widget/TextView;

    move-object v3, v6

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->setNotifyContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)Z

    .line 599
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->formatSimStatus(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    const-string v0, "MessageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageListItem SimId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mSimId:I

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->showSimType(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 605
    const-string v0, "MessageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindNotifInd: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", downloading Status ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMmsDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMmsDownloadStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 634
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 635
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 636
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 639
    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    new-instance v0, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->showDownloadButton()Z

    .line 732
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 734
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 745
    return-void

    .line 590
    :cond_0
    const-string v2, ""

    goto/16 :goto_0

    .line 610
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->showDownloadingAttachment()V

    .line 612
    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method private buildTimestampLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "timestamp"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 749
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mIsGroupMms:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    :cond_0
    :goto_0
    return-object p1

    .line 755
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSenderName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNameSeparator:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 756
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNameSeparator:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 757
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSenderName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSenderName:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 760
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mGroupContact:Lcom/android/mms/data/Contact;

    if-eqz v2, :cond_2

    .line 761
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mGroupContact:Lcom/android/mms/data/Contact;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 765
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 766
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mGroupContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 771
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v1, v8}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 763
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 773
    .restart local v1       #number:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mGroupContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 774
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mGroupContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 776
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v1, v8}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 16
    .parameter "part"
    .parameter "filename"

    .prologue
    .line 2607
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v11

    .line 2608
    .local v11, uri:Landroid/net/Uri;
    const-string v12, "MessageListItem"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "copyPart, copy part into sdcard uri "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    const/4 v8, 0x0

    .line 2611
    .local v8, input:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 2613
    .local v6, fout:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2614
    .local v9, mContentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v9, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 2615
    instance-of v12, v8, Ljava/io/FileInputStream;

    if-eqz v12, :cond_5

    .line 2616
    move-object v0, v8

    check-cast v0, Ljava/io/FileInputStream;

    move-object v5, v0

    .line 2619
    .local v5, fin:Ljava/io/FileInputStream;
    const-string v2, ""

    .line 2620
    .local v2, dir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/mms/ui/MessageUtils;->getStorageFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v4

    .line 2621
    .local v4, file:Ljava/io/File;
    if-nez v4, :cond_2

    .line 2622
    const/4 v12, 0x0

    .line 2641
    if-eqz v8, :cond_0

    .line 2643
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 2650
    :cond_0
    if-eqz v6, :cond_1

    .line 2652
    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 2660
    .end local v2           #dir:Ljava/lang/String;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fin:Ljava/io/FileInputStream;
    .end local v9           #mContentResolver:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return v12

    .line 2624
    .restart local v2       #dir:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v9       #mContentResolver:Landroid/content/ContentResolver;
    :cond_2
    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 2625
    .end local v6           #fout:Ljava/io/FileOutputStream;
    .local v7, fout:Ljava/io/FileOutputStream;
    const/16 v12, 0x1f40

    :try_start_4
    new-array v1, v12, [B

    .line 2626
    .local v1, buffer:[B
    const/4 v10, 0x0

    .line 2627
    .local v10, size:I
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v12, -0x1

    if-eq v10, v12, :cond_4

    .line 2628
    const/4 v12, 0x0

    invoke-virtual {v7, v1, v12, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 2636
    .end local v1           #buffer:[B
    .end local v10           #size:I
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 2638
    .end local v2           #dir:Ljava/lang/String;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fin:Ljava/io/FileInputStream;
    .end local v7           #fout:Ljava/io/FileOutputStream;
    .end local v9           #mContentResolver:Landroid/content/ContentResolver;
    .local v3, e:Ljava/io/IOException;
    .restart local v6       #fout:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    const-string v12, "MessageListItem"

    const-string v13, "IOException caught while opening or reading stream"

    invoke-static {v12, v13, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2639
    const/4 v12, 0x0

    .line 2641
    if-eqz v8, :cond_3

    .line 2643
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 2650
    :cond_3
    if-eqz v6, :cond_1

    .line 2652
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 2653
    :catch_1
    move-exception v3

    .line 2655
    const-string v12, "MessageListItem"

    const-string v13, "IOException caught while closing stream"

    invoke-static {v12, v13, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2656
    :goto_3
    const/4 v12, 0x0

    goto :goto_0

    .line 2633
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #dir:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v7       #fout:Ljava/io/FileOutputStream;
    .restart local v9       #mContentResolver:Landroid/content/ContentResolver;
    .restart local v10       #size:I
    :cond_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v12, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v6, v7

    .line 2641
    .end local v1           #buffer:[B
    .end local v2           #dir:Ljava/lang/String;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fin:Ljava/io/FileInputStream;
    .end local v7           #fout:Ljava/io/FileOutputStream;
    .end local v10           #size:I
    .restart local v6       #fout:Ljava/io/FileOutputStream;
    :cond_5
    if-eqz v8, :cond_6

    .line 2643
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 2650
    :cond_6
    if-eqz v6, :cond_7

    .line 2652
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 2660
    :cond_7
    const/4 v12, 0x1

    goto :goto_0

    .line 2641
    .end local v9           #mContentResolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v12

    :goto_4
    if-eqz v8, :cond_8

    .line 2643
    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 2650
    :cond_8
    if-eqz v6, :cond_9

    .line 2652
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 2641
    :cond_9
    throw v12

    .line 2644
    :catch_2
    move-exception v3

    .line 2646
    .restart local v3       #e:Ljava/io/IOException;
    const-string v12, "MessageListItem"

    const-string v13, "IOException caught while closing stream"

    invoke-static {v12, v13, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2647
    :goto_5
    const/4 v12, 0x0

    goto :goto_0

    .line 2653
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 2655
    .restart local v3       #e:Ljava/io/IOException;
    const-string v12, "MessageListItem"

    const-string v13, "IOException caught while closing stream"

    invoke-static {v12, v13, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2644
    :catch_4
    move-exception v3

    .line 2646
    const-string v12, "MessageListItem"

    const-string v13, "IOException caught while closing stream"

    invoke-static {v12, v13, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2644
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #dir:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v9       #mContentResolver:Landroid/content/ContentResolver;
    :catch_5
    move-exception v3

    .line 2646
    .restart local v3       #e:Ljava/io/IOException;
    const-string v12, "MessageListItem"

    const-string v13, "IOException caught while closing stream"

    invoke-static {v12, v13, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2653
    .end local v3           #e:Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 2655
    .restart local v3       #e:Ljava/io/IOException;
    const-string v12, "MessageListItem"

    const-string v13, "IOException caught while closing stream"

    invoke-static {v12, v13, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2644
    .end local v2           #dir:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fin:Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    .line 2646
    .restart local v3       #e:Ljava/io/IOException;
    const-string v12, "MessageListItem"

    const-string v13, "IOException caught while closing stream"

    invoke-static {v12, v13, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2653
    .end local v3           #e:Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 2655
    .restart local v3       #e:Ljava/io/IOException;
    const-string v12, "MessageListItem"

    const-string v13, "IOException caught while closing stream"

    invoke-static {v12, v13, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2641
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #dir:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v7       #fout:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7           #fout:Ljava/io/FileOutputStream;
    .restart local v6       #fout:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 2636
    .end local v2           #dir:Ljava/lang/String;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fin:Ljava/io/FileInputStream;
    .end local v9           #mContentResolver:Landroid/content/ContentResolver;
    :catch_9
    move-exception v3

    goto/16 :goto_2
.end method

.method private copySingleAttachment(J)Z
    .locals 21
    .parameter "msgId"

    .prologue
    .line 2523
    const/16 v17, 0x0

    .line 2527
    .local v17, result:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2533
    .local v5, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v5, :cond_0

    .line 2534
    const/16 v18, 0x0

    .line 2603
    .end local v5           #body:Lcom/google/android/mms/pdu/PduBody;
    :goto_0
    return v18

    .line 2528
    :catch_0
    move-exception v8

    .line 2529
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v18, "MessageListItem"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2530
    const/16 v18, 0x0

    goto :goto_0

    .line 2536
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    .restart local v5       #body:Lcom/google/android/mms/pdu/PduBody;
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v16

    .line 2537
    .local v16, partNum:I
    const/4 v15, 0x0

    .line 2538
    .local v15, part:Lcom/google/android/mms/pdu/PduPart;
    const/4 v13, 0x0

    .line 2540
    .local v13, mSrc:Ljava/lang/String;
    const/4 v12, 0x0

    .line 2542
    .local v12, mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 2548
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_2

    .line 2549
    invoke-virtual {v5, v10}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 2550
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v7

    .line 2551
    .local v7, cl:[B
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v14

    .line 2552
    .local v14, name:[B
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v6

    .line 2553
    .local v6, ci:[B
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v9

    .line 2555
    .local v9, fn:[B
    if-eqz v7, :cond_3

    .line 2556
    new-instance v13, Ljava/lang/String;

    .end local v13           #mSrc:Ljava/lang/String;
    invoke-direct {v13, v7}, Ljava/lang/String;-><init>([B)V

    .line 2568
    .restart local v13       #mSrc:Ljava/lang/String;
    :goto_2
    const/4 v3, 0x0

    .line 2570
    .local v3, PartUri:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 2571
    const-string v18, "MessageListItem"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "part Uri = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2577
    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v4

    .line 2579
    .local v4, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    const/4 v11, 0x0

    .local v11, k:I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 2580
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/FileAttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 2581
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/FileAttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_9

    .line 2583
    const/16 v17, 0x1

    .line 2591
    :cond_1
    if-eqz v17, :cond_7

    .line 2596
    .end local v3           #PartUri:Ljava/lang/String;
    .end local v4           #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    .end local v6           #ci:[B
    .end local v7           #cl:[B
    .end local v9           #fn:[B
    .end local v11           #k:I
    .end local v14           #name:[B
    :cond_2
    if-eqz v17, :cond_a

    .line 2597
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/ui/MessageListItem;->formatFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2598
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/android/mms/ui/MessageListItem;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z

    :goto_4
    move/from16 v18, v17

    .line 2603
    goto/16 :goto_0

    .line 2543
    .end local v10           #i:I
    :catch_1
    move-exception v8

    .line 2544
    .restart local v8       #e:Lcom/google/android/mms/MmsException;
    const-string v18, "MessageListItem"

    const-string v19, "Create from pdubody exception!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 2557
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    .restart local v6       #ci:[B
    .restart local v7       #cl:[B
    .restart local v9       #fn:[B
    .restart local v10       #i:I
    .restart local v14       #name:[B
    :cond_3
    if-eqz v14, :cond_4

    .line 2558
    new-instance v13, Ljava/lang/String;

    .end local v13           #mSrc:Ljava/lang/String;
    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    .restart local v13       #mSrc:Ljava/lang/String;
    goto/16 :goto_2

    .line 2559
    :cond_4
    if-eqz v6, :cond_5

    .line 2560
    new-instance v13, Ljava/lang/String;

    .end local v13           #mSrc:Ljava/lang/String;
    invoke-direct {v13, v6}, Ljava/lang/String;-><init>([B)V

    .restart local v13       #mSrc:Ljava/lang/String;
    goto/16 :goto_2

    .line 2561
    :cond_5
    if-eqz v9, :cond_7

    .line 2562
    new-instance v13, Ljava/lang/String;

    .end local v13           #mSrc:Ljava/lang/String;
    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    .restart local v13       #mSrc:Ljava/lang/String;
    goto/16 :goto_2

    .line 2574
    .restart local v3       #PartUri:Ljava/lang/String;
    :cond_6
    const-string v18, "MessageListItem"

    const-string v19, "PartUri = null"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    .end local v3           #PartUri:Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2587
    .restart local v3       #PartUri:Ljava/lang/String;
    .restart local v4       #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    .restart local v11       #k:I
    :cond_8
    const/16 v17, 0x0

    .line 2579
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2600
    .end local v3           #PartUri:Ljava/lang/String;
    .end local v4           #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    .end local v6           #ci:[B
    .end local v7           #cl:[B
    .end local v9           #fn:[B
    .end local v11           #k:I
    .end local v14           #name:[B
    :cond_a
    const-string v18, "MessageListItem"

    const-string v19, "There is no a correct part! "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private copyTextPart([BLjava/lang/String;)Z
    .locals 7
    .parameter "data"
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    .line 2496
    const/4 v2, 0x0

    .line 2498
    .local v2, fout:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/mms/ui/MessageUtils;->getStorageFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2499
    .local v1, file:Ljava/io/File;
    if-nez v1, :cond_1

    .line 2508
    if-eqz v2, :cond_0

    .line 2510
    :try_start_1
    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2518
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return v4

    .line 2502
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2503
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .local v3, fout:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_3
    array-length v6, p1

    invoke-virtual {v3, p1, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 2508
    if-eqz v3, :cond_2

    .line 2510
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2518
    :cond_2
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 2504
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2505
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_5
    const-string v5, "MessageListItem"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2508
    if-eqz v2, :cond_0

    .line 2510
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 2511
    :catch_1
    move-exception v0

    .line 2513
    const-string v5, "MessageListItem"

    const-string v6, "IOException caught while closing stream"

    :goto_2
    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2508
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_3

    .line 2510
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2508
    :cond_3
    throw v5

    .line 2511
    :catch_2
    move-exception v0

    .line 2513
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MessageListItem"

    const-string v6, "IOException caught while closing stream"

    goto :goto_2

    .line 2511
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    :catch_3
    move-exception v0

    .line 2513
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MessageListItem"

    const-string v6, "IOException caught while closing stream"

    goto :goto_2

    .line 2511
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .line 2513
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MessageListItem"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 2514
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 2508
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 2504
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private copyTextSingleAttachment(J)Z
    .locals 13
    .parameter "msgId"

    .prologue
    const/4 v11, 0x0

    .line 2439
    const/4 v9, 0x0

    .line 2443
    .local v9, result:Z
    :try_start_0
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2448
    .local v1, body:Lcom/google/android/mms/pdu/PduBody;
    const/4 v4, 0x0

    .line 2450
    .local v4, i:I
    if-nez v1, :cond_0

    move v10, v11

    .line 2492
    .end local v1           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v4           #i:I
    :goto_0
    return v10

    .line 2444
    :catch_0
    move-exception v3

    .line 2445
    .local v3, e:Lcom/google/android/mms/MmsException;
    const-string v10, "MessageListItem"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v10, v11

    .line 2446
    goto :goto_0

    .line 2454
    .end local v3           #e:Lcom/google/android/mms/MmsException;
    .restart local v1       #body:Lcom/google/android/mms/pdu/PduBody;
    .restart local v4       #i:I
    :cond_0
    const/4 v8, 0x0

    .line 2455
    .local v8, part:Lcom/google/android/mms/pdu/PduPart;
    const/4 v7, 0x0

    .line 2456
    .local v7, mSrc:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2458
    .local v5, mContentType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2461
    .local v6, mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_start_1
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v10, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 2467
    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v0

    .line 2469
    .local v0, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    const/4 v2, 0x0

    .line 2470
    .local v2, data:[B
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v10}, Lcom/android/mms/model/FileAttachmentModel;->getData()[B

    move-result-object v2

    .line 2472
    new-instance v5, Ljava/lang/String;

    .end local v5           #mContentType:Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v10}, Lcom/android/mms/model/FileAttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2475
    .restart local v5       #mContentType:Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v10}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    .line 2478
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageListItem;->formatFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2480
    if-nez v7, :cond_1

    .line 2481
    const-string v10, "MessageListItem"

    const-string v12, "copyTextSingleAttachment() File name == null"

    invoke-static {v10, v12}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v11

    .line 2482
    goto :goto_0

    .line 2462
    .end local v0           #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    .end local v2           #data:[B
    :catch_1
    move-exception v3

    .line 2463
    .restart local v3       #e:Lcom/google/android/mms/MmsException;
    const-string v10, "MessageListItem"

    const-string v12, "Create from pdubody exception!"

    invoke-static {v10, v12}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v11

    .line 2464
    goto :goto_0

    .line 2485
    .end local v3           #e:Lcom/google/android/mms/MmsException;
    .restart local v0       #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    .restart local v2       #data:[B
    :cond_1
    const-string v10, "text/plain"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "text/html"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2486
    const-string v10, "MessageListItem"

    const-string v12, "copyTextSingleAttachment() It is not a text or html attachment"

    invoke-static {v10, v12}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v11

    .line 2487
    goto :goto_0

    .line 2489
    :cond_2
    invoke-direct {p0, v2, v7}, Lcom/android/mms/ui/MessageListItem;->copyTextPart([BLjava/lang/String;)Z

    move-result v9

    .line 2491
    const-string v10, "MessageListItem"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyTextSingleAttachment() result is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v9

    .line 2492
    goto/16 :goto_0
.end method

.method private drawDownloadFileView(Lcom/android/mms/ui/MessageItem;II)V
    .locals 9
    .parameter "msgItem"
    .parameter "ipMsgStatus"
    .parameter "ipMsgType"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 3455
    const-string v3, "Mms/ipmsg/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawDownloadFileView(): msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ipMsgStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ipMsgType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadContrller:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 3458
    :cond_0
    const-string v3, "Mms/ipmsg/MessageListItem"

    const-string v4, "drawDownloadFileView(): mIpmsgFileDownloadContrller is NULL!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3569
    :cond_1
    :goto_0
    return-void

    .line 3462
    :cond_2
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/mms/ipmessage/MessageManager;->getIpMessageStatusString(J)Ljava/lang/String;

    move-result-object v2

    .line 3463
    .local v2, statusText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3464
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3465
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3470
    :goto_1
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v0, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    .line 3471
    .local v0, ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3476
    :pswitch_1
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/mms/ipmessage/MessageManager;->getDownloadProcess(J)I

    move-result v1

    .line 3477
    .local v1, progress:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgDownloadFileProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3478
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileSize:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getSize()I

    move-result v5

    mul-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3479
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadContrller:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3480
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3481
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgCancelDownloadButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 3482
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgCancelDownloadButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/mms/ui/MessageListItem$21;

    invoke-direct {v4, p0, p1}, Lcom/android/mms/ui/MessageListItem$21;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 3467
    .end local v0           #ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    .end local v1           #progress:I
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 3496
    .restart local v0       #ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    :pswitch_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadContrller:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3497
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3498
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgResendButton:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 3499
    const-string v3, "Mms/ipmsg/MessageListItem"

    const-string v4, "drawDownloadFileView(): Set resend button OnClickListener."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3500
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgResendButton:Landroid/widget/TextView;

    new-instance v4, Lcom/android/mms/ui/MessageListItem$22;

    invoke-direct {v4, p0, p1}, Lcom/android/mms/ui/MessageListItem$22;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 3514
    :pswitch_3
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadContrller:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3515
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3517
    const-string v3, "Mms/ipmsg/MessageListItem"

    const-string v4, "drawDownloadFileView(): Set accept and reject button OnClickListener."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3518
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgAcceptButton:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 3519
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgAcceptButton:Landroid/widget/TextView;

    new-instance v4, Lcom/android/mms/ui/MessageListItem$23;

    invoke-direct {v4, p0, p1}, Lcom/android/mms/ui/MessageListItem$23;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3530
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgRejectButton:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 3531
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgRejectButton:Landroid/widget/TextView;

    new-instance v4, Lcom/android/mms/ui/MessageListItem$24;

    invoke-direct {v4, p0, p1}, Lcom/android/mms/ui/MessageListItem$24;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 3547
    :pswitch_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadContrller:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3548
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3550
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3552
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3553
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3555
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3557
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3558
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3559
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 3563
    :pswitch_5
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadContrller:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3564
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 3471
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    const/16 v2, 0x8

    .line 1180
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 1195
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1198
    :goto_0
    return-void

    .line 1184
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->updateSlideShowButton(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    .line 1187
    :pswitch_1
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    const-string v0, "MessageListItem"

    const-string v1, "msgItem is image and text"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->updateSlideShowButton(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .locals 10
    .parameter "msgItem"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1708
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->isActualPlugin()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1709
    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v3, :cond_4

    .line 1710
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mImportantIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1731
    :goto_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->isActualPlugin()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_8

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSimMsg()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1733
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    invoke-virtual {v3}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getStatus()I

    move-result v0

    .line 1734
    .local v0, ipMsgStatus:I
    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessageStatusResourceId(I)I

    move-result v2

    .line 1735
    .local v2, statusResId:I
    if-eqz v2, :cond_7

    .line 1736
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1737
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1738
    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_1

    .line 1739
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/mms/ui/MessageListItem$16;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessageListItem$16;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1775
    .end local v0           #ipMsgStatus:I
    .end local v2           #statusResId:I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->drawMassTextMsgStatus(Landroid/content/Context;ZJ)V

    .line 1782
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->INFO:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-eq v3, v4, :cond_2

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v3, v4, :cond_e

    .line 1785
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    const v4, 0x7f0200e8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1786
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1791
    :goto_2
    const-string v3, "MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessageListItem SimId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/mms/ui/MessageItem;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p1, Lcom/android/mms/ui/MessageItem;->mSimId:I

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    invoke-interface {v3, v4, v5, v6}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->showSimType(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 1793
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-interface {v3}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->isEnableShowDualTime()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSimMsg()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1801
    :cond_3
    return-void

    .line 1712
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mImportantIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1715
    :cond_5
    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v3, :cond_6

    .line 1716
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    const v4, 0x7f0200a9

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1717
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1718
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1720
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1721
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1747
    .restart local v0       #ipMsgStatus:I
    .restart local v2       #statusResId:I
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1749
    .end local v0           #ipMsgStatus:I
    .end local v2           #statusResId:I
    :cond_8
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v3, v4, :cond_b

    .line 1751
    :cond_a
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    const v4, 0x7f0200a8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1752
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1753
    :cond_b
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v3, v4, :cond_c

    .line 1756
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 1760
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    const v4, 0x7f0200f3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1761
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1764
    :cond_c
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/mms/ui/MessageUtils;->getStatusResourceId(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I

    move-result v1

    .line 1765
    .local v1, resId:I
    if-lez v1, :cond_d

    .line 1766
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 1767
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1768
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1770
    :cond_d
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1788
    .end local v1           #resId:I
    :cond_e
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private formatFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "fileName"

    .prologue
    .line 2678
    if-nez p1, :cond_0

    .line 2679
    const-string v3, "MessageListItem"

    const-string v4, "In formatFileName filename = null"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    const/4 v3, 0x0

    .line 2696
    :goto_0
    return-object v3

    .line 2683
    :cond_0
    const/4 v0, 0x0

    .line 2685
    .local v0, extension:Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, index:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2686
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2687
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2689
    :cond_1
    const-string v2, "[:\\/?,. ]"

    .line 2690
    .local v2, regex:Ljava/lang/String;
    const-string v3, "[:\\/?,. ]"

    const-string v4, "_"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2691
    const-string v3, "<"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2692
    const-string v3, ">"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2694
    const-string v3, "MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNameFromPart, fileName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extension is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "msgItem"
    .parameter "body"
    .parameter "subject"
    .parameter "highlight"
    .parameter "contentType"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1137
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1139
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    .line 1140
    .local v1, hasSubject:Z
    :goto_0
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v3

    .line 1141
    .local v3, parser:Lcom/android/mms/util/SmileyParser2;
    if-eqz v1, :cond_0

    .line 1142
    invoke-virtual {v3, p3}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1146
    .local v4, smilizedSubject:Ljava/lang/CharSequence;
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0249

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "%s"

    aput-object v9, v8, v6

    new-array v9, v5, [Ljava/lang/CharSequence;

    aput-object v4, v9, v6

    invoke-static {v7, v8, v9}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1148
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v3, v0}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1151
    .end local v4           #smilizedSubject:Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1153
    if-eqz p5, :cond_3

    const-string v7, "text/html"

    invoke-virtual {v7, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1154
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1155
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1167
    :cond_1
    :goto_1
    if-eqz p4, :cond_5

    .line 1168
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1169
    .local v2, m:Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1170
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {v0, v7, v8, v9, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .end local v1           #hasSubject:Z
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #parser:Lcom/android/mms/util/SmileyParser2;
    :cond_2
    move v1, v6

    .line 1139
    goto :goto_0

    .line 1157
    .restart local v1       #hasSubject:Z
    .restart local v3       #parser:Lcom/android/mms/util/SmileyParser2;
    :cond_3
    if-eqz v1, :cond_4

    .line 1158
    const-string v7, " - "

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1163
    :cond_4
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 1174
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mLeadingMarginSpan:Landroid/text/style/LeadingMarginSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1176
    return-object v0
.end method

.method private formatSimStatus(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "msgItem"

    .prologue
    .line 1987
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1991
    .local v0, buffer:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1992
    .local v2, simInfoStart:I
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/android/mms/ui/MessageItem;->mSimId:I

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->getSimInfo(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1993
    .local v1, simInfo:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1994
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1999
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2001
    return-object v0
.end method

.method private formatTimestamp(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "msgItem"
    .parameter "timestamp"

    .prologue
    const/4 v4, 0x0

    .line 1971
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1972
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1973
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b032b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1976
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, " "

    .end local p2
    :cond_1
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1977
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1981
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1983
    return-object v0
.end method

.method private hideFileAttachmentViewIfNeeded()V
    .locals 2

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2180
    :cond_0
    return-void
.end method

.method private importVCard(Lcom/android/mms/model/FileAttachmentModel;)V
    .locals 17
    .parameter "attach"

    .prologue
    .line 2183
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v5

    .line 2184
    .local v5, filenames:[Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v4, v1, v6

    .line 2185
    .local v4, file:Ljava/lang/String;
    const-string v13, ".vcf"

    invoke-virtual {v4, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2186
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 2184
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2190
    .end local v4           #file:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .line 2191
    .local v7, in:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 2193
    .local v10, out:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/FileAttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 2194
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    .line 2195
    const/16 v13, 0x1fa0

    new-array v2, v13, [B

    .line 2196
    .local v2, buf:[B
    const/4 v11, 0x0

    .line 2197
    .local v11, seg:I
    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_7

    .line 2198
    const/4 v13, 0x0

    invoke-virtual {v10, v2, v13, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2201
    .end local v2           #buf:[B
    .end local v11           #seg:I
    :catchall_0
    move-exception v13

    if-eqz v7, :cond_2

    .line 2202
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 2204
    :cond_2
    if-eqz v10, :cond_3

    .line 2205
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 2201
    :cond_3
    throw v13
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2208
    :catch_0
    move-exception v3

    .line 2209
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v13, "MessageListItem"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "importVCard, file not found "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2213
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 2214
    .local v12, tempVCard:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-gtz v13, :cond_6

    .line 2215
    :cond_5
    const-string v13, "MessageListItem"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "importVCard, file is not exists or empty "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    :goto_3
    return-void

    .line 2210
    .end local v12           #tempVCard:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 2211
    .local v3, e:Ljava/io/IOException;
    const-string v13, "MessageListItem"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "importVCard, ioexception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2218
    .end local v3           #e:Ljava/io/IOException;
    .restart local v12       #tempVCard:Ljava/io/File;
    :cond_6
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2219
    .local v8, intent:Landroid/content/Intent;
    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/FileAttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2220
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2221
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 2201
    .end local v8           #intent:Landroid/content/Intent;
    .end local v12           #tempVCard:Ljava/io/File;
    .restart local v2       #buf:[B
    .restart local v11       #seg:I
    :cond_7
    if-eqz v7, :cond_8

    .line 2202
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 2204
    :cond_8
    if-eqz v10, :cond_4

    .line 2205
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method private inflateDownloadControls()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 1114
    const v0, 0x7f0f00f1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    const v0, 0x7f0f011b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 1116
    const v0, 0x7f0f011c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    .line 1118
    :cond_0
    return-void
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 3582
    :try_start_0
    const-class v1, Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsMessageListItem;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    .line 3584
    const-string v1, "MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsMessageListItemPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3589
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-interface {v1, p0}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->init(Lcom/mediatek/mms/ext/IMmsMessageListItemHost;)V

    .line 3590
    return-void

    .line 3585
    :catch_0
    move-exception v0

    .line 3586
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsMessageListItemImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/ext/MmsMessageListItemImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    .line 3587
    const-string v1, "MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsMessageListItemPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isFileTransferStatus(I)Z
    .locals 1
    .parameter "ipMsgStatus"

    .prologue
    .line 3418
    packed-switch p1, :pswitch_data_0

    .line 3431
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3429
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3418
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isIpMessageShowContent(I)Z
    .locals 1
    .parameter "ipMsgStatus"

    .prologue
    const/4 v0, 0x1

    .line 3436
    packed-switch p1, :pswitch_data_0

    .line 3450
    :goto_0
    :pswitch_0
    return v0

    .line 3448
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3436
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openMedia(Lcom/mediatek/mms/ipmessage/message/IpMessage;J)V
    .locals 15
    .parameter "ipmessage"
    .parameter "msgId"

    .prologue
    .line 3358
    const-string v11, "Mms/ipmsg/MessageListItem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "openMedia(): msgId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3359
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_3

    move-object/from16 v8, p1

    .line 3360
    check-cast v8, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;

    .line 3361
    .local v8, msg:Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;
    invoke-virtual {v8}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3362
    const-string v11, "Mms/ipmsg/MessageListItem"

    const-string v12, "openMedia(): open vCard failed."

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3415
    .end local v8           #msg:Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;
    :goto_0
    return-void

    .line 3365
    .restart local v8       #msg:Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;
    :cond_0
    invoke-static {}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardStatus()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3366
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v12, 0x7f0b0152

    invoke-static {v11, v12}, Lcom/android/mms/ui/MessageUtils;->createLoseSDCardNotice(Landroid/content/Context;I)V

    goto :goto_0

    .line 3369
    :cond_1
    invoke-static {}, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->getAvailableBytesInFileSystemAtGivenRoot(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v8}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getSize()I

    move-result v13

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_2

    .line 3371
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v13, 0x7f0b00ae

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 3373
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "temp"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".vcf"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3375
    .local v4, dest:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3377
    .local v9, vcardFile:Ljava/io/File;
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 3378
    .local v10, vcardUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3379
    .local v6, i:Landroid/content/Intent;
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3380
    const-string v11, "text/x-vcard"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3381
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3382
    .end local v4           #dest:Ljava/lang/String;
    .end local v6           #i:Landroid/content/Intent;
    .end local v8           #msg:Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;
    .end local v9           #vcardFile:Ljava/io/File;
    .end local v10           #vcardUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_7

    move-object/from16 v8, p1

    .line 3383
    check-cast v8, Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;

    .line 3384
    .local v8, msg:Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;
    invoke-virtual {v8}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3385
    const-string v11, "Mms/ipmsg/MessageListItem"

    const-string v12, "openMedia(): open vCalendar failed."

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3388
    :cond_4
    invoke-static {}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardStatus()Z

    move-result v11

    if-nez v11, :cond_5

    .line 3389
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v12, 0x7f0b0152

    invoke-static {v11, v12}, Lcom/android/mms/ui/MessageUtils;->createLoseSDCardNotice(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3392
    :cond_5
    invoke-static {}, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->getAvailableBytesInFileSystemAtGivenRoot(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v8}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getSize()I

    move-result v13

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_6

    .line 3394
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v13, 0x7f0b00ae

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 3396
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "temp"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".vcs"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3398
    .restart local v4       #dest:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3400
    .local v2, calendarFile:Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 3401
    .local v3, calendarUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 3402
    .local v7, intent:Landroid/content/Intent;
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3403
    const-string v11, "text/x-vcalendar"

    invoke-virtual {v7, v3, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3404
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3406
    :try_start_0
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3407
    :catch_0
    move-exception v5

    .line 3408
    .local v5, e:Landroid/content/ActivityNotFoundException;
    const-string v11, "Mms/ipmsg/MessageListItem"

    const-string v12, "can\'t open calendar"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3411
    .end local v2           #calendarFile:Ljava/io/File;
    .end local v3           #calendarUri:Landroid/net/Uri;
    .end local v4           #dest:Ljava/lang/String;
    .end local v5           #e:Landroid/content/ActivityNotFoundException;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #msg:Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;
    :cond_7
    new-instance v7, Landroid/content/Intent;

    sget-object v11, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->MEDIA_DETAIL:Ljava/lang/String;

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3412
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v11, "message_id"

    move-wide/from16 v0, p2

    long-to-int v12, v0

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3413
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private recomposeFailedMessage()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 1662
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v6, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 1665
    .local v4, type:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    .line 1666
    const/16 v5, 0x14

    .line 1674
    .local v5, what:I
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 1704
    :cond_0
    :goto_1
    return-void

    .line 1667
    .end local v5           #what:I
    :cond_1
    const-string v6, "sms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1668
    const/4 v5, 0x2

    .restart local v5       #what:I
    goto :goto_0

    .line 1670
    .end local v5           #what:I
    :cond_2
    const/4 v5, 0x1

    .restart local v5       #what:I
    goto :goto_0

    .line 1678
    :cond_3
    iget-wide v6, p0, Lcom/android/mms/ui/MessageListItem;->mHandlerTime:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_4

    .line 1679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1680
    .local v1, currentTime:J
    const-string v6, "Mms/MessageListItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recomposeFailedMessage(): coming one click. currentTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mHandlerTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/mms/ui/MessageListItem;->mHandlerTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    const-string v6, "Mms/MessageListItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recomposeFailedMessage(): currentTime - mHandlerTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/mms/ui/MessageListItem;->mHandlerTime:J

    sub-long v8, v1, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    iget-wide v6, p0, Lcom/android/mms/ui/MessageListItem;->mHandlerTime:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 1684
    const-string v6, "Mms/MessageListItem"

    const-string v7, "recomposeFailedMessage(): cancel one click"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    iput-wide v1, p0, Lcom/android/mms/ui/MessageListItem;->mHandlerTime:J

    goto :goto_1

    .line 1689
    .end local v1           #currentTime:J
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mms/ui/MessageListItem;->mHandlerTime:J

    .line 1691
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 1692
    const-string v6, "Mms/MessageListItem"

    const-string v7, "recomposeFailedMessage(): sending one message"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 1694
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1696
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_5

    .line 1697
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1698
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "MSG_ID"

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v7, v7, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1699
    const-string v6, "SIM_ID"

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v7, v7, Lcom/android/mms/ui/MessageItem;->mSimId:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1700
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1702
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_5
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method

.method private sendMessage(Lcom/android/mms/ui/MessageItem;I)V
    .locals 2
    .parameter "messageItem"
    .parameter "message"

    .prologue
    .line 1269
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1270
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1271
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1272
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1274
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setIpImageItem(Lcom/android/mms/ui/MessageItem;ZZZ)V
    .locals 8
    .parameter "msgItem"
    .parameter "isDeleteMode"
    .parameter "isFileTransferStatus"
    .parameter "showContent"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 2898
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v1, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;

    .line 2899
    .local v1, imageMessage:Lcom/mediatek/mms/ipmessage/message/IpImageMessage;
    const-string v2, "Mms/ipmsg/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIpImageItem(): message Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipThumbPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " imagePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2903
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    .line 2904
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageSizeBg:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2905
    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/MessageListItem;->updateIpMessageVideoOrImageView(Lcom/android/mms/ui/MessageItem;Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;)V

    .line 2906
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/mms/ui/MessageListItem;->setPicView(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2907
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/mms/ui/MessageListItem;->setPicView(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)Z

    .line 2919
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2921
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2922
    const-string v0, ""

    .line 2923
    .local v0, caption:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2924
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2931
    .end local v0           #caption:Ljava/lang/CharSequence;
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2932
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2933
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2934
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2935
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2936
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2937
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMediaPlayView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2938
    return-void

    .line 2910
    :cond_1
    if-eqz p3, :cond_3

    if-nez p4, :cond_3

    .line 2911
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2916
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageSizeBg:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2912
    :cond_3
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/mms/ui/MessageListItem;->setPicView(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2913
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/mms/ui/MessageListItem;->setPicView(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)Z

    goto :goto_2

    .line 2927
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setIpLocationItem(Lcom/android/mms/ui/MessageItem;ZZZ)V
    .locals 8
    .parameter "msgItem"
    .parameter "isDeleteMode"
    .parameter "isFileTransferStatus"
    .parameter "showContent"

    .prologue
    const/16 v7, 0x8

    .line 3058
    const-string v3, "Mms/ipmsg/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIpLocationItem(): message Id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3059
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v1, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;

    .line 3060
    .local v1, locationMessage:Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mLocationAddr:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3061
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 3062
    .local v2, path:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->isExistsFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3063
    const-string v3, "Mms/ipmsg/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIpLocationItem(): IP location image path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3065
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mImageLocation:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3070
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpLocationView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3073
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3074
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3075
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3076
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3078
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3079
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3080
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3081
    return-void

    .line 3067
    :cond_0
    const-string v3, "Mms/ipmsg/MessageListItem"

    const-string v4, "setIpLocationItem(): IP location no image."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mImageLocation:Landroid/widget/ImageView;

    const v4, 0x7f020030

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setIpTextItem(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 13
    .parameter "msgItem"
    .parameter "isDeleteMode"

    .prologue
    .line 2789
    const-string v0, "Mms/ipmsg/MessageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIpTextItem(): message Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    iget-object v12, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v12, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;

    .line 2791
    .local v12, textMessage:Lcom/mediatek/mms/ipmessage/message/IpTextMessage;
    invoke-virtual {v12}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2792
    const-string v0, "Mms/ipmsg/MessageListItem"

    const-string v1, "setIpTextItem(): No message content!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    :goto_0
    return-void

    .line 2796
    :cond_0
    const/4 v9, 0x0

    .line 2797
    .local v9, isXm:Z
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v0

    invoke-virtual {v12}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser2;->getDynamicRes(Ljava/lang/String;)I

    move-result v11

    .line 2798
    .local v11, resId:I
    if-gtz v11, :cond_1

    .line 2799
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v0

    invoke-virtual {v12}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser2;->getAdRes(Ljava/lang/String;)I

    move-result v11

    .line 2801
    :cond_1
    if-gtz v11, :cond_2

    .line 2802
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v0

    invoke-virtual {v12}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser2;->getXmRes(Ljava/lang/String;)I

    move-result v11

    .line 2803
    const/4 v9, 0x1

    .line 2805
    :cond_2
    if-lez v11, :cond_4

    .line 2806
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGifView:Lcom/mediatek/ipmsg/ui/GifView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 2807
    .local v10, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2808
    .local v6, density:F
    if-eqz v9, :cond_3

    .line 2810
    const/high16 v0, 0x4300

    mul-float/2addr v0, v6

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2811
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2816
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGifView:Lcom/mediatek/ipmsg/ui/GifView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2818
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2819
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGifView:Lcom/mediatek/ipmsg/ui/GifView;

    invoke-virtual {v0, v11}, Lcom/mediatek/ipmsg/ui/GifView;->setSource(I)V

    .line 2820
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2822
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2823
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2862
    .end local v6           #density:F
    .end local v10           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpAudioView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2864
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2865
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCardView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2866
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCalendarView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2867
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpLocationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2813
    .restart local v6       #density:F
    .restart local v10       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/high16 v0, 0x4320

    mul-float/2addr v0, v6

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2814
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 2825
    .end local v6           #density:F
    .end local v10           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v0

    invoke-virtual {v12}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser2;->getLargeRes(Ljava/lang/String;)I

    move-result v11

    .line 2826
    if-lez v11, :cond_5

    .line 2827
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2832
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 2833
    .restart local v10       #params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x2

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2834
    const/4 v0, -0x2

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2835
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2837
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2838
    .local v8, image:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2839
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2841
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2842
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2843
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageSizeBg:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2844
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMediaPlayView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 2846
    .end local v8           #image:Landroid/graphics/drawable/Drawable;
    .end local v10           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v7

    .line 2847
    .local v7, formattedMessage:Ljava/lang/CharSequence;
    if-nez v7, :cond_6

    .line 2848
    invoke-virtual {v12}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2850
    invoke-virtual {p1, v7}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 2852
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2853
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2856
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2857
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private setIpVCalendarItem(Lcom/android/mms/ui/MessageItem;ZZZ)V
    .locals 8
    .parameter "msgItem"
    .parameter "isDeleteMode"
    .parameter "isFileTransferStatus"
    .parameter "showContent"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 3031
    const-string v2, "Mms/ipmsg/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIpVCalendarItem(): message Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v1, Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;

    .line 3033
    .local v1, vCalendarMessage:Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;->getSummary()Ljava/lang/String;

    move-result-object v0

    .line 3034
    .local v0, summary:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 3035
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3037
    :cond_0
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 3038
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3044
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3045
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3046
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3047
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3049
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3050
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3051
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3052
    return-void

    .line 3040
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3041
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIpVCardItem(Lcom/android/mms/ui/MessageItem;ZZZ)V
    .locals 8
    .parameter "msgItem"
    .parameter "isDeleteMode"
    .parameter "isFileTransferStatus"
    .parameter "showContent"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 3003
    const-string v2, "Mms/ipmsg/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIpVCardItem(): message Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v1, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;

    .line 3005
    .local v1, vCardMessage:Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3006
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 3007
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3009
    :cond_0
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 3010
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3017
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3018
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3019
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3020
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3022
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3023
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3024
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3025
    return-void

    .line 3012
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVCardInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3013
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIpVideoItem(Lcom/android/mms/ui/MessageItem;ZZZ)V
    .locals 8
    .parameter "msgItem"
    .parameter "isDeleteMode"
    .parameter "isFileTransferStatus"
    .parameter "showContent"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 3087
    const-string v2, "Mms/ipmsg/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIpVideoItem(): message Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3088
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3089
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMediaPlayView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3090
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v1, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;

    .line 3091
    .local v1, videoMessage:Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3092
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageSizeBg:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3093
    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/MessageListItem;->updateIpMessageVideoOrImageView(Lcom/android/mms/ui/MessageItem;Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;)V

    .line 3094
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/MessageListItem;->setVideoView(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    :goto_0
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3107
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3117
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3118
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3119
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3120
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3121
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3122
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3123
    return-void

    .line 3096
    :cond_0
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 3097
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3098
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMediaPlayView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3102
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageSizeBg:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3100
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/MessageListItem;->setVideoView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3110
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3111
    const-string v0, ""

    .line 3112
    .local v0, caption:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3113
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setIpVoiceItem(Lcom/android/mms/ui/MessageItem;ZZZ)V
    .locals 9
    .parameter "msgItem"
    .parameter "isDeleteMode"
    .parameter "isFileTransferStatus"
    .parameter "showContent"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 2944
    const-string v3, "Mms/ipmsg/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIpVoiceItem(): message Id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v2, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;

    .line 2948
    .local v2, voiceMessage:Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2949
    invoke-virtual {v2}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p3, :cond_4

    .line 2950
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/mms/ipmessage/MessageManager;->isDownloading(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2951
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 2952
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2954
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/mms/ipmessage/MessageManager;->getDownloadProcess(J)I

    move-result v1

    .line 2955
    .local v1, progress:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_1

    .line 2956
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2958
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2979
    .end local v1           #progress:I
    :goto_0
    invoke-virtual {v2}, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2981
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2991
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2992
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2993
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2994
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2995
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2996
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2997
    return-void

    .line 2960
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_3

    .line 2961
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2963
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2964
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getSize()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->formatFileSize(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2967
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_5

    .line 2968
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2970
    :cond_5
    if-eqz p3, :cond_6

    if-nez p4, :cond_6

    .line 2971
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2973
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2974
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->getDuration()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->formatAudioTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2984
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2985
    const-string v0, ""

    .line 2986
    .local v0, caption:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->getCaption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2987
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setMediaOnClickListener(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 1593
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 1651
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1654
    :goto_0
    return-void

    .line 1596
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$14;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$14;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1642
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$15;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$15;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 1593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setOnClickListener(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 1569
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 1587
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1590
    :goto_0
    return-void

    .line 1572
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$12;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1578
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$13;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 1569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setPicView(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)Z
    .locals 12
    .parameter "msgItem"
    .parameter "filePath"

    .prologue
    .line 3126
    const-string v9, "Mms/ipmsg/MessageListItem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPicView(): filePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", imageView = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3127
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    if-nez v9, :cond_1

    .line 3128
    :cond_0
    const/4 v9, 0x0

    .line 3175
    :goto_0
    return v9

    .line 3130
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getIpMessageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3131
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 3132
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3133
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3134
    invoke-static {p2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3135
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 3136
    .local v7, width:I
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 3137
    .local v2, height:I
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 3140
    .local v6, w:I
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3141
    .local v1, dm:Landroid/util/DisplayMetrics;
    const/4 v5, 0x0

    .line 3142
    .local v5, screenWidth:I
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 3143
    .local v8, wmg:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3144
    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v9, v10, :cond_3

    .line 3145
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3150
    :goto_1
    int-to-float v9, v7

    int-to-float v10, v5

    const v11, 0x3ecccccd

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 3151
    int-to-float v9, v5

    const v10, 0x3ecccccd

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 3152
    mul-int v9, v2, v6

    div-int/2addr v9, v7

    invoke-static {p2, v3, v6, v9}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getBitmapByPath(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3153
    mul-int v9, v2, v6

    div-int/2addr v9, v7

    invoke-virtual {p1, v6, v9}, Lcom/android/mms/ui/MessageItem;->setIpMessageBitmapSize(II)V

    .line 3163
    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setIpMessageBitmapCache(Landroid/graphics/Bitmap;)V

    .line 3166
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #height:I
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #screenWidth:I
    .end local v6           #w:I
    .end local v7           #width:I
    .end local v8           #wmg:Landroid/view/WindowManager;
    :cond_2
    if-eqz v0, :cond_6

    .line 3167
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3168
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getIpMessageBitmapHeight()I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3169
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getIpMessageBitmapWidth()I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3170
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3171
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3172
    const/4 v9, 0x1

    goto :goto_0

    .line 3147
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #height:I
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #screenWidth:I
    .restart local v6       #w:I
    .restart local v7       #width:I
    .restart local v8       #wmg:Landroid/view/WindowManager;
    :cond_3
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    .line 3154
    :cond_4
    int-to-float v9, v7

    int-to-float v10, v5

    const v11, 0x3e99999a

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_5

    .line 3155
    int-to-float v9, v5

    const v10, 0x3e99999a

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 3156
    mul-int v9, v2, v6

    div-int/2addr v9, v7

    invoke-static {p2, v3, v6, v9}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getBitmapByPath(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3157
    mul-int v9, v2, v6

    div-int/2addr v9, v7

    invoke-virtual {p1, v6, v9}, Lcom/android/mms/ui/MessageItem;->setIpMessageBitmapSize(II)V

    goto :goto_2

    .line 3159
    :cond_5
    invoke-static {p2, v3, v7, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getBitmapByPath(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3160
    invoke-virtual {p1, v7, v2}, Lcom/android/mms/ui/MessageItem;->setIpMessageBitmapSize(II)V

    goto :goto_2

    .line 3174
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #height:I
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #screenWidth:I
    .end local v6           #w:I
    .end local v7           #width:I
    .end local v8           #wmg:Landroid/view/WindowManager;
    :cond_6
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    const v10, 0x7f0200d3

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3175
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private showDownloadingAttachment()V
    .locals 2

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 787
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->hideDownloadButton()Z

    .line 792
    return-void
.end method

.method private showFileAttachmentView(Ljava/util/ArrayList;)V
    .locals 23
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/FileAttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2225
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportVCardPreview()Z

    move-result v7

    .line 2227
    .local v7, isCtFeature:Z
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 2228
    :cond_0
    const-string v16, "MessageListItem"

    const-string v17, "showFileAttachmentView, oops no attachment files found"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    :goto_0
    return-void

    .line 2232
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2233
    .local v5, filesize:I
    move-object/from16 v9, p1

    .line 2237
    .local v9, mfiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 2240
    .local v8, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 2241
    const v16, 0x7f0f00ea

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 2242
    const v16, 0x7f0f00b6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    .line 2244
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 2246
    if-eqz v7, :cond_3

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2250
    :cond_3
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/FileAttachmentModel;

    .line 2251
    .local v2, attach:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/mms/ui/MessageListItem$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v7}, Lcom/android/mms/ui/MessageListItem$17;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/model/FileAttachmentModel;Z)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2287
    const/4 v3, 0x0

    .line 2289
    .local v3, attachSize:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 2290
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v16

    add-int v3, v3, v16

    .line 2289
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2294
    :cond_4
    if-eqz v8, :cond_6

    .line 2295
    invoke-interface {v8}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2296
    const/16 v16, 0x1

    move/from16 v0, v16

    if-gt v5, v0, :cond_5

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_6

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->isVCard()Z

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->isVCalendar()Z

    move-result v16

    if-nez v16, :cond_6

    .line 2297
    :cond_5
    const v16, 0x7f0f00b6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2298
    .local v4, fileAttachmentView:Landroid/view/View;
    new-instance v16, Lcom/android/mms/ui/MessageListItem$18;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v2}, Lcom/android/mms/ui/MessageListItem$18;-><init>(Lcom/android/mms/ui/MessageListItem;ILcom/android/mms/model/FileAttachmentModel;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2359
    .end local v4           #fileAttachmentView:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f00b7

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 2360
    .local v14, thumb:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f00b9

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2361
    .local v10, name:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f00ba

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2362
    .local v11, name2:Landroid/widget/TextView;
    if-eqz v7, :cond_7

    .line 2363
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f00b8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #thumb:Landroid/widget/ImageView;
    check-cast v14, Landroid/widget/ImageView;

    .line 2365
    .restart local v14       #thumb:Landroid/widget/ImageView;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2367
    :cond_7
    const-string v12, ""

    .line 2368
    .local v12, nameText:Ljava/lang/String;
    const/4 v15, -0x1

    .line 2369
    .local v15, thumbResId:I
    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->isVCard()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 2370
    if-eqz v7, :cond_d

    move-object/from16 v16, v2

    .line 2371
    check-cast v16, Lcom/android/mms/model/VCardModel;

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/VCardModel;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    .line 2372
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 2373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0b00b5

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2375
    :cond_8
    const v15, 0x7f0200fd

    .line 2376
    if-eqz v11, :cond_9

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/mms/model/VCardModel;

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/VCardModel;->getContactCount()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 2377
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " +"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/mms/model/VCardModel;

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/VCardModel;->getContactCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2378
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2393
    :cond_9
    :goto_2
    if-eqz v8, :cond_a

    .line 2394
    invoke-interface {v8}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 2395
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->isVCard()Z

    move-result v16

    if-nez v16, :cond_10

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->isVCalendar()Z

    move-result v16

    if-nez v16, :cond_10

    .line 2396
    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    .line 2397
    const v15, 0x7f02017c

    .line 2398
    const-string v16, "MessageListItem"

    const-string v17, "filesize=1, add attach view"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    :cond_a
    :goto_3
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2413
    if-eqz v7, :cond_b

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->isVCard()Z

    move-result v16

    if-eqz v16, :cond_b

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/mms/model/VCardModel;

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/VCardModel;->getContactCount()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    :cond_b
    if-eqz v11, :cond_c

    .line 2415
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2416
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2419
    :cond_c
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f00bb

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2421
    .local v13, size:Landroid/widget/TextView;
    if-eqz v8, :cond_11

    invoke-interface {v8}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 2424
    int-to-long v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/android/mms/ui/MessageUtils;->getHumanReadableSize(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2381
    .end local v13           #size:Landroid/widget/TextView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0b00b5

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2382
    const v15, 0x7f0200ee

    goto/16 :goto_2

    .line 2384
    :cond_e
    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->isVCalendar()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0b00b4

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2386
    if-eqz v7, :cond_f

    .line 2387
    const v15, 0x7f0200fc

    goto/16 :goto_2

    .line 2389
    :cond_f
    const v15, 0x7f0200ec

    goto/16 :goto_2

    .line 2399
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0b034f

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0b0350

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0b0351

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2405
    const v15, 0x7f020141

    .line 2406
    const-string v16, "MessageListItem"

    const-string v17, "filesize>>1, add attach view"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2427
    .restart local v13       #size:Landroid/widget/TextView;
    :cond_11
    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/android/mms/ui/MessageUtils;->getHumanReadableSize(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showMmsView(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const v4, 0x7f0f011d

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1088
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1089
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 1092
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1094
    const v1, 0x7f0f00e8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1095
    .local v0, mmsStub:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 1099
    .end local v0           #mmsStub:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1100
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 1101
    const v1, 0x7f0f011e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    .line 1103
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_2

    .line 1104
    const v1, 0x7f0f011f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    .line 1106
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz p1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1109
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 1106
    goto :goto_0

    :cond_5
    move v2, v3

    .line 1107
    goto :goto_1
.end method

.method private updateAvatarView(Ljava/lang/String;Z)V
    .locals 8
    .parameter "addr"
    .parameter "isSelf"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 796
    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 797
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v4}, Lcom/android/mms/data/Contact;->getMe(Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 798
    .local v1, contact:Lcom/android/mms/data/Contact;
    :goto_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 800
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 801
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 813
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 814
    return-void

    .line 797
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    goto :goto_0

    .line 803
    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 805
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v3, v2, v7}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_1

    .line 807
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v3, v2, v7}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_1

    .line 811
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private updateIpMessageVideoOrImageView(Lcom/android/mms/ui/MessageItem;Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;)V
    .locals 6
    .parameter "msgItem"
    .parameter "message"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2872
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mms/ipmessage/MessageManager;->isDownloading(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2874
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActionButton:Landroid/widget/ImageView;

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2875
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2876
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 2877
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2880
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mms/ipmessage/MessageManager;->getDownloadProcess(J)I

    move-result v0

    .line 2881
    .local v0, progress:I
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 2882
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2884
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContentSize:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2894
    .end local v0           #progress:I
    :goto_0
    return-void

    .line 2886
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActionButton:Landroid/widget/ImageView;

    const v2, 0x7f020100

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2887
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2888
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    .line 2889
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2891
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContentSize:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getSize()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->formatFileSize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2892
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContentSize:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMessageItemState(J)V
    .locals 6
    .parameter "msgId"

    .prologue
    .line 3325
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    .line 3344
    :cond_0
    :goto_0
    return-void

    .line 3328
    :cond_1
    move-wide v0, p1

    .line 3329
    .local v0, messageId:J
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/android/mms/ui/MessageListItem$20;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/MessageListItem$20;-><init>(Lcom/android/mms/ui/MessageListItem;J)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateSlideShowButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 6
    .parameter "msgItem"

    .prologue
    .line 1202
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1204
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1205
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02013d

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1206
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->hasDrmContent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1208
    const-string v4, "MessageListItem"

    const-string v5, " msgItem hasDrmContent"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->drm_red_lock:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1210
    .local v3, front:Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 1211
    .local v2, drmManager:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    invoke-static {v2, v0, v3}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmUiUtils;->overlayBitmap(Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1212
    .local v1, drmBitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1213
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1214
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1215
    const/4 v0, 0x0

    .line 1227
    .end local v1           #drmBitmap:Landroid/graphics/Bitmap;
    .end local v2           #drmManager:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    .end local v3           #front:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1228
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1229
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/View;->setLongClickable(Z)V

    .line 1236
    new-instance v4, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1242
    return-void

    .line 1222
    :cond_1
    const-string v4, "MessageListItem"

    const-string v5, " msgItem hasn\'t DrmContent"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;ZIZ)V
    .locals 7
    .parameter "msgItem"
    .parameter "convGroupMms"
    .parameter "position"
    .parameter "isDeleteMode"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 462
    if-nez p1, :cond_0

    .line 464
    move v0, p2

    .line 465
    .local v0, isLastItem:Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/MessageListItem;->bindDefault(Lcom/android/mms/ui/MessageItem;Z)V

    .line 466
    const-string v1, "MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind: msgItem is null, position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .end local v0           #isLastItem:Z
    :goto_0
    return-void

    .line 470
    :cond_0
    const-string v1, "MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageListItem.bind() : msgItem.mSimId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/mms/ui/MessageItem;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 474
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListItem;->mIsGroupMms:Z

    .line 475
    iput p3, p0, Lcom/android/mms/ui/MessageListItem;->mPosition:I

    .line 477
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    const v1, 0x7f0f00e6

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderName:Landroid/widget/TextView;

    .line 484
    const v1, 0x7f0f00e7

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNameSeparator:Landroid/view/View;

    .line 485
    const v1, 0x7f0f00e5

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    .line 486
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNameSeparator:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderName:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNameSeparator:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListItem;->setSelectedBackGroud(Z)V

    .line 495
    if-eqz p4, :cond_3

    .line 496
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 497
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setSelectedBackGroud(Z)V

    .line 505
    :cond_2
    :goto_1
    invoke-virtual {p0, v5}, Landroid/view/View;->setLongClickable(Z)V

    .line 507
    invoke-virtual {p0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 508
    invoke-virtual {p0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 511
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iput-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 512
    const-string v1, "Mms/ipmsg/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindView(): IpMessageId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSimMsg()Z

    move-result v1

    if-nez v1, :cond_4

    .line 514
    invoke-direct {p0, p1, p4}, Lcom/android/mms/ui/MessageListItem;->bindDividers(Lcom/android/mms/ui/MessageItem;Z)V

    .line 515
    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 516
    invoke-virtual {p0, p1, p4}, Lcom/android/mms/ui/MessageListItem;->bindIpmsg(Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    .line 501
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 521
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSimMsg()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSimDivider:Landroid/view/View;

    if-eqz v1, :cond_5

    if-lez p3, :cond_5

    .line 522
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSimDivider:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 527
    :goto_2
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v1, :pswitch_data_0

    .line 532
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage()V

    goto/16 :goto_0

    .line 524
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSimDivider:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 529
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd()V

    goto/16 :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method public bindDefault(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 10
    .parameter "msgItem"
    .parameter "isLastItem"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 2021
    const-string v0, "Mms/MessageListItem"

    const-string v1, "bindDefault()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListItem;->mIsLastItemInList:Z

    .line 2023
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2024
    invoke-virtual {p0, v9}, Landroid/view/View;->setLongClickable(Z)V

    .line 2025
    invoke-virtual {p0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 2026
    invoke-virtual {p0, v9}, Landroid/view/View;->setClickable(Z)V

    .line 2027
    const-string v7, ""

    .line 2028
    .local v7, msgType:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2029
    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 2031
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2032
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2034
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2035
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2039
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2041
    const-string v0, "sms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2042
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2044
    .local v6, formattedMessage:Ljava/lang/CharSequence;
    invoke-virtual {p1, v6}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 2046
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2047
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2055
    .end local v6           #formattedMessage:Ljava/lang/CharSequence;
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2056
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2059
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mUnreadDivider:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2060
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mUnreadDivider:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2063
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2064
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2065
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 2066
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2067
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2069
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->hideAllButton()Z

    .line 2072
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2073
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2074
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2075
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2077
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 2078
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    sget-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2083
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2084
    const v0, 0x7f0f00e6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderName:Landroid/widget/TextView;

    .line 2085
    const v0, 0x7f0f00e7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNameSeparator:Landroid/view/View;

    .line 2086
    const v0, 0x7f0f00e5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    .line 2087
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderName:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNameSeparator:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 2088
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2089
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNameSeparator:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2090
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2094
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 2095
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2097
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 2098
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2100
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpAudioView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 2101
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpAudioView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2103
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCardView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 2104
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCardView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2106
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCalendarView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 2107
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCalendarView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2109
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpLocationView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 2110
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpLocationView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2112
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 2113
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2115
    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnLineDivider:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2116
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnLineDivider:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2118
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImportantIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 2119
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImportantIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2121
    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLoadAllMessagesView:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 2122
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLoadAllMessagesView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2126
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadContrller:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 2127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadContrller:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2129
    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 2130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2132
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2133
    return-void

    .line 2049
    .restart local v6       #formattedMessage:Ljava/lang/CharSequence;
    :cond_14
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2052
    .end local v6           #formattedMessage:Ljava/lang/CharSequence;
    :cond_15
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0238

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public bindIpmsg(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 9
    .parameter "msgItem"
    .parameter "isDeleteMode"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 2702
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListItem;->isRegistNotificationListener:Z

    if-nez v3, :cond_0

    .line 2703
    const-string v3, "Mms/noti"

    const-string v4, "listItem.bindIpmsg(): regist noti listener."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListItem;->isRegistNotificationListener:Z

    .line 2705
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->addIpMsgNotificationListeners(Landroid/content/Context;Lcom/mediatek/mms/ipmessage/INotificationsListener;)V

    .line 2707
    :cond_0
    const-string v3, "Mms/ipmsg/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindIpmsg(): msg id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", context = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    if-nez v3, :cond_1

    .line 2709
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/mms/ipmessage/MessageManager;->getIpMsgInfo(J)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v3

    iput-object v3, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 2710
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    if-nez v3, :cond_1

    .line 2711
    const-string v3, "Mms/ipmsg/MessageListItem"

    const-string v4, "bindIpmsg(): ip message is null!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v7}, Lcom/android/mms/ui/MessageListItem;->bindDefault(Lcom/android/mms/ui/MessageItem;Z)V

    .line 2786
    :goto_0
    return-void

    .line 2717
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadContrller:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2718
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadContrller:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2720
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 2721
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2723
    :cond_3
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    invoke-virtual {v3}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getStatus()I

    move-result v0

    .line 2724
    .local v0, ipMsgStatus:I
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->isFileTransferStatus(I)Z

    move-result v1

    .line 2725
    .local v1, isFileTransferStatus:Z
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->isIpMessageShowContent(I)Z

    move-result v2

    .line 2726
    .local v2, showContent:Z
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    invoke-virtual {v3}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2762
    const-string v3, "Mms/ipmsg/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindIpmsg(): Error IP message type. type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    invoke-virtual {v5}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2767
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->formatSimStatus(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2769
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2770
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2781
    :goto_2
    if-eqz v1, :cond_5

    .line 2782
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    invoke-virtual {v3}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/mms/ui/MessageListItem;->drawDownloadFileView(Lcom/android/mms/ui/MessageItem;II)V

    .line 2784
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 2785
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 2728
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->setIpTextItem(Lcom/android/mms/ui/MessageItem;Z)V

    goto :goto_1

    .line 2731
    :pswitch_1
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/mms/ui/MessageListItem;->setIpImageItem(Lcom/android/mms/ui/MessageItem;ZZZ)V

    goto :goto_1

    .line 2734
    :pswitch_2
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/mms/ui/MessageListItem;->setIpVoiceItem(Lcom/android/mms/ui/MessageItem;ZZZ)V

    goto :goto_1

    .line 2737
    :pswitch_3
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/mms/ui/MessageListItem;->setIpVCardItem(Lcom/android/mms/ui/MessageItem;ZZZ)V

    goto :goto_1

    .line 2740
    :pswitch_4
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/mms/ui/MessageListItem;->setIpLocationItem(Lcom/android/mms/ui/MessageItem;ZZZ)V

    goto :goto_1

    .line 2743
    :pswitch_5
    invoke-direct {p0, p1, p2, v7, v2}, Lcom/android/mms/ui/MessageListItem;->setIpImageItem(Lcom/android/mms/ui/MessageItem;ZZZ)V

    goto :goto_1

    .line 2746
    :pswitch_6
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/mms/ui/MessageListItem;->setIpVideoItem(Lcom/android/mms/ui/MessageItem;ZZZ)V

    goto :goto_1

    .line 2749
    :pswitch_7
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/mms/ui/MessageListItem;->setIpVCalendarItem(Lcom/android/mms/ui/MessageItem;ZZZ)V

    goto :goto_1

    .line 2753
    :pswitch_8
    const-string v3, "Mms/ipmsg/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindIpmsg(): Unknown IP message type. type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    invoke-virtual {v5}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2759
    :pswitch_9
    const-string v3, "Mms/ipmsg/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindIpmsg(): Group IP message type. type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    invoke-virtual {v5}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2772
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2774
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b032b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageListItem;->buildTimestampLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 2726
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

.method public drawMassTextMsgStatus(IIILjava/lang/String;)V
    .locals 11
    .parameter "sendingMsgCount"
    .parameter "sendMsgSuccessCount"
    .parameter "sendMsgFailedCount"
    .parameter "smsDate"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 3754
    const-string v6, "MessageListItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendingMsgCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sendMsgSuccessCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sendMsgFailedCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3756
    const v6, 0x7f0f0110

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 3757
    .local v2, sendingImg:Landroid/widget/ImageView;
    const v6, 0x7f0f0111

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3759
    .local v3, sendingTxt:Landroid/widget/TextView;
    const v6, 0x7f0f0112

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 3760
    .local v4, successImg:Landroid/widget/ImageView;
    const v6, 0x7f0f0113

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3762
    .local v5, successTxt:Landroid/widget/TextView;
    const v6, 0x7f0f0114

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3763
    .local v0, failedImg:Landroid/widget/ImageView;
    const v6, 0x7f0f0115

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3765
    .local v1, failedTxt:Landroid/widget/TextView;
    add-int v6, p2, p3

    add-int/2addr v6, p1

    const/4 v7, 0x2

    if-ge v6, v7, :cond_3

    .line 3766
    if-eqz v2, :cond_0

    .line 3767
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3768
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3770
    :cond_0
    if-eqz v4, :cond_1

    .line 3771
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3772
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3774
    :cond_1
    if-eqz v0, :cond_2

    .line 3775
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3776
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3855
    :cond_2
    :goto_0
    return-void

    .line 3780
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    .line 3781
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3784
    :cond_4
    if-gtz p1, :cond_b

    .line 3785
    if-eqz v2, :cond_5

    .line 3786
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3788
    :cond_5
    if-eqz v3, :cond_6

    .line 3789
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3808
    :cond_6
    if-gtz p2, :cond_e

    .line 3809
    if-eqz v4, :cond_7

    .line 3810
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3812
    :cond_7
    if-eqz v5, :cond_8

    .line 3813
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3831
    :cond_8
    :goto_1
    if-gtz p3, :cond_10

    .line 3832
    if-eqz v0, :cond_9

    .line 3833
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3835
    :cond_9
    if-eqz v1, :cond_a

    .line 3836
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3851
    :cond_a
    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    add-int v6, p1, p3

    add-int/2addr v6, p2

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 3852
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3853
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v6, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3792
    :cond_b
    if-eqz v2, :cond_c

    .line 3794
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3795
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3797
    :cond_c
    if-eqz v4, :cond_d

    .line 3798
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3799
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3801
    :cond_d
    if-eqz v0, :cond_2

    .line 3802
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3803
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3816
    :cond_e
    if-eqz v4, :cond_8

    .line 3817
    if-lez p3, :cond_f

    .line 3818
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3819
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3820
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3822
    :cond_f
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3823
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3824
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    if-eqz v6, :cond_8

    .line 3825
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 3839
    :cond_10
    if-eqz v0, :cond_a

    .line 3840
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3841
    if-lez p2, :cond_11

    .line 3842
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3843
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3845
    :cond_11
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public hideAllView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 3861
    const-string v0, "Mms/MessageListItem"

    const-string v1, "hideAllView()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3863
    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 3864
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 3865
    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 3867
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3868
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3870
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3871
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFileAttachmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3874
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3876
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3877
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3880
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mUnreadDivider:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 3881
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mUnreadDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3884
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3885
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3886
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 3887
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3888
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3889
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->hideAllButton()Z

    .line 3891
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3892
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3893
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3894
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3896
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 3897
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3902
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3903
    const v0, 0x7f0f00e6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderName:Landroid/widget/TextView;

    .line 3904
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderName:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 3905
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3907
    :cond_6
    const v0, 0x7f0f00e7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNameSeparator:Landroid/view/View;

    .line 3908
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNameSeparator:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 3909
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNameSeparator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3911
    :cond_7
    const v0, 0x7f0f00e5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    .line 3912
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_8

    .line 3913
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3916
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3917
    return-void
.end method

.method public hideBothButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 3734
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 3735
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3737
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3738
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3740
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mExpireText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 3741
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mExpireText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3743
    :cond_2
    return-void
.end method

.method public hideDownloadButton()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3687
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-nez v2, :cond_0

    .line 3688
    const v2, 0x7f0f011b

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 3690
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 3691
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3695
    :cond_1
    const-string v2, "MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageListItemHost. MmsDownloadStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMmsDownloadStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3698
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3699
    .local v1, notificationUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v2, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->getStateExt(Landroid/net/Uri;)I

    move-result v0

    .line 3700
    .local v0, actionStatus:I
    const-string v2, "MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageListItemHost. Mms CacenlingStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3701
    if-ne v0, v6, :cond_2

    .line 3702
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 3703
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3704
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3705
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/ui/MessageListItem$26;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageListItem$26;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3721
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3725
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    if-nez v2, :cond_3

    .line 3726
    const v2, 0x7f0f011c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    .line 3728
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 3729
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3731
    :cond_4
    return-void
.end method

.method public notificationsReceived(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 3274
    const-string v6, "Mms/noti"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "listItem.notificationsReceived(): intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3276
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3322
    :cond_0
    :goto_0
    return-void

    .line 3279
    :cond_1
    const-wide/16 v4, 0x0

    .line 3280
    .local v4, msgId:J
    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getActionTypeByAction(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 3318
    const-string v6, "Mms/noti"

    const-string v7, "listItem.notificationsReceived(): ignore notification."

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3282
    :pswitch_0
    const-string v6, "Mms/noti"

    const-string v7, "listItem.notificationsReceived(): download status notification."

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v6, :cond_0

    .line 3286
    :try_start_0
    const-string v6, "DownloadMsgStatus"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3288
    .local v1, downloadStatus:I
    const-string v6, "Mms/noti"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notificationsReceived(): downloadStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3290
    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 3291
    const-string v6, "Mms/noti"

    const-string v7, "notificationsReceived(): call UI thread notify data set change."

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3293
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .line 3295
    .local v3, msg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3300
    .end local v1           #downloadStatus:I
    .end local v3           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 3301
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v6, "Mms/noti"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NullPointerException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3298
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v1       #downloadStatus:I
    :cond_2
    :try_start_1
    const-string v6, "DownloadMsgId"

    const-wide/16 v7, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3299
    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/MessageListItem;->updateMessageItemState(J)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3306
    .end local v1           #downloadStatus:I
    :pswitch_1
    const-string v6, "Mms/noti"

    const-string v7, "listItem.notificationsReceived(): download status notification."

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3308
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v6, :cond_0

    .line 3310
    :try_start_2
    const-string v6, "com.mediatek.mms.ipmessage.IpMessageRecdId"

    const-wide/16 v7, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3311
    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/MessageListItem;->updateMessageItemState(J)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 3312
    :catch_1
    move-exception v2

    .line 3313
    .restart local v2       #e:Ljava/lang/NullPointerException;
    const-string v6, "Mms/noti"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NullPointerException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3280
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    sget-boolean v1, Lcom/android/mms/ui/MessageListItem;->sImageButtonCanClick:Z

    if-eqz v1, :cond_0

    .line 1254
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/MessageListItem;->sImageButtonCanClick:Z

    .line 1256
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    .line 1258
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1259
    new-instance v0, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    .line 1264
    .local v0, run:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 3348
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 3350
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->isRegistNotificationListener:Z

    if-eqz v0, :cond_0

    .line 3351
    const-string v0, "Mms/noti"

    const-string v1, "listItem.unbind(): remove noti listener."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->removeIpMsgNotificationListeners(Landroid/content/Context;Lcom/mediatek/mms/ipmessage/INotificationsListener;)V

    .line 3353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->isRegistNotificationListener:Z

    .line 3355
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 375
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 377
    const v1, 0x7f0f0025

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 378
    const v1, 0x7f0f0026

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    .line 380
    const v1, 0x7f0f002a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSimStatus:Landroid/widget/TextView;

    .line 382
    const v1, 0x7f0f0029

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    .line 383
    const v1, 0x7f0f0027

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    .line 384
    const v1, 0x7f0f0028

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    .line 385
    const v1, 0x7f0f0059

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/QuickContactDivot;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    .line 390
    const v1, 0x7f0f0023

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    .line 395
    const v1, 0x7f0f00f4

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageView:Landroid/view/View;

    .line 396
    const v1, 0x7f0f00d3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    .line 397
    const v1, 0x7f0f00f6

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpImageSizeBg:Landroid/view/View;

    .line 398
    const v1, 0x7f0f00f7

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActionButton:Landroid/widget/ImageView;

    .line 399
    const v1, 0x7f0f00f8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContentSize:Landroid/widget/TextView;

    .line 400
    const v1, 0x7f0f00f9

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageDownloadProgressBar:Landroid/widget/ProgressBar;

    .line 402
    const v1, 0x7f0f00fe

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    .line 403
    const v1, 0x7f0f00f5

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMediaPlayView:Landroid/widget/ImageView;

    .line 405
    const v1, 0x7f0f00fa

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpAudioView:Landroid/view/View;

    .line 406
    const v1, 0x7f0f00fb

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAudioIcon:Landroid/widget/ImageView;

    .line 407
    const v1, 0x7f0f00fc

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfo:Landroid/widget/TextView;

    .line 408
    const v1, 0x7f0f00fd

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDownloadProgressBar:Landroid/widget/ProgressBar;

    .line 410
    const v1, 0x7f0f00ff

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCardView:Landroid/view/View;

    .line 411
    const v1, 0x7f0f0100

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mVCardInfo:Landroid/widget/TextView;

    .line 413
    const v1, 0x7f0f0101

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpVCalendarView:Landroid/view/View;

    .line 414
    const v1, 0x7f0f0102

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mVCalendarInfo:Landroid/widget/TextView;

    .line 416
    const v1, 0x7f0f0103

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpLocationView:Landroid/view/View;

    .line 417
    const v1, 0x7f0f0104

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageLocation:Landroid/widget/ImageView;

    .line 418
    const v1, 0x7f0f0105

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mLocationAddr:Landroid/widget/TextView;

    .line 420
    const v1, 0x7f0f0106

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpDynamicEmoticonView:Landroid/view/View;

    .line 421
    const v1, 0x7f0f0107

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ipmsg/ui/GifView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mGifView:Lcom/mediatek/ipmsg/ui/GifView;

    .line 423
    const v1, 0x7f0f00e3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    .line 424
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    const v2, 0x7f0f0195

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDividerStr:Landroid/widget/TextView;

    .line 427
    :cond_0
    const v1, 0x7f0f00e4

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mUnreadDivider:Landroid/view/View;

    .line 428
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mUnreadDivider:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mUnreadDivider:Landroid/view/View;

    const v2, 0x7f0f0196

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mUnreadDividerStr:Landroid/widget/TextView;

    .line 431
    :cond_1
    const v1, 0x7f0f00f3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOnLineDivider:Landroid/view/View;

    .line 432
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOnLineDivider:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 433
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOnLineDivider:Landroid/view/View;

    const v2, 0x7f0f015a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOnLineDividertextView:Landroid/widget/TextView;

    .line 435
    :cond_2
    const v1, 0x7f0f00e2

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSimDivider:Landroid/view/View;

    .line 437
    const v1, 0x7f0f00f0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImportantIndicator:Landroid/widget/ImageView;

    .line 438
    const v1, 0x7f0f00f2

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mLoadAllMessagesView:Landroid/view/View;

    .line 439
    const v1, 0x7f0f00d7

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mLoadAllMessages:Landroid/widget/ImageView;

    .line 440
    const v1, 0x7f0f00d8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 441
    .local v0, loadAllMessagesTextView:Landroid/widget/TextView;
    if-eqz v0, :cond_3

    .line 442
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    :cond_3
    const v1, 0x7f0f00e9

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mExpireText:Landroid/widget/TextView;

    .line 448
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isFeatureSupported(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 450
    const v1, 0x7f0f0108

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadContrller:Landroid/view/View;

    .line 451
    const v1, 0x7f0f0118

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgResendButton:Landroid/widget/TextView;

    .line 452
    const v1, 0x7f0f0109

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgAcceptButton:Landroid/widget/TextView;

    .line 453
    const v1, 0x7f0f010a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgRejectButton:Landroid/widget/TextView;

    .line 454
    const v1, 0x7f0f010b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileDownloadView:Landroid/view/View;

    .line 455
    const v1, 0x7f0f010c

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgFileSize:Landroid/widget/TextView;

    .line 456
    const v1, 0x7f0f010d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgCancelDownloadButton:Landroid/widget/ImageView;

    .line 457
    const v1, 0x7f0f010e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIpmsgDownloadFileProgress:Landroid/widget/ProgressBar;

    .line 459
    :cond_4
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 22

    .prologue
    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-nez v2, :cond_1

    .line 1278
    const-string v2, "MessageListItem"

    const-string v3, "onMessageListItemClick(): Message Item is null!"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    const-string v2, "Mms/ipmsg/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageListItemClick(): msgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ipmsg_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1286
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setSelectedBackGroud(Z)V

    .line 1290
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v15

    .line 1292
    .local v15, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    neg-long v2, v2

    :goto_2
    long-to-int v2, v2

    iput v2, v15, Landroid/os/Message;->arg1:I

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    iput v2, v15, Landroid/os/Message;->arg2:I

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iput-object v2, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1296
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1288
    .end local v15           #msg:Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setSelectedBackGroud(Z)V

    goto :goto_1

    .line 1292
    .restart local v15       #msg:Landroid/os/Message;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    goto :goto_2

    .line 1293
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 1304
    .end local v15           #msg:Landroid/os/Message;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v3, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v2, v3, :cond_a

    .line 1309
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1312
    const/16 v21, 0x14

    .line 1313
    .local v21, what:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    move/from16 v0, v21

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v15

    .line 1314
    .restart local v15       #msg:Landroid/os/Message;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1315
    .local v10, bundle:Landroid/os/Bundle;
    const-string v2, "MSG_ID"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v10, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1316
    const-string v2, "SIM_ID"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mSimId:I

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1317
    invoke-virtual {v15, v10}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iput-object v2, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1319
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1323
    .end local v10           #bundle:Landroid/os/Bundle;
    .end local v15           #msg:Landroid/os/Message;
    .end local v21           #what:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    invoke-interface/range {v2 .. v7}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->needEditFailedMessge(Landroid/content/Context;JJ)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe10

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v15

    .line 1327
    .restart local v15       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iput-object v2, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1328
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1335
    .end local v15           #msg:Landroid/os/Message;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    goto/16 :goto_0

    .line 1340
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_d

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    if-nez v2, :cond_b

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/mms/ipmessage/MessageManager;->getIpMsgInfo(J)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 1345
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    if-eqz v2, :cond_d

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    invoke-virtual {v2}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v2

    if-eqz v2, :cond_d

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    instance-of v2, v2, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    if-eqz v2, :cond_c

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v2, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    invoke-virtual {v2}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/mms/ipmessage/MessageManager;->isDownloading(J)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1350
    const-string v2, "Mms/ipmsg/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageListItemClick(): Download IP message attach. msgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/mms/ipmessage/MessageManager;->downloadAttach(J)V

    goto/16 :goto_0

    .line 1356
    :cond_c
    const-string v2, "Mms/ipmsg/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageListItemClick(): open IP message media. msgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->openMedia(Lcom/mediatek/mms/ipmessage/message/IpMessage;J)V

    goto/16 :goto_0

    .line 1364
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v16

    .line 1366
    .local v16, spans:[Landroid/text/style/URLSpan;
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v20

    .line 1367
    .local v20, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, "tel:"

    .line 1368
    .local v17, telPrefix:Ljava/lang/String;
    const-string v19, ""

    .line 1370
    .local v19, url:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_f

    .line 1371
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #url:Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1372
    .restart local v19       #url:Ljava/lang/String;
    const-string v2, "tel:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1373
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mIsTel:Z

    .line 1374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tel:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1379
    :cond_f
    move-object/from16 v0, v16

    array-length v2, v0

    if-nez v2, :cond_10

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    goto/16 :goto_0

    .line 1383
    :cond_10
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mIsTel:Z

    if-nez v2, :cond_12

    .line 1392
    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v14

    .line 1394
    .local v14, mUriTemp:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isShowUrlDialog()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "mailto:"

    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1395
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1396
    .local v9, b:Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->url_dialog_choice_title:I

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1397
    sget v2, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->url_dialog_choice_message:I

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1398
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1399
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/mms/ui/MessageListItem$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1404
    const v2, 0x104000a

    new-instance v3, Lcom/android/mms/ui/MessageListItem$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1415
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1417
    .end local v9           #b:Landroid/app/AlertDialog$Builder;
    :cond_11
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 1418
    .local v18, uri:Landroid/net/Uri;
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-direct {v13, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1419
    .local v13, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser.application_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    const/high16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1421
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1433
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #mUriTemp:Ljava/lang/String;
    .end local v18           #uri:Landroid/net/Uri;
    :cond_12
    new-instance v8, Lcom/android/mms/ui/MessageListItem$9;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x1090011

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v2, v3, v1}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/content/Context;ILjava/util/List;)V

    .line 1526
    .local v8, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1528
    .restart local v9       #b:Landroid/app/AlertDialog$Builder;
    new-instance v11, Lcom/android/mms/ui/MessageListItem$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/util/ArrayList;)V

    .line 1553
    .local v11, click:Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x7f0b0312

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1554
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1555
    invoke-virtual {v9, v8, v11}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1557
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/mms/ui/MessageListItem$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/MessageListItem$11;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1564
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 1867
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 1873
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 1856
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 1879
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 1885
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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
    .line 1069
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setBodyTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2141
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2142
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCaption:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2144
    :cond_1
    return-void
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 6
    .parameter "mUri"

    .prologue
    .line 2149
    const/4 v0, 0x0

    .line 2150
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    .line 2151
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200d3

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 2173
    :goto_0
    return-void

    .line 2153
    :cond_0
    const/4 v2, 0x0

    .line 2155
    .local v2, mInputStream:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 2156
    if-eqz v2, :cond_1

    .line 2157
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 2162
    :cond_1
    if-eqz v2, :cond_2

    .line 2163
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 2166
    :cond_2
    :goto_1
    const-string v3, ""

    invoke-virtual {p0, v3, v0}, Lcom/android/mms/ui/MessageListItem;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2168
    .end local v2           #mInputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 2169
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "MessageListItem"

    const-string v4, "setImage(Uri): out of memory: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2159
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v2       #mInputStream:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 2160
    .local v1, e:Ljava/io/FileNotFoundException;
    const/4 v0, 0x0

    .line 2162
    if-eqz v2, :cond_2

    .line 2163
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 2170
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #mInputStream:Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 2171
    .local v1, e:Ljava/io/IOException;
    const-string v3, "MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mInputStream.close() IOException."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2162
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #mInputStream:Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 2163
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 2162
    :cond_3
    throw v3
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 1073
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 1076
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1077
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1079
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMediaPlayView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMediaPlayView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMediaPlayView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "MessageListItem"

    const-string v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 1806
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1811
    return-void
.end method

.method public setMessageListItemAdapter(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 3572
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 3573
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 566
    return-void
.end method

.method public setSelectedBackGroud(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 2005
    if-eqz p1, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2010
    const v0, 0x7f020132

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2018
    :goto_0
    return-void

    .line 2012
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2013
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "text"

    .prologue
    .line 1816
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1821
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "name"
    .parameter "uri"

    .prologue
    .line 1825
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 1829
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 1832
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1833
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1837
    :goto_0
    return-void

    .line 1834
    :catch_0
    move-exception v0

    .line 1835
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "MessageListItem"

    const-string v2, "setVideo: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVideoView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "path"
    .parameter "bakPath"

    .prologue
    const/4 v7, -0x2

    .line 3180
    const/4 v0, 0x0

    .line 3181
    .local v0, bp:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 3182
    .local v1, degree:I
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMediaPlayView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3185
    const/4 v4, 0x3

    invoke-static {p1, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3186
    invoke-static {p1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 3189
    :cond_0
    if-nez v0, :cond_1

    .line 3190
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3191
    invoke-static {p2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getOptions(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 3192
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3193
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3194
    invoke-static {p2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getOptions(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p2, v4, v5, v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getBitmapByPath(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3196
    invoke-static {p2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 3203
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3204
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3205
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3206
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3208
    if-eqz v0, :cond_3

    .line 3209
    if-eqz v1, :cond_2

    .line 3210
    invoke-static {v0, v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3212
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3216
    :goto_0
    return-void

    .line 3214
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mImageContent:Landroid/widget/ImageView;

    const v5, 0x7f0200d3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1842
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1861
    return-void
.end method

.method public showDownloadButton()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 3597
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 3598
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3600
    :cond_0
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3602
    .local v1, notificationUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v2, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->getStateExt(Landroid/net/Uri;)I

    move-result v0

    .line 3603
    .local v0, actionStatus:I
    const-string v2, "MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageListItemHost. show download BUTOON;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    if-eq v0, v5, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 3607
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;

    invoke-interface {v2}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->hideDownloadButton()Z

    .line 3676
    :cond_2
    :goto_0
    return-void

    .line 3610
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    .line 3611
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3612
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3613
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v3, 0x7f0b0247

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3614
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/ui/MessageListItem$25;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageListItem$25;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3673
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 3674
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 1059
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 1064
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 1847
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 1852
    return-void
.end method

.method public unbind()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 539
    const-string v1, "MessageListItem"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbind() :   position = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "uri = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 545
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/Presenter;->cancelBackgroundLoading()V

    .line 558
    :cond_2
    return-void

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    goto :goto_0
.end method
