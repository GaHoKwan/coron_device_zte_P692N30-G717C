.class public Lcom/tutego/jrtf/RtfText;
.super Ljava/lang/Object;
.source "RtfText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutego/jrtf/RtfText$FieldModifier;
    }
.end annotation


# instance fields
.field private final rtf:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "rtf"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    .line 61
    return-void
.end method

.method public static bold(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 180
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 181
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static bullet()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 529
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\bullet\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static color(ILjava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "colorindex"
    .parameter "text"

    .prologue
    .line 354
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 355
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 356
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\cf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 357
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static color(ILjava/lang/String;)Lcom/tutego/jrtf/RtfText;
    .locals 1
    .parameter "colorindex"
    .parameter "text"

    .prologue
    .line 370
    invoke-static {p1}, Lcom/tutego/jrtf/RtfText;->text(Ljava/lang/String;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tutego/jrtf/RtfText;->color(ILjava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    return-object v0
.end method

.method public static columnBreak()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\column\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static currentDate()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\chdate\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static currentDateAbbreviated()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 411
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\chdpa\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static currentDateLong()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 402
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\chdpl\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static currentPageNumber()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 429
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\chpgn\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static currentSectionNumber()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 438
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\sectnum\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static currentTime()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 420
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\chtime\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static dottedUnderline(Ljava/lang/String;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 206
    invoke-static {p0}, Lcom/tutego/jrtf/RtfText;->text(Ljava/lang/String;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 207
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\uld "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static doubleQuote(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 586
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 587
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Lcom/tutego/jrtf/RtfText;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\ldblquote\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\rdblquote\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public static doubleUnderline(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 219
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 220
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 221
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\uldb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static field(Lcom/tutego/jrtf/RtfPara;Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfText;
    .locals 1
    .parameter "fieldInstructions"
    .parameter "recentResult"

    .prologue
    .line 732
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tutego/jrtf/RtfText;->field(Lcom/tutego/jrtf/RtfPara;Lcom/tutego/jrtf/RtfPara;Lcom/tutego/jrtf/RtfText$FieldModifier;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    return-object v0
.end method

.method public static field(Lcom/tutego/jrtf/RtfPara;Lcom/tutego/jrtf/RtfPara;Lcom/tutego/jrtf/RtfText$FieldModifier;)Lcom/tutego/jrtf/RtfText;
    .locals 2
    .parameter "fieldInstructions"
    .parameter "recentResult"
    .parameter "fieldModifier"

    .prologue
    .line 693
    if-nez p0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field instructions are missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_0
    new-instance v0, Lcom/tutego/jrtf/RtfText$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/tutego/jrtf/RtfText$2;-><init>(Ljava/lang/CharSequence;Lcom/tutego/jrtf/RtfText$FieldModifier;Lcom/tutego/jrtf/RtfPara;Lcom/tutego/jrtf/RtfPara;)V

    return-object v0
.end method

.method public static font(ILjava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "fontnum"
    .parameter "text"

    .prologue
    .line 152
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 153
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static fontSize(ILjava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "fontSize"
    .parameter "text"

    .prologue
    .line 324
    if-gez p0, :cond_0

    .line 325
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Font size can\'t be negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 329
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 330
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\fs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 331
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static footnote(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 2
    .parameter "para"

    .prologue
    .line 662
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/tutego/jrtf/RtfPara;->p([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfTextPara;

    move-result-object v0

    invoke-static {v0}, Lcom/tutego/jrtf/RtfText;->footnote(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    return-object v0
.end method

.method public static varargs footnote([Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfText;
    .locals 2
    .parameter "paras"

    .prologue
    .line 644
    new-instance v0, Lcom/tutego/jrtf/RtfText$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/tutego/jrtf/RtfText$1;-><init>(Ljava/lang/CharSequence;[Lcom/tutego/jrtf/RtfPara;)V

    return-object v0
.end method

.method public static hyperlink(Ljava/lang/String;Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "url"
    .parameter "text"

    .prologue
    .line 745
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 746
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\field{\\*\\fldinst{HYPERLINK \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 747
    invoke-static {p0}, Lcom/tutego/jrtf/Rtf;->asRtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 748
    const-string v3, "\"}}{\\fldrslt{\\ul "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/tutego/jrtf/RtfPara;->rtf(Ljava/lang/Appendable;Z)V

    .line 750
    const-string v2, "}}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 754
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 756
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v2, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static italic(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 167
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 168
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static leftDoubleQuotationMark()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 567
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\ldblquote\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static leftQuotationMark()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 538
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\lquote\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static lineBreak()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 465
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\line\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static longHyphen()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 511
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\emdash\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static nonBreakingSpace()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 596
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\~\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static pageBreak()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 447
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\page\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static picture(Ljava/io/InputStream;)Lcom/tutego/jrtf/RtfPicture;
    .locals 2
    .parameter "source"

    .prologue
    .line 627
    :try_start_0
    new-instance v1, Lcom/tutego/jrtf/RtfPicture;

    invoke-direct {v1, p0}, Lcom/tutego/jrtf/RtfPicture;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 629
    :catch_0
    move-exception v0

    .line 631
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v1, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static picture(Ljava/net/URL;)Lcom/tutego/jrtf/RtfPicture;
    .locals 3
    .parameter "source"

    .prologue
    .line 610
    :try_start_0
    new-instance v1, Lcom/tutego/jrtf/RtfPicture;

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tutego/jrtf/RtfPicture;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 612
    :catch_0
    move-exception v0

    .line 614
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v1, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static qoute(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 557
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 558
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Lcom/tutego/jrtf/RtfText;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\lquote\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\rquote\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public static revised(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 258
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 259
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 260
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\revised "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static rightDoubleQuotationMark()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 576
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\rdblquote\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static rightQuotationMark()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 547
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\rquote\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static shadow(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 297
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 298
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\shad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static shortHyphen()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 520
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\endash\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static smallCapitals(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 310
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 311
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 312
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\scaps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static softColumnBreak()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 483
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\softcol\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static softLineBreak()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 492
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\softline\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static softPageBreak()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 474
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\softpage\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static strikethru(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 284
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 285
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\strike "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static subscript(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 245
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 246
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 247
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static superscript(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 271
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 272
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 273
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\super "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static tab()Lcom/tutego/jrtf/RtfText;
    .locals 2

    .prologue
    .line 502
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    const-string v1, "\\tab\n"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static text(Ljava/lang/String;)Lcom/tutego/jrtf/RtfText;
    .locals 2
    .parameter "text"

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    const-string p0, ""

    .line 141
    :cond_0
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    invoke-static {p0}, Lcom/tutego/jrtf/Rtf;->asRtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static varargs text(Z[Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 5
    .parameter "joinWithSpace"
    .parameter "texts"

    .prologue
    .line 103
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 104
    :cond_0
    new-instance v3, Lcom/tutego/jrtf/RtfText;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    .line 127
    :goto_0
    return-object v3

    .line 106
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    .local v2, result:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-lt v1, v3, :cond_2

    .line 127
    new-instance v3, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v3, v2}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_2
    aget-object v3, p1, v1

    if-nez v3, :cond_3

    .line 107
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    :cond_3
    if-eqz p0, :cond_4

    .line 113
    if-lez v1, :cond_4

    add-int/lit8 v3, v1, -0x1

    aget-object v3, p1, v3

    if-eqz v3, :cond_4

    .line 114
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_4
    :try_start_0
    aget-object v3, p1, v1

    instance-of v3, v3, Lcom/tutego/jrtf/RtfText;

    if-eqz v3, :cond_5

    .line 119
    aget-object v3, p1, v1

    check-cast v3, Lcom/tutego/jrtf/RtfText;

    invoke-virtual {v3, v2}, Lcom/tutego/jrtf/RtfText;->rtf(Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v3, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 120
    .end local v0           #e:Ljava/io/IOException;
    :cond_5
    :try_start_1
    aget-object v3, p1, v1

    instance-of v3, v3, Lcom/tutego/jrtf/RtfPara;

    if-eqz v3, :cond_6

    .line 121
    new-instance v3, Lcom/tutego/jrtf/RtfException;

    const-string v4, "RtfPara in method text() is not allowed. There is no sensible toString() method declared"

    invoke-direct {v3, v4}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_6
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tutego/jrtf/Rtf;->asRtf(Ljava/lang/Appendable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static varargs text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 1
    .parameter "texts"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/tutego/jrtf/RtfText;->text(Z[Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    return-object v0
.end method

.method public static underline(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 193
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 194
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\ul "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public static wordUnderline(Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;
    .locals 4
    .parameter "text"

    .prologue
    .line 232
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    .line 233
    .local v0, rtfText:Lcom/tutego/jrtf/RtfText;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 234
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "{\\ulw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    new-instance v2, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method


# virtual methods
.method rtf(Ljava/lang/Appendable;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tutego/jrtf/RtfText;->rtf:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 71
    return-void
.end method
