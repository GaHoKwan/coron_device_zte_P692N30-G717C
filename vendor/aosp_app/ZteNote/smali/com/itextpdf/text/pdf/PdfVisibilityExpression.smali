.class public Lcom/itextpdf/text/pdf/PdfVisibilityExpression;
.super Lcom/itextpdf/text/pdf/PdfArray;
.source "PdfVisibilityExpression.java"


# static fields
.field public static final AND:I = 0x1

.field public static final NOT:I = -0x1

.field public static final OR:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal.ve.value"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-super {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 81
    :goto_0
    return-void

    .line 73
    :pswitch_1
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->AND:Lcom/itextpdf/text/pdf/PdfName;

    invoke-super {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 76
    :pswitch_2
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->NOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-super {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public add(ILcom/itextpdf/text/pdf/PdfObject;)V
    .locals 3
    .parameter "index"
    .parameter "element"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal.ve.value"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Lcom/itextpdf/text/pdf/PdfObject;)Z
    .locals 3
    .parameter "object"

    .prologue
    .line 96
    instance-of v0, p1, Lcom/itextpdf/text/pdf/PdfLayer;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lcom/itextpdf/text/pdf/PdfLayer;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLayer;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 98
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/text/pdf/PdfVisibilityExpression;

    if-eqz v0, :cond_1

    .line 99
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    move-result v0

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal.ve.value"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add([F)Z
    .locals 3
    .parameter "values"

    .prologue
    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal.ve.value"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add([I)Z
    .locals 3
    .parameter "values"

    .prologue
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal.ve.value"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFirst(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal.ve.value"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
