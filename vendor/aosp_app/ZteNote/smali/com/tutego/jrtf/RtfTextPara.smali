.class public abstract Lcom/tutego/jrtf/RtfTextPara;
.super Lcom/tutego/jrtf/RtfPara;
.source "RtfTextPara.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutego/jrtf/RtfTextPara$BorderStyle;,
        Lcom/tutego/jrtf/RtfTextPara$TabKind;,
        Lcom/tutego/jrtf/RtfTextPara$TabLead;
    }
.end annotation


# instance fields
.field private brdrdef:Ljava/lang/StringBuilder;

.field cellfmt:Ljava/lang/StringBuilder;

.field private parfmt:Ljava/lang/StringBuilder;

.field private tabdef:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x200

    .line 37
    invoke-direct {p0}, Lcom/tutego/jrtf/RtfPara;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->tabdef:Ljava/lang/StringBuilder;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->brdrdef:Ljava/lang/StringBuilder;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->cellfmt:Ljava/lang/StringBuilder;

    .line 37
    return-void
.end method


# virtual methods
.method public alignCentered()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\qc\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    return-object p0
.end method

.method public alignJustified()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\qj\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    return-object p0
.end method

.method public alignLeft()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\ql\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    return-object p0
.end method

.method public alignRight()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\qr\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    return-object p0
.end method

.method public bottomBorder(Lcom/tutego/jrtf/RtfTextPara$BorderStyle;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "borderStyle"

    .prologue
    .line 595
    if-nez p1, :cond_0

    .line 596
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Border style is missing, can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->brdrdef:Ljava/lang/StringBuilder;

    const-string v1, "\\brdrb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 599
    return-object p0
.end method

.method public breakPageBeforeParagraph()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\pagebb\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    return-object p0
.end method

.method public cellWidth(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 3
    .parameter "width"
    .parameter "unit"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->cellfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\clftsWidth3\\clwWidth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 638
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 639
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 641
    return-object p0
.end method

.method public hyphenationOff()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\hyphpar0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    return-object p0
.end method

.method public hyphenationOn()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\hyphpar1\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    return-object p0
.end method

.method public indentFirstLine(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "indentation"
    .parameter "unit"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\fi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    return-object p0
.end method

.method public indentLeft(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "indentation"
    .parameter "unit"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\li"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    return-object p0
.end method

.method public indentRight(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "indentation"
    .parameter "unit"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\ri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    return-object p0
.end method

.method public keep()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\keep\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    return-object p0
.end method

.method public keepWithNextParagraph()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\keepn\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    return-object p0
.end method

.method public leftBorder(Lcom/tutego/jrtf/RtfTextPara$BorderStyle;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "borderStyle"

    .prologue
    .line 608
    if-nez p1, :cond_0

    .line 609
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Border style is missing, can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->brdrdef:Ljava/lang/StringBuilder;

    const-string v1, "\\brdrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 612
    return-object p0
.end method

.method public leftToRight()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\ltrpar\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    return-object p0
.end method

.method public level(I)Lcom/tutego/jrtf/RtfTextPara;
    .locals 3
    .parameter "level"

    .prologue
    .line 163
    if-gez p1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Level is not allowed to be negative but is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    return-object p0
.end method

.method public noLineNumbering()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\noline\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    return-object p0
.end method

.method public noWidowOrOrphanControl()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\nowidctlpar\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    return-object p0
.end method

.method public partOfTable()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\intbl\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    return-object p0
.end method

.method public reset()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\pard\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    return-object p0
.end method

.method public rightBorder(Lcom/tutego/jrtf/RtfTextPara$BorderStyle;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "borderStyle"

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Border style is missing, can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->brdrdef:Ljava/lang/StringBuilder;

    const-string v1, "\\brdrr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 626
    return-object p0
.end method

.method public rightToLeft()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\rtlpar\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    return-object p0
.end method

.method public spaceAfterLine(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "space"
    .parameter "unit"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\sa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    return-object p0
.end method

.method public spaceBeforeLine(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "space"
    .parameter "unit"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\sb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    return-object p0
.end method

.method public spaceBetweenLines(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "space"
    .parameter "unit"

    .prologue
    .line 313
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 315
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\sl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    return-object p0
.end method

.method public spaceBetweenLinesAutomatically()Lcom/tutego/jrtf/RtfTextPara;
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\sl0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    return-object p0
.end method

.method public spaceBetweenLinesMultiple(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "space"
    .parameter "unit"

    .prologue
    .line 345
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 347
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\sl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\slmult1\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    return-object p0
.end method

.method public spaceBetweenLinesMultipleAtLeastOrExactly(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "space"
    .parameter "unit"

    .prologue
    .line 329
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 331
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    const-string v1, "\\sl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\slmult0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    return-object p0
.end method

.method public tab(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 6
    .parameter "tabPostion"
    .parameter "unit"

    .prologue
    const/4 v1, 0x0

    .line 446
    move-object v0, p0

    move-object v2, v1

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tutego/jrtf/RtfTextPara;->tab(Lcom/tutego/jrtf/RtfTextPara$TabKind;Lcom/tutego/jrtf/RtfTextPara$TabLead;DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;

    move-result-object v0

    return-object v0
.end method

.method public tab(Lcom/tutego/jrtf/RtfTextPara$TabKind;DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 6
    .parameter "tabKind"
    .parameter "tabPostion"
    .parameter "unit"

    .prologue
    .line 458
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tutego/jrtf/RtfTextPara;->tab(Lcom/tutego/jrtf/RtfTextPara$TabKind;Lcom/tutego/jrtf/RtfTextPara$TabLead;DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;

    move-result-object v0

    return-object v0
.end method

.method public tab(Lcom/tutego/jrtf/RtfTextPara$TabKind;Lcom/tutego/jrtf/RtfTextPara$TabLead;DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "tabKind"
    .parameter "tabLead"
    .parameter "tabPostion"
    .parameter "unit"

    .prologue
    .line 471
    if-eqz p1, :cond_0

    sget-object v0, Lcom/tutego/jrtf/RtfTextPara$TabKind;->LEFT:Lcom/tutego/jrtf/RtfTextPara$TabKind;

    if-eq p1, v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->tabdef:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 474
    :cond_0
    if-eqz p2, :cond_1

    .line 475
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->tabdef:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->tabdef:Ljava/lang/StringBuilder;

    const-string v1, "\\tx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5, p3, p4}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    return-object p0
.end method

.method textparFormatRtf()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    iget-object v1, p0, Lcom/tutego/jrtf/RtfTextPara;->brdrdef:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tutego/jrtf/RtfTextPara;->parfmt:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tutego/jrtf/RtfTextPara;->tabdef:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    return-object v0
.end method

.method public topBorder(Lcom/tutego/jrtf/RtfTextPara$BorderStyle;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 2
    .parameter "borderStyle"

    .prologue
    .line 581
    if-nez p1, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Border style is missing, can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTextPara;->brdrdef:Ljava/lang/StringBuilder;

    const-string v1, "\\brdrt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 585
    return-object p0
.end method
