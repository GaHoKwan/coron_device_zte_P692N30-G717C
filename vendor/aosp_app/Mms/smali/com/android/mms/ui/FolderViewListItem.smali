.class public Lcom/android/mms/ui/FolderViewListItem;
.super Landroid/widget/RelativeLayout;
.source "FolderViewListItem.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan; = null

.field private static final TAG:Ljava/lang/String; = "FolderViewListItem"


# instance fields
.field private mAttachmentView:Landroid/view/View;

.field private mAvatarView:Landroid/widget/ImageView;

.field private mByCard:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDateView:Landroid/widget/TextView;

.field private mErrorIndicator:Landroid/view/View;

.field private mFromView:Landroid/widget/TextView;

.field private mFview:Lcom/android/mms/data/FolderView;

.field private mHandler:Landroid/os/Handler;

.field private mLockedInd:Landroid/widget/ImageView;

.field private mMuteView:Landroid/view/View;

.field private mPresenceView:Landroid/widget/ImageView;

.field private mSubjectSingleLine:Z

.field private mSubjectView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/FolderViewListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewListItem;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewListItem;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/FolderViewListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewListItem;->updateFromView()V

    return-void
.end method

.method private formatMessage()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v2}, Lcom/android/mms/data/FolderView;->getmRecipientString()Lcom/android/mms/data/ContactList;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, from:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewListItem;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 159
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v2}, Lcom/android/mms/data/FolderView;->getmRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    sget-object v2, Lcom/android/mms/ui/FolderViewListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 163
    :cond_1
    return-object v0
.end method

.method private formatSimStatus(I)V
    .locals 3
    .parameter "mSimId"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewListItem;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/mms/ui/MessageUtils;->getSimInfo(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 256
    .local v0, simInfo:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewListItem;->mByCard:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewListItem;->mByCard:Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getKey(IJ)J
    .locals 3
    .parameter "type"
    .parameter "id"

    .prologue
    const-wide/32 v1, 0x186a0

    .line 264
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 265
    neg-long p2, p2

    .line 271
    .end local p2
    :cond_0
    :goto_0
    return-wide p2

    .line 266
    .restart local p2
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 268
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 269
    add-long/2addr p2, v1

    goto :goto_0

    .line 271
    :cond_2
    add-long v0, v1, p2

    neg-long p2, v0

    goto :goto_0
.end method

.method private updateFromView()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v0}, Lcom/android/mms/data/FolderView;->getmRecipientString()Lcom/android/mms/data/ContactList;

    .line 251
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewListItem;->formatMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;Lcom/android/mms/data/FolderView;Ljava/lang/Boolean;)V
    .locals 11
    .parameter "context"
    .parameter "fview"
    .parameter "ischecked"

    .prologue
    const/4 v9, 0x4

    const/4 v10, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 169
    iput-object p2, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    .line 172
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 173
    const v1, 0x7f020132

    .line 181
    .local v1, backgroundId:I
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v5}, Lcom/android/mms/data/FolderView;->getmType()I

    move-result v5

    if-ne v5, v10, :cond_5

    .line 186
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mAvatarView:Landroid/widget/ImageView;

    const v8, 0x7f0200e6

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v5}, Lcom/android/mms/data/FolderView;->hasError()Z

    move-result v3

    .line 197
    .local v3, hasError:Z
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v5}, Lcom/android/mms/data/FolderView;->getmHasAttachment()Z

    move-result v2

    .line 198
    .local v2, hasAttachment:Z
    iget-object v8, p0, Lcom/android/mms/ui/FolderViewListItem;->mAttachmentView:Landroid/view/View;

    if-eqz v2, :cond_8

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 204
    const-string v5, "FolderViewListItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bind mgViewID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget v5, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    if-ne v5, v10, :cond_9

    if-nez v3, :cond_9

    .line 206
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mDateView:Landroid/widget/TextView;

    const v8, 0x7f0b032b

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 212
    :goto_3
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewListItem;->formatMessage()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-boolean v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mSubjectSingleLine:Z

    if-eqz v5, :cond_1

    .line 215
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 217
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mSubjectView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v8}, Lcom/android/mms/data/FolderView;->getmSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v8, p0, Lcom/android/mms/ui/FolderViewListItem;->mErrorIndicator:Landroid/view/View;

    if-eqz v3, :cond_a

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v5}, Lcom/android/mms/data/FolderView;->getmSimId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/FolderViewListItem;->formatSimStatus(I)V

    .line 224
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v5}, Lcom/android/mms/data/FolderView;->isLocked()Z

    move-result v4

    .line 225
    .local v4, isLocked:Z
    iget-object v8, p0, Lcom/android/mms/ui/FolderViewListItem;->mLockedInd:Landroid/widget/ImageView;

    if-eqz v4, :cond_b

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mMuteView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v5}, Lcom/android/mms/data/FolderView;->isMute()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 228
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mMuteView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_2
    return-void

    .line 174
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #backgroundId:I
    .end local v2           #hasAttachment:Z
    .end local v3           #hasError:Z
    .end local v4           #isLocked:Z
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v5}, Lcom/android/mms/data/FolderView;->getmRead()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 175
    const v1, 0x7f02002e

    .line 176
    .restart local v1       #backgroundId:I
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 178
    .end local v1           #backgroundId:I
    :cond_4
    const v1, 0x7f02002d

    .line 179
    .restart local v1       #backgroundId:I
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 187
    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v5}, Lcom/android/mms/data/FolderView;->getmType()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_6

    .line 188
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mAvatarView:Landroid/widget/ImageView;

    const v8, 0x7f0200d5

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 189
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v5}, Lcom/android/mms/data/FolderView;->getmType()I

    move-result v5

    const/4 v8, 0x3

    if-ne v5, v8, :cond_7

    .line 190
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mAvatarView:Landroid/widget/ImageView;

    const v8, 0x7f0200f1

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 191
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v5}, Lcom/android/mms/data/FolderView;->getmType()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 192
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mAvatarView:Landroid/widget/ImageView;

    const v8, 0x7f020098

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .restart local v2       #hasAttachment:Z
    .restart local v3       #hasError:Z
    :cond_8
    move v5, v7

    .line 198
    goto/16 :goto_2

    .line 209
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewListItem;->mDateView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/mms/ui/FolderViewListItem;->mFview:Lcom/android/mms/data/FolderView;

    invoke-virtual {v8}, Lcom/android/mms/data/FolderView;->getmDate()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringExtend(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    move v5, v7

    .line 220
    goto/16 :goto_4

    .restart local v4       #isLocked:Z
    :cond_b
    move v5, v7

    .line 225
    goto/16 :goto_5
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 282
    const-string v0, "FolderViewListItem"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 284
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 285
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 118
    const v0, 0x7f0f0078

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mFromView:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mSubjectView:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0f00ce

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mPresenceView:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f0f007a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mDateView:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0f0075

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mAttachmentView:Landroid/view/View;

    .line 123
    const v0, 0x7f0f0074

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mErrorIndicator:Landroid/view/View;

    .line 124
    const v0, 0x7f0f0059

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mAvatarView:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f0f00c8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mByCard:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0f0029

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mLockedInd:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mMuteView:Landroid/view/View;

    .line 128
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/FolderViewListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/FolderViewListItem$1;-><init>(Lcom/android/mms/ui/FolderViewListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    return-void
.end method

.method public setSubjectSingleLineMode(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/android/mms/ui/FolderViewListItem;->mSubjectSingleLine:Z

    .line 277
    return-void
.end method

.method public final unbind()V
    .locals 0

    .prologue
    .line 238
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 239
    return-void
.end method
