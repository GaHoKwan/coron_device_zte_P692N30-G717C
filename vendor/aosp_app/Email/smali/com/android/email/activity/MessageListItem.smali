.class public Lcom/android/email/activity/MessageListItem;
.super Landroid/view/View;
.source "MessageListItem.java"


# static fields
.field private static ACTIVATED_TEXT_COLOR:I = 0x0

.field private static DATE_TEXT_COLOR_READ:I = 0x0

.field private static DATE_TEXT_COLOR_UNREAD:I = 0x0

.field private static DEFAULT_TEXT_COLOR:I = 0x0

.field private static DRAFT_TEXT_COLOR:I = 0x0

.field private static LIGHT_TEXT_COLOR:I = 0x0

.field public static final MESSAGE_LIST_ITEMS_CLIP_LABEL:Ljava/lang/String; = "com.android.email.MESSAGE_LIST_ITEMS"

.field private static final MODE_WIDE:I = 0x0

.field public static final NEEDS_LAYOUT:I = -0x1

.field private static SENDERS_TEXT_COLOR_READ:I = 0x0

.field private static SENDERS_TEXT_COLOR_UNREAD:I = 0x0

.field private static SNIPPET_TEXT_COLOR_READ:I = 0x0

.field private static SNIPPET_TEXT_COLOR_UNREAD:I = 0x0

.field private static SUBJECT_TEXT_COLOR_READ:I = 0x0

.field private static SUBJECT_TEXT_COLOR_UNREAD:I = 0x0

.field private static final TOUCH_SLOP:I = 0x18

.field private static sAttachmentIcon:Landroid/graphics/Bitmap;

.field private static sBadgeMargin:I

.field private static final sBoldPaint:Landroid/text/TextPaint;

.field private static final sDatePaint:Landroid/text/TextPaint;

.field private static final sDefaultPaint:Landroid/text/TextPaint;

.field private static sFavoriteIconOff:Landroid/graphics/Bitmap;

.field private static sFavoriteIconOn:Landroid/graphics/Bitmap;

.field private static sInit:Z

.field private static sInviteIcon:Landroid/graphics/Bitmap;

.field private static sItemHeightNormal:I

.field private static sItemHeightWide:I

.field private static sScaledTouchSlop:I

.field private static sSelectedIconOff:Landroid/graphics/Bitmap;

.field private static sSelectedIconOn:Landroid/graphics/Bitmap;

.field private static sStateForwarded:Landroid/graphics/Bitmap;

.field private static sStateReplied:Landroid/graphics/Bitmap;

.field private static sStateRepliedAndForwarded:Landroid/graphics/Bitmap;

.field private static sStateUnread:Landroid/graphics/Bitmap;

.field private static sSubjectDescription:Ljava/lang/String;

.field private static sSubjectEmptyDescription:Ljava/lang/String;

.field private static sSubjectSnippetDivider:Ljava/lang/String;

.field private static sVipIcon:Landroid/graphics/Bitmap;


# instance fields
.field mAccountId:J

.field private mAdapter:Lcom/android/email/activity/MessagesAdapter;

.field private mAttachmentX:I

.field public mColorChipPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

.field private mCurentBackground:Landroid/graphics/drawable/Drawable;

.field private mDateX:I

.field private mDownEvent:Z

.field private mField:Ljava/lang/String;

.field private mFormattedDate:Ljava/lang/CharSequence;

.field private mFormattedSender:Ljava/lang/CharSequence;

.field public mFromList:Ljava/lang/String;

.field public mHasAttachment:Z

.field public mHasBeenForwarded:Z

.field public mHasBeenRepliedTo:Z

.field public mHasInvite:Z

.field private mInviteX:I

.field public mIsFavorite:Z

.field private mIsSearchResult:Z

.field private mLayout:Lcom/android/email/activity/ThreePaneLayout;

.field mMailboxId:J

.field mMessageId:J

.field private mMode:I

.field private mQuery:Ljava/lang/String;

.field public mRead:Z

.field private mReadSelector:Landroid/graphics/drawable/Drawable;

.field public mSender:Ljava/lang/String;

.field private mSenderWidth:I

.field public mSnippet:Ljava/lang/CharSequence;

.field public mSubject:Ljava/lang/CharSequence;

.field public mText:Landroid/text/SpannableStringBuilder;

.field mTimeFormatted:J

.field private mUnreadSelector:Landroid/graphics/drawable/Drawable;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mVipIconWidth:I

.field private mWideReadSelector:Landroid/graphics/drawable/Drawable;

.field private mWideUnreadSelector:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListItem;->sInit:Z

    .line 94
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    .line 95
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    .line 96
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    .line 633
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MessageListItem;->sScaledTouchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsSearchResult:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenRepliedTo:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenForwarded:Z

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    .line 144
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 145
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    .line 164
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mVipIconWidth:I

    .line 295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mTimeFormatted:J

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsSearchResult:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenRepliedTo:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenForwarded:Z

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    .line 144
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 145
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    .line 164
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mVipIconWidth:I

    .line 295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mTimeFormatted:J

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsSearchResult:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenRepliedTo:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenForwarded:Z

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    .line 144
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 145
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    .line 164
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mVipIconWidth:I

    .line 295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mTimeFormatted:J

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method private calculateDrawingData()V
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->calculateSubjectText()V

    .line 372
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFromList:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/email/emailvip/VipMemberCache;->isVIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sVipIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mVipIconWidth:I

    .line 379
    :goto_0
    return-void

    .line 375
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mVipIconWidth:I

    goto :goto_0
.end method

.method private calculateSubjectText()V
    .locals 4

    .prologue
    .line 356
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->subjectFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 357
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 358
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->subjectWidth:I

    int-to-float v2, v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    .line 361
    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 362
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->subjectWidth:I

    int-to-float v2, v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    .line 366
    :cond_1
    return-void

    .line 357
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private getFontColor(I)I
    .locals 0
    .parameter "defaultColor"

    .prologue
    .line 443
    return p1
.end method

.method private getViewMode(I)I
    .locals 2
    .parameter "width"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsSearchResult:Z

    invoke-static {v0, p1, v1}, Lcom/android/email/activity/MessageListItemCoordinates;->getMode(Landroid/content/Context;IZ)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 176
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    .line 177
    sget-boolean v1, Lcom/android/email/activity/MessageListItem;->sInit:Z

    if-nez v1, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 179
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSubjectDescription:Ljava/lang/String;

    .line 180
    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSubjectEmptyDescription:Ljava/lang/String;

    .line 181
    const v1, 0x7f080120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSubjectSnippetDivider:Ljava/lang/String;

    .line 182
    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sItemHeightWide:I

    .line 184
    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sItemHeightNormal:I

    .line 187
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 188
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 190
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 191
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 192
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    const v1, 0x7f020020

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    .line 195
    const v1, 0x7f020022

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sInviteIcon:Landroid/graphics/Bitmap;

    .line 196
    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sBadgeMargin:I

    .line 197
    const v1, 0x7f020009

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    .line 199
    const v1, 0x7f02000b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    .line 201
    const v1, 0x7f020004

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOff:Landroid/graphics/Bitmap;

    .line 203
    const v1, 0x7f020005

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOn:Landroid/graphics/Bitmap;

    .line 206
    const v1, 0x7f020024

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sStateReplied:Landroid/graphics/Bitmap;

    .line 208
    const v1, 0x7f020021

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sStateForwarded:Landroid/graphics/Bitmap;

    .line 210
    const v1, 0x7f020023

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sStateRepliedAndForwarded:Landroid/graphics/Bitmap;

    .line 212
    const v1, 0x7f020059

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sStateUnread:Landroid/graphics/Bitmap;

    .line 216
    const v1, 0x7f02002c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sVipIcon:Landroid/graphics/Bitmap;

    .line 219
    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->DEFAULT_TEXT_COLOR:I

    .line 220
    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->ACTIVATED_TEXT_COLOR:I

    .line 221
    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->SUBJECT_TEXT_COLOR_READ:I

    .line 222
    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 223
    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->SNIPPET_TEXT_COLOR_READ:I

    .line 224
    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->SNIPPET_TEXT_COLOR_UNREAD:I

    .line 225
    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->SENDERS_TEXT_COLOR_READ:I

    .line 226
    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->SENDERS_TEXT_COLOR_UNREAD:I

    .line 227
    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->DATE_TEXT_COLOR_READ:I

    .line 228
    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->DATE_TEXT_COLOR_UNREAD:I

    .line 230
    sput-boolean v3, Lcom/android/email/activity/MessageListItem;->sInit:Z

    .line 232
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private initializeSlop(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 636
    sget v4, Lcom/android/email/activity/MessageListItem;->sScaledTouchSlop:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 637
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 638
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 639
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 641
    .local v1, density:F
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 642
    const/high16 v4, 0x3fc0

    mul-float v3, v1, v4

    .line 646
    .local v3, sizeAndDensity:F
    :goto_0
    const/high16 v4, 0x41c0

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/android/email/activity/MessageListItem;->sScaledTouchSlop:I

    .line 648
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #density:F
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #sizeAndDensity:F
    :cond_0
    return-void

    .line 644
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #density:F
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_1
    move v3, v1

    .restart local v3       #sizeAndDensity:F
    goto :goto_0
.end method

.method private measureHeight(II)I
    .locals 4
    .parameter "measureSpec"
    .parameter "mode"

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 404
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 406
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 408
    move v0, v2

    .line 422
    :cond_0
    :goto_0
    return v0

    .line 411
    :cond_1
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    if-nez v3, :cond_2

    .line 412
    sget v0, Lcom/android/email/activity/MessageListItem;->sItemHeightWide:I

    .line 416
    :goto_1
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 419
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 414
    :cond_2
    sget v0, Lcom/android/email/activity/MessageListItem;->sItemHeightNormal:I

    goto :goto_1
.end method

.method private populateContentDescription()V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSubjectDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubjectEmptyDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private removeSubjectEOL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "subject"

    .prologue
    .line 729
    if-nez p1, :cond_0

    .line 730
    const/4 v0, 0x0

    .line 733
    :goto_0
    return-object v0

    .line 732
    :cond_0
    const-string v0, "\\n|\\r"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 733
    goto :goto_0
.end method

.method public static resetDrawingCaches()V
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/android/email/activity/MessageListItemCoordinates;->resetCaches()V

    .line 241
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListItem;->sInit:Z

    .line 242
    return-void
.end method

.method private updateBackground()V
    .locals 4

    .prologue
    .line 317
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/activity/MessageListItemCoordinates;->isMultiPane(Landroid/content/Context;)Z

    move-result v0

    .line 318
    .local v0, isMultiPane:Z
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v2, :cond_4

    .line 319
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mLayout:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/ThreePaneLayout;->isLeftPaneVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mWideReadSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListItem;->mWideReadSelector:Landroid/graphics/drawable/Drawable;

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mWideReadSelector:Landroid/graphics/drawable/Drawable;

    .line 347
    .local v1, newBackground:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_1

    .line 349
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iput-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    .line 352
    :cond_1
    return-void

    .line 326
    .end local v1           #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mReadSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListItem;->mReadSelector:Landroid/graphics/drawable/Drawable;

    .line 330
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mReadSelector:Landroid/graphics/drawable/Drawable;

    .restart local v1       #newBackground:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 333
    .end local v1           #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_4
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mLayout:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/ThreePaneLayout;->isLeftPaneVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 334
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mWideUnreadSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListItem;->mWideUnreadSelector:Landroid/graphics/drawable/Drawable;

    .line 338
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mWideUnreadSelector:Landroid/graphics/drawable/Drawable;

    .restart local v1       #newBackground:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 340
    .end local v1           #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mUnreadSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_7

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListItem;->mUnreadSelector:Landroid/graphics/drawable/Drawable;

    .line 344
    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mUnreadSelector:Landroid/graphics/drawable/Drawable;

    .restart local v1       #newBackground:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method


# virtual methods
.method public bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/ThreePaneLayout;Z)V
    .locals 0
    .parameter "adapter"
    .parameter "layout"
    .parameter "isSearchResult"

    .prologue
    .line 626
    iput-object p2, p0, Lcom/android/email/activity/MessageListItem;->mLayout:Lcom/android/email/activity/ThreePaneLayout;

    .line 627
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    .line 628
    iput-boolean p3, p0, Lcom/android/email/activity/MessageListItem;->mIsSearchResult:Z

    .line 629
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 630
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 705
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 706
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 707
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 708
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 709
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    .line 429
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->updateBackground()V

    .line 430
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 431
    return-void
.end method

.method public drawHighlightText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;Landroid/text/TextPaint;III)V
    .locals 8
    .parameter "canvas"
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 609
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 611
    .local v0, staticLayout:Landroid/text/StaticLayout;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 612
    int-to-float v1, p5

    int-to-float v2, p6

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 613
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 614
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 615
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 451
    const-wide/16 v0, 0x1000

    const-string v2, "AppUpdate"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 454
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListItem;->mTimeFormatted:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    .line 455
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->dateFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 456
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_e

    sget v0, Lcom/android/email/activity/MessageListItem;->DATE_TEXT_COLOR_READ:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 457
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->dateXEnd:I

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateX:I

    .line 461
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mDateX:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sBadgeMargin:I

    sub-int v7, v0, v1

    .line 462
    .local v7, iconsLeft:I
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    if-eqz v0, :cond_0

    .line 463
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v7, v0

    .line 464
    iput v7, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentX:I

    .line 466
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    if-eqz v0, :cond_1

    .line 467
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sInviteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v7, v0

    .line 468
    iput v7, p0, Lcom/android/email/activity/MessageListItem;->mInviteX:I

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->sendersWidth:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSenderWidth:I

    .line 473
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->sendersX:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSenderWidth:I

    add-int/2addr v0, v1

    if-le v0, v7, :cond_2

    .line 474
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->sendersX:I

    sub-int v0, v7, v0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSenderWidth:I

    .line 477
    :cond_2
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_f

    sget-object v9, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    .line 479
    .local v9, senderPaint:Landroid/text/TextPaint;
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSender:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 480
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    .line 497
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mColorChipPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    .line 498
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->chipX:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->chipY:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->chipX:I

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v3, v3, Lcom/android/email/activity/MessageListItemCoordinates;->chipWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->chipY:I

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v4, v4, Lcom/android/email/activity/MessageListItemCoordinates;->chipHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/email/activity/MessageListItem;->mColorChipPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 507
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-boolean v0, v0, Lcom/android/email/activity/MessagesAdapter;->mIsEasRemoteMode:Z

    if-nez v0, :cond_5

    .line 508
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOn:Landroid/graphics/Bitmap;

    :goto_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 513
    :cond_5
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mVipIconWidth:I

    if-lez v0, :cond_6

    .line 514
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sVipIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->sendersX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->sendersY:I

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v3, v3, Lcom/android/email/activity/MessageListItemCoordinates;->sendersAscent:I

    sub-int/2addr v2, v3

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sVipIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 518
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mField:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 519
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSenderWidth:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mVipIconWidth:I

    sub-int v4, v0, v1

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->sendersX:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mVipIconWidth:I

    add-int v5, v0, v1

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v6, v0, Lcom/android/email/activity/MessageListItemCoordinates;->sendersY:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/MessageListItem;->drawHighlightText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;Landroid/text/TextPaint;III)V

    .line 528
    :goto_4
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenRepliedTo:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenForwarded:Z

    if-eqz v0, :cond_15

    .line 529
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sStateRepliedAndForwarded:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->stateX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->stateY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 539
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/activity/MessageListItemCoordinates;->isMultiPane(Landroid/content/Context;)Z

    move-result v8

    .line 541
    .local v8, isMultiPane:Z
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-nez v0, :cond_8

    if-nez v8, :cond_8

    .line 542
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sStateUnread:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->unreadStateX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->unreadStateY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 547
    :cond_8
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->subjectFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 548
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 549
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_17

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_6
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 550
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_18

    sget v0, Lcom/android/email/activity/MessageListItem;->SUBJECT_TEXT_COLOR_READ:I

    :goto_7
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListItem;->getFontColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mField:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 553
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v4, v0, Lcom/android/email/activity/MessageListItemCoordinates;->subjectWidth:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v5, v0, Lcom/android/email/activity/MessageListItemCoordinates;->subjectX:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->subjectY:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->subjectTop:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v6, v6, Lcom/android/email/activity/MessageListItemCoordinates;->subjectAscent:I

    sub-int/2addr v1, v6

    sub-int v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/MessageListItem;->drawHighlightText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;Landroid/text/TextPaint;III)V

    .line 560
    :cond_9
    :goto_8
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 561
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 562
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_1a

    sget v0, Lcom/android/email/activity/MessageListItem;->SNIPPET_TEXT_COLOR_READ:I

    :goto_9
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListItem;->getFontColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 564
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mField:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 565
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v4, v0, Lcom/android/email/activity/MessageListItemCoordinates;->subjectWidth:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v5, v0, Lcom/android/email/activity/MessageListItemCoordinates;->subjectX:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->subjectY:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->subjectLineHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->subjectTop:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v6, v6, Lcom/android/email/activity/MessageListItemCoordinates;->subjectAscent:I

    sub-int/2addr v1, v6

    sub-int v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/MessageListItem;->drawHighlightText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;Landroid/text/TextPaint;III)V

    .line 575
    :cond_a
    :goto_a
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 576
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 579
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mDateX:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->dateY:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v5, v5, Lcom/android/email/activity/MessageListItemCoordinates;->dateAscent:I

    sub-int/2addr v0, v5

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 584
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-boolean v0, v0, Lcom/android/email/activity/MessagesAdapter;->mIsEasRemoteMode:Z

    if-nez v0, :cond_b

    .line 585
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    :goto_b
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->starX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->starY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 590
    :cond_b
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    if-eqz v0, :cond_c

    .line 591
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->paperclipY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 593
    :cond_c
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    if-eqz v0, :cond_d

    .line 594
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sInviteIcon:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mInviteX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->paperclipY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 601
    :cond_d
    const-wide/16 v0, 0x1000

    const-string v2, "AppUpdate"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 602
    return-void

    .line 456
    .end local v7           #iconsLeft:I
    .end local v8           #isMultiPane:Z
    .end local v9           #senderPaint:Landroid/text/TextPaint;
    :cond_e
    sget v0, Lcom/android/email/activity/MessageListItem;->DATE_TEXT_COLOR_UNREAD:I

    goto/16 :goto_0

    .line 477
    .restart local v7       #iconsLeft:I
    :cond_f
    sget-object v9, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    goto/16 :goto_1

    .line 482
    .restart local v9       #senderPaint:Landroid/text/TextPaint;
    :cond_10
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSenderWidth:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mVipIconWidth:I

    sub-int v10, v0, v1

    .line 483
    .local v10, senderWidth:I
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->sendersFontSize:I

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 484
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_12

    sget v0, Lcom/android/email/activity/MessageListItem;->SENDERS_TEXT_COLOR_READ:I

    :goto_c
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListItem;->getFontColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 486
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSender:Ljava/lang/String;

    int-to-float v1, v10

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v9, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    .line 488
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mField:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mField:Ljava/lang/String;

    const-string v1, "FROM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mField:Ljava/lang/String;

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 490
    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mQuery:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/TextUtilities;->highlightTermsInText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 484
    :cond_12
    sget v0, Lcom/android/email/activity/MessageListItem;->SENDERS_TEXT_COLOR_UNREAD:I

    goto :goto_c

    .line 508
    .end local v10           #senderWidth:I
    :cond_13
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 522
    :cond_14
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->sendersX:I

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mVipIconWidth:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->sendersY:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v5, v5, Lcom/android/email/activity/MessageListItemCoordinates;->sendersAscent:I

    sub-int/2addr v0, v5

    int-to-float v5, v0

    move-object v0, p1

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 531
    :cond_15
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenRepliedTo:Z

    if-eqz v0, :cond_16

    .line 532
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sStateReplied:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->stateX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->stateY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 534
    :cond_16
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenForwarded:Z

    if-eqz v0, :cond_7

    .line 535
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sStateForwarded:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->stateX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->stateY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 549
    .restart local v8       #isMultiPane:Z
    :cond_17
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto/16 :goto_6

    .line 550
    :cond_18
    sget v0, Lcom/android/email/activity/MessageListItem;->SUBJECT_TEXT_COLOR_UNREAD:I

    goto/16 :goto_7

    .line 556
    :cond_19
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->subjectX:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->subjectY:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v5, v5, Lcom/android/email/activity/MessageListItemCoordinates;->subjectTop:I

    sub-int/2addr v0, v5

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 562
    :cond_1a
    sget v0, Lcom/android/email/activity/MessageListItem;->SNIPPET_TEXT_COLOR_UNREAD:I

    goto/16 :goto_9

    .line 569
    :cond_1b
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->subjectX:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->subjectY:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v5, v5, Lcom/android/email/activity/MessageListItemCoordinates;->subjectLineHeight:I

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v5, v5, Lcom/android/email/activity/MessageListItemCoordinates;->subjectTop:I

    sub-int/2addr v0, v5

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 585
    :cond_1c
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_b
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 435
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 437
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mIsSearchResult:Z

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageListItemCoordinates;->forWidth(Landroid/content/Context;IZ)Lcom/android/email/activity/MessageListItemCoordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    .line 438
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->itemHeight:I

    sput v0, Lcom/android/email/activity/MessageListItem;->sItemHeightNormal:I

    .line 439
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->calculateDrawingData()V

    .line 440
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 383
    if-nez p1, :cond_0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    if-nez v1, :cond_2

    .line 384
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 385
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageListItem;->getViewMode(I)I

    move-result v0

    .line 386
    .local v0, mode:I
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    if-eq v0, v1, :cond_1

    .line 387
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    .line 389
    :cond_1
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    invoke-direct {p0, p2, v1}, Lcom/android/email/activity/MessageListItem;->measureHeight(II)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 391
    .end local v0           #mode:I
    :cond_2
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 392
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 656
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageListItem;->initializeSlop(Landroid/content/Context;)V

    .line 658
    const/4 v1, 0x0

    .line 659
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 660
    .local v3, touchX:I
    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v6, v6, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkX:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v7, v7, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkWidthIncludingMargins:I

    add-int/2addr v6, v7

    sget v7, Lcom/android/email/activity/MessageListItem;->sScaledTouchSlop:I

    add-int v0, v6, v7

    .line 662
    .local v0, checkRight:I
    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v6, v6, Lcom/android/email/activity/MessageListItemCoordinates;->starX:I

    sget v7, Lcom/android/email/activity/MessageListItem;->sScaledTouchSlop:I

    sub-int v2, v6, v7

    .line 664
    .local v2, starLeft:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 694
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_5

    .line 695
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 700
    :goto_1
    return v1

    .line 666
    :pswitch_1
    if-lt v3, v0, :cond_1

    if-le v3, v2, :cond_0

    .line 667
    :cond_1
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    .line 668
    if-lt v3, v0, :cond_2

    if-le v3, v2, :cond_0

    .line 669
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 675
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    goto :goto_0

    .line 680
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-boolean v6, v6, Lcom/android/email/activity/MessagesAdapter;->mIsEasRemoteMode:Z

    if-nez v6, :cond_0

    .line 681
    if-ge v3, v0, :cond_3

    .line 682
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4, p0}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItem;)V

    .line 683
    const/4 v1, 0x1

    goto :goto_0

    .line 684
    :cond_3
    if-le v3, v2, :cond_0

    .line 685
    iget-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    if-nez v6, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 686
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    invoke-virtual {v4, p0, v5}, Lcom/android/email/activity/MessagesAdapter;->updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V

    .line 687
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v4, v5

    .line 685
    goto :goto_2

    .line 697
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 664
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "subject"
    .parameter "snippet"
    .parameter "forceUpdate"
    .parameter "query"
    .parameter "field"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, changed:Z
    iput-object p4, p0, Lcom/android/email/activity/MessageListItem;->mQuery:Ljava/lang/String;

    .line 252
    iput-object p5, p0, Lcom/android/email/activity/MessageListItem;->mField:Ljava/lang/String;

    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, filterSubject:Z
    const/4 v1, 0x0

    .line 256
    .local v1, filterBody:Z
    if-eqz p5, :cond_0

    .line 257
    const-string v3, "ALL"

    invoke-virtual {p5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 258
    const/4 v2, 0x1

    .line 259
    const/4 v1, 0x1

    .line 269
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v3, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_2

    .line 271
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->removeSubjectEOL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    if-eqz p4, :cond_9

    if-eqz p1, :cond_9

    if-eqz v2, :cond_9

    .line 273
    invoke-static {p1, p4}, Lcom/android/emailcommon/utility/TextUtilities;->highlightTermsInText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    .line 277
    :goto_1
    const/4 v0, 0x1

    .line 278
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->populateContentDescription()V

    .line 281
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    invoke-static {v3, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_4

    .line 282
    :cond_3
    if-eqz p4, :cond_a

    if-eqz p2, :cond_a

    if-eqz v1, :cond_a

    .line 283
    invoke-static {p2, p4}, Lcom/android/emailcommon/utility/TextUtilities;->highlightTermsInText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    .line 287
    :goto_2
    const/4 v0, 0x1

    .line 290
    :cond_4
    if-nez p3, :cond_5

    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    if-nez v3, :cond_6

    .line 291
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 293
    :cond_6
    return-void

    .line 260
    :cond_7
    const-string v3, "SUBJECT"

    invoke-virtual {p5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 261
    const/4 v2, 0x1

    goto :goto_0

    .line 262
    :cond_8
    const-string v3, "BODY"

    invoke-virtual {p5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    const/4 v1, 0x1

    goto :goto_0

    .line 275
    :cond_9
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/CharSequence;

    goto :goto_1

    .line 285
    :cond_a
    iput-object p2, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    goto :goto_2
.end method

.method public setTimestamp(J)V
    .locals 2
    .parameter "timestamp"

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mTimeFormatted:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 299
    iput-wide p1, p0, Lcom/android/email/activity/MessageListItem;->mTimeFormatted:J

    .line 301
    :cond_0
    return-void
.end method
