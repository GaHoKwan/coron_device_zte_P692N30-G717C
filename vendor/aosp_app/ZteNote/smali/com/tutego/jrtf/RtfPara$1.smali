.class Lcom/tutego/jrtf/RtfPara$1;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/tutego/jrtf/RtfTextPara;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method rtf(Ljava/lang/Appendable;Z)V
    .locals 1
    .parameter "out"
    .parameter "withEndingPar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "\\par"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 93
    return-void
.end method
