.class Lawb;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lawa;


# direct methods
.method constructor <init>(Lawa;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lawb;->a:Lawa;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x2

    const/16 v10, 0x21

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    iget-object v0, p0, Lawb;->a:Lawa;

    invoke-static {v0}, Lawa;->a(Lawa;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawb;->a:Lawa;

    invoke-static {v0}, Lawa;->a(Lawa;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawb;->a:Lawa;

    invoke-static {v0}, Lawa;->b(Lawa;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lawb;->a:Lawa;

    invoke-static {v0}, Lawa;->a(Lawa;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 112
    iget-object v1, p0, Lawb;->a:Lawa;

    invoke-static {v1}, Lawa;->a(Lawa;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 113
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 114
    iget-object v0, p0, Lawb;->a:Lawa;

    invoke-static {v0}, Lawa;->a(Lawa;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lawb;->a:Lawa;

    invoke-static {v1}, Lawa;->a(Lawa;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 118
    iget-object v1, p0, Lawb;->a:Lawa;

    invoke-static {v1}, Lawa;->b(Lawa;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_2
    if-lez v1, :cond_3

    .line 120
    int-to-double v2, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 121
    iget-object v4, p0, Lawb;->a:Lawa;

    invoke-static {v4}, Lawa;->a(Lawa;)Ljava/lang/String;

    move-result-object v4

    .line 122
    iget-object v5, p0, Lawb;->a:Lawa;

    invoke-static {v5}, Lawa;->a(Lawa;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v5, p0, Lawb;->a:Lawa;

    invoke-static {v5}, Lawa;->a(Lawa;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v7, [Ljava/lang/Object;

    div-int/lit16 v0, v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    div-int/lit16 v0, v1, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lawb;->a:Lawa;

    invoke-static {v1}, Lawa;->a(Lawa;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 127
    iget-object v1, p0, Lawb;->a:Lawa;

    invoke-static {v1}, Lawa;->b(Lawa;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lawb;->a:Lawa;

    invoke-static {v0}, Lawa;->a(Lawa;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lawb;->a:Lawa;

    invoke-static {v0}, Lawa;->a(Lawa;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lawb;->a:Lawa;

    invoke-static {v1}, Lawa;->a(Lawa;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lawb;->a:Lawa;

    invoke-static {v1}, Lawa;->a(Lawa;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 134
    iget-object v1, p0, Lawb;->a:Lawa;

    invoke-static {v1}, Lawa;->b(Lawa;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
