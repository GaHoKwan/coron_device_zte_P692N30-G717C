.class public Lcom/tutego/jrtf/RtfDocfmt;
.super Ljava/lang/Object;
.source "RtfDocfmt.java"


# instance fields
.field rtf:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "rtf"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/tutego/jrtf/RtfDocfmt;->rtf:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static bottomMargin(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfDocfmt;
    .locals 3
    .parameter "margin"
    .parameter "unit"

    .prologue
    .line 223
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\margb"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static defaultTab(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfDocfmt;
    .locals 3
    .parameter "width"
    .parameter "unit"

    .prologue
    .line 63
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\deftab"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static endnotesOnly()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\fet1"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static facingPages()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\facingp"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static footnoteNumberingArabic()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\ftnnar"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static footnoteNumberingUpperAlphabetic()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\ftnnauc"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static footnoteNumberingUpperRoman()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\ftnnrlc"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static footnotesEndnotes()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\fet2"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static footnotesOnly()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\fet0"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static hyphenationHotZone(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfDocfmt;
    .locals 3
    .parameter "width"
    .parameter "unit"

    .prologue
    .line 75
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\hyphhotzN"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static landscape()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\landscape"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static leftMargin(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfDocfmt;
    .locals 3
    .parameter "margin"
    .parameter "unit"

    .prologue
    .line 190
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\margl"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static pageLayoutView()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\viewkind1"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static paper(DDLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfDocfmt;
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "unit"

    .prologue
    .line 178
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\paperw"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0, p1}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    const-string v2, "\\paperh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4, p2, p3}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static paperHeight(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfDocfmt;
    .locals 3
    .parameter "height"
    .parameter "unit"

    .prologue
    .line 166
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\paperh"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static paperWidth(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfDocfmt;
    .locals 3
    .parameter "width"
    .parameter "unit"

    .prologue
    .line 155
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\paperw"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static revisionMarking()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\revisions"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static revisionProtected()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 271
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\revprot"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static rightMargin(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfDocfmt;
    .locals 3
    .parameter "margin"
    .parameter "unit"

    .prologue
    .line 201
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\margr"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static switchMargin()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\margmirror"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static topMargin(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfDocfmt;
    .locals 3
    .parameter "margin"
    .parameter "unit"

    .prologue
    .line 212
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\margt"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static widowOrphanControl()Lcom/tutego/jrtf/RtfDocfmt;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Lcom/tutego/jrtf/RtfDocfmt;

    const-string v1, "\\widowctrl"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfDocfmt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
