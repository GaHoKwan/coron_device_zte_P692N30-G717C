.class public final Lcom/itextpdf/text/FontFactory;
.super Ljava/lang/Object;
.source "FontFactory.java"


# static fields
.field public static final COURIER:Ljava/lang/String; = "Courier"

.field public static final COURIER_BOLD:Ljava/lang/String; = "Courier-Bold"

.field public static final COURIER_BOLDOBLIQUE:Ljava/lang/String; = "Courier-BoldOblique"

.field public static final COURIER_OBLIQUE:Ljava/lang/String; = "Courier-Oblique"

.field public static final HELVETICA:Ljava/lang/String; = "Helvetica"

.field public static final HELVETICA_BOLD:Ljava/lang/String; = "Helvetica-Bold"

.field public static final HELVETICA_BOLDOBLIQUE:Ljava/lang/String; = "Helvetica-BoldOblique"

.field public static final HELVETICA_OBLIQUE:Ljava/lang/String; = "Helvetica-Oblique"

.field public static final SYMBOL:Ljava/lang/String; = "Symbol"

.field public static final TIMES:Ljava/lang/String; = "Times"

.field public static final TIMES_BOLD:Ljava/lang/String; = "Times-Bold"

.field public static final TIMES_BOLDITALIC:Ljava/lang/String; = "Times-BoldItalic"

.field public static final TIMES_ITALIC:Ljava/lang/String; = "Times-Italic"

.field public static final TIMES_ROMAN:Ljava/lang/String; = "Times-Roman"

.field public static final ZAPFDINGBATS:Ljava/lang/String; = "ZapfDingbats"

.field public static defaultEmbedding:Z

.field public static defaultEncoding:Ljava/lang/String;

.field private static fontImp:Lcom/itextpdf/text/FontFactoryImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/itextpdf/text/FontFactoryImp;

    invoke-direct {v0}, Lcom/itextpdf/text/FontFactoryImp;-><init>()V

    sput-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    .line 109
    const-string v0, "Cp1252"

    sput-object v0, Lcom/itextpdf/text/FontFactory;->defaultEncoding:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/itextpdf/text/FontFactory;->defaultEmbedding:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "fontname"

    .prologue
    .line 395
    sget-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    invoke-virtual {v0, p0}, Lcom/itextpdf/text/FontFactoryImp;->isRegistered(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getFont(Ljava/lang/String;)Lcom/itextpdf/text/Font;
    .locals 6
    .parameter "fontname"

    .prologue
    .line 309
    sget-object v1, Lcom/itextpdf/text/FontFactory;->defaultEncoding:Ljava/lang/String;

    sget-boolean v2, Lcom/itextpdf/text/FontFactory;->defaultEmbedding:Z

    const/high16 v3, -0x4080

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;F)Lcom/itextpdf/text/Font;
    .locals 6
    .parameter "fontname"
    .parameter "size"

    .prologue
    .line 298
    sget-object v1, Lcom/itextpdf/text/FontFactory;->defaultEncoding:Ljava/lang/String;

    sget-boolean v2, Lcom/itextpdf/text/FontFactory;->defaultEmbedding:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;FI)Lcom/itextpdf/text/Font;
    .locals 6
    .parameter "fontname"
    .parameter "size"
    .parameter "style"

    .prologue
    .line 286
    sget-object v1, Lcom/itextpdf/text/FontFactory;->defaultEncoding:Ljava/lang/String;

    sget-boolean v2, Lcom/itextpdf/text/FontFactory;->defaultEmbedding:Z

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;FILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;
    .locals 6
    .parameter "fontname"
    .parameter "size"
    .parameter "style"
    .parameter "color"

    .prologue
    .line 259
    sget-object v1, Lcom/itextpdf/text/FontFactory;->defaultEncoding:Ljava/lang/String;

    sget-boolean v2, Lcom/itextpdf/text/FontFactory;->defaultEmbedding:Z

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;FLcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;
    .locals 6
    .parameter "fontname"
    .parameter "size"
    .parameter "color"

    .prologue
    .line 273
    sget-object v1, Lcom/itextpdf/text/FontFactory;->defaultEncoding:Ljava/lang/String;

    sget-boolean v2, Lcom/itextpdf/text/FontFactory;->defaultEmbedding:Z

    const/4 v4, -0x1

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/Font;
    .locals 6
    .parameter "fontname"
    .parameter "encoding"

    .prologue
    .line 245
    sget-boolean v2, Lcom/itextpdf/text/FontFactory;->defaultEmbedding:Z

    const/high16 v3, -0x4080

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;Ljava/lang/String;F)Lcom/itextpdf/text/Font;
    .locals 6
    .parameter "fontname"
    .parameter "encoding"
    .parameter "size"

    .prologue
    .line 233
    sget-boolean v2, Lcom/itextpdf/text/FontFactory;->defaultEmbedding:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;Ljava/lang/String;FI)Lcom/itextpdf/text/Font;
    .locals 6
    .parameter "fontname"
    .parameter "encoding"
    .parameter "size"
    .parameter "style"

    .prologue
    .line 220
    sget-boolean v2, Lcom/itextpdf/text/FontFactory;->defaultEmbedding:Z

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;Ljava/lang/String;FILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;
    .locals 6
    .parameter "fontname"
    .parameter "encoding"
    .parameter "size"
    .parameter "style"
    .parameter "color"

    .prologue
    .line 206
    sget-boolean v2, Lcom/itextpdf/text/FontFactory;->defaultEmbedding:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/Font;
    .locals 6
    .parameter "fontname"
    .parameter "encoding"
    .parameter "embedded"

    .prologue
    .line 191
    const/high16 v3, -0x4080

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;Ljava/lang/String;ZF)Lcom/itextpdf/text/Font;
    .locals 6
    .parameter "fontname"
    .parameter "encoding"
    .parameter "embedded"
    .parameter "size"

    .prologue
    .line 178
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;Ljava/lang/String;ZFI)Lcom/itextpdf/text/Font;
    .locals 6
    .parameter "fontname"
    .parameter "encoding"
    .parameter "embedded"
    .parameter "size"
    .parameter "style"

    .prologue
    .line 164
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"
    .parameter "encoding"
    .parameter "embedded"
    .parameter "size"
    .parameter "style"
    .parameter "color"

    .prologue
    .line 131
    sget-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;Z)Lcom/itextpdf/text/Font;
    .locals 8
    .parameter "fontname"
    .parameter "encoding"
    .parameter "embedded"
    .parameter "size"
    .parameter "style"
    .parameter "color"
    .parameter "cached"

    .prologue
    .line 149
    sget-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;Z)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFontImp()Lcom/itextpdf/text/FontFactoryImp;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    return-object v0
.end method

.method public static getRegisteredFamilies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    sget-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/FontFactoryImp;->getRegisteredFamilies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisteredFonts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    sget-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/FontFactoryImp;->getRegisteredFonts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static isRegistered(Ljava/lang/String;)Z
    .locals 1
    .parameter "fontname"

    .prologue
    .line 406
    sget-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    invoke-virtual {v0, p0}, Lcom/itextpdf/text/FontFactoryImp;->isRegistered(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static register(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/text/FontFactory;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "alias"

    .prologue
    .line 340
    sget-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/text/FontFactoryImp;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public static registerDirectories()I
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectories()I

    move-result v0

    return v0
.end method

.method public static registerDirectory(Ljava/lang/String;)I
    .locals 1
    .parameter "dir"

    .prologue
    .line 348
    sget-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    invoke-virtual {v0, p0}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static registerDirectory(Ljava/lang/String;Z)I
    .locals 1
    .parameter "dir"
    .parameter "scanSubdirectories"

    .prologue
    .line 359
    sget-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static registerFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "familyName"
    .parameter "fullName"
    .parameter "path"

    .prologue
    .line 319
    sget-object v0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    invoke-virtual {v0, p0, p1, p2}, Lcom/itextpdf/text/FontFactoryImp;->registerFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public static setFontImp(Lcom/itextpdf/text/FontFactoryImp;)V
    .locals 3
    .parameter "fontImp"

    .prologue
    .line 422
    if-nez p0, :cond_0

    .line 423
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fontfactoryimp.cannot.be.null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    sput-object p0, Lcom/itextpdf/text/FontFactory;->fontImp:Lcom/itextpdf/text/FontFactoryImp;

    .line 425
    return-void
.end method
