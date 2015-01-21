.class public abstract Lcom/tutego/jrtf/RtfRow;
.super Lcom/tutego/jrtf/RtfPara;
.source "RtfRow.java"


# instance fields
.field tbldef:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tutego/jrtf/RtfPara;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tutego/jrtf/RtfRow;->tbldef:Ljava/lang/StringBuilder;

    .line 38
    return-void
.end method


# virtual methods
.method public bottomCellBorder()Lcom/tutego/jrtf/RtfRow;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tutego/jrtf/RtfRow;->tbldef:Ljava/lang/StringBuilder;

    const-string v1, "\\clbrdrb\\brdrs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    return-object p0
.end method

.method public cellHeight(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfRow;
    .locals 2
    .parameter "height"
    .parameter "unit"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tutego/jrtf/RtfRow;->tbldef:Ljava/lang/StringBuilder;

    const-string v1, "\\trrh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    return-object p0
.end method

.method public cellSpace(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfRow;
    .locals 2
    .parameter "space"
    .parameter "unit"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tutego/jrtf/RtfRow;->tbldef:Ljava/lang/StringBuilder;

    const-string v1, "\\trgaph"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    return-object p0
.end method

.method public leftCellBorder()Lcom/tutego/jrtf/RtfRow;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tutego/jrtf/RtfRow;->tbldef:Ljava/lang/StringBuilder;

    const-string v1, "\\clbrdrl\\brdrs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    return-object p0
.end method

.method public rightCellBorder()Lcom/tutego/jrtf/RtfRow;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tutego/jrtf/RtfRow;->tbldef:Ljava/lang/StringBuilder;

    const-string v1, "\\clbrdrr\\brdrs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    return-object p0
.end method

.method public rightToLeft()Lcom/tutego/jrtf/RtfRow;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tutego/jrtf/RtfRow;->tbldef:Ljava/lang/StringBuilder;

    const-string v1, "\\taprtl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    return-object p0
.end method

.method public topCellBorder()Lcom/tutego/jrtf/RtfRow;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tutego/jrtf/RtfRow;->tbldef:Ljava/lang/StringBuilder;

    const-string v1, "\\clbrdrt\\brdrs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    return-object p0
.end method
