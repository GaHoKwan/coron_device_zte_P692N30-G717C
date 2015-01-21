.class public Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;
.super Lcom/itextpdf/text/pdf/PdfPageEventHelper;
.source "FieldPositioningEvents.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/PdfPCellEvent;


# instance fields
.field protected cellField:Lcom/itextpdf/text/pdf/PdfFormField;

.field protected fieldWriter:Lcom/itextpdf/text/pdf/PdfWriter;

.field protected genericChunkFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfFormField;",
            ">;"
        }
    .end annotation
.end field

.field public padding:F

.field protected parent:Lcom/itextpdf/text/pdf/PdfFormField;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfPageEventHelper;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->genericChunkFields:Ljava/util/HashMap;

    .line 77
    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 82
    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->fieldWriter:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 86
    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfFormField;Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 2
    .parameter "parent"
    .parameter "field"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfPageEventHelper;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->genericChunkFields:Ljava/util/HashMap;

    .line 77
    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 82
    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->fieldWriter:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 86
    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 109
    iput-object p2, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 110
    iput-object p1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 2
    .parameter "writer"
    .parameter "field"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfPageEventHelper;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->genericChunkFields:Ljava/util/HashMap;

    .line 77
    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 82
    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->fieldWriter:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 86
    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 103
    iput-object p2, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 104
    iput-object p1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->fieldWriter:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;)V
    .locals 4
    .parameter "writer"
    .parameter "parent"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfPageEventHelper;-><init>()V

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->genericChunkFields:Ljava/util/HashMap;

    .line 77
    iput-object v2, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 82
    iput-object v2, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->fieldWriter:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 86
    iput-object v2, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 127
    iput-object p2, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 128
    new-instance v0, Lcom/itextpdf/text/pdf/TextField;

    new-instance v1, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v1, v3, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    invoke-direct {v0, p1, v1, p3}, Lcom/itextpdf/text/pdf/TextField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    .line 129
    .local v0, tf:Lcom/itextpdf/text/pdf/TextField;
    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setFontSize(F)V

    .line 130
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/TextField;->getTextField()Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;)V
    .locals 4
    .parameter "writer"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfPageEventHelper;-><init>()V

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->genericChunkFields:Ljava/util/HashMap;

    .line 77
    iput-object v2, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 82
    iput-object v2, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->fieldWriter:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 86
    iput-object v2, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 117
    iput-object p1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->fieldWriter:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 118
    new-instance v0, Lcom/itextpdf/text/pdf/TextField;

    new-instance v1, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v1, v3, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    invoke-direct {v0, p1, v1, p2}, Lcom/itextpdf/text/pdf/TextField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    .line 119
    .local v0, tf:Lcom/itextpdf/text/pdf/TextField;
    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setFontSize(F)V

    .line 120
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/TextField;->getTextField()Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 121
    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 1
    .parameter "text"
    .parameter "field"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->genericChunkFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public cellLayout(Lcom/itextpdf/text/pdf/PdfPCell;Lcom/itextpdf/text/Rectangle;[Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 7
    .parameter "cell"
    .parameter "rect"
    .parameter "canvases"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->fieldWriter:Lcom/itextpdf/text/pdf/PdfWriter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you.have.used.the.wrong.constructor.for.this.fieldpositioningevents.class"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfRectangle;

    iget v3, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/Rectangle;->getLeft(F)F

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    invoke-virtual {p2, v4}, Lcom/itextpdf/text/Rectangle;->getBottom(F)F

    move-result v4

    iget v5, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    invoke-virtual {p2, v5}, Lcom/itextpdf/text/Rectangle;->getRight(F)F

    move-result v5

    iget v6, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    invoke-virtual {p2, v6}, Lcom/itextpdf/text/Rectangle;->getTop(F)F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 178
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->fieldWriter:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->cellField:Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->addKid(Lcom/itextpdf/text/pdf/PdfFormField;)V

    goto :goto_0
.end method

.method public onGenericTag(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V
    .locals 9
    .parameter "writer"
    .parameter "document"
    .parameter "rect"
    .parameter "text"

    .prologue
    .line 152
    invoke-virtual {p3}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v3

    const/high16 v4, 0x4040

    sub-float/2addr v3, v4

    invoke-virtual {p3, v3}, Lcom/itextpdf/text/Rectangle;->setBottom(F)V

    .line 153
    iget-object v3, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->genericChunkFields:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfFormField;

    .line 154
    .local v1, field:Lcom/itextpdf/text/pdf/PdfFormField;
    if-nez v1, :cond_0

    .line 155
    new-instance v2, Lcom/itextpdf/text/pdf/TextField;

    new-instance v3, Lcom/itextpdf/text/Rectangle;

    iget v4, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    invoke-virtual {p3, v4}, Lcom/itextpdf/text/Rectangle;->getLeft(F)F

    move-result v4

    iget v5, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    invoke-virtual {p3, v5}, Lcom/itextpdf/text/Rectangle;->getBottom(F)F

    move-result v5

    iget v6, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    invoke-virtual {p3, v6}, Lcom/itextpdf/text/Rectangle;->getRight(F)F

    move-result v6

    iget v7, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    invoke-virtual {p3, v7}, Lcom/itextpdf/text/Rectangle;->getTop(F)F

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    invoke-direct {v2, p1, v3, p4}, Lcom/itextpdf/text/pdf/TextField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    .line 156
    .local v2, tf:Lcom/itextpdf/text/pdf/TextField;
    const/high16 v3, 0x4160

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/TextField;->setFontSize(F)V

    .line 158
    :try_start_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/TextField;->getTextField()Lcom/itextpdf/text/pdf/PdfFormField;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    .end local v2           #tf:Lcom/itextpdf/text/pdf/TextField;
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    if-nez v3, :cond_1

    .line 167
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 170
    :goto_1
    return-void

    .line 159
    .restart local v2       #tf:Lcom/itextpdf/text/pdf/TextField;
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 164
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #tf:Lcom/itextpdf/text/pdf/TextField;
    :cond_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfRectangle;

    iget v5, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    invoke-virtual {p3, v5}, Lcom/itextpdf/text/Rectangle;->getLeft(F)F

    move-result v5

    iget v6, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    invoke-virtual {p3, v6}, Lcom/itextpdf/text/Rectangle;->getBottom(F)F

    move-result v6

    iget v7, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    invoke-virtual {p3, v7}, Lcom/itextpdf/text/Rectangle;->getRight(F)F

    move-result v7

    iget v8, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    invoke-virtual {p3, v8}, Lcom/itextpdf/text/Rectangle;->getTop(F)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-virtual {v3, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->addKid(Lcom/itextpdf/text/pdf/PdfFormField;)V

    goto :goto_1
.end method

.method public setPadding(F)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 137
    iput p1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->padding:F

    .line 138
    return-void
.end method

.method public setParent(Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/itextpdf/text/pdf/events/FieldPositioningEvents;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 145
    return-void
.end method
