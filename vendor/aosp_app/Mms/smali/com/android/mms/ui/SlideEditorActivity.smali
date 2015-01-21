.class public Lcom/android/mms/ui/SlideEditorActivity;
.super Landroid/app/Activity;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideEditorActivity$TextLengthFilter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MENU_ADD_AUDIO:I = 0x4

.field private static final MENU_ADD_PICTURE:I = 0x1

.field private static final MENU_ADD_SD_SOUND:I = 0xf

.field private static final MENU_ADD_SLIDE:I = 0x7

.field private static final MENU_ADD_VIDEO:I = 0x6

.field private static final MENU_DEL_AUDIO:I = 0x5

.field private static final MENU_DEL_PICTURE:I = 0x3

.field private static final MENU_DEL_VIDEO:I = 0x8

.field private static final MENU_DURATION:I = 0xa

.field private static final MENU_LAYOUT:I = 0x9

.field private static final MENU_PREVIEW_SLIDESHOW:I = 0xb

.field private static final MENU_RECORD_SOUND:I = 0xc

.field private static final MENU_REMOVE_TEXT:I = 0x0

.field private static final MENU_SUB_AUDIO:I = 0xd

.field private static final MENU_TAKE_PICTURE:I = 0x2

.field private static final MENU_TAKE_VIDEO:I = 0xe

.field private static final MESSAGE_URI:Ljava/lang/String; = "message_uri"

.field private static final NUM_DIRECT_DURATIONS:I = 0xa

.field public static final REQUEST_CODE_ATTACH_RINGTONE:I = 0x14

.field public static final REQUEST_CODE_ATTACH_SOUND:I = 0xf

.field private static final REQUEST_CODE_CHANGE_DURATION:I = 0x6

.field private static final REQUEST_CODE_CHANGE_MUSIC:I = 0x3

.field private static final REQUEST_CODE_CHANGE_PICTURE:I = 0x1

.field private static final REQUEST_CODE_CHANGE_VIDEO:I = 0x5

.field private static final REQUEST_CODE_EDIT_TEXT:I = 0x0

.field private static final REQUEST_CODE_RECORD_SOUND:I = 0x4

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0x2

.field private static final REQUEST_CODE_TAKE_VIDEO:I = 0x7

.field public static final SLIDE_INDEX:Ljava/lang/String; = "slide_index"

.field private static final TAG:Ljava/lang/String; = "SlideEditorActivity"

.field public static sCurrentActivity:Lcom/android/mms/ui/SlideEditorActivity;


# instance fields
.field private dialogRunnable:Ljava/lang/Runnable;

.field private mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

.field private mDirty:Z

.field private mDone:Landroid/widget/Button;

.field private final mDoneClickListener:Landroid/view/View$OnClickListener;

.field private mDrmAudioLock:Landroid/widget/ImageView;

.field private mDrmImageVideoLock:Landroid/widget/ImageView;

.field private mExceedMessageSizeToast:Landroid/widget/Toast;

.field private mIsCanPreview:Z

.field private mMediaType:I

.field private mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

.field private mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mNextSlide:Landroid/widget/ImageButton;

.field private final mOnNavigateBackward:Landroid/view/View$OnClickListener;

.field private final mOnNavigateForward:Landroid/view/View$OnClickListener;

.field private final mOnPreview:Landroid/view/View$OnClickListener;

.field private final mOnRemoveSlide:Landroid/view/View$OnClickListener;

.field private final mOnReplaceImage:Landroid/view/View$OnClickListener;

.field private final mOnScrollTouchListener:Lcom/android/mms/ui/BasicSlideEditorView$OnScrollTouchListener;

.field private final mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

.field private mPosition:I

.field private mPreSlide:Landroid/widget/ImageButton;

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mPreview:Landroid/widget/Button;

.field private mRemoveSlide:Landroid/widget/Button;

.field private mReplaceImage:Landroid/widget/Button;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mRestritedUri:Landroid/net/Uri;

.field private mSizeLimit:I

.field private mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mTextEditor:Landroid/widget/EditText;

.field private mTextView:Landroid/widget/TextView;

.field private mThreadId:J

.field private mUiHandler:Landroid/os/Handler;

.field private mUri:Landroid/net/Uri;

.field needRefreshMenu:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 185
    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRestritedUri:Landroid/net/Uri;

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMediaType:I

    .line 190
    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 192
    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    .line 196
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mIsCanPreview:Z

    .line 385
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$1;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 395
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$2;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnRemoveSlide:Landroid/view/View$OnClickListener;

    .line 420
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUiHandler:Landroid/os/Handler;

    .line 421
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$3;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->dialogRunnable:Ljava/lang/Runnable;

    .line 429
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$4;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .line 447
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$5;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnPreview:Landroid/view/View$OnClickListener;

    .line 457
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$6;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnReplaceImage:Landroid/view/View$OnClickListener;

    .line 477
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$7;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    .line 488
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$8;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    .line 499
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$9;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    .line 1078
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$12;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    .line 1185
    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mExceedMessageSizeToast:Landroid/widget/Toast;

    .line 1497
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$14;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnScrollTouchListener:Lcom/android/mms/ui/BasicSlideEditorView$OnScrollTouchListener;

    .line 1504
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->needRefreshMenu:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideEditorActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideEditorActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mIsCanPreview:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/SlideEditorActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mIsCanPreview:Z

    return p1
.end method

.method static synthetic access$108(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$110(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->hideInputMethod()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideEditorActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mExceedMessageSizeToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/mms/ui/SlideEditorActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mExceedMessageSizeToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRestritedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMediaType:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->finishAndBack()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->dialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/BasicSlideEditorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    return-object v0
.end method

.method private addRestrictedMedia(Landroid/net/Uri;II)V
    .locals 4
    .parameter "mediaUri"
    .parameter "type"
    .parameter "messageId"

    .prologue
    const v3, 0x7f0b026c

    const v2, 0x7f0b026b

    .line 1302
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRestritedUri:Landroid/net/Uri;

    .line 1303
    iput p2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMediaType:I

    .line 1304
    sget v0, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_0

    .line 1305
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/SlideEditorActivity$13;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideEditorActivity$13;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1448
    :goto_0
    return-void

    .line 1423
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMediaType:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1426
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1435
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1442
    :sswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1423
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0xf -> :sswitch_1
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method private finishAndBack()V
    .locals 3

    .prologue
    .line 1292
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->hideInputMethod()V

    .line 1293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1294
    .local v0, data:Landroid/content/Intent;
    const-string v1, "done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1295
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1296
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1297
    return-void
.end method

.method private getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    return-object v0
.end method

.method private getAudioString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1137
    const v0, 0x7f0b02fa

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPictureString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1141
    const v0, 0x7f0b02fb

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 1132
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1133
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"
    .parameter "mediaName"

    .prologue
    .line 1127
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1128
    .local v0, r:Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVideoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1145
    const v0, 0x7f0b02fc

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideInputMethod()V
    .locals 3

    .prologue
    .line 1489
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1491
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1492
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1494
    :cond_0
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 2
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 287
    if-eqz p1, :cond_0

    .line 288
    const-string v0, "message_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 289
    const-string v0, "slide_index"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 291
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->setMmsLimitSize(Landroid/content/Context;)V

    .line 292
    const-string v0, "slide_index"

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 295
    const-string v0, "slide_index"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 296
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->setMmsLimitSize(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1461
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 1465
    :try_start_0
    const-class v1, Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsCompose;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    .line 1467
    const-string v1, "SlideEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsComposePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    :goto_0
    return-void

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsComposeImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/ext/MmsComposeImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    .line 1470
    const-string v1, "SlideEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsComposePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyUser(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1152
    return-void
.end method

.method private previewSlideshow()V
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V

    .line 521
    return-void
.end method

.method private setReplaceButtonText(I)V
    .locals 1
    .parameter "text"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 757
    return-void
.end method

.method private showCurrentSlide()V
    .locals 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->setLocation(I)V

    .line 1156
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->present(Lcom/android/mms/util/ItemLoadedCallback;)V

    .line 1157
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->updateTitle()V

    .line 1159
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showDrmLock()V

    .line 1161
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    const v0, 0x7f0b0288

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    .line 1166
    :goto_0
    return-void

    .line 1164
    :cond_0
    const v0, 0x7f0b0257

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_0
.end method

.method private showDrmLock()V
    .locals 10

    .prologue
    const/16 v6, 0x8

    const/16 v9, 0x2e

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1219
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmImageVideoLock:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1220
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmAudioLock:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1221
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v7}, Lcom/android/mms/model/SlideshowModel;->setDrmContentFlag(Z)V

    .line 1223
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1224
    .local v3, res:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 1225
    .local v1, hasContent:Z
    const/4 v2, 0x0

    .line 1226
    .local v2, hasRight:Z
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1227
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1228
    const-string v5, "SlideEditorActivity"

    const-string v6, "hasDrmAudio"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 1230
    .local v4, src:Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1231
    .local v0, extName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1232
    const-string v5, "dcf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1233
    const/4 v1, 0x1

    .line 1234
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v8}, Lcom/android/mms/model/SlideshowModel;->setDrmContentFlag(Z)V

    .line 1236
    :cond_0
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 1237
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmAudioLock:Landroid/widget/ImageView;

    sget v6, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->drm_green_lock:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1238
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmAudioLock:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1244
    .end local v0           #extName:Ljava/lang/String;
    .end local v4           #src:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1245
    const-string v5, "SlideEditorActivity"

    const-string v6, "hasDrmImageOrVideo"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 1247
    .restart local v4       #src:Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1248
    .restart local v0       #extName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1249
    const-string v5, "dcf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1250
    const/4 v1, 0x1

    .line 1251
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v8}, Lcom/android/mms/model/SlideshowModel;->setDrmContentFlag(Z)V

    .line 1253
    :cond_2
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 1254
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmImageVideoLock:Landroid/widget/ImageView;

    sget v6, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->drm_green_lock:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1255
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmImageVideoLock:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1261
    .end local v0           #extName:Ljava/lang/String;
    .end local v4           #src:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1262
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 1263
    .restart local v4       #src:Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1264
    .restart local v0       #extName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1265
    const-string v5, "dcf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1266
    const/4 v1, 0x1

    .line 1267
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v8}, Lcom/android/mms/model/SlideshowModel;->setDrmContentFlag(Z)V

    .line 1269
    :cond_4
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 1270
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmImageVideoLock:Landroid/widget/ImageView;

    sget v6, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->drm_green_lock:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1271
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmImageVideoLock:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1279
    .end local v0           #extName:Ljava/lang/String;
    .end local v4           #src:Ljava/lang/String;
    :cond_5
    :goto_2
    return-void

    .line 1239
    .restart local v0       #extName:Ljava/lang/String;
    .restart local v4       #src:Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_1

    .line 1240
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmAudioLock:Landroid/widget/ImageView;

    sget v6, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->drm_red_lock:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1241
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmAudioLock:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1256
    :cond_7
    if-eqz v1, :cond_3

    .line 1257
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmImageVideoLock:Landroid/widget/ImageView;

    sget v6, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->drm_red_lock:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1258
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmImageVideoLock:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1272
    :cond_8
    if-eqz v1, :cond_5

    .line 1273
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmImageVideoLock:Landroid/widget/ImageView;

    sget v6, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->drm_red_lock:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1274
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmImageVideoLock:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private showDurationDialog()V
    .locals 8

    .prologue
    .line 760
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 761
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0200d7

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 762
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b028a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 763
    .local v5, title:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 766
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 767
    .local v4, items:[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x109000f

    invoke-direct {v0, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 770
    .local v0, arrayAdapter:Landroid/widget/ArrayAdapter;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v6

    div-int/lit16 v3, v6, 0x3e8

    .line 771
    .local v3, dur:I
    if-lez v3, :cond_0

    const/16 v6, 0xa

    if-gt v3, v6, :cond_0

    .line 772
    add-int/lit8 v2, v3, -0x1

    .line 777
    .local v2, checkedItem:I
    :goto_0
    new-instance v6, Lcom/android/mms/ui/SlideEditorActivity$10;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/SlideEditorActivity$10;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v1, v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 797
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 798
    return-void

    .line 774
    .end local v2           #checkedItem:I
    :cond_0
    const/16 v2, 0xa

    .restart local v2       #checkedItem:I
    goto :goto_0
.end method

.method private showLayoutSelectorDialog()V
    .locals 5

    .prologue
    .line 801
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 802
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0200d8

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 804
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b028b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 805
    .local v2, title:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 807
    new-instance v0, Lcom/android/mms/ui/LayoutSelectorAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LayoutSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 808
    .local v0, adapter:Lcom/android/mms/ui/LayoutSelectorAdapter;
    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$11;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$11;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 822
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 823
    return-void
.end method

.method private showSizeDisplay()V
    .locals 4

    .prologue
    .line 1284
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit16 v1, v1, 0x400

    add-int/lit8 v0, v1, 0x1

    .line 1285
    .local v0, showSize:I
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSizeLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showDrmLock()V

    .line 1287
    return-void
.end method

.method private updateTitle()V
    .locals 4

    .prologue
    .line 524
    const v0, 0x7f0b0255

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 525
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1476
    const/4 v0, 0x0

    .line 1477
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v1, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v1, p1}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1480
    :cond_0
    if-nez v0, :cond_1

    .line 1481
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1483
    :cond_1
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 828
    const/4 v6, -0x1

    if-eq p2, v6, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 832
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1075
    :cond_1
    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    goto :goto_0

    .line 838
    :pswitch_1
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    goto :goto_1

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const v6, 0x7f0b026d

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b026f

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 849
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :pswitch_2
    const/4 v2, 0x0

    .line 850
    .local v2, pictureUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 854
    .local v3, showError:Z
    :try_start_1
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-interface {v6}, Lcom/mediatek/mms/ext/IMmsCompose;->getCapturePicMode()I

    move-result v6

    if-nez v6, :cond_2

    .line 855
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/RestrictedResolutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v2

    .line 865
    :goto_3
    if-nez v2, :cond_3

    .line 866
    const/4 v3, 0x1

    .line 899
    :goto_4
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    goto :goto_1

    .line 857
    :cond_2
    :try_start_2
    const-string v6, ".jpg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p0}, Lcom/android/mms/TempFileProvider;->renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_3

    .line 869
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 871
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v6, v7, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 872
    const v6, 0x7f0b0288

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/RestrictedResolutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_4

    .line 874
    :catch_1
    move-exception v0

    .line 875
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v6, "SlideEditorActivity"

    const-string v7, "add image failed"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 876
    const-string v6, "add picture failed"

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 877
    const v6, 0x7f0b026f

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 880
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v0

    .line 881
    .local v0, e:Lcom/android/mms/RestrictedResolutionException;
    const v6, 0x7f0b001c

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b001d

    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 884
    .end local v0           #e:Lcom/android/mms/RestrictedResolutionException;
    :catch_3
    move-exception v0

    .line 885
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    const v6, 0x7f0b026b

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b026c

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 888
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_4
    move-exception v0

    .line 889
    .local v0, e:Lcom/android/mms/ResolutionException;
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    const/4 v8, 0x0

    invoke-static {p0, v2, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_4

    .line 891
    .end local v0           #e:Lcom/android/mms/ResolutionException;
    :catch_5
    move-exception v0

    .line 892
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    const/4 v8, 0x0

    invoke-static {p0, v2, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_4

    .line 895
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_6
    move-exception v0

    .line 896
    .local v0, e:Lcom/android/mms/ContentRestrictionException;
    const v6, 0x7f0b0019

    invoke-direct {p0, v2, p1, v6}, Lcom/android/mms/ui/SlideEditorActivity;->addRestrictedMedia(Landroid/net/Uri;II)V

    goto/16 :goto_4

    .line 904
    .end local v0           #e:Lcom/android/mms/ContentRestrictionException;
    .end local v2           #pictureUri:Landroid/net/Uri;
    .end local v3           #showError:Z
    :pswitch_3
    if-nez p3, :cond_4

    .line 905
    :try_start_3
    const-string v6, "SlideEditorActivity"

    const-string v7, "REQUEST_CODE_CHANGE_PICTURE, add image failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/android/mms/RestrictedResolutionException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lcom/android/mms/ResolutionException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_c

    goto/16 :goto_0

    .line 910
    :catch_7
    move-exception v0

    .line 911
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v6, "SlideEditorActivity"

    const-string v7, "add image failed"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    const-string v6, "add picture failed"

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 913
    const v6, 0x7f0b026f

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 935
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :goto_5
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    goto/16 :goto_1

    .line 908
    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 909
    const v6, 0x7f0b0288

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/android/mms/RestrictedResolutionException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/android/mms/ResolutionException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_4 .. :try_end_4} :catch_c

    goto :goto_5

    .line 916
    :catch_8
    move-exception v0

    .line 917
    .local v0, e:Lcom/android/mms/RestrictedResolutionException;
    const v6, 0x7f0b001c

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b001d

    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 920
    .end local v0           #e:Lcom/android/mms/RestrictedResolutionException;
    :catch_9
    move-exception v0

    .line 921
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    const v6, 0x7f0b026b

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b026c

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 924
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_a
    move-exception v0

    .line 925
    .local v0, e:Lcom/android/mms/ResolutionException;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    const/4 v9, 0x0

    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto :goto_5

    .line 927
    .end local v0           #e:Lcom/android/mms/ResolutionException;
    :catch_b
    move-exception v0

    .line 928
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    const/4 v9, 0x0

    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto :goto_5

    .line 931
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_c
    move-exception v0

    .line 932
    .local v0, e:Lcom/android/mms/ContentRestrictionException;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const v7, 0x7f0b0019

    invoke-direct {p0, v6, p1, v7}, Lcom/android/mms/ui/SlideEditorActivity;->addRestrictedMedia(Landroid/net/Uri;II)V

    goto :goto_5

    .line 940
    .end local v0           #e:Lcom/android/mms/ContentRestrictionException;
    :pswitch_4
    const-string v6, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 941
    .local v4, uri:Landroid/net/Uri;
    sget-object v6, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v6, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v4, :cond_1

    .line 946
    :try_start_5
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v6, v7, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V

    .line 948
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 949
    .local v1, mSlideModelTemp:Lcom/android/mms/model/SlideModel;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/mms/ui/BasicSlideEditorView;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_5 .. :try_end_5} :catch_10

    .line 970
    .end local v1           #mSlideModelTemp:Lcom/android/mms/model/SlideModel;
    :goto_6
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    goto/16 :goto_1

    .line 951
    :catch_d
    move-exception v0

    .line 952
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v6, "SlideEditorActivity"

    const-string v7, "add audio failed"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 953
    const-string v6, "add music failed"

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 954
    const v6, 0x7f0b026f

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 957
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_e
    move-exception v0

    .line 958
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    const v6, 0x7f0b026b

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b026c

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 961
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_f
    move-exception v0

    .line 962
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const v6, 0x7f0b026d

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b026f

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 966
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_10
    move-exception v0

    .line 967
    .local v0, e:Lcom/android/mms/ContentRestrictionException;
    const v6, 0x7f0b0018

    invoke-direct {p0, v4, p1, v6}, Lcom/android/mms/ui/SlideEditorActivity;->addRestrictedMedia(Landroid/net/Uri;II)V

    goto :goto_6

    .line 975
    .end local v0           #e:Lcom/android/mms/ContentRestrictionException;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_5
    :try_start_6
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V

    .line 977
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 978
    .restart local v1       #mSlideModelTemp:Lcom/android/mms/model/SlideModel;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/mms/ui/BasicSlideEditorView;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_6 .. :try_end_6} :catch_14

    .line 999
    .end local v1           #mSlideModelTemp:Lcom/android/mms/model/SlideModel;
    :goto_7
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    goto/16 :goto_1

    .line 980
    :catch_11
    move-exception v0

    .line 981
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v6, "SlideEditorActivity"

    const-string v7, "add audio failed"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 982
    const-string v6, "add music failed"

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 983
    const v6, 0x7f0b026f

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 986
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_12
    move-exception v0

    .line 987
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    const v6, 0x7f0b026b

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b026c

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 990
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_13
    move-exception v0

    .line 991
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const v6, 0x7f0b026d

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b026f

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 995
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_14
    move-exception v0

    .line 996
    .local v0, e:Lcom/android/mms/ContentRestrictionException;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const v7, 0x7f0b0018

    invoke-direct {p0, v6, p1, v7}, Lcom/android/mms/ui/SlideEditorActivity;->addRestrictedMedia(Landroid/net/Uri;II)V

    goto :goto_7

    .line 1006
    .end local v0           #e:Lcom/android/mms/ContentRestrictionException;
    :pswitch_6
    :try_start_7
    const-string v6, ".3gp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p0}, Lcom/android/mms/TempFileProvider;->renameScrapVideoFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 1014
    .local v5, videoUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v6, v7, v5}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_7
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_7 .. :try_end_7} :catch_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_18

    goto/16 :goto_1

    .line 1015
    .end local v5           #videoUri:Landroid/net/Uri;
    :catch_15
    move-exception v0

    .line 1016
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v6, "add video failed"

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 1017
    const v6, 0x7f0b026f

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1020
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_16
    move-exception v0

    .line 1021
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    const v6, 0x7f0b026b

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b026c

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1024
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_17
    move-exception v0

    .line 1025
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const v6, 0x7f0b026d

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b026f

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1028
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_18
    move-exception v0

    .line 1031
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->finishAndBack()V

    goto/16 :goto_1

    .line 1038
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_7
    if-nez p3, :cond_5

    .line 1039
    :try_start_8
    const-string v6, "SlideEditorActivity"

    const-string v7, "REQUEST_CODE_CHANGE_VIDEO, add video failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lcom/google/android/mms/MmsException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_8 .. :try_end_8} :catch_1a
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_8 .. :try_end_8} :catch_1b
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_8 .. :try_end_8} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1d

    goto/16 :goto_0

    .line 1043
    :catch_19
    move-exception v0

    .line 1044
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v6, "SlideEditorActivity"

    const-string v7, "add video failed"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1045
    const-string v6, "add video failed"

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 1046
    const v6, 0x7f0b026f

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1067
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :goto_8
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    goto/16 :goto_1

    .line 1042
    :cond_5
    :try_start_9
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_9
    .catch Lcom/google/android/mms/MmsException; {:try_start_9 .. :try_end_9} :catch_19
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_9 .. :try_end_9} :catch_1b
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1d

    goto :goto_8

    .line 1049
    :catch_1a
    move-exception v0

    .line 1050
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    const v6, 0x7f0b026b

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b026c

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1053
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_1b
    move-exception v0

    .line 1054
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const v6, 0x7f0b026d

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b026f

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1058
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_1c
    move-exception v0

    .line 1059
    .local v0, e:Lcom/android/mms/ContentRestrictionException;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const v7, 0x7f0b001a

    invoke-direct {p0, v6, p1, v7}, Lcom/android/mms/ui/SlideEditorActivity;->addRestrictedMedia(Landroid/net/Uri;II)V

    goto :goto_8

    .line 1060
    .end local v0           #e:Lcom/android/mms/ContentRestrictionException;
    :catch_1d
    move-exception v0

    .line 1063
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->finishAndBack()V

    goto :goto_8

    .line 1071
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_8
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->changeDuration(II)V

    goto/16 :goto_1

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 337
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 338
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 203
    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 205
    invoke-direct {p0, p0}, Lcom/android/mms/ui/SlideEditorActivity;->initPlugin(Landroid/content/Context;)V

    .line 207
    const v1, 0x7f0f0092

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/BasicSlideEditorView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    .line 208
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BasicSlideEditorView;->setOnTextChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;)V

    .line 209
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnScrollTouchListener:Lcom/android/mms/ui/BasicSlideEditorView$OnScrollTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BasicSlideEditorView;->setOnTouchListener(Lcom/android/mms/ui/BasicSlideEditorView$OnScrollTouchListener;)V

    .line 210
    const v1, 0x7f0f0099

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    .line 211
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v1, 0x7f0f009a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    .line 214
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v1, 0x7f0f009b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    .line 217
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnPreview:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v1, 0x7f0f009c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    .line 220
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnReplaceImage:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v1, 0x7f0f009d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    .line 223
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnRemoveSlide:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v1, 0x7f0f009e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    .line 227
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$TextLengthFilter;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/SlideEditorActivity$TextLengthFilter;-><init>(Lcom/android/mms/ui/SlideEditorActivity;I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 231
    const v1, 0x7f0f009f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    .line 232
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v1, 0x7f0f001e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextView:Landroid/widget/TextView;

    .line 236
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 238
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->setMmsLimitSize(Landroid/content/Context;)V

    .line 239
    invoke-static {v5}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSizeLimit:I

    .line 243
    const v1, 0x7f0f0096

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmImageVideoLock:Landroid/widget/ImageView;

    .line 244
    const v1, 0x7f0f0097

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDrmAudioLock:Landroid/widget/ImageView;

    .line 247
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "thread_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mThreadId:J

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/SlideEditorActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 252
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->updateCreationMode(Landroid/content/Context;)V

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 257
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const-string v1, "SlideEditorActivity"

    const-string v2, "Loaded slideshow is empty; can\'t edit nothingness, exiting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 285
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 264
    new-instance v1, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 265
    const-string v1, "SlideshowPresenter"

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v1, p0, v2, v3}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 269
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 270
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 275
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    .line 277
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    sput-object p0, Lcom/android/mms/ui/SlideEditorActivity;->sCurrentActivity:Lcom/android/mms/ui/SlideEditorActivity;

    goto :goto_0

    .line 271
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-gez v1, :cond_1

    .line 272
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "SlideEditorActivity"

    const-string v2, "Create SlideshowModel failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 379
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SlideEditorActivity;->sCurrentActivity:Lcom/android/mms/ui/SlideEditorActivity;

    .line 380
    sget-object v0, Lcom/android/mms/ui/MmsPlayerActivity;->sCurrentActivity:Lcom/android/mms/ui/MmsPlayerActivity;

    if-eqz v0, :cond_1

    .line 381
    sget-object v0, Lcom/android/mms/ui/MmsPlayerActivity;->sCurrentActivity:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 383
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1506
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->needRefreshMenu:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 1507
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->needRefreshMenu:Z

    .line 1510
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 630
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 751
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    .line 752
    return v7

    .line 632
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    goto :goto_0

    .line 636
    :pswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 637
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_0

    .line 638
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->removeText()Z

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    goto :goto_0

    .line 644
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_CONTENT"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 645
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "image/*"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string v5, "android.intent.extra.drm_level"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 652
    invoke-virtual {p0, v1, v7}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 656
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_4
    invoke-static {p0, v9}, Lcom/android/mms/ui/MessageUtils;->capturePicture(Landroid/app/Activity;I)V

    goto :goto_0

    .line 660
    :pswitch_5
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/SlideshowEditor;->removeImage(I)Z

    .line 661
    const v5, 0x7f0b0257

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    .line 662
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    goto :goto_0

    .line 665
    :pswitch_6
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 668
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->computeAttachmentSizeLimitForAppen(Lcom/android/mms/model/SlideshowModel;)J

    move-result-wide v2

    .line 669
    .local v2, sizeLimit:J
    const-wide/16 v5, 0x1400

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    .line 670
    const/4 v5, 0x4

    invoke-static {p0, v5, v2, v3}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/app/Activity;IJ)V

    goto :goto_0

    .line 672
    :cond_1
    const v5, 0x7f0b0100

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 678
    .end local v2           #sizeLimit:J
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :pswitch_7
    const/16 v5, 0x14

    invoke-static {p0, v5}, Lcom/android/mms/ui/MessageUtils;->selectRingtone(Landroid/content/Context;I)V

    goto :goto_0

    .line 681
    :pswitch_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 682
    const v5, 0x7f0b0001

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 686
    :cond_2
    const/16 v5, 0xf

    invoke-static {p0, v5}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 691
    :pswitch_9
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/SlideshowEditor;->removeAudio(I)Z

    .line 692
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    goto/16 :goto_0

    .line 696
    :pswitch_a
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "video/*"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string v5, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 701
    const-string v5, "android.intent.extra.drm_level"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    const/4 v5, 0x5

    invoke-virtual {p0, v1, v5}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 709
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_b
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 710
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 711
    .local v0, currentSlideSize:I
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J

    move-result-wide v2

    .line 714
    .restart local v2       #sizeLimit:J
    const-wide/16 v5, 0x2800

    cmp-long v5, v2, v5

    if-lez v5, :cond_3

    .line 716
    const/4 v5, 0x7

    invoke-static {p0, v5, v2, v3}, Lcom/android/mms/ui/MessageUtils;->recordVideo(Landroid/app/Activity;IJ)V

    goto/16 :goto_0

    .line 718
    :cond_3
    const v5, 0x7f0b026e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 725
    .end local v0           #currentSlideSize:I
    .end local v2           #sizeLimit:J
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :pswitch_c
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/SlideshowEditor;->removeVideo(I)Z

    .line 726
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    goto/16 :goto_0

    .line 730
    :pswitch_d
    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 731
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 733
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    .line 734
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    goto/16 :goto_0

    .line 737
    :cond_4
    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 738
    const v5, 0x7f0b027d

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 744
    :pswitch_e
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showLayoutSelectorDialog()V

    goto/16 :goto_0

    .line 748
    :pswitch_f
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showDurationDialog()V

    goto/16 :goto_0

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .locals 8

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/AsyncDialog;->clearPendingProgressDialog()V

    .line 349
    :cond_0
    monitor-enter p0

    .line 350
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/Model;->setNeedUpdate(Z)V

    .line 353
    invoke-static {}, Lcom/android/mms/draft/DraftManager;->getInstance()Lcom/android/mms/draft/DraftManager;

    move-result-object v0

    const/16 v1, 0x30

    iget-wide v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mThreadId:J

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    const/4 v7, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/draft/DraftManager;->update(IJLandroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Ljava/util/HashMap;)V

    .line 359
    const-string v0, "SlideEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() Slideshow num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_1
    monitor-exit p0

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .parameter "menu"

    .prologue
    .line 529
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 530
    const/4 v8, 0x0

    .line 625
    :goto_0
    return v8

    .line 532
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 534
    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v9, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v8, v9}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    .line 536
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    if-nez v6, :cond_1

    .line 537
    const/4 v8, 0x0

    goto :goto_0

    .line 541
    :cond_1
    const/4 v8, 0x0

    const/16 v9, 0xb

    const/4 v10, 0x0

    const v11, 0x7f0b0287

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x108034d

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 545
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 547
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0256

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200c7

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 552
    :cond_2
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 553
    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const v11, 0x7f0b0258

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200c5

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 563
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 564
    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    const v11, 0x7f0b025a

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200c6

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 582
    :cond_4
    :goto_2
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 583
    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    const v11, 0x7f0b025c

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200c8

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 592
    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    const/16 v9, 0x14

    if-ge v8, v9, :cond_6

    .line 593
    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    const v11, 0x7f0b0252

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200b2

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 599
    :cond_6
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0289

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, duration:Ljava/lang/String;
    const-string v8, "%s"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 602
    .local v4, pos:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    add-int/lit8 v10, v4, 0x2

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 603
    move-object v0, p0

    .line 608
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v8

    div-int/lit16 v1, v8, 0x3e8

    .line 610
    .local v1, dur:I
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0005

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v1, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, format:Ljava/lang/String;
    const/4 v8, 0x0

    const/16 v9, 0xa

    const/4 v10, 0x0

    const-string v11, "%s"

    invoke-virtual {v2, v11, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200b8

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 618
    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 619
    const v5, 0x7f0b028c

    .line 624
    .local v5, resId:I
    :goto_4
    const/4 v8, 0x0

    const/16 v9, 0x9

    const/4 v10, 0x0

    invoke-interface {p1, v8, v9, v10, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200c1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 625
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 555
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #dur:I
    .end local v2           #duration:Ljava/lang/String;
    .end local v3           #format:Ljava/lang/String;
    .end local v4           #pos:I
    .end local v5           #resId:I
    :cond_7
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v8

    if-nez v8, :cond_3

    .line 556
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v11, 0x7f0b0257

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200c1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 558
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const v11, 0x7f0b02e8

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200c1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 566
    :cond_8
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v8

    if-nez v8, :cond_4

    .line 567
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 568
    const/4 v8, 0x0

    const/16 v9, 0xd

    const/4 v10, 0x0

    const v11, 0x7f0b0259

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v8

    const v9, 0x7f0200b3

    invoke-interface {v8, v9}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v7

    .line 571
    .local v7, subMenu:Landroid/view/SubMenu;
    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const v11, 0x7f0b0053

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 572
    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    const v11, 0x7f0b02eb

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 574
    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    const v11, 0x7f0b02ec

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 576
    .end local v7           #subMenu:Landroid/view/SubMenu;
    :cond_9
    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    const v11, 0x7f0b02ec

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200b3

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 585
    :cond_a
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v8

    if-nez v8, :cond_5

    .line 586
    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const v11, 0x7f0b025b

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200be

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 587
    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    const v11, 0x7f0b02ea

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200be

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 621
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #dur:I
    .restart local v2       #duration:Ljava/lang/String;
    .restart local v3       #format:Ljava/lang/String;
    .restart local v4       #pos:I
    :cond_b
    const v5, 0x7f0b028d

    .restart local v5       #resId:I
    goto/16 :goto_4
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 331
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V

    .line 332
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 305
    const-string v0, "slide_index"

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string v0, "message_uri"

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 307
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 313
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAdjustFontSizeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const-string v1, "message_font_size"

    const/high16 v2, 0x4190

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getPreferenceValueFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    .line 316
    .local v0, textSize:F
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setTextSize(F)V

    .line 321
    .end local v0           #textSize:F
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v1, p0, p0}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->init(Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;Landroid/app/Activity;)V

    .line 323
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v1}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->refresh()V

    .line 326
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mIsCanPreview:Z

    .line 369
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1456
    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1172
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    :goto_0
    return-void

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 1175
    .local v1, mNewIntent:Landroid/content/Intent;
    invoke-super {p0, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
