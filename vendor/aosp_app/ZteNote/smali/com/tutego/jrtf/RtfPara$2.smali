.class Lcom/tutego/jrtf/RtfPara$2;
.super Lcom/tutego/jrtf/RtfTextPara;
.source "RtfPara.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutego/jrtf/RtfPara;->p([Lcom/tutego/jrtf/RtfText;)Lcom/tutego/jrtf/RtfTextPara;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$texts:[Lcom/tutego/jrtf/RtfText;


# direct methods
.method constructor <init>([Lcom/tutego/jrtf/RtfText;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutego/jrtf/RtfPara$2;->val$texts:[Lcom/tutego/jrtf/RtfText;

    .line 96
    invoke-direct {p0}, Lcom/tutego/jrtf/RtfTextPara;-><init>()V

    return-void
.end method


# virtual methods
.method rtf(Ljava/lang/Appendable;Z)V
    .locals 4
    .parameter "out"
    .parameter "withEndingPar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const-string v1, "{"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 99
    invoke-virtual {p0}, Lcom/tutego/jrtf/RtfPara$2;->textparFormatRtf()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 100
    iget-object v2, p0, Lcom/tutego/jrtf/RtfPara$2;->val$texts:[Lcom/tutego/jrtf/RtfText;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 102
    if-eqz p2, :cond_0

    .line 103
    const-string v1, "\\par"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 104
    :cond_0
    const-string v1, "}\n"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 105
    return-void

    .line 100
    :cond_1
    aget-object v0, v2, v1

    .line 101
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    invoke-virtual {v0, p1}, Lcom/tutego/jrtf/RtfText;->rtf(Ljava/lang/Appendable;)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
