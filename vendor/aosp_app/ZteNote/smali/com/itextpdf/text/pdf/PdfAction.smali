.class public Lcom/itextpdf/text/pdf/PdfAction;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfAction.java"


# static fields
.field public static final FIRSTPAGE:I = 0x1

.field public static final LASTPAGE:I = 0x4

.field public static final NEXTPAGE:I = 0x3

.field public static final PREVPAGE:I = 0x2

.field public static final PRINTDIALOG:I = 0x5

.field public static final RESET_EXCLUDE:I = 0x1

.field public static final SUBMIT_CANONICAL_FORMAT:I = 0x200

.field public static final SUBMIT_COORDINATES:I = 0x10

.field public static final SUBMIT_EMBED_FORM:I = 0x2004

.field public static final SUBMIT_EXCLUDE:I = 0x1

.field public static final SUBMIT_EXCL_F_KEY:I = 0x800

.field public static final SUBMIT_EXCL_NON_USER_ANNOTS:I = 0x400

.field public static final SUBMIT_HTML_FORMAT:I = 0x4

.field public static final SUBMIT_HTML_GET:I = 0x8

.field public static final SUBMIT_INCLUDE_ANNOTATIONS:I = 0x80

.field public static final SUBMIT_INCLUDE_APPEND_SAVES:I = 0x40

.field public static final SUBMIT_INCLUDE_NO_VALUE_FIELDS:I = 0x2

.field public static final SUBMIT_PDF:I = 0x100

.field public static final SUBMIT_XFDF:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 112
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "named"

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 195
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NAMED:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 196
    packed-switch p1, :pswitch_data_0

    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid.named.action"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :pswitch_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FIRSTPAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 216
    :goto_0
    return-void

    .line 201
    :pswitch_1
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->LASTPAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 204
    :pswitch_2
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NEXTPAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 207
    :pswitch_3
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->PREVPAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 210
    :pswitch_4
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->JAVASCRIPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 211
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->JS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "this.print(true);\r"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 2
    .parameter "destination"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 162
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->GOTO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 163
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;Z)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .parameter "filename"
    .parameter "page"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 185
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->GOTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 186
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 187
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfLiteral;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /FitH 10000]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "name"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 173
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->GOTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 174
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 175
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v1, p2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "application"
    .parameter "parameters"
    .parameter "operation"
    .parameter "defaultDir"

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 229
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LAUNCH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 230
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 231
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 243
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 234
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 235
    if-eqz p2, :cond_1

    .line 236
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v2, p2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 237
    :cond_1
    if-eqz p3, :cond_2

    .line 238
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->O:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v2, p3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 239
    :cond_2
    if-eqz p4, :cond_3

    .line 240
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v2, p4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 241
    :cond_3
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->WIN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "url"
    .parameter "isMap"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 150
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->URI:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 151
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->URI:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 152
    if-eqz p2, :cond_0

    .line 153
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ISMAP:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 154
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Z)V
    .locals 1
    .parameter "url"
    .parameter "isMap"

    .prologue
    .line 130
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;Z)V

    .line 131
    return-void
.end method

.method static buildArray([Ljava/lang/Object;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 6
    .parameter "names"

    .prologue
    .line 357
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 358
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 359
    aget-object v2, p0, v1

    .line 360
    .local v2, obj:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 361
    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    check-cast v2, Ljava/lang/String;

    .end local v2           #obj:Ljava/lang/Object;
    invoke-direct {v3, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 358
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_0
    instance-of v3, v2, Lcom/itextpdf/text/pdf/PdfAnnotation;

    if-eqz v3, :cond_1

    .line 363
    check-cast v2, Lcom/itextpdf/text/pdf/PdfAnnotation;

    .end local v2           #obj:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_1

    .line 365
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "the.array.must.contain.string.or.pdfannotation"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 367
    .end local v2           #obj:Ljava/lang/Object;
    :cond_2
    return-object v0
.end method

.method public static createHide(Lcom/itextpdf/text/pdf/PdfAnnotation;Z)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 1
    .parameter "annot"
    .parameter "hide"

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/itextpdf/text/pdf/PdfAction;->createHide(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method static createHide(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 3
    .parameter "obj"
    .parameter "hide"

    .prologue
    .line 328
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>()V

    .line 329
    .local v0, action:Lcom/itextpdf/text/pdf/PdfAction;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->HIDE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 330
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 331
    if-nez p1, :cond_0

    .line 332
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->H:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 333
    :cond_0
    return-object v0
.end method

.method public static createHide(Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 1
    .parameter "name"
    .parameter "hide"

    .prologue
    .line 353
    new-instance v0, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/itextpdf/text/pdf/PdfAction;->createHide(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public static createHide([Ljava/lang/Object;Z)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 1
    .parameter "names"
    .parameter "hide"

    .prologue
    .line 377
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfAction;->buildArray([Ljava/lang/Object;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/itextpdf/text/pdf/PdfAction;->createHide(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public static createImportData(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 3
    .parameter "file"

    .prologue
    .line 421
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>()V

    .line 422
    .local v0, action:Lcom/itextpdf/text/pdf/PdfAction;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->IMPORTDATA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 423
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v2, p0}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 424
    return-object v0
.end method

.method public static createLaunch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 1
    .parameter "application"
    .parameter "parameters"
    .parameter "operation"
    .parameter "defaultDir"

    .prologue
    .line 257
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createResetForm([Ljava/lang/Object;I)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 3
    .parameter "names"
    .parameter "flags"

    .prologue
    .line 407
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>()V

    .line 408
    .local v0, action:Lcom/itextpdf/text/pdf/PdfAction;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RESETFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 409
    if-eqz p0, :cond_0

    .line 410
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfAction;->buildArray([Ljava/lang/Object;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 411
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FLAGS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 412
    return-object v0
.end method

.method public static createSubmitForm(Ljava/lang/String;[Ljava/lang/Object;I)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 4
    .parameter "file"
    .parameter "names"
    .parameter "flags"

    .prologue
    .line 388
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>()V

    .line 389
    .local v0, action:Lcom/itextpdf/text/pdf/PdfAction;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->SUBMITFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 390
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 391
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v3, p0}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 392
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->URL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 393
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 394
    if-eqz p1, :cond_0

    .line 395
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfAction;->buildArray([Ljava/lang/Object;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 396
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FLAGS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 397
    return-object v0
.end method

.method public static gotoEmbedded(Ljava/lang/String;Lcom/itextpdf/text/pdf/collection/PdfTargetDictionary;Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 3
    .parameter "filename"
    .parameter "target"
    .parameter "dest"
    .parameter "newWindow"

    .prologue
    .line 519
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>()V

    .line 520
    .local v0, action:Lcom/itextpdf/text/pdf/PdfAction;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->GOTOE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 521
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 522
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 523
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NEWWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-direct {v2, p3}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 524
    if-eqz p0, :cond_0

    .line 525
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v2, p0}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 527
    :cond_0
    return-object v0
.end method

.method public static gotoEmbedded(Ljava/lang/String;Lcom/itextpdf/text/pdf/collection/PdfTargetDictionary;Ljava/lang/String;ZZ)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 2
    .parameter "filename"
    .parameter "target"
    .parameter "dest"
    .parameter "isName"
    .parameter "newWindow"

    .prologue
    .line 504
    if-eqz p3, :cond_0

    .line 505
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0, p4}, Lcom/itextpdf/text/pdf/PdfAction;->gotoEmbedded(Ljava/lang/String;Lcom/itextpdf/text/pdf/collection/PdfTargetDictionary;Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0, p4}, Lcom/itextpdf/text/pdf/PdfAction;->gotoEmbedded(Ljava/lang/String;Lcom/itextpdf/text/pdf/collection/PdfTargetDictionary;Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v0

    goto :goto_0
.end method

.method public static gotoLocalPage(ILcom/itextpdf/text/pdf/PdfDestination;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 4
    .parameter "page"
    .parameter "dest"
    .parameter "writer"

    .prologue
    .line 451
    invoke-virtual {p2, p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    .line 452
    .local v1, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfDestination;->addPage(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Z

    .line 453
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>()V

    .line 454
    .local v0, action:Lcom/itextpdf/text/pdf/PdfAction;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->GOTO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 455
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, p1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 456
    return-object v0
.end method

.method public static gotoLocalPage(Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 4
    .parameter "dest"
    .parameter "isName"

    .prologue
    .line 466
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>()V

    .line 467
    .local v0, action:Lcom/itextpdf/text/pdf/PdfAction;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->GOTO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 468
    if-eqz p1, :cond_0

    .line 469
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v2, p0}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 472
    :goto_0
    return-object v0

    .line 471
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public static gotoRemotePage(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 4
    .parameter "filename"
    .parameter "dest"
    .parameter "isName"
    .parameter "newWindow"

    .prologue
    .line 484
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>()V

    .line 485
    .local v0, action:Lcom/itextpdf/text/pdf/PdfAction;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v2, p0}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 486
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->GOTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 487
    if-eqz p2, :cond_1

    .line 488
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 491
    :goto_0
    if-eqz p3, :cond_0

    .line 492
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NEWWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 493
    :cond_0
    return-object v0

    .line 490
    :cond_1
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public static javaScript(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 1
    .parameter "code"
    .parameter "writer"

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfAction;->javaScript(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfWriter;Z)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public static javaScript(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfWriter;Z)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 7
    .parameter "code"
    .parameter "writer"
    .parameter "unicode"

    .prologue
    .line 288
    new-instance v2, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfAction;-><init>()V

    .line 289
    .local v2, js:Lcom/itextpdf/text/pdf/PdfAction;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->JAVASCRIPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 290
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_0

    .line 291
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->JS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    const-string v6, "UnicodeBig"

    invoke-direct {v5, p0, v6}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 307
    :goto_0
    return-object v2

    .line 293
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_1

    .line 294
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->JS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v5, p0}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 298
    :cond_1
    if-eqz p2, :cond_2

    :try_start_0
    const-string v4, "UnicodeBig"

    :goto_1
    invoke-static {p0, v4}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 299
    .local v0, b:[B
    new-instance v3, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 300
    .local v3, stream:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 301
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->JS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    .end local v0           #b:[B
    .end local v3           #stream:Lcom/itextpdf/text/pdf/PdfStream;
    :catch_0
    move-exception v1

    .line 304
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->JS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v5, p0}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 298
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v4, "PDF"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static rendition(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 4
    .parameter "file"
    .parameter "fs"
    .parameter "mimeType"
    .parameter "ref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>()V

    .line 270
    .local v0, js:Lcom/itextpdf/text/pdf/PdfAction;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RENDITION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 271
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfRendition;

    invoke-direct {v2, p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfRendition;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 272
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "OP"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 273
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "AN"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 274
    return-object v0
.end method

.method public static setOCGstate(Ljava/util/ArrayList;Z)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 11
    .parameter
    .parameter "preserveRB"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/itextpdf/text/pdf/PdfAction;"
        }
    .end annotation

    .prologue
    .local p0, state:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 553
    new-instance v1, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfAction;-><init>()V

    .line 554
    .local v1, action:Lcom/itextpdf/text/pdf/PdfAction;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->SETOCGSTATE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 555
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 556
    .local v0, a:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 557
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 558
    .local v4, o:Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 556
    .end local v4           #o:Ljava/lang/Object;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 560
    .restart local v4       #o:Ljava/lang/Object;
    :cond_0
    instance-of v6, v4, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-eqz v6, :cond_1

    .line 561
    check-cast v4, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_1

    .line 562
    .restart local v4       #o:Ljava/lang/Object;
    :cond_1
    instance-of v6, v4, Lcom/itextpdf/text/pdf/PdfLayer;

    if-eqz v6, :cond_2

    .line 563
    check-cast v4, Lcom/itextpdf/text/pdf/PdfLayer;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfLayer;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_1

    .line 564
    .restart local v4       #o:Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v6, :cond_3

    .line 565
    check-cast v4, Lcom/itextpdf/text/pdf/PdfName;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_1

    .line 566
    .restart local v4       #o:Ljava/lang/Object;
    :cond_3
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 567
    const/4 v3, 0x0

    .local v3, name:Lcom/itextpdf/text/pdf/PdfName;
    move-object v5, v4

    .line 568
    check-cast v5, Ljava/lang/String;

    .line 569
    .local v5, s:Ljava/lang/String;
    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 570
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ON:Lcom/itextpdf/text/pdf/PdfName;

    .line 577
    :goto_2
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_1

    .line 571
    :cond_4
    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 572
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_2

    .line 573
    :cond_5
    const-string v6, "toggle"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 574
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->TOGGLE:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_2

    .line 576
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "a.string.1.was.passed.in.state.only.on.off.and.toggle.are.allowed"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 580
    .end local v3           #name:Lcom/itextpdf/text/pdf/PdfName;
    .end local v5           #s:Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "invalid.type.was.passed.in.state.1"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 582
    .end local v4           #o:Ljava/lang/Object;
    :cond_8
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->STATE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6, v0}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 583
    if-nez p1, :cond_9

    .line 584
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->PRESERVERB:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 585
    :cond_9
    return-object v1
.end method


# virtual methods
.method public next(Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 3
    .parameter "na"

    .prologue
    .line 431
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfAction;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 432
    .local v1, nextAction:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v1, :cond_0

    .line 433
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2, p1}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 442
    .end local v1           #nextAction:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_0
    return-void

    .line 434
    .restart local v1       #nextAction:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 436
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 437
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/text/pdf/PdfAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 440
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_1
    check-cast v1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v1           #nextAction:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0
.end method
