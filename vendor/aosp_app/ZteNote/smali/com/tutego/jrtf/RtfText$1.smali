.class Lcom/tutego/jrtf/RtfText$1;
.super Lcom/tutego/jrtf/RtfText;
.source "RtfText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutego/jrtf/RtfText;->footnote([Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$paras:[Lcom/tutego/jrtf/RtfPara;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;[Lcom/tutego/jrtf/RtfPara;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/tutego/jrtf/RtfText$1;->val$paras:[Lcom/tutego/jrtf/RtfPara;

    .line 644
    invoke-direct {p0, p1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method rtf(Ljava/lang/Appendable;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 647
    const-string v1, "\\chftn{\\footnote{\\up6\\chftn }"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 648
    iget-object v3, p0, Lcom/tutego/jrtf/RtfText$1;->val$paras:[Lcom/tutego/jrtf/RtfPara;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    .line 650
    const-string v1, "}\n"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 651
    return-void

    .line 648
    :cond_0
    aget-object v0, v3, v1

    .line 649
    .local v0, rtfPara:Lcom/tutego/jrtf/RtfPara;
    invoke-virtual {v0, p1, v2}, Lcom/tutego/jrtf/RtfPara;->rtf(Ljava/lang/Appendable;Z)V

    .line 648
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
