.class public Lcom/android/mms/ui/DeliveryReportListItem;
.super Landroid/widget/LinearLayout;
.source "DeliveryReportListItem.java"


# instance fields
.field private mDeliveryDateView:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mRecipientView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "recipient"
    .parameter "status"
    .parameter "deliveryDate"

    .prologue
    const v8, 0x7f0200e9

    const/4 v7, 0x0

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 62
    iget-object v5, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    invoke-static {p1, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f0b02e1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, receivedStr:Ljava/lang/String;
    const v5, 0x7f0b02e2

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, failedStr:Ljava/lang/String;
    const v5, 0x7f0b02df

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, pendingStr:Ljava/lang/String;
    const v5, 0x7f0b02e4

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, rejectStr:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 77
    iget-object v5, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    const v6, 0x7f0200e7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :cond_0
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 90
    iget-object v5, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDeliveryDateView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :goto_2
    return-void

    .line 64
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #failedStr:Ljava/lang/String;
    .end local v2           #pendingStr:Ljava/lang/String;
    .end local v3           #receivedStr:Ljava/lang/String;
    .end local v4           #rejectStr:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #failedStr:Ljava/lang/String;
    .restart local v2       #pendingStr:Ljava/lang/String;
    .restart local v3       #receivedStr:Ljava/lang/String;
    .restart local v4       #rejectStr:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 79
    iget-object v5, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 81
    iget-object v5, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    const v6, 0x7f0200ea

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 84
    iget-object v5, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 92
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDeliveryDateView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v5, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDeliveryDateView:Landroid/widget/TextView;

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 49
    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0f008e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mStatusView:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0f008f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDeliveryDateView:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    .line 53
    return-void
.end method
