.class public Lcom/mediatek/ipmsg/ui/ConversationEmptyView;
.super Landroid/widget/LinearLayout;
.source "ConversationEmptyView.java"


# instance fields
.field private mActivate:Landroid/widget/LinearLayout;

.field private mBackground:Landroid/widget/LinearLayout;

.field private mBtnActivate:Landroid/widget/Button;

.field private mContent:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mGroupChat:Landroid/widget/RelativeLayout;

.field private mImportant:Landroid/widget/LinearLayout;

.field private mSpam:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040013

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mConvertView:Landroid/view/View;

    .line 39
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mConvertView:Landroid/view/View;

    const v2, 0x7f0f005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mBackground:Landroid/widget/LinearLayout;

    .line 40
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mConvertView:Landroid/view/View;

    const v2, 0x7f0f005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mContent:Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mConvertView:Landroid/view/View;

    const v2, 0x7f0f0067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mImportant:Landroid/widget/LinearLayout;

    .line 42
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mConvertView:Landroid/view/View;

    const v2, 0x7f0f005f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mSpam:Landroid/widget/RelativeLayout;

    .line 43
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mConvertView:Landroid/view/View;

    const v2, 0x7f0f0063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mGroupChat:Landroid/widget/RelativeLayout;

    .line 44
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mConvertView:Landroid/view/View;

    const v2, 0x7f0f006a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mActivate:Landroid/widget/LinearLayout;

    .line 45
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mConvertView:Landroid/view/View;

    const v2, 0x7f0f006c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mBtnActivate:Landroid/widget/Button;

    .line 46
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mBtnActivate:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/ipmsg/ui/ConversationEmptyView$1;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/ipmsg/ui/ConversationEmptyView$1;-><init>(Lcom/mediatek/ipmsg/ui/ConversationEmptyView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method private setActivate(Z)V
    .locals 2
    .parameter "isActivate"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mActivate:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mActivate:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public setAllChatEmpty()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 89
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mBackground:Landroid/widget/LinearLayout;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0xae

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mSpam:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mImportant:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mGroupChat:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    return-void
.end method

.method public setGroupChatEmpty(Z)V
    .locals 3
    .parameter "isActivate"

    .prologue
    const/16 v1, 0x8

    .line 79
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mSpam:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mImportant:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mGroupChat:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mBackground:Landroid/widget/LinearLayout;

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->setActivate(Z)V

    .line 86
    return-void
.end method

.method public setImportantEmpty(Z)V
    .locals 3
    .parameter "isActivate"

    .prologue
    const/16 v2, 0x8

    .line 70
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mSpam:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mImportant:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mGroupChat:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mBackground:Landroid/widget/LinearLayout;

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0xad

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->setActivate(Z)V

    .line 77
    return-void
.end method

.method public setSpamEmpty(Z)V
    .locals 3
    .parameter "isActivate"

    .prologue
    const/16 v2, 0x8

    .line 59
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mSpam:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mImportant:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mGroupChat:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mBackground:Landroid/widget/LinearLayout;

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0xab

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->setActivate(Z)V

    .line 67
    return-void
.end method
