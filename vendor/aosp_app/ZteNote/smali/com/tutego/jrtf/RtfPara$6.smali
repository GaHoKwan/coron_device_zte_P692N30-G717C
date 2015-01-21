.class Lcom/tutego/jrtf/RtfPara$6;
.super Lcom/tutego/jrtf/RtfRow;
.source "RtfPara.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutego/jrtf/RtfPara;->row([Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cells:[Lcom/tutego/jrtf/RtfPara;


# direct methods
.method constructor <init>([Lcom/tutego/jrtf/RtfPara;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutego/jrtf/RtfPara$6;->val$cells:[Lcom/tutego/jrtf/RtfPara;

    .line 225
    invoke-direct {p0}, Lcom/tutego/jrtf/RtfRow;-><init>()V

    return-void
.end method


# virtual methods
.method rtf(Ljava/lang/Appendable;Z)V
    .locals 7
    .parameter "out"
    .parameter "withEndingPar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 227
    const-string v2, "{\\trowd\\trautofit1\\intbl\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 228
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/tutego/jrtf/RtfPara$6;->val$cells:[Lcom/tutego/jrtf/RtfPara;

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 234
    iget-object v4, p0, Lcom/tutego/jrtf/RtfPara$6;->val$cells:[Lcom/tutego/jrtf/RtfPara;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-lt v2, v5, :cond_2

    .line 239
    const-string v2, "\\row}"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 240
    return-void

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/tutego/jrtf/RtfPara$6;->tbldef:Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v4

    .line 230
    iget-object v2, p0, Lcom/tutego/jrtf/RtfPara$6;->val$cells:[Lcom/tutego/jrtf/RtfPara;

    add-int/lit8 v5, v1, -0x1

    aget-object v2, v2, v5

    instance-of v2, v2, Lcom/tutego/jrtf/RtfTextPara;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tutego/jrtf/RtfPara$6;->val$cells:[Lcom/tutego/jrtf/RtfPara;

    add-int/lit8 v5, v1, -0x1

    aget-object v2, v2, v5

    check-cast v2, Lcom/tutego/jrtf/RtfTextPara;

    iget-object v2, v2, Lcom/tutego/jrtf/RtfTextPara;->cellfmt:Ljava/lang/StringBuilder;

    :goto_2
    invoke-interface {v4, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    .line 231
    const-string v4, "\\cellx"

    invoke-interface {v2, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    const-string v4, "\n"

    invoke-interface {v2, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_1
    const-string v2, ""

    goto :goto_2

    .line 234
    :cond_2
    aget-object v0, v4, v2

    .line 236
    .local v0, cell:Lcom/tutego/jrtf/RtfPara;
    invoke-virtual {v0, p1, v3}, Lcom/tutego/jrtf/RtfPara;->rtf(Ljava/lang/Appendable;Z)V

    .line 237
    const-string v6, "\\cell\n"

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
