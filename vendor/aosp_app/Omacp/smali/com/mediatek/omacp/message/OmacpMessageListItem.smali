.class public Lcom/mediatek/omacp/message/OmacpMessageListItem;
.super Landroid/widget/RelativeLayout;
.source "OmacpMessageListItem.java"


# static fields
.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDateView:Landroid/widget/TextView;

.field private mMessageItem:Lcom/mediatek/omacp/message/OmacpMessageListItemData;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private formatMessage(Lcom/mediatek/omacp/message/OmacpMessageListItemData;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "ch"

    .prologue
    .line 88
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mContext:Landroid/content/Context;

    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, title:Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 91
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mContext:Landroid/content/Context;

    const v4, 0x7f05000c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, installedIndicator:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 97
    .end local v1           #installedIndicator:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->isRead()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    sget-object v3, Lcom/mediatek/omacp/message/OmacpMessageListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 100
    :cond_1
    return-object v0
.end method

.method private setMessageItem(Lcom/mediatek/omacp/message/OmacpMessageListItemData;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mMessageItem:Lcom/mediatek/omacp/message/OmacpMessageListItemData;

    .line 122
    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;Lcom/mediatek/omacp/message/OmacpMessageListItemData;)V
    .locals 3
    .parameter "context"
    .parameter "ch"

    .prologue
    .line 105
    invoke-direct {p0, p2}, Lcom/mediatek/omacp/message/OmacpMessageListItem;->setMessageItem(Lcom/mediatek/omacp/message/OmacpMessageListItemData;)V

    .line 107
    invoke-virtual {p2}, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->isRead()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    .local v0, background:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/mediatek/omacp/message/OmacpMessageListItem;->formatMessage(Lcom/mediatek/omacp/message/OmacpMessageListItemData;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void

    .line 107
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getConversationHeader()Lcom/mediatek/omacp/message/OmacpMessageListItemData;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mMessageItem:Lcom/mediatek/omacp/message/OmacpMessageListItemData;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 81
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mTitleView:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mSummaryView:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItem;->mDateView:Landroid/widget/TextView;

    .line 84
    return-void
.end method
