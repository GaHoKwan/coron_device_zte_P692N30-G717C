.class public Lcom/tutego/jrtf/RtfHeaderColor;
.super Lcom/tutego/jrtf/RtfHeader;
.source "RtfHeaderColor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tutego/jrtf/RtfHeader;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tutego/jrtf/RtfHeaderColor;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I

.field colorindex:I

.field private g:I

.field private r:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tutego/jrtf/RtfHeader;-><init>()V

    .line 55
    iput p1, p0, Lcom/tutego/jrtf/RtfHeaderColor;->r:I

    .line 56
    iput p2, p0, Lcom/tutego/jrtf/RtfHeaderColor;->g:I

    .line 57
    iput p3, p0, Lcom/tutego/jrtf/RtfHeaderColor;->b:I

    .line 58
    return-void
.end method


# virtual methods
.method public at(I)Lcom/tutego/jrtf/RtfHeader;
    .locals 3
    .parameter "colorindex"

    .prologue
    .line 69
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 70
    :cond_0
    new-instance v0, Lcom/tutego/jrtf/RtfException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Color index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ist out of range, has to be between 0 and 255"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    iput p1, p0, Lcom/tutego/jrtf/RtfHeaderColor;->colorindex:I

    .line 74
    return-object p0
.end method

.method public compareTo(Lcom/tutego/jrtf/RtfHeaderColor;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 79
    iget v0, p0, Lcom/tutego/jrtf/RtfHeaderColor;->colorindex:I

    iget v1, p1, Lcom/tutego/jrtf/RtfHeaderColor;->colorindex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/tutego/jrtf/RtfHeaderColor;

    invoke-virtual {p0, p1}, Lcom/tutego/jrtf/RtfHeaderColor;->compareTo(Lcom/tutego/jrtf/RtfHeaderColor;)I

    move-result v0

    return v0
.end method

.method writeColordef(Ljava/lang/Appendable;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "\\red"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 93
    iget v1, p0, Lcom/tutego/jrtf/RtfHeaderColor;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 94
    const-string v1, "\\green"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 95
    iget v1, p0, Lcom/tutego/jrtf/RtfHeaderColor;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 96
    const-string v1, "\\blue"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 97
    iget v1, p0, Lcom/tutego/jrtf/RtfHeaderColor;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 98
    const/16 v1, 0x3b

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 99
    return-void
.end method
