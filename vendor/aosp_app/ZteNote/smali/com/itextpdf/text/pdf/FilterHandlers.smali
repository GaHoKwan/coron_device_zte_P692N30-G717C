.class public final Lcom/itextpdf/text/pdf/FilterHandlers;
.super Ljava/lang/Object;
.source "FilterHandlers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/FilterHandlers$1;,
        Lcom/itextpdf/text/pdf/FilterHandlers$Filter_RUNLENGTHDECODE;,
        Lcom/itextpdf/text/pdf/FilterHandlers$Filter_DoNothing;,
        Lcom/itextpdf/text/pdf/FilterHandlers$Filter_CCITTFAXDECODE;,
        Lcom/itextpdf/text/pdf/FilterHandlers$Filter_LZWDECODE;,
        Lcom/itextpdf/text/pdf/FilterHandlers$Filter_ASCII85DECODE;,
        Lcom/itextpdf/text/pdf/FilterHandlers$Filter_ASCIIHEXDECODE;,
        Lcom/itextpdf/text/pdf/FilterHandlers$Filter_FLATEDECODE;,
        Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;
    }
.end annotation


# static fields
.field private static final defaults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;>;"
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_FLATEDECODE;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_FLATEDECODE;-><init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FL:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_FLATEDECODE;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_FLATEDECODE;-><init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ASCIIHEXDECODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_ASCIIHEXDECODE;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_ASCIIHEXDECODE;-><init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->AHX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_ASCIIHEXDECODE;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_ASCIIHEXDECODE;-><init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ASCII85DECODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_ASCII85DECODE;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_ASCII85DECODE;-><init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->A85:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_ASCII85DECODE;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_ASCII85DECODE;-><init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->LZWDECODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_LZWDECODE;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_LZWDECODE;-><init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CCITTFAXDECODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_CCITTFAXDECODE;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_CCITTFAXDECODE;-><init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CRYPT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_DoNothing;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_DoNothing;-><init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->RUNLENGTHDECODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_RUNLENGTHDECODE;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_RUNLENGTHDECODE;-><init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/text/pdf/FilterHandlers;->defaults:Ljava/util/Map;

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    return-void
.end method

.method public static getDefaultFilterHandlers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    sget-object v0, Lcom/itextpdf/text/pdf/FilterHandlers;->defaults:Ljava/util/Map;

    return-object v0
.end method