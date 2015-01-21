.class public Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;
.super Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;
.source "MetaPen.java"


# static fields
.field public static final PS_DASH:I = 0x1

.field public static final PS_DASHDOT:I = 0x3

.field public static final PS_DASHDOTDOT:I = 0x4

.field public static final PS_DOT:I = 0x2

.field public static final PS_INSIDEFRAME:I = 0x6

.field public static final PS_NULL:I = 0x5

.field public static final PS_SOLID:I


# instance fields
.field color:Lcom/itextpdf/text/BaseColor;

.field penWidth:I

.field style:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->style:I

    .line 59
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->penWidth:I

    .line 60
    sget-object v0, Lcom/itextpdf/text/BaseColor;->BLACK:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->color:Lcom/itextpdf/text/BaseColor;

    .line 63
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->type:I

    .line 64
    return-void
.end method


# virtual methods
.method public getColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->color:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getPenWidth()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->penWidth:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->style:I

    return v0
.end method

.method public init(Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->style:I

    .line 68
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->penWidth:I

    .line 69
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    .line 70
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->color:Lcom/itextpdf/text/BaseColor;

    .line 71
    return-void
.end method
