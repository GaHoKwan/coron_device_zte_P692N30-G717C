.class public Lcom/android/contacts/activities/PhotoSelectionActivity;
.super Landroid/app/Activity;
.source "PhotoSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;,
        Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    }
.end annotation


# static fields
.field private static final BACKDROP_FADEOUT_DURATION:I = 0x64

.field public static final ENTITY_DELTA_LIST:Ljava/lang/String; = "entity_delta_list"

.field public static final EXPAND_PHOTO:Ljava/lang/String; = "expand_photo"

.field public static final IS_DIRECTORY_CONTACT:Ljava/lang/String; = "is_directory_contact"

.field public static final IS_PROFILE:Ljava/lang/String; = "is_profile"

.field private static final KEY_CURRENT_PHOTO_FILE:Ljava/lang/String; = "currentphotofile"

.field private static final KEY_SUB_ACTIVITY_IN_PROGRESS:Ljava/lang/String; = "subinprogress"

.field private static final PHOTO_CONTRACT_DURATION:I = 0x32

.field private static final PHOTO_EXPAND_DURATION:I = 0x64

.field public static final PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field private static final TAG:Ljava/lang/String; = "PhotoSelectionActivity"


# instance fields
.field private mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mAnimationPending:Z

.field private mBackdrop:Landroid/view/View;

.field private mCloseActivityWhenCameBackFromSubActivity:Z

.field private mCurrentPhotoFile:Ljava/lang/String;

.field private mExpandPhoto:Z

.field private mExpandedPhotoSize:I

.field private mHeightOffset:I

.field private mIsDirectoryContact:Z

.field private mIsProfile:Z

.field mOriginalPos:Landroid/graphics/Rect;

.field private mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

.field private mPhotoAnimator:Landroid/animation/ObjectAnimator;

.field private mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

.field private mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mPhotoUri:Landroid/net/Uri;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mState:Lcom/android/contacts/model/RawContactDeltaList;

.field private mSubActivityInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    .line 582
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->displayPhoto()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/PhotoSelectionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhotoOpen()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsDirectoryContact:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/contacts/activities/PhotoSelectionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/PhotoSelectionActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/contacts/activities/PhotoSelectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsProfile:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    return-void
.end method

.method private animateAwayBackground()V
    .locals 5

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 455
    return-void
.end method

.method private animateInBackground()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 450
    return-void

    .line 448
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
    .end array-data
.end method

.method private animatePhoto(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "to"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z

    .line 444
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 445
    return-void
.end method

.method private animatePhotoOpen()V
    .locals 1

    .prologue
    .line 390
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$4;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 412
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getPhotoEndParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhoto(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 413
    return-void
.end method

.method private attachPhotoHandler()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 504
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v4, 0x4

    .line 509
    .local v4, mode:I
    :goto_0
    and-int/lit8 v4, v4, -0x3

    .line 511
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;Landroid/content/Context;Landroid/view/View;ILcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    .line 513
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mRequestCode:I
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$800(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mResultCode:I
    invoke-static {v2}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$900(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->canHandleActivityResultRequest(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mRequestCode:I
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$800(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mResultCode:I
    invoke-static {v2}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$900(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mData:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$1000(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/detail/PhotoSelectionHandler;->handlePhotoActivityResultAsync(IILandroid/content/Intent;)V

    .line 518
    iput-object v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    .line 531
    :goto_1
    return-void

    .line 504
    .end local v4           #mode:I
    :cond_0
    const/16 v4, 0xe

    goto :goto_0

    .line 520
    .restart local v4       #mode:I
    :cond_1
    iput-object v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    .line 524
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/activities/PhotoSelectionActivity$6;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$6;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-static {v0, v1}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static buildIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Lcom/android/contacts/model/RawContactDeltaList;ZZZ)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "photoUri"
    .parameter "photoBitmap"
    .parameter "photoBytes"
    .parameter "photoBounds"
    .parameter "delta"
    .parameter "isProfile"
    .parameter "isDirectoryContact"
    .parameter "expandPhotoOnClick"

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 276
    const-string v1, "photo_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    :cond_0
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 279
    const-string v1, "entity_delta_list"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 280
    const-string v1, "is_profile"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    const-string v1, "is_directory_contact"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    const-string v1, "expand_photo"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    return-object v0
.end method

.method private closePhotoAndFinish()V
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$5;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 432
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhoto(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 433
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animateAwayBackground()V

    .line 434
    return-void
.end method

.method private displayPhoto()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 305
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 306
    .local v2, pos:[I
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 307
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 309
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 310
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    aget v5, v2, v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 311
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 312
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 313
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 315
    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 316
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 320
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getPhotoEndParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 321
    .local v1, photoWidth:I
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 323
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5, v1, v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    .line 331
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/contacts/activities/PhotoSelectionActivity$3;

    invoke-direct {v4, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$3;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 355
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->attachPhotoHandler()V

    .line 356
    return-void

    .line 327
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-static {p0, v1, v7}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(Landroid/content/Context;IZ)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private finishImmediatelyWithNoAnimation()V
    .locals 0

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 288
    return-void
.end method

.method private getAdjustedExpandedPhotoSize(Landroid/view/View;I)I
    .locals 7
    .parameter "enclosingView"
    .parameter "heightOffset"

    .prologue
    .line 214
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 215
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 216
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 217
    .local v3, boundsWidth:I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v2, v4, p2

    .line 220
    .local v2, boundsHeight:I
    int-to-float v4, v2

    iget v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v3

    iget v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 222
    .local v0, alpha:F
    const/high16 v4, 0x3f80

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 224
    iget v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 226
    :goto_0
    return v4

    :cond_0
    iget v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    goto :goto_0
.end method

.method private getPhotoEndParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 366
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v3, :cond_1

    .line 367
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 368
    iget-boolean v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandPhoto:Z

    if-eqz v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    iget v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mHeightOffset:I

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getAdjustedExpandedPhotoSize(Landroid/view/View;I)I

    move-result v0

    .line 371
    .local v0, adjustedPhotoSize:I
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v2, v0, v3

    .line 372
    .local v2, widthDelta:I
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v1, v0, v3

    .line 373
    .local v1, heightDelta:I
    if-ge v2, v6, :cond_0

    if-lt v1, v6, :cond_1

    .line 375
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 376
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 377
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 379
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 381
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 382
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 386
    .end local v0           #adjustedPhotoSize:I
    .end local v1           #heightDelta:I
    .end local v2           #widthDelta:I
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v3
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->closePhotoAndFinish()V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 467
    const-string v0, "PhotoSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onActivityResult]: mPhotoHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    .line 470
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->canHandleActivityResultRequest(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "PhotoSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onActivityResult]need handle the Photo result. requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/detail/PhotoSelectionHandler;->handlePhotoActivityResultAsync(IILandroid/content/Intent;)V

    .line 484
    iput-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    .line 498
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCloseActivityWhenCameBackFromSubActivity:Z

    if-eqz v0, :cond_1

    .line 488
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 496
    :cond_2
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    invoke-direct {v0, p1, p2, p3, v3}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;-><init>(IILandroid/content/Intent;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCloseActivityWhenCameBackFromSubActivity:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v1, 0x7f0400a5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    const-string v1, "currentphotofile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;

    .line 165
    const-string v1, "subinprogress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 170
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "photo_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    .line 171
    const-string v1, "entity_delta_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDeltaList;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 172
    const-string v1, "is_profile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsProfile:Z

    .line 173
    const-string v1, "is_directory_contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsDirectoryContact:Z

    .line 174
    const-string v1, "expand_photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandPhoto:Z

    .line 177
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    .line 179
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mHeightOffset:I

    .line 182
    const v1, 0x7f070192

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    .line 183
    const v1, 0x7f0700a7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 184
    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    .line 187
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animateInBackground()V

    .line 190
    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/activities/PhotoSelectionActivity$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$1;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/activities/PhotoSelectionActivity$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$2;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-static {v1, v2}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 293
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 295
    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->destroy()V

    .line 299
    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    .line 301
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 459
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 460
    const-string v0, "currentphotofile"

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v0, "subinprogress"

    iget-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 462
    return-void
.end method
