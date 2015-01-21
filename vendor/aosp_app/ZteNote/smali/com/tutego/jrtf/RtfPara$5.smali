.class Lcom/tutego/jrtf/RtfPara$5;
.super Lcom/tutego/jrtf/RtfPara;
.source "RtfPara.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutego/jrtf/RtfPara;->ul(Lcom/tutego/jrtf/RtfText;)Lcom/tutego/jrtf/RtfPara;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$text:Lcom/tutego/jrtf/RtfText;


# direct methods
.method constructor <init>(Lcom/tutego/jrtf/RtfText;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutego/jrtf/RtfPara$5;->val$text:Lcom/tutego/jrtf/RtfText;

    .line 158
    invoke-direct {p0}, Lcom/tutego/jrtf/RtfPara;-><init>()V

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
    .line 160
    const-string v0, "{\\pard{\\pntext\\bullet\\tab}{\\*\\pn\\pnlvlblt\\pnf1\\pnindent0{\\pntxtb\\bullet}}\\fi-200\\li200 "

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 161
    iget-object v0, p0, Lcom/tutego/jrtf/RtfPara$5;->val$text:Lcom/tutego/jrtf/RtfText;

    invoke-virtual {v0, p1}, Lcom/tutego/jrtf/RtfText;->rtf(Ljava/lang/Appendable;)V

    .line 162
    const/16 v0, 0x7d

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 163
    return-void
.end method
