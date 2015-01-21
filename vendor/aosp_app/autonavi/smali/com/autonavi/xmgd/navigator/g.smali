.class Lcom/autonavi/xmgd/navigator/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/DataFeedback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5

    move v0, p3

    move-object v1, p1

    :goto_0
    :try_start_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, p5, p6, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_2
    if-nez v2, :cond_1

    :goto_3
    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_3

    :cond_1
    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :cond_2
    move v4, v0

    move-object v0, v1

    move v1, v4

    goto :goto_2
.end method
