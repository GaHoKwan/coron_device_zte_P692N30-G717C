.class public abstract Lcom/android/email/activity/MessageViewFragmentBase;
.super Landroid/app/Fragment;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/RenameAttachmentFileDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;,
        Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;,
        Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;,
        Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;,
        Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;,
        Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    }
.end annotation


# static fields
.field public static final ARG_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field private static final BUNDLE_KEY_CURRENT_TAB:Ljava/lang/String; = "MessageViewFragmentBase.currentTab"

.field private static final BUNDLE_KEY_MESSAGE_KEY:Ljava/lang/String; = "MessageViewFragmentBase.messageKey"

.field private static final BUNDLE_KEY_PARTIAL_DOWNLOAD:Ljava/lang/String; = "MessageViewFragmentBase.particalDownload"

.field private static final BUNDLE_KEY_PICTURE_LOADED:Ljava/lang/String; = "MessageViewFragmentBase.pictureLoaded"

.field private static final CONTACT_STATUS_STATE_LOADED:I = 0x2

.field private static final CONTACT_STATUS_STATE_UNLOADED:I = 0x0

.field private static final CONTACT_STATUS_STATE_UNLOADED_TRIGGERED:I = 0x1

.field private static final DEFAULT_EMAIL_PREFIX:Ljava/lang/String; = "email://"

.field private static final HTTP_PREFIX:Ljava/lang/String; = "http://"

.field private static final IMG_TAG_START_REGEX:Ljava/util/regex/Pattern; = null

.field private static final PHOTO_LOADER_ID:I = 0x1

.field private static final PREVIEW_ICON_HEIGHT:I = 0x3e

.field private static final PREVIEW_ICON_WIDTH:I = 0x3e

.field protected static final TAB_ATTACHMENT:I = 0x67

.field protected static final TAB_FLAGS_HAS_ATTACHMENT:I = 0x1

.field protected static final TAB_FLAGS_HAS_INVITE:I = 0x2

.field protected static final TAB_FLAGS_HAS_PICTURES:I = 0x4

.field protected static final TAB_FLAGS_PICTURE_LOADED:I = 0x8

.field protected static final TAB_INVITE:I = 0x66

.field protected static final TAB_MESSAGE:I = 0x65

.field private static final TAB_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MessageViewFragmentBase"

.field private static final VIEWS_NUMBER_TO_SHOW:I = 0x64

.field public static final VIP_VIEW_PHOTO_LOADER_ID:I = 0x2

.field private static sZoomSizes:[Ljava/lang/String;


# instance fields
.field private mAccountId:J

.field private mAddVipIcon:Landroid/graphics/drawable/Drawable;

.field private mAddressesView:Landroid/widget/TextView;

.field private mAlwaysShowPicturesButton:Landroid/view/View;

.field private mAttachmentCount:I

.field private mAttachmentTab:Landroid/widget/TextView;

.field private mAttachments:Landroid/widget/LinearLayout;

.field private mAttachmentsScroll:Landroid/view/View;

.field private mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

.field private mContactStatusState:I

.field protected mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTab:I

.field private mDateTimeView:Landroid/widget/TextView;

.field private mDetailsCollapsed:Landroid/view/View;

.field private mDetailsExpanded:Landroid/view/View;

.field private mDetailsFilled:Z

.field private mDownloadAttachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFromAddressView:Landroid/widget/TextView;

.field private mFromBadge:Landroid/widget/ImageView;

.field protected mFromNameView:Landroid/widget/TextView;

.field private mHtmlTextRaw:Ljava/lang/String;

.field private mHtmlTextWebView:Ljava/lang/String;

.field private mInviteScroll:Landroid/view/View;

.field private mInviteTab:Landroid/widget/TextView;

.field private mIsMessageLoadedForTest:Z

.field private mLastZoomSize:I

.field private mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

.field private mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

.field private mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

.field private mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

.field private mLoadingProgress:Landroid/view/View;

.field private mMainView:Lcom/android/email/view/NonLockingScrollView;

.field private mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mMessageContentView:Landroid/webkit/WebView;

.field protected mMessageId:J

.field protected mMessageIsReload:Z

.field private mMessageLoading:Z

.field private mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

.field private mMessageTab:Landroid/widget/TextView;

.field private mNeedReloadMessageContent:Z

.field private mOnStartExecuted:Z

.field private mPartialDownload:Z

.field mPopUp:Landroid/widget/PopupWindow;

.field private mQuickContactLookupUri:Landroid/net/Uri;

.field private mRemainBtnView:Landroid/widget/LinearLayout;

.field private mRemoveVipIcon:Landroid/graphics/drawable/Drawable;

.field private mRenderAttachmentTask:Landroid/os/AsyncTask;

.field private mRestoredPictureLoaded:Z

.field private mRestoredTab:I

.field private mSenderPresenceView:Landroid/widget/ImageView;

.field private mShowPicturesTab:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mTabFlags:I

.field private mTabSection:Landroid/view/View;

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

.field private mVipSwitcher:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "<(?i)img\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->sZoomSizes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 185
    iput-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    .line 186
    iput-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentList:Ljava/util/ArrayList;

    .line 220
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mOnStartExecuted:Z

    .line 259
    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    .line 264
    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    .line 266
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNeedReloadMessageContent:Z

    .line 270
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPartialDownload:Z

    .line 272
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRenderAttachmentTask:Landroid/os/AsyncTask;

    .line 279
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageLoading:Z

    .line 327
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .line 328
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageIsReload:Z

    .line 2711
    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onClickSender()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageLoading:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->queryContactStatus()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageViewFragmentBase;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateRemainMsgInfo(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPartialDownload:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPartialDownload:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->isInlineAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->onDownloadAttachmentSilently(J)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfoFromView(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3500()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabs(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->addAttachments(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->setAttachmentCount(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->doLoadMsgBackground(J)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageHtml(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->attachmentDownloaded(J)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findOrCreateAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIcon(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->createAttachmentView(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateVipIcon(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDefaultQuickContactBadgeImage()V

    return-void
.end method

.method private addAttachments(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2776
    .local p1, attachList:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    move-object v0, p1

    .line 2777
    .local v0, attachs:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2828
    :cond_0
    :goto_0
    return-void

    .line 2780
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRenderAttachmentTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_2

    .line 2781
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRenderAttachmentTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 2782
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRenderAttachmentTask:Landroid/os/AsyncTask;

    .line 2789
    :cond_2
    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$3;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$3;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/util/List;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRenderAttachmentTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private addVip(Lcom/android/emailcommon/mail/Address;)V
    .locals 3
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 3124
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 3125
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$5;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Address;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 3156
    return-void
.end method

.method private attachmentDownloaded(J)V
    .locals 9
    .parameter "attachmentId"

    .prologue
    .line 2911
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(J)V

    .line 2912
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v6

    .line 2914
    .local v6, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string v0, "MessageViewFragmentBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttachmentDownloaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    if-eqz v6, :cond_0

    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2952
    :cond_0
    :goto_0
    return-void

    .line 2924
    :cond_1
    iget-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->isInlineAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2927
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentView(J)Landroid/view/View;

    move-result-object v7

    .line 2928
    .local v7, inLineAttView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2929
    const-string v0, "Reloading UI for inline attachment loaded"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2930
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->refactorHtmlTextRaw(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    .line 2932
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2933
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    const-string v1, "email://"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->doLinkParse(Ljava/lang/String;)V

    goto :goto_0

    .line 2944
    .end local v7           #inLineAttView:Landroid/view/View;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findOrCreateAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v8

    .line 2945
    .local v8, info:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/email/AttachmentInfo;->mContentURI:Ljava/lang/String;

    .line 2947
    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_3

    .line 2948
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->onOpenAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_0

    .line 2950
    :cond_3
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_0
.end method

.method private blockNetworkLoads(Z)V
    .locals 1
    .parameter "block"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 935
    :cond_0
    return-void
.end method

.method private cancelAllTasks()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->unregister()V

    .line 684
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 685
    return-void
.end method

.method private cleanupDetachedViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 591
    const-string v0, "MessageViewFragmentBase"

    const-string v1, "cleanupDetachedViews mLinkParserTask and webview will be destoryed."

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 594
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/LinkParserTask;->stopWebView()V

    .line 595
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 599
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    .line 601
    :cond_1
    return-void
.end method

.method private final clearTabFlags(I)V
    .locals 2
    .parameter "tabFlags"

    .prologue
    .line 814
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabs(I)V

    .line 815
    return-void
.end method

.method private createAttachmentView(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)Landroid/view/View;
    .locals 13
    .parameter "attachment"
    .parameter "isUpdateIcon"

    .prologue
    const/4 v10, 0x0

    .line 2840
    if-nez p1, :cond_0

    move-object v9, v10

    .line 2880
    :goto_0
    return-object v9

    .line 2843
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 2844
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f040044

    invoke-virtual {v6, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 2846
    .local v9, view:Landroid/view/View;
    const v11, 0x7f0f006d

    invoke-static {v9, v11}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2847
    .local v3, attachmentName:Landroid/widget/TextView;
    const v11, 0x7f0f00c0

    invoke-static {v9, v11}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2848
    .local v2, attachmentInfoView:Landroid/widget/TextView;
    const v11, 0x7f0f00bf

    invoke-static {v9, v11}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2849
    .local v0, attachmentIcon:Landroid/widget/ImageView;
    const v11, 0x7f0f00c1

    invoke-static {v9, v11}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 2850
    .local v7, openButton:Landroid/widget/Button;
    const v11, 0x7f0f001a

    invoke-static {v9, v11}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 2851
    .local v8, saveButton:Landroid/widget/Button;
    const v11, 0x7f0f0001

    invoke-static {v9, v11}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 2852
    .local v5, cancelButton:Landroid/widget/Button;
    const v11, 0x7f0f00af

    invoke-static {v9, v11}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 2854
    .local v4, attachmentProgress:Landroid/widget/ProgressBar;
    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget-object v11, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, v11, p1, v4, v10}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/widget/ProgressBar;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    .line 2858
    .local v1, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz p1, :cond_1

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v11, "com.android.email.attachmentprovider"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    iget-object v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2861
    :cond_2
    const/4 v10, 0x1

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoaded:Z
    invoke-static {v1, v10}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1602(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z

    .line 2864
    :cond_3
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mOpenButton:Landroid/widget/Button;
    invoke-static {v1, v7}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1202(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 2865
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1, v8}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1102(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 2866
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mCancelButton:Landroid/widget/Button;
    invoke-static {v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1502(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 2867
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIconView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$4702(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2869
    invoke-direct {p0, v1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    .line 2871
    invoke-virtual {v9, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2872
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2873
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2874
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2877
    iget-object v10, v1, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/emailcommon/internet/MimeUtility;->generateAttName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2879
    iget-object v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v11, v1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-static {v10, v11, v12}, Lcom/android/email/activity/UiUtilities;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private createMockAttachment(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 3023
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3025
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3026
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3027
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3029
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 3030
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 3031
    .local v2, fw:Ljava/io/FileWriter;
    const-string v3, "MessageComposeTest This is a attachment for email testcase"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3032
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 3033
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3038
    .end local v2           #fw:Ljava/io/FileWriter;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 3034
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private doFinishLoadAttachment(J)V
    .locals 3
    .parameter "attachmentId"

    .prologue
    const/4 v2, 0x1

    .line 1382
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findOrCreateAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    .line 1383
    .local v0, info:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v0, :cond_0

    .line 1384
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoaded:Z
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1602(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z

    .line 1385
    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoadFailed:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1702(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z

    .line 1386
    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    .line 1388
    :cond_0
    return-void
.end method

.method private declared-synchronized doLinkParse(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 2885
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2886
    const-string v0, "MessageViewFragmentBase"

    const-string v1, "text is null!"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2899
    :goto_0
    monitor-exit p0

    return-void

    .line 2890
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    if-eqz v0, :cond_1

    .line 2891
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 2892
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/LinkParserTask;->stopWebView()V

    .line 2893
    const-string v0, "MessageViewFragmentBase"

    const-string v1, "doLinkParse canceled pre LinkParseTask"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    :cond_1
    new-instance v0, Lcom/android/emailcommon/utility/LinkParserTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/LinkParserTask;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    .line 2896
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2885
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doLoadMsgBackground(J)V
    .locals 3
    .parameter "msgId"

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->checkIsLowStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1591
    :goto_0
    return-void

    .line 1578
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->hasConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPartialDownload:Z

    .line 1580
    invoke-static {}, Lcom/android/email/activity/ConnectionAlertDialog;->newInstance()Lcom/android/email/activity/ConnectionAlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "connectionalertdialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1585
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPartialDownload:Z

    .line 1586
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateRemainProgress()V

    .line 1588
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ Load partial Message id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 1590
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    goto :goto_0
.end method

.method private findAttachmentInfoFromView(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 5
    .parameter "attachmentId"

    .prologue
    .line 2165
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2166
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 2168
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-wide v3, v0, Lcom/android/email/AttachmentInfo;->mId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 2172
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :goto_1
    return-object v0

    .line 2165
    .restart local v0       #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2172
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findAttachmentView(J)Landroid/view/View;
    .locals 6
    .parameter "attachmentId"

    .prologue
    .line 2514
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2515
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2516
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 2517
    .local v0, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-wide v4, v0, Lcom/android/email/AttachmentInfo;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 2521
    .end local v0           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #view:Landroid/view/View;
    :goto_1
    return-object v3

    .line 2514
    .restart local v0       #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .restart local v3       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2521
    .end local v0           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findOrCreateAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 9
    .parameter "attachmentId"

    .prologue
    const/4 v4, 0x1

    .line 2481
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfoFromView(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v2

    .line 2482
    .local v2, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v2, :cond_0

    .line 2500
    .end local v2           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :goto_0
    return-object v2

    .line 2488
    .restart local v2       #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v1

    .line 2489
    .local v1, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v1, :cond_3

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->isInlineAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 2492
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attachment is inline: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->isInlineAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2494
    invoke-direct {p0, v1, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->createAttachmentView(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)Landroid/view/View;

    move-result-object v0

    .line 2495
    .local v0, attView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attachment view is added for attachment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2497
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-object v2, v3

    goto :goto_0

    .line 2492
    .end local v0           #attView:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 2499
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No attachment view is added cause wrong attachment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2500
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private formatDate(JZ)Ljava/lang/String;
    .locals 8
    .parameter "millis"
    .parameter "withYear"

    .prologue
    .line 2351
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2352
    .local v7, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 2353
    .local v1, formatter:Ljava/util/Formatter;
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x80011

    if-eqz p3, :cond_0

    const/4 v2, 0x4

    :goto_0
    or-int v6, v3, v2

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 2358
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2353
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public static getPopupWindow(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 3180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3181
    .local v1, resources:Landroid/content/res/Resources;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040052

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 3184
    .local v2, view:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const v4, 0x7f0a0037

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 3186
    .local v0, popupWindow:Landroid/widget/PopupWindow;
    const v3, 0x7f02001b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3188
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3189
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3190
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 3191
    return-object v0
.end method

.method private static getPreviewIcon(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "attachment"

    .prologue
    .line 1899
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-wide v0, p1, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mId:J

    const/16 v4, 0x3e

    const/16 v5, 0x3e

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentThumbnailUri(JJII)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1907
    :goto_0
    return-object v0

    .line 1905
    :catch_0
    move-exception v6

    .line 1906
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attachment preview failed with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTabContentViewForFlag(I)Landroid/view/View;
    .locals 1
    .parameter "tabFlag"

    .prologue
    .line 920
    packed-switch p1, :pswitch_data_0

    .line 928
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 922
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    .line 926
    :goto_0
    return-object v0

    .line 924
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsScroll:Landroid/view/View;

    goto :goto_0

    .line 926
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteScroll:Landroid/view/View;

    goto :goto_0

    .line 920
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getTabViewForFlag(I)Landroid/view/View;
    .locals 1
    .parameter "tabFlag"

    .prologue
    .line 908
    packed-switch p1, :pswitch_data_0

    .line 916
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 910
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 914
    :goto_0
    return-object v0

    .line 912
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    goto :goto_0

    .line 914
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    goto :goto_0

    .line 908
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getWebViewZoom()I
    .locals 3

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v0

    .line 791
    .local v0, zoom:I
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->sZoomSizes:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 792
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->sZoomSizes:[Ljava/lang/String;

    .line 796
    :cond_0
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->sZoomSizes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private hideDetails()V
    .locals 3

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAddressesView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->updateAddressesView(Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1464
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsCollapsed:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1465
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1466
    return-void
.end method

.method private initContactStatusViews()V
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    .line 802
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDefaultQuickContactBadgeImage()V

    .line 803
    return-void
.end method

.method private isInlineAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)Z
    .locals 2
    .parameter "attachment"
    .parameter "message"
    .parameter "htmlText"

    .prologue
    const/4 v0, 0x1

    .line 3056
    if-eqz p2, :cond_1

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-ne v1, v0, :cond_1

    .line 3057
    if-eqz p3, :cond_2

    invoke-static {p3, p1}, Lcom/android/emailcommon/utility/Utility;->isAttchmentInlineStrictly(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3065
    :cond_0
    :goto_0
    return v0

    .line 3061
    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3065
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 839
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadsImagesAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 941
    :cond_0
    return-void
.end method

.method private static makeVisible(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "visible"

    .prologue
    .line 832
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 833
    .local v0, visibility:I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 834
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 836
    :cond_0
    return-void

    .line 832
    .end local v0           #visibility:I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private onAllowViewAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 3
    .parameter "attachment"

    .prologue
    .line 1303
    iget-boolean v1, p1, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    if-nez v1, :cond_0

    .line 1304
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p1, Lcom/android/email/AttachmentInfo;->mDenyFlags:I

    invoke-static {v1, v2}, Lcom/android/email/activity/AttachmentInfoDialog;->newInstance(Landroid/content/Context;I)Lcom/android/email/activity/AttachmentInfoDialog;

    move-result-object v0

    .line 1306
    .local v0, dialog:Lcom/android/email/activity/AttachmentInfoDialog;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1307
    const/4 v1, 0x0

    .line 1309
    .end local v0           #dialog:Lcom/android/email/activity/AttachmentInfoDialog;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 3
    .parameter "attachment"

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->cancelLoadAttachment(J)V

    .line 1372
    const/4 v0, 0x1

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIsUserCancelled:Z
    invoke-static {p1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1802(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z

    .line 1373
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    .line 1374
    return-void
.end method

.method private onClickSender()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 968
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 972
    .local v0, senderEmail:Lcom/android/emailcommon/mail/Address;
    if-eqz v0, :cond_0

    .line 976
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    if-nez v1, :cond_2

    .line 978
    iput v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    goto :goto_0

    .line 981
    :cond_2
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    if-eq v1, v2, :cond_0

    .line 986
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Lcom/android/email/activity/UiUtilities;->showContacts(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Lcom/android/emailcommon/mail/Address;)V

    goto :goto_0
.end method

.method private onDownloadAttachmentSilently(J)V
    .locals 4
    .parameter "attachmentId"

    .prologue
    .line 1795
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 1796
    .local v0, pref:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->checkLowStorage()V

    .line 1797
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getLowStorage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1809
    :cond_0
    :goto_0
    return-void

    .line 1801
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->hasConnectivity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1805
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1806
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->triggerDownload(J)V

    goto :goto_0

    .line 1807
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;I)V
    .locals 9
    .parameter "attachment"
    .parameter "requestType"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1314
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v8

    .line 1315
    .local v8, pref:Lcom/android/email/Preferences;
    invoke-virtual {v8}, Lcom/android/email/Preferences;->getLowStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f08000e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1318
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f08000c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1320
    const-string v0, "onLoadAttachment canceled due to low storage"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1367
    :goto_0
    return-void

    .line 1324
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->hasConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1325
    invoke-static {}, Lcom/android/email/activity/ConnectionAlertDialog;->newInstance()Lcom/android/email/activity/ConnectionAlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "connectionalertdialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1330
    :cond_1
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSaveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1331
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mOpenButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1334
    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->getQueueSize()I

    move-result v0

    if-nez v0, :cond_2

    .line 1337
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mCancelButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$2;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/email/activity/MessageViewFragmentBase$2;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1362
    :goto_1
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoadFailed:Z
    invoke-static {p1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1702(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z

    .line 1363
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIsUserCancelled:Z
    invoke-static {p1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1802(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z

    .line 1364
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mCancelButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1365
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->showProgressIndeterminate()V

    .line 1366
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/AttachmentInfo;->mId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->loadAttachment(JJJI)V

    goto :goto_0

    .line 1357
    :cond_2
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mCancelButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private onOpenAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const v8, 0x7f080117

    const v7, 0x7f0800f3

    .line 1236
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 1240
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v0, :cond_2

    .line 1241
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 1242
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateDeletedAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_0

    .line 1246
    :cond_2
    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 1247
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1252
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onAllowViewAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1259
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1260
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 1261
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080022

    invoke-static {v3, v4}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1264
    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;I)V

    goto :goto_0

    .line 1270
    :cond_5
    iget-boolean v3, p1, Lcom/android/email/AttachmentInfo;->mAllowInstall:Z

    if-eqz v3, :cond_9

    .line 1271
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1272
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1275
    :cond_6
    iget-boolean v3, p1, Lcom/android/email/AttachmentInfo;->mIsLocal:Z

    if-nez v3, :cond_9

    .line 1278
    iget-boolean v3, p1, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1279
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1284
    :cond_8
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isFileSaved()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1285
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->performAttachmentSave(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_9

    .line 1287
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1295
    :cond_9
    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/email/AttachmentInfo;->getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    .line 1296
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1297
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1298
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method private onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const v8, 0x7f0800f3

    const/4 v7, 0x0

    .line 1099
    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 1100
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getExternalStorageAvailableSize(Landroid/content/Context;)J

    move-result-wide v1

    .line 1108
    .local v1, sdCardSize:J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 1109
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1112
    :cond_2
    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    .line 1113
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080064

    invoke-static {v3, v4}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1117
    :cond_3
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isFileSaved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1121
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSaveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1122
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mOpenButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1123
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->performAttachmentSave(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Ljava/io/File;

    move-result-object v0

    .line 1124
    .local v0, savedFile:Ljava/io/File;
    if-eqz v0, :cond_4

    .line 1125
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v5, 0x7f08006f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->getSavedPath()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1300(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1128
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private onSaveClicked(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 1051
    .local v0, info:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-object v1, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/activity/RenameAttachmentFileDialog;->isFileNameValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->performeSaveAction(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 1058
    :goto_0
    return-void

    .line 1054
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open rename dialog, attachment original name: + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1055
    invoke-static {v0, p0}, Lcom/android/email/activity/RenameAttachmentFileDialog;->newInstance(Lcom/android/email/AttachmentInfo;Landroid/app/Fragment;)Lcom/android/email/activity/RenameAttachmentFileDialog;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "RenameAttachmentFileDialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVipSwitcherClick()V
    .locals 3

    .prologue
    .line 3072
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3085
    :cond_0
    :goto_0
    return-void

    .line 3075
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 3076
    .local v1, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 3077
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    if-eqz v0, :cond_0

    .line 3080
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/email/emailvip/VipMemberCache;->isVIP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3081
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->removeVip(Lcom/android/emailcommon/mail/Address;)V

    goto :goto_0

    .line 3083
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->addVip(Lcom/android/emailcommon/mail/Address;)V

    goto :goto_0
.end method

.method private performAttachmentSave(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Ljava/io/File;
    .locals 21
    .parameter "info"

    .prologue
    .line 1148
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/email/AttachmentInfo;->mSize:J

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1150
    :cond_0
    const/16 v17, 0x0

    .line 1231
    :goto_0
    return-object v17

    .line 1153
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v11

    .line 1154
    .local v11, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v11, :cond_2

    .line 1156
    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateDeletedAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 1157
    const/16 v17, 0x0

    goto :goto_0

    .line 1160
    :cond_2
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    iget-wide v8, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v8, v9}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v12

    .line 1164
    .local v12, attachmentUri:Landroid/net/Uri;
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v13

    .line 1166
    .local v13, attsSavedPath:Ljava/lang/String;
    :try_start_0
    new-instance v16, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    .local v16, downloads:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1168
    const-string v3, "MessageViewFragmentBase performAttachmentSave mkdirs failed"

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    .line 1171
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 1172
    .local v17, file:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageViewFragmentBase performAttachmentSave save attachment to external storage. attachment.mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", attachment.mFileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1175
    const/4 v14, 0x0

    .line 1177
    .local v14, contentUri:Landroid/net/Uri;
    sget-boolean v3, Lcom/android/emailcommon/Configuration;->mIsRunTestcase:Z

    if-nez v3, :cond_4

    .line 1178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v12}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    .line 1185
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 1186
    .local v18, in:Ljava/io/InputStream;
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1187
    .local v20, out:Ljava/io/OutputStream;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v15

    .line 1188
    .local v15, copyLength:I
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 1189
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    .line 1190
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 1191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageViewFragmentBase performAttachmentSave attachment saved as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1193
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 1198
    .local v7, absolutePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v4, v5, v8}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 1201
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "download"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 1207
    .local v2, dm:Landroid/app/DownloadManager;
    const-string v3, "application/dcf"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1208
    const-string v6, "application/vnd.oma.drm.content"

    .line 1213
    .local v6, mimeType:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/email/AttachmentInfo;->mSize:J

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    .line 1219
    move-object/from16 v0, p1

    #calls: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->setSavedPath(Ljava/lang/String;)V
    invoke-static {v0, v7}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    goto/16 :goto_0

    .line 1182
    .end local v2           #dm:Landroid/app/DownloadManager;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #absolutePath:Ljava/lang/String;
    .end local v15           #copyLength:I
    .end local v18           #in:Ljava/io/InputStream;
    .end local v20           #out:Ljava/io/OutputStream;
    :cond_4
    :try_start_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->createMockAttachment(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_1

    .line 1210
    .restart local v2       #dm:Landroid/app/DownloadManager;
    .restart local v7       #absolutePath:Ljava/lang/String;
    .restart local v15       #copyLength:I
    .restart local v18       #in:Ljava/io/InputStream;
    .restart local v20       #out:Ljava/io/OutputStream;
    :cond_5
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v6       #mimeType:Ljava/lang/String;
    goto :goto_2

    .line 1223
    .end local v2           #dm:Landroid/app/DownloadManager;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #absolutePath:Ljava/lang/String;
    .end local v14           #contentUri:Landroid/net/Uri;
    .end local v15           #copyLength:I
    .end local v16           #downloads:Ljava/io/File;
    .end local v17           #file:Ljava/io/File;
    .end local v18           #in:Ljava/io/InputStream;
    .end local v20           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v19

    .line 1225
    .local v19, ioe:Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageViewFragmentBase performAttachmentSave exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1228
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    .line 1231
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1228
    .end local v19           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    throw v3
.end method

.method private performeSaveAction(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1087
    const-string v0, "MessageViewFragmentBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAttachmentStorePosition->uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/email/AttachmentInfo;->mContentURI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/email/AttachmentInfo;->mContentURI:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->isAttachmentExistFromUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 1095
    :goto_0
    return-void

    .line 1090
    :cond_0
    iget-object v0, p1, Lcom/android/email/AttachmentInfo;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1091
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080022

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1093
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;I)V

    goto :goto_0
.end method

.method private queryContactStatus()V
    .locals 6

    .prologue
    .line 1532
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1535
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->initContactStatusViews()V

    .line 1538
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 1539
    .local v1, sender:Lcom/android/emailcommon/mail/Address;
    if-eqz v1, :cond_0

    .line 1540
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1541
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1542
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter "bodyText"
    .parameter "bodyHtml"
    .parameter "autoShowPictures"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2370
    const/4 v3, 0x0

    .line 2371
    .local v3, text:Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 2372
    const/4 v0, 0x0

    .line 2373
    .local v0, hasImages:Z
    const/4 v1, 0x0

    .line 2375
    .local v1, query:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    invoke-interface {v4}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onGetQueryTerm()Ljava/lang/String;

    move-result-object v1

    .line 2376
    if-nez p2, :cond_6

    .line 2377
    move-object v3, p1

    .line 2379
    if-eqz v3, :cond_0

    .line 2380
    invoke-static {v3}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2385
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "<html><body>"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2386
    .local v2, sb:Ljava/lang/StringBuffer;
    if-eqz v3, :cond_1

    .line 2387
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2391
    :cond_1
    const-string v4, "<br/></br><br/></br></body></html>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2393
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2404
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 2405
    invoke-static {v3, v1}, Lcom/android/emailcommon/utility/TextUtilities;->highlightTermsInHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2407
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2408
    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 2415
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlwaysShowPicturesButton:Landroid/view/View;

    invoke-static {v4, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2416
    if-eqz v0, :cond_4

    .line 2417
    iget-boolean v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredPictureLoaded:Z

    if-nez v4, :cond_3

    if-eqz p3, :cond_8

    .line 2418
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->blockNetworkLoads(Z)V

    .line 2419
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    .line 2421
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlwaysShowPicturesButton:Landroid/view/View;

    if-nez p3, :cond_7

    move v4, v5

    :goto_1
    invoke-static {v7, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2424
    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredPictureLoaded:Z

    .line 2429
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Lcom/android/email/view/NonLockingScrollView;

    invoke-virtual {v4}, Lcom/android/email/view/NonLockingScrollView;->isScrollFreeze()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2430
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Lcom/android/email/view/NonLockingScrollView;

    invoke-virtual {v4, v6, v6}, Lcom/android/email/view/NonLockingScrollView;->scrollTo(II)V

    .line 2432
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageHtml(Ljava/lang/String;)V

    .line 2434
    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    .line 2435
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    new-array v7, v5, [Ljava/lang/Long;

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v4, v7}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 2436
    iput-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    .line 2437
    return-void

    .line 2396
    :cond_6
    const-string v4, "</body></html>"

    const-string v7, "<br/></br><br/></br></body></html>"

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2398
    move-object v3, p2

    .line 2399
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 2400
    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0

    :cond_7
    move v4, v6

    .line 2421
    goto :goto_1

    .line 2426
    :cond_8
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    goto :goto_2
.end method

.method private removeVip(Lcom/android/emailcommon/mail/Address;)V
    .locals 3
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 3092
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 3093
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$4;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Address;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 3117
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " restoreInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 657
    const-string v1, "MessageViewFragmentBase.currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    .line 658
    const-string v1, "MessageViewFragmentBase.pictureLoaded"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredPictureLoaded:Z

    .line 660
    const-string v1, "MessageViewFragmentBase.particalDownload"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPartialDownload:Z

    .line 661
    const-string v1, "MessageViewFragmentBase.messageKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    .line 667
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 668
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 669
    const-string v1, "messageId"

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 674
    :cond_0
    const-string v1, "MessageViewFragmentBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreInstanceState BUNDLE_KEY_PARTIAL_DOWNLOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPartialDownload:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "restoreInstanceState BUNDLE_KEY_mMessageId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method private setAttachmentCount(I)V
    .locals 4
    .parameter "count"

    .prologue
    const/16 v3, 0x65

    const/4 v2, 0x1

    .line 818
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    .line 819
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    if-lez v0, :cond_0

    .line 820
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    .line 829
    :goto_0
    return-void

    .line 823
    :cond_0
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    .line 824
    const-string v0, "mAttachmentCount == 0 and switch to MessageTab"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 825
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    .line 827
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->clearTabFlags(I)V

    goto :goto_0
.end method

.method private setCurrentTab(I)V
    .locals 6
    .parameter "tab"

    .prologue
    const/16 v5, 0x67

    const/16 v3, 0x66

    const/4 v1, 0x1

    const/16 v4, 0x65

    const/4 v2, 0x0

    .line 884
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    .line 887
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabContentViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 888
    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabContentViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 889
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabContentViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 890
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 891
    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 892
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 894
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRemainBtnView:Landroid/widget/LinearLayout;

    if-ne p1, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 896
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabContentViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 897
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 900
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNeedReloadMessageContent:Z

    if-eqz v0, :cond_0

    if-ne p1, v4, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageHtml(Ljava/lang/String;)V

    .line 902
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNeedReloadMessageContent:Z

    .line 905
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 894
    goto :goto_0
.end method

.method private static setDetailsRow(Landroid/view/View;Ljava/lang/String;II)V
    .locals 2
    .parameter "root"
    .parameter "text"
    .parameter "textViewId"
    .parameter "rowViewId"

    .prologue
    .line 1469
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1475
    :goto_0
    return-void

    .line 1473
    :cond_0
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1474
    invoke-static {p0, p2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMessageHtml(Ljava/lang/String;)V
    .locals 7
    .parameter "html"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 944
    if-nez p1, :cond_0

    .line 945
    const-string p1, ""

    .line 947
    :cond_0
    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    move v6, v0

    .line 948
    .local v6, picturesAlreadyLoaded:Z
    :goto_0
    if-eqz v6, :cond_3

    .line 949
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->loadsImagesAutomatically(Z)V

    .line 954
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 958
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    const-string v1, "email://"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->doLinkParse(Ljava/lang/String;)V

    .line 961
    :cond_1
    return-void

    .end local v6           #picturesAlreadyLoaded:Z
    :cond_2
    move v6, v1

    .line 947
    goto :goto_0

    .line 951
    .restart local v6       #picturesAlreadyLoaded:Z
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->loadsImagesAutomatically(Z)V

    .line 952
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    goto :goto_1
.end method

.method private setShowImagesForSender()V
    .locals 9

    .prologue
    .line 2747
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0f00d1

    invoke-static {v7, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2748
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0800fa

    invoke-static {v7, v8}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 2751
    iget v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabs(I)V

    .line 2753
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 2754
    .local v2, fromList:[Lcom/android/emailcommon/mail/Address;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v5

    .line 2755
    .local v5, prefs:Lcom/android/email/Preferences;
    move-object v0, v2

    .local v0, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 2756
    .local v6, sender:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2757
    .local v1, email:Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/android/email/Preferences;->setSenderAsTrusted(Ljava/lang/String;)V

    .line 2755
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2759
    .end local v1           #email:Ljava/lang/String;
    .end local v6           #sender:Lcom/android/emailcommon/mail/Address;
    :cond_0
    return-void
.end method

.method private shouldShowImagesFor(Ljava/lang/String;)Z
    .locals 1
    .parameter "senderEmail"

    .prologue
    .line 2743
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/Preferences;->shouldShowImagesFor(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showContent(ZZ)V
    .locals 2
    .parameter "showContent"
    .parameter "showProgressWhenHidden"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Lcom/android/email/view/NonLockingScrollView;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 717
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 718
    return-void

    .line 717
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDefaultQuickContactBadgeImage()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 807
    return-void
.end method

.method private showDetails()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1405
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    const/4 v7, 0x0

    .line 1411
    .local v7, done:Z
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsFilled:Z

    if-nez v0, :cond_3

    .line 1412
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {p0, v4, v5, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDate(JZ)Ljava/lang/String;

    move-result-object v6

    .line 1413
    .local v6, date:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const v4, 0x7f0f00b6

    const v5, 0x7f0f00c5

    invoke-static {v0, v6, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->setDetailsRow(Landroid/view/View;Ljava/lang/String;II)V

    .line 1415
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const v5, 0x7f0f0010

    invoke-static {v0, v4, v5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->setRowVisibility(Ljava/lang/String;Landroid/view/View;I)V

    .line 1416
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const v5, 0x7f0f00c7

    invoke-static {v0, v4, v5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->setRowVisibility(Ljava/lang/String;Landroid/view/View;I)V

    .line 1417
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const v5, 0x7f0f00c9

    invoke-static {v0, v4, v5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->setRowVisibility(Ljava/lang/String;Landroid/view/View;I)V

    .line 1419
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->getAllAddresses(Lcom/android/emailcommon/provider/EmailContent$Message;)[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v1

    .line 1420
    .local v1, allAddresses:[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    array-length v0, v1

    if-eqz v0, :cond_0

    .line 1423
    const/4 v0, 0x3

    new-array v2, v0, [Landroid/widget/LinearLayout;

    .line 1424
    .local v2, layout:[Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const v4, 0x7f0f00c6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v3

    .line 1425
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const v4, 0x7f0f00c8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v8

    .line 1426
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const v4, 0x7f0f00ca

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v10

    .line 1428
    aget-object v0, v2, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1429
    aget-object v0, v2, v8

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1430
    aget-object v0, v2, v10

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1435
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getPopupWindow(Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPopUp:Landroid/widget/PopupWindow;

    .line 1436
    array-length v0, v1

    if-gt v0, v9, :cond_2

    .line 1437
    array-length v4, v1

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPopUp:Landroid/widget/PopupWindow;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->setDetailsLayout(Lcom/android/email/activity/MessageViewFragmentBase;[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;[Landroid/widget/LinearLayout;IILandroid/widget/PopupWindow;)V

    .line 1439
    const/4 v7, 0x1

    .line 1445
    :goto_1
    iput-boolean v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsFilled:Z

    .line 1446
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsCollapsed:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1447
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1448
    if-nez v7, :cond_0

    .line 1449
    array-length v4, v1

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPopUp:Landroid/widget/PopupWindow;

    move-object v0, p0

    move v3, v9

    invoke-static/range {v0 .. v5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->setDetailsLayout(Lcom/android/email/activity/MessageViewFragmentBase;[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;[Landroid/widget/LinearLayout;IILandroid/widget/PopupWindow;)V

    goto/16 :goto_0

    .line 1441
    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPopUp:Landroid/widget/PopupWindow;

    move-object v0, p0

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->setDetailsLayout(Lcom/android/email/activity/MessageViewFragmentBase;[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;[Landroid/widget/LinearLayout;IILandroid/widget/PopupWindow;)V

    goto :goto_1

    .line 1454
    .end local v1           #allAddresses:[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    .end local v2           #layout:[Landroid/widget/LinearLayout;
    .end local v6           #date:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsCollapsed:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1455
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1456
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->updateDetailsExpanded(Landroid/content/Context;Landroid/view/View;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V

    goto/16 :goto_0
.end method

.method private showPicturesInHtml()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1391
    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    move v0, v1

    .line 1392
    .local v0, picturesAlreadyLoaded:Z
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 1393
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->blockNetworkLoads(Z)V

    .line 1396
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f00d1

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1398
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    .line 1400
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageHtml(Ljava/lang/String;)V

    .line 1402
    :cond_0
    return-void

    .end local v0           #picturesAlreadyLoaded:Z
    :cond_1
    move v0, v2

    .line 1391
    goto :goto_0
.end method

.method private triggerDownload(J)V
    .locals 8
    .parameter "attachmentId"

    .prologue
    .line 1780
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1781
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1782
    .local v1, id:J
    const-string v0, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++++++ try to download attachmentId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in background!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller;->loadAttachment(JJJ)V

    .line 1785
    monitor-exit v7

    .line 1786
    return-void

    .line 1785
    .end local v1           #id:J
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V
    .locals 11
    .parameter "attachmentInfo"
    .parameter "isUpdateIcon"

    .prologue
    const v10, 0x7f0800ea

    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2089
    if-nez p1, :cond_0

    .line 2162
    :goto_0
    return-void

    .line 2092
    :cond_0
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mOpenButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v3

    .line 2093
    .local v3, openButton:Landroid/widget/Button;
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSaveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v4

    .line 2094
    .local v4, saveButton:Landroid/widget/Button;
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mCancelButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    .line 2096
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2097
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2102
    if-eqz p1, :cond_1

    iget v7, p1, Lcom/android/email/AttachmentInfo;->mDenyFlags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_1

    .line 2104
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2105
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 2110
    :cond_1
    iget-wide v7, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v7, v8}, Lcom/android/email/service/AttachmentDownloadService;->isAttachmentQueued(J)Z

    move-result v1

    .line 2111
    .local v1, isDownloading:Z
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoaded:Z
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2116
    const/16 v7, 0x64

    invoke-virtual {p1, v7}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->showProgress(I)V

    .line 2117
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2118
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2119
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isFileSaved()Z

    move-result v2

    .line 2120
    .local v2, isFileSaved:Z
    if-eqz v2, :cond_2

    if-eqz v1, :cond_7

    .line 2121
    :cond_2
    if-nez v1, :cond_6

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2122
    const v5, 0x7f0800ef

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2127
    :goto_2
    iget-boolean v5, p1, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    if-eqz v5, :cond_4

    .line 2129
    iget-object v5, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v6, "audio/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2131
    :cond_3
    const v5, 0x7f0800ec

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2138
    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    iget-wide v5, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    .line 2139
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updatePreviewIcon(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 2159
    .end local v2           #isFileSaved:Z
    :cond_5
    :goto_4
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2160
    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2161
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .restart local v2       #isFileSaved:Z
    :cond_6
    move v5, v6

    .line 2121
    goto :goto_1

    .line 2124
    :cond_7
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2125
    const v5, 0x7f0800f0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2132
    :cond_8
    iget-boolean v5, p1, Lcom/android/email/AttachmentInfo;->mAllowInstall:Z

    if-eqz v5, :cond_9

    .line 2133
    const v5, 0x7f0800eb

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 2135
    :cond_9
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 2145
    .end local v2           #isFileSaved:Z
    :cond_a
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 2147
    if-eqz v1, :cond_b

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIsUserCancelled:Z
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 2148
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->showProgressIndeterminate()V

    .line 2149
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2150
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2151
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 2153
    :cond_b
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2154
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2155
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2156
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->hideProgress()V

    goto :goto_4
.end method

.method private updateAttachmentTab()V
    .locals 7

    .prologue
    .line 2069
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2070
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2071
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 2072
    .local v3, oldInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v3, v6}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    .line 2075
    .local v2, newInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    .line 2076
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2069
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2078
    .end local v2           #newInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #oldInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private updateDeletedAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 1137
    const/16 v0, 0x40

    iput v0, p1, Lcom/android/email/AttachmentInfo;->mDenyFlags:I

    .line 1138
    iput-boolean v1, p1, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    .line 1139
    iput-boolean v1, p1, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    .line 1140
    iput-boolean v1, p1, Lcom/android/email/AttachmentInfo;->mAllowInstall:Z

    .line 1141
    invoke-direct {p0, p1, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    .line 1142
    const-string v0, "MessageViewFragmentBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attachment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be found in DB, reset UI buttons"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method private updatePreviewIcon(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 2
    .parameter "attachmentInfo"

    .prologue
    .line 2708
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 2709
    return-void
.end method

.method private updateRemainMsgInfo(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x2

    .line 2193
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRemainBtnView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2194
    if-nez p1, :cond_1

    .line 2234
    :cond_0
    :goto_0
    return-void

    .line 2201
    :cond_1
    iget v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-ne v3, v7, :cond_0

    .line 2202
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2203
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040051

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2204
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0f00f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2205
    .local v1, msgRemainBtn:Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2207
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++++ remaining message id is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iget v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-ne v3, v7, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v1, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2232
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRemainBtnView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2231
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateRemainProgress()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2176
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRemainBtnView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2178
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2179
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040051

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2180
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0f00f4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2181
    .local v3, msgRemainBtn:Landroid/widget/TextView;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2183
    const v5, 0x7f0f00f6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 2184
    .local v2, msgProgress:Landroid/widget/ProgressBar;
    const v5, 0x7f0f00f5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2186
    .local v1, msgLoading:Landroid/widget/TextView;
    invoke-static {v2, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2187
    invoke-static {v1, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2189
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRemainBtnView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2190
    return-void
.end method

.method private updateTabs(I)V
    .locals 11
    .parameter "tabFlags"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 846
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    .line 848
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    and-int/lit8 v5, p1, 0x3

    if-eqz v5, :cond_3

    move v1, v3

    .line 854
    .local v1, messageTabVisible:Z
    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-static {v5, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 855
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_4

    move v5, v3

    :goto_2
    invoke-static {v6, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 856
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_5

    move v5, v3

    :goto_3
    invoke-static {v6, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 858
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_6

    move v0, v3

    .line 859
    .local v0, hasPictures:Z
    :goto_4
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_7

    move v2, v3

    .line 860
    .local v2, pictureLoaded:Z
    :goto_5
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowPicturesTab:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    if-nez v2, :cond_8

    move v5, v3

    :goto_6
    invoke-static {v6, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 862
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0006

    iget v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    new-array v9, v3, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowPicturesTab:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlwaysShowPicturesButton:Landroid/view/View;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_2
    :goto_7
    invoke-static {v5, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 872
    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 873
    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    .line 874
    iput v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    goto/16 :goto_0

    .end local v0           #hasPictures:Z
    .end local v1           #messageTabVisible:Z
    .end local v2           #pictureLoaded:Z
    :cond_3
    move v1, v4

    .line 852
    goto/16 :goto_1

    .restart local v1       #messageTabVisible:Z
    :cond_4
    move v5, v4

    .line 855
    goto/16 :goto_2

    :cond_5
    move v5, v4

    .line 856
    goto/16 :goto_3

    :cond_6
    move v0, v4

    .line 858
    goto :goto_4

    .restart local v0       #hasPictures:Z
    :cond_7
    move v2, v4

    .line 859
    goto :goto_5

    .restart local v2       #pictureLoaded:Z
    :cond_8
    move v5, v4

    .line 860
    goto :goto_6

    :cond_9
    move v3, v4

    .line 867
    goto :goto_7
.end method

.method private updateVipIcon(Z)V
    .locals 3
    .parameter "isVip"

    .prologue
    const/4 v2, 0x0

    .line 3163
    if-eqz p1, :cond_0

    .line 3164
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3165
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRemoveVipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3166
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3174
    :goto_0
    return-void

    .line 3169
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAddVipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3171
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected final addTabFlags(I)V
    .locals 1
    .parameter "tabFlags"

    .prologue
    .line 810
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    or-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabs(I)V

    .line 811
    return-void
.end method

.method public clearIsMessageLoadedForTest()V
    .locals 1

    .prologue
    .line 2766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    .line 2767
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageViewFragment dispatchKeyevent event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 708
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide v0
.end method

.method public getAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 1
    .parameter "attachmentId"

    .prologue
    .line 3006
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findOrCreateAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentsView()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected final getCallback()Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    return-object v0
.end method

.method protected final getController()Lcom/android/email/Controller;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method public final getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method public injectMockController(Lcom/android/email/Controller;)V
    .locals 2
    .parameter "mockController"

    .prologue
    .line 3014
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    .line 3015
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 3016
    return-void
.end method

.method public isMessageLoadedForTest()Z
    .locals 1

    .prologue
    .line 2762
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    return v0
.end method

.method public isMessageLoading()Z
    .locals 1

    .prologue
    .line 2902
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageLoading:Z

    return v0
.end method

.method protected final isMessageOpen()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Lcom/android/email/view/NonLockingScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->fling(I)V

    .line 463
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 464
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 465
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 467
    return-void
.end method

.method public needUpdateVipIcon(Lcom/android/emailcommon/mail/Address;)Z
    .locals 4
    .parameter "changedAddress"

    .prologue
    const/4 v2, 0x0

    .line 2971
    if-nez p1, :cond_1

    .line 2982
    :cond_0
    :goto_0
    return v2

    .line 2974
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 2975
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    if-eqz v0, :cond_0

    .line 2978
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2979
    .local v1, emailAddress:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2980
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onActivityCreated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 453
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 454
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->loadMessage()V

    .line 458
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->installFragment(Landroid/app/Fragment;)V

    .line 459
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onAttach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 348
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 349
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1526
    :goto_0
    return-void

    .line 1482
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1494
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_0

    .line 1484
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onClickSender()V

    goto :goto_0

    .line 1488
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveClicked(Landroid/view/View;)V

    goto :goto_0

    .line 1491
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onOpenAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_0

    .line 1497
    :sswitch_4
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto :goto_0

    .line 1500
    :sswitch_5
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto :goto_0

    .line 1503
    :sswitch_6
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto :goto_0

    .line 1506
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPicturesInHtml()V

    goto :goto_0

    .line 1509
    :sswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->setShowImagesForSender()V

    goto :goto_0

    .line 1512
    :sswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDetails()V

    goto :goto_0

    .line 1515
    :sswitch_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->hideDetails()V

    goto :goto_0

    .line 1518
    :sswitch_b
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->doLoadMsgBackground(J)V

    goto :goto_0

    .line 1522
    :sswitch_c
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onVipSwitcherClick()V

    goto :goto_0

    .line 1482
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0001 -> :sswitch_0
        0x7f0f001a -> :sswitch_2
        0x7f0f00c1 -> :sswitch_3
        0x7f0f00d0 -> :sswitch_7
        0x7f0f00d1 -> :sswitch_8
        0x7f0f00d2 -> :sswitch_4
        0x7f0f00d3 -> :sswitch_5
        0x7f0f00d4 -> :sswitch_6
        0x7f0f00df -> :sswitch_1
        0x7f0f00e3 -> :sswitch_c
        0x7f0f00ea -> :sswitch_9
        0x7f0f00ed -> :sswitch_a
        0x7f0f00f4 -> :sswitch_b
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 356
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 358
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    .line 364
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    .line 365
    new-instance v1, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    invoke-direct {v1, v2, v3}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 367
    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    .line 369
    if-eqz p1, :cond_0

    .line 370
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 374
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRemoveVipIcon:Landroid/graphics/drawable/Drawable;

    .line 375
    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAddVipIcon:Landroid/graphics/drawable/Drawable;

    .line 377
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " onCreateView"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 385
    const v3, 0x7f040046

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 387
    .local v1, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cleanupDetachedViews()V

    .line 389
    const v3, 0x7f0f0082

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    .line 390
    const v3, 0x7f0f00e0

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    .line 391
    const v3, 0x7f0f00e2

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromAddressView:Landroid/widget/TextView;

    .line 393
    const v3, 0x7f0f00e3

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    .line 394
    const v3, 0x7f0f00eb

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAddressesView:Landroid/widget/TextView;

    .line 395
    const v3, 0x7f0f00ec

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    .line 396
    const v3, 0x7f0f00ac

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    .line 398
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->enableEmailUsingFlag()V

    .line 399
    const v3, 0x7f0f00a5

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    .line 400
    const v3, 0x7f0f00d5

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRemainBtnView:Landroid/widget/LinearLayout;

    .line 401
    const v3, 0x7f0f00cf

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    .line 402
    const v3, 0x7f0f00df

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    .line 403
    const v3, 0x7f0f00e1

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;

    .line 404
    const v3, 0x7f0f00cc

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/email/view/NonLockingScrollView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Lcom/android/email/view/NonLockingScrollView;

    .line 405
    const v3, 0x7f0f00cb

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    .line 406
    const v3, 0x7f0f00ea

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsCollapsed:Landroid/view/View;

    .line 407
    const v3, 0x7f0f00ed

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    .line 409
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    const v3, 0x7f0f00d2

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 418
    const v3, 0x7f0f00d4

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    .line 419
    const v3, 0x7f0f00d0

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowPicturesTab:Landroid/widget/TextView;

    .line 420
    const v3, 0x7f0f00d1

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlwaysShowPicturesButton:Landroid/view/View;

    .line 422
    const v3, 0x7f0f00d3

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    .line 424
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowPicturesTab:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlwaysShowPicturesButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsCollapsed:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    const v3, 0x7f0f00d7

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsScroll:Landroid/view/View;

    .line 433
    const v3, 0x7f0f00d6

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteScroll:Landroid/view/View;

    .line 435
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 436
    .local v2, webSettings:Landroid/webkit/WebSettings;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 438
    .local v0, supportMultiTouch:Z
    if-nez v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 439
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 440
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 441
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 442
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 443
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Lcom/android/email/view/NonLockingScrollView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 444
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Lcom/android/email/view/NonLockingScrollView;

    const/high16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 445
    return-object v1

    :cond_0
    move v3, v5

    .line 438
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->stopLoading()V

    .line 609
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cleanupDetachedViews()V

    .line 611
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 612
    .local v0, a:Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/email/activity/FragmentInstallable;

    if-eqz v1, :cond_0

    .line 613
    check-cast v0, Lcom/android/email/activity/FragmentInstallable;

    .end local v0           #a:Landroid/app/Activity;
    invoke-interface {v0, p0}, Lcom/android/email/activity/FragmentInstallable;->onRemoveFragment(Landroid/app/Fragment;)V

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPopUp:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 618
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPopUp:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 621
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 622
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDestroyView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 576
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->uninstallFragment(Landroid/app/Fragment;)V

    .line 577
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 578
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPartialDownload:Z

    .line 584
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 585
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDetach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 629
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 630
    return-void
.end method

.method protected onMessageShown(JLcom/android/emailcommon/provider/Mailbox;)V
    .locals 0
    .parameter "messageId"
    .parameter "mailbox"

    .prologue
    .line 1710
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 559
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getWebViewZoom()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastZoomSize:I

    .line 560
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 561
    return-void
.end method

.method protected onPostLoadBody()V
    .locals 0

    .prologue
    .line 1716
    return-void
.end method

.method public onRenameCanceled(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1076
    const-string v0, "MessageViewFragmentBase"

    const-string v1, "cancel dialog"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method public onRenameFinished(JLjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 1066
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findOrCreateAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    .line 1067
    .local v0, info:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v0, :cond_0

    .line 1068
    iput-object p3, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    .line 1069
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->performeSaveAction(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 1071
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 525
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 527
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastZoomSize:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastZoomSize:I

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getWebViewZoom()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->loadMessage()V

    .line 538
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mOnStartExecuted:Z

    if-eqz v0, :cond_1

    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mOnStartExecuted:Z

    .line 547
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentTab()V

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateVipInformation(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V

    .line 552
    return-void

    .line 541
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->queryContactStatus()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onSaveInstanceState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 641
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 642
    const-string v0, "MessageViewFragmentBase.currentTab"

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 643
    const-string v1, "MessageViewFragmentBase.pictureLoaded"

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    const-string v0, "MessageViewFragmentBase.particalDownload"

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPartialDownload:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 645
    const-string v0, "MessageViewFragmentBase.messageKey"

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 646
    const-string v0, "MessageViewFragmentBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState BUNDLE_KEY_PARTIAL_DOWNLOAD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPartialDownload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BUNDLE_KEY_MESSAGE_KEY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mOnStartExecuted:Z

    .line 517
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 518
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 568
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 569
    return-void
.end method

.method protected abstract openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
.end method

.method protected reloadMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .parameter "activity"

    .prologue
    .line 1565
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 12
    .parameter "message"
    .parameter "okToFetch"

    .prologue
    .line 2246
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 2247
    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    .line 2249
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->register(Landroid/net/Uri;)V

    .line 2251
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    .line 2252
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 2253
    iget v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 2254
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v8, :cond_0

    .line 2255
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    const-string v9, "file:///android_asset/loading.html"

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2269
    :cond_0
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v6

    .line 2270
    .local v6, pref:Lcom/android/email/Preferences;
    invoke-virtual {v6}, Lcom/android/email/Preferences;->getLowStorage()Z

    move-result v8

    if-nez v8, :cond_2

    iget v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 2271
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v8, :cond_1

    .line 2272
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    const-string v9, "file:///android_asset/loading.html"

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2274
    :cond_1
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v8}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v9, v10}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 2275
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v9, v10}, Lcom/android/email/Controller;->loadMessageForView(J)V

    .line 2276
    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+++ download unloaded Message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    :goto_0
    return-void

    .line 2281
    :cond_2
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v8, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    .line 2282
    .local v3, fromList:[Lcom/android/emailcommon/mail/Address;
    const/4 v1, 0x0

    .line 2283
    .local v1, autoShowImages:Z
    move-object v0, v3

    .local v0, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v7, v0, v4

    .line 2284
    .local v7, sender:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2285
    .local v2, email:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->shouldShowImagesFor(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2286
    const/4 v1, 0x1

    .line 2290
    .end local v2           #email:Ljava/lang/String;
    .end local v7           #sender:Lcom/android/emailcommon/mail/Address;
    :cond_3
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v8}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    const-wide/16 v9, -0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 2292
    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+++ Load complete/partial Message flag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    new-instance v8, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v8, p0, v9, v10, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 2295
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_0

    .line 2283
    .restart local v2       #email:Ljava/lang/String;
    .restart local v7       #sender:Lcom/android/emailcommon/mail/Address;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public resetPartialLoading()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPartialDownload:Z

    .line 508
    return-void
.end method

.method protected resetView()V
    .locals 6

    .prologue
    const/16 v3, 0x65

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 723
    invoke-direct {p0, v5, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    .line 724
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->hideDetails()V

    .line 725
    iput-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsFilled:Z

    .line 726
    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabs(I)V

    .line 729
    iput-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNeedReloadMessageContent:Z

    .line 730
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    if-eqz v1, :cond_2

    .line 731
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    .line 732
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    if-eq v1, v3, :cond_0

    .line 733
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNeedReloadMessageContent:Z

    .line 735
    :cond_0
    iput v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    .line 740
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 741
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->blockNetworkLoads(Z)V

    .line 742
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v5}, Landroid/webkit/WebView;->flingScroll(II)V

    .line 743
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v5}, Landroid/view/View;->measure(II)V

    .line 744
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 745
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearView()V

    .line 746
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v5}, Landroid/view/View;->scrollTo(II)V

    .line 748
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 749
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    const-string v2, "<html><body bgcolor=\"white\"/></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 754
    .local v0, settings:Landroid/webkit/WebSettings;
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 755
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getWebViewZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 758
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsScroll:Landroid/view/View;

    invoke-virtual {v1, v5, v5}, Landroid/view/View;->scrollTo(II)V

    .line 759
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteScroll:Landroid/view/View;

    invoke-virtual {v1, v5, v5}, Landroid/view/View;->scrollTo(II)V

    .line 760
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Lcom/android/email/view/NonLockingScrollView;

    invoke-virtual {v1}, Lcom/android/email/view/NonLockingScrollView;->scrollFreeze()V

    .line 761
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Lcom/android/email/view/NonLockingScrollView;

    invoke-virtual {v1, v5, v5}, Lcom/android/email/view/NonLockingScrollView;->scrollTo(II)V

    .line 763
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Lcom/android/email/view/NonLockingScrollView;

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v1, v2}, Lcom/android/email/view/NonLockingScrollView;->setOnOverScrollListener(Lcom/android/email/view/NonLockingScrollView$OnOverScrollListener;)V

    .line 778
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 779
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 780
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->initContactStatusViews()V

    .line 781
    return-void

    .line 737
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 679
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .line 680
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 473
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancel(Z)V

    .line 475
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancel(Z)V

    .line 480
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancel(Z)V

    .line 485
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    if-eqz v0, :cond_3

    .line 489
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 490
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/LinkParserTask;->stopWebView()V

    .line 491
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinkParserTask:Lcom/android/emailcommon/utility/LinkParserTask;

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRenderAttachmentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_4

    .line 495
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRenderAttachmentTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 496
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRenderAttachmentTask:Landroid/os/AsyncTask;

    .line 499
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 500
    const-string v0, "MessageViewFragmentBase"

    const-string v1, "Stop all loading AsyncTask..."

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method protected updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 7
    .parameter "message"

    .prologue
    .line 2319
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2320
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 2325
    .local v0, from:Lcom/android/emailcommon/mail/Address;
    if-eqz v0, :cond_1

    .line 2326
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    .line 2327
    .local v2, fromFriendly:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2328
    .local v1, fromAddress:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2329
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromAddressView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, " "

    .end local v1           #fromAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2334
    .end local v2           #fromFriendly:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v4, v5, v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2339
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAddressesView:Landroid/widget/TextView;

    invoke-static {v3, v4, v5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->updateAddressesView(Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 2341
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/email/emailvip/VipMemberCache;->isVIP(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->updateVipIcon(Z)V

    .line 2343
    return-void

    .line 2331
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2332
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromAddressView:Landroid/widget/TextView;

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateSenderVipIcon(Z)V
    .locals 4
    .parameter "isVip"

    .prologue
    const/4 v3, 0x0

    .line 2990
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2991
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 2992
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    const v2, 0x7f02002d

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2993
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    const v2, 0x7f02002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2994
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3002
    :goto_0
    return-void

    .line 2997
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2998
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    const v2, 0x7f020028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2999
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateVipInformation(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V
    .locals 4
    .parameter "singleAddress"

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAddressesView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->updateVipInformation(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/view/View;Landroid/widget/TextView;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V

    .line 2960
    return-void
.end method
