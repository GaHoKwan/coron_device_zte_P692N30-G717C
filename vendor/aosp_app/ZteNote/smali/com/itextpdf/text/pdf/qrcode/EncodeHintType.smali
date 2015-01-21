.class public final Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;
.super Ljava/lang/Object;
.source "EncodeHintType.java"


# static fields
.field public static final CHARACTER_SET:Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;

.field public static final ERROR_CORRECTION:Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;->ERROR_CORRECTION:Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;

    .line 35
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;->CHARACTER_SET:Lcom/itextpdf/text/pdf/qrcode/EncodeHintType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method
