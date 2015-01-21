.class Lcom/tutego/jrtf/RtfText$2;
.super Lcom/tutego/jrtf/RtfText;
.source "RtfText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutego/jrtf/RtfText;->field(Lcom/tutego/jrtf/RtfPara;Lcom/tutego/jrtf/RtfPara;Lcom/tutego/jrtf/RtfText$FieldModifier;)Lcom/tutego/jrtf/RtfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$fieldInstructions:Lcom/tutego/jrtf/RtfPara;

.field private final synthetic val$fieldModifier:Lcom/tutego/jrtf/RtfText$FieldModifier;

.field private final synthetic val$recentResult:Lcom/tutego/jrtf/RtfPara;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Lcom/tutego/jrtf/RtfText$FieldModifier;Lcom/tutego/jrtf/RtfPara;Lcom/tutego/jrtf/RtfPara;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/tutego/jrtf/RtfText$2;->val$fieldModifier:Lcom/tutego/jrtf/RtfText$FieldModifier;

    iput-object p3, p0, Lcom/tutego/jrtf/RtfText$2;->val$fieldInstructions:Lcom/tutego/jrtf/RtfPara;

    iput-object p4, p0, Lcom/tutego/jrtf/RtfText$2;->val$recentResult:Lcom/tutego/jrtf/RtfPara;

    .line 696
    invoke-direct {p0, p1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method rtf(Ljava/lang/Appendable;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 707
    const-string v0, "{\\field"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 709
    iget-object v0, p0, Lcom/tutego/jrtf/RtfText$2;->val$fieldModifier:Lcom/tutego/jrtf/RtfText$FieldModifier;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/tutego/jrtf/RtfText$2;->val$fieldModifier:Lcom/tutego/jrtf/RtfText$FieldModifier;

    invoke-virtual {v0}, Lcom/tutego/jrtf/RtfText$FieldModifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 712
    :cond_0
    const-string v0, "{\\*\\fldinst "

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 713
    iget-object v0, p0, Lcom/tutego/jrtf/RtfText$2;->val$fieldInstructions:Lcom/tutego/jrtf/RtfPara;

    invoke-virtual {v0, p1, v1}, Lcom/tutego/jrtf/RtfPara;->rtf(Ljava/lang/Appendable;Z)V

    .line 714
    const-string v0, "}{\\fldrslt "

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 716
    iget-object v0, p0, Lcom/tutego/jrtf/RtfText$2;->val$recentResult:Lcom/tutego/jrtf/RtfPara;

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/tutego/jrtf/RtfText$2;->val$recentResult:Lcom/tutego/jrtf/RtfPara;

    invoke-virtual {v0, p1, v1}, Lcom/tutego/jrtf/RtfPara;->rtf(Ljava/lang/Appendable;Z)V

    .line 719
    :cond_1
    const-string v0, "}}"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 720
    return-void
.end method
