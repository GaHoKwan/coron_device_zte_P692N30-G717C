.class Lcom/android/mms/ui/ClassZeroView;
.super Landroid/widget/LinearLayout;
.source "ClassZeroActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassZeroView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessageView:Landroid/widget/TextView;

.field private mTimestamp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 504
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 505
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroView;->mContext:Landroid/content/Context;

    .line 506
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 509
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 510
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroView;->mContext:Landroid/content/Context;

    .line 511
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;I)V
    .locals 5
    .parameter "messageBody"
    .parameter "simId"

    .prologue
    .line 522
    const-string v2, "ClassZeroView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class zero message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; From SIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 526
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroView;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/mms/ui/MessageUtils;->getSimInfo(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 527
    .local v1, simInfo:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 528
    const-string v2, " "

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 529
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0084

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 530
    const-string v2, " "

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 531
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroView;->mTimestamp:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 514
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 515
    const v0, 0x7f0f002f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroView;->mMessageView:Landroid/widget/TextView;

    .line 516
    const v0, 0x7f0f0030

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroView;->mTimestamp:Landroid/widget/TextView;

    .line 519
    return-void
.end method
