.class public Lcom/android/mms/ui/CBMessageListItem;
.super Landroid/widget/LinearLayout;
.source "CBMessageListItem.java"


# static fields
.field public static final EXTRA_URLS:Ljava/lang/String; = "com.android.mms.ExtraUrls"

.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan; = null

.field private static final TAG:Ljava/lang/String; = "CBMessageListItem"

.field public static final UPDATE_CHANNEL:I = 0xf

.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mBodyTextView:Landroid/widget/TextView;

.field mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mDateView:Landroid/widget/TextView;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsLastItemInList:Z

.field private mIsTel:Z

.field private mItemContainer:Landroid/view/View;

.field private mMessageItem:Lcom/android/mms/ui/CBMessageItem;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mSelectedBox:Landroid/widget/CheckBox;

.field private mSimStatus:Landroid/widget/TextView;

.field private mSpan:Landroid/text/style/LineHeightSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/CBMessageListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mPath:Landroid/graphics/Path;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mPaint:Landroid/graphics/Paint;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mIsTel:Z

    .line 353
    new-instance v0, Lcom/android/mms/ui/CBMessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CBMessageListItem$7;-><init>(Lcom/android/mms/ui/CBMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 106
    sget-object v0, Lcom/android/mms/ui/CBMessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/CBMessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 110
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/CBMessageListItem;->mPath:Landroid/graphics/Path;

    .line 97
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/CBMessageListItem;->mPaint:Landroid/graphics/Paint;

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/CBMessageListItem;->mIsTel:Z

    .line 353
    new-instance v1, Lcom/android/mms/ui/CBMessageListItem$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CBMessageListItem$7;-><init>(Lcom/android/mms/ui/CBMessageListItem;)V

    iput-object v1, p0, Lcom/android/mms/ui/CBMessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/CBMessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 115
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 116
    .local v0, color:I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/ui/CBMessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 117
    sget-object v1, Lcom/android/mms/ui/CBMessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/CBMessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 121
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/CBMessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CBMessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CBMessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/CBMessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/CBMessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/CBMessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/CBMessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/CBMessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/CBMessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/CBMessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindCommonMessage(Lcom/android/mms/ui/CBMessageItem;)V
    .locals 6
    .parameter "msgItem"

    .prologue
    .line 326
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 332
    invoke-virtual {p1}, Lcom/android/mms/ui/CBMessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 333
    .local v0, formattedMessage:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p1}, Lcom/android/mms/ui/CBMessageItem;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/CBMessageItem;->getDate()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/ui/CBMessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 335
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/CBMessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 337
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {p1}, Lcom/android/mms/ui/CBMessageItem;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/mms/ui/CBMessageListItem;->formatTimestamp(Lcom/android/mms/ui/CBMessageItem;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 340
    .local v2, formattedTimestamp:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-direct {p0, p1}, Lcom/android/mms/ui/CBMessageListItem;->formatSimStatus(Lcom/android/mms/ui/CBMessageItem;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 343
    .local v1, formattedSimStatus:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 344
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListItem;->mSimStatus:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListItem;->mSimStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 351
    return-void

    .line 347
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListItem;->mSimStatus:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "body"
    .parameter "timestamp"
    .parameter "highlight"

    .prologue
    .line 373
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 375
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v2

    .line 379
    .local v2, parser:Lcom/android/mms/util/SmileyParser2;
    invoke-virtual {v2, p1}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 382
    .end local v2           #parser:Lcom/android/mms/util/SmileyParser2;
    :cond_0
    if-eqz p3, :cond_1

    .line 383
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 384
    .local v1, m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 389
    .end local v1           #m:Ljava/util/regex/Matcher;
    :cond_1
    return-object v0
.end method

.method private formatSimStatus(Lcom/android/mms/ui/CBMessageItem;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "msgItem"

    .prologue
    .line 404
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 408
    .local v0, buffer:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 409
    .local v2, simInfoStart:I
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/android/mms/ui/CBMessageItem;->mSimId:I

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->getSimInfo(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 410
    .local v1, simInfo:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 411
    const-string v3, " "

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 412
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0084

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 413
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 414
    const-string v3, " "

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 415
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 416
    const-string v3, " "

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 421
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 423
    return-object v0
.end method

.method private formatTimestamp(Lcom/android/mms/ui/CBMessageItem;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "msgItem"
    .parameter "timestamp"

    .prologue
    const/4 v4, 0x0

    .line 393
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 394
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, " "

    .end local p2
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 395
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 399
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 400
    return-object v0
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/CBMessageItem;ZZ)V
    .locals 3
    .parameter "msgItem"
    .parameter "isLastItem"
    .parameter "isDeleteMode"

    .prologue
    const/4 v2, 0x0

    .line 139
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListItem;->mMessageItem:Lcom/android/mms/ui/CBMessageItem;

    .line 140
    iput-boolean p2, p0, Lcom/android/mms/ui/CBMessageListItem;->mIsLastItemInList:Z

    .line 141
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CBMessageListItem;->setSelectedBackGroud(Z)V

    .line 142
    if-eqz p3, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-virtual {p1}, Lcom/android/mms/ui/CBMessageItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CBMessageListItem;->setSelectedBackGroud(Z)V

    .line 150
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mItemContainer:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/CBMessageListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CBMessageListItem$1;-><init>(Lcom/android/mms/ui/CBMessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/android/mms/ui/CBMessageListItem;->bindCommonMessage(Lcom/android/mms/ui/CBMessageItem;)V

    .line 157
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getMessageItem()Lcom/android/mms/ui/CBMessageItem;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mMessageItem:Lcom/android/mms/ui/CBMessageItem;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "MmsLog"

    const-string v1, "CBMessageListItem.onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 128
    const v0, 0x7f0f0025

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0f0026

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mDateView:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0f0024

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mItemContainer:Landroid/view/View;

    .line 132
    const v0, 0x7f0f002a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mSimStatus:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0f0023

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    .line 136
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 14

    .prologue
    .line 160
    iget-object v12, p0, Lcom/android/mms/ui/CBMessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/mms/ui/CBMessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_2

    .line 161
    iget-object v12, p0, Lcom/android/mms/ui/CBMessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-nez v12, :cond_1

    .line 162
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/CBMessageListItem;->setSelectedBackGroud(Z)V

    .line 166
    :goto_0
    iget-object v12, p0, Lcom/android/mms/ui/CBMessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v12, :cond_0

    .line 167
    iget-object v12, p0, Lcom/android/mms/ui/CBMessageListItem;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x5

    invoke-static {v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 168
    .local v6, msg:Landroid/os/Message;
    iget-object v12, p0, Lcom/android/mms/ui/CBMessageListItem;->mMessageItem:Lcom/android/mms/ui/CBMessageItem;

    invoke-virtual {v12}, Lcom/android/mms/ui/CBMessageItem;->getMessageId()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, v6, Landroid/os/Message;->arg1:I

    .line 169
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 308
    .end local v6           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 164
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/CBMessageListItem;->setSelectedBackGroud(Z)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v12, p0, Lcom/android/mms/ui/CBMessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v7

    .line 175
    .local v7, spans:[Landroid/text/style/URLSpan;
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v11

    .line 176
    .local v11, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "tel:"

    .line 177
    .local v8, telPrefix:Ljava/lang/String;
    const-string v10, ""

    .line 178
    .local v10, url:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_4

    .line 179
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #url:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 180
    .restart local v10       #url:Ljava/lang/String;
    const-string v12, "tel:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 181
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/mms/ui/CBMessageListItem;->mIsTel:Z

    .line 182
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "smsto:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "tel:"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 185
    :cond_4
    array-length v12, v7

    if-eqz v12, :cond_0

    .line 187
    array-length v12, v7

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    iget-boolean v12, p0, Lcom/android/mms/ui/CBMessageListItem;->mIsTel:Z

    if-nez v12, :cond_6

    .line 188
    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v12}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, mUriTemp:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isShowUrlDialog()Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "mailto:"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 190
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v1, b:Landroid/app/AlertDialog$Builder;
    sget v12, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->url_dialog_choice_title:I

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 192
    sget v12, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->url_dialog_choice_message:I

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 193
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 194
    const/high16 v12, 0x104

    new-instance v13, Lcom/android/mms/ui/CBMessageListItem$2;

    invoke-direct {v13, p0}, Lcom/android/mms/ui/CBMessageListItem$2;-><init>(Lcom/android/mms/ui/CBMessageListItem;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    const v12, 0x104000a

    new-instance v13, Lcom/android/mms/ui/CBMessageListItem$3;

    invoke-direct {v13, p0, v5}, Lcom/android/mms/ui/CBMessageListItem$3;-><init>(Lcom/android/mms/ui/CBMessageListItem;Ljava/lang/String;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 212
    .end local v1           #b:Landroid/app/AlertDialog$Builder;
    :cond_5
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 213
    .local v9, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v4, v12, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 214
    .local v4, intent:Landroid/content/Intent;
    const-string v12, "com.android.browser.application_id"

    iget-object v13, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const/high16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 219
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mUriTemp:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_6
    new-instance v0, Lcom/android/mms/ui/CBMessageListItem$4;

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v13, 0x1090011

    invoke-direct {v0, p0, v12, v13, v11}, Lcom/android/mms/ui/CBMessageListItem$4;-><init>(Lcom/android/mms/ui/CBMessageListItem;Landroid/content/Context;ILjava/util/List;)V

    .line 276
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    .restart local v1       #b:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/mms/ui/CBMessageListItem$5;

    invoke-direct {v2, p0, v11}, Lcom/android/mms/ui/CBMessageListItem$5;-><init>(Lcom/android/mms/ui/CBMessageListItem;Ljava/util/ArrayList;)V

    .line 297
    .local v2, click:Landroid/content/DialogInterface$OnClickListener;
    const v12, 0x7f0b0312

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 298
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 300
    const/high16 v12, 0x104

    new-instance v13, Lcom/android/mms/ui/CBMessageListItem$6;

    invoke-direct {v13, p0}, Lcom/android/mms/ui/CBMessageListItem$6;-><init>(Lcom/android/mms/ui/CBMessageListItem;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListItem;->mHandler:Landroid/os/Handler;

    .line 320
    return-void
.end method

.method public setSelectedBackGroud(Z)V
    .locals 3
    .parameter "selected"

    .prologue
    const/4 v2, 0x0

    .line 427
    if-eqz p1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    const v0, 0x7f020132

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 436
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method
