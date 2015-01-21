.class public Lcom/android/mms/ui/WPMessageListItem;
.super Landroid/widget/LinearLayout;
.source "WPMessageListItem.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field private static final DEFAULT_ICON_INDENT:I = 0x5

.field public static final EXTRA_URLS:Ljava/lang/String; = "com.android.mms.ExtraUrls"

.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan; = null

.field private static final WP_TAG:Ljava/lang/String; = "Mms/WapPush"

.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

.field private mBodyTextView:Landroid/widget/TextView;

.field mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mDateView:Landroid/widget/TextView;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mExpirationIndicator:Landroid/widget/ImageView;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsLastItemInList:Z

.field private mItemContainer:Landroid/view/View;

.field private mLinkSpan:Landroid/text/style/ClickableSpan;

.field private mMessageItem:Lcom/android/mms/ui/WPMessageItem;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mSpan:Landroid/text/style/LineHeightSpan;

.field private mUiHandler:Landroid/os/Handler;

.field private mUpdateFromViewRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/WPMessageListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mPath:Landroid/graphics/Path;

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mPaint:Landroid/graphics/Paint;

    .line 226
    new-instance v0, Lcom/android/mms/ui/WPMessageListItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/WPMessageListItem$1;-><init>(Lcom/android/mms/ui/WPMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 236
    new-instance v0, Lcom/android/mms/ui/WPMessageListItem$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/WPMessageListItem$2;-><init>(Lcom/android/mms/ui/WPMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mLinkSpan:Landroid/text/style/ClickableSpan;

    .line 336
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mUiHandler:Landroid/os/Handler;

    .line 343
    new-instance v0, Lcom/android/mms/ui/WPMessageListItem$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/WPMessageListItem$3;-><init>(Lcom/android/mms/ui/WPMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mUpdateFromViewRunnable:Ljava/lang/Runnable;

    .line 134
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/android/mms/ui/WPMessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/WPMessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 139
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageListItem;->mPath:Landroid/graphics/Path;

    .line 122
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageListItem;->mPaint:Landroid/graphics/Paint;

    .line 226
    new-instance v1, Lcom/android/mms/ui/WPMessageListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/WPMessageListItem$1;-><init>(Lcom/android/mms/ui/WPMessageListItem;)V

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 236
    new-instance v1, Lcom/android/mms/ui/WPMessageListItem$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/WPMessageListItem$2;-><init>(Lcom/android/mms/ui/WPMessageListItem;)V

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageListItem;->mLinkSpan:Landroid/text/style/ClickableSpan;

    .line 336
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageListItem;->mUiHandler:Landroid/os/Handler;

    .line 343
    new-instance v1, Lcom/android/mms/ui/WPMessageListItem$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/WPMessageListItem$3;-><init>(Lcom/android/mms/ui/WPMessageListItem;)V

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageListItem;->mUpdateFromViewRunnable:Ljava/lang/Runnable;

    .line 144
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 145
    .local v0, color:I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 146
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    .line 148
    sget-object v1, Lcom/android/mms/ui/WPMessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/WPMessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 151
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/WPMessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageListItem;->updateFromView()V

    return-void
.end method

.method private bindCommonMessage(Lcom/android/mms/ui/WPMessageItem;)V
    .locals 12
    .parameter "msgItem"

    .prologue
    const/4 v11, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 200
    iget-object v2, p1, Lcom/android/mms/ui/WPMessageItem;->mContact:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mms/ui/WPMessageItem;->mText:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/mms/ui/WPMessageItem;->mURL:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/mms/ui/WPMessageItem;->mTimestamp:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/mms/ui/WPMessageItem;->mExpiration:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/mms/ui/WPMessageItem;->mHighlight:Ljava/util/regex/Pattern;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/WPMessageListItem;->formatMessage(Lcom/android/mms/ui/WPMessageItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 202
    .local v8, formattedMessage:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v10, p1, Lcom/android/mms/ui/WPMessageItem;->mTimestamp:Ljava/lang/String;

    .line 206
    .local v10, timestamp:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageListItem;->formatMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 214
    iget v0, p1, Lcom/android/mms/ui/WPMessageItem;->mIsExpired:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mExpirationIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    :goto_0
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/mms/ext/IMmsUtils;

    .line 221
    .local v9, mmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v0, p1, Lcom/android/mms/ui/WPMessageItem;->mSimId:I

    int-to-long v2, v0

    const v0, 0x7f0f0077

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v9, v1, v2, v3, v0}, Lcom/mediatek/mms/ext/IMmsUtils;->showSimTypeBySimId(Landroid/content/Context;JLandroid/widget/TextView;)V

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 224
    return-void

    .line 217
    .end local v9           #mmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mExpirationIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private formatMessage()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 280
    const/16 v1, 0x8

    .line 281
    .local v1, color:I
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListItem;->mMessageItem:Lcom/android/mms/ui/WPMessageItem;

    iget-object v2, v3, Lcom/android/mms/ui/WPMessageItem;->mAddress:Ljava/lang/String;

    .line 283
    .local v2, from:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x104000e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 288
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 289
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    return-object v0

    .line 286
    .end local v0           #buf:Landroid/text/SpannableStringBuilder;
    :cond_0
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private formatMessage(Lcom/android/mms/ui/WPMessageItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "msgItem"
    .parameter "contact"
    .parameter "mText"
    .parameter "mURL"
    .parameter "timestamp"
    .parameter "expiration"
    .parameter "highlight"

    .prologue
    .line 243
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 245
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v2

    .line 249
    .local v2, parser:Lcom/android/mms/util/SmileyParser2;
    invoke-virtual {v2, p3}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 250
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 255
    .end local v2           #parser:Lcom/android/mms/util/SmileyParser2;
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 256
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 257
    .local v3, urlStart:I
    invoke-virtual {v0, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 259
    iget-object v4, p0, Lcom/android/mms/ui/WPMessageListItem;->mLinkSpan:Landroid/text/style/ClickableSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 262
    .end local v3           #urlStart:I
    :cond_1
    if-eqz p7, :cond_2

    .line 263
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 264
    .local v1, m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 269
    .end local v1           #m:Ljava/util/regex/Matcher;
    :cond_2
    return-object v0
.end method

.method private updateAvatarView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 293
    sget-object v0, Lcom/android/mms/ui/WPMessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 295
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v3, v8}, Lcom/android/mms/ui/MmsQuickContactBadge;->setGroupAvator(Z)V

    .line 296
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListItem;->mMessageItem:Lcom/android/mms/ui/WPMessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/WPMessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 297
    .local v1, contact:Lcom/android/mms/data/Contact;
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mms/ui/WPMessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 306
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v3, v2, v7}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 317
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    return-void

    .line 310
    :cond_0
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v3, v2, v7}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateFromView()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageListItem;->formatMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageListItem;->updateAvatarView()V

    .line 341
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/WPMessageItem;Z)V
    .locals 3
    .parameter "msgItem"
    .parameter "isLastItem"

    .prologue
    const/4 v2, 0x0

    .line 165
    const-string v0, "Mms/WapPush"

    const-string v1, "bind msgItem"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageListItem;->mMessageItem:Lcom/android/mms/ui/WPMessageItem;

    .line 167
    iput-boolean p2, p0, Lcom/android/mms/ui/WPMessageListItem;->mIsLastItemInList:Z

    .line 168
    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 169
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/android/mms/ui/WPMessageListItem;->updateBackground()V

    .line 171
    invoke-direct {p0, p1}, Lcom/android/mms/ui/WPMessageListItem;->bindCommonMessage(Lcom/android/mms/ui/WPMessageItem;)V

    .line 172
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageListItem;->updateAvatarView()V

    .line 173
    return-void
.end method

.method public getItemContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mItemContainer:Landroid/view/View;

    return-object v0
.end method

.method public getMessageItem()Lcom/android/mms/ui/WPMessageItem;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mMessageItem:Lcom/android/mms/ui/WPMessageItem;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 157
    const v0, 0x7f0f0078

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mFromView:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0f007a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mDateView:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0f0059

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MmsQuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    .line 161
    const v0, 0x7f0f01b3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mExpirationIndicator:Landroid/widget/ImageView;

    .line 162
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 3
    .parameter "updated"

    .prologue
    .line 350
    const-string v0, "Mms/WapPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageListItem;->mMessageItem:Lcom/android/mms/ui/WPMessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/WPMessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageListItem;->mUpdateFromViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageListItem;->mUpdateFromViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageListItem;->mHandler:Landroid/os/Handler;

    .line 192
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mBodyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 277
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListItem;->mMessageItem:Lcom/android/mms/ui/WPMessageItem;

    .line 179
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 180
    return-void
.end method

.method protected updateBackground()V
    .locals 3

    .prologue
    .line 323
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageListItem;->mMessageItem:Lcom/android/mms/ui/WPMessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/WPMessageItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    const v1, 0x7f020132

    .line 330
    .local v1, backgroundId:I
    :goto_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 332
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    return-void

    .line 325
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #backgroundId:I
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageListItem;->mMessageItem:Lcom/android/mms/ui/WPMessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/WPMessageItem;->isUnread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    const v1, 0x7f02002e

    .restart local v1       #backgroundId:I
    goto :goto_0

    .line 328
    .end local v1           #backgroundId:I
    :cond_1
    const v1, 0x7f02002d

    .restart local v1       #backgroundId:I
    goto :goto_0
.end method
