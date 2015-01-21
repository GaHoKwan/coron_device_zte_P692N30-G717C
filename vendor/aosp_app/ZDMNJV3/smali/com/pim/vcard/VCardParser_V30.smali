.class public Lcom/pim/vcard/VCardParser_V30;
.super Ljava/lang/Object;
.source "VCardParser_V30.java"

# interfaces
.implements Lcom/pim/vcard/VCardParser;


# static fields
.field static final sAcceptableEncoding:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sKnownPropertyNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVCardParserImpl:Lcom/pim/vcard/VCardParserImpl_V30;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/String;

    .line 44
    const-string v2, "BEGIN"

    aput-object v2, v1, v4

    const-string v2, "LOGO"

    aput-object v2, v1, v5

    const-string v2, "PHOTO"

    aput-object v2, v1, v6

    const-string v2, "LABEL"

    aput-object v2, v1, v7

    const-string v2, "FN"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "TITLE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "SOUND"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 45
    const-string v3, "VERSION"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 46
    const-string v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "MAILER"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    .line 47
    const-string v3, "NAME"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "PROFILE"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "SOURCE"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "NICKNAME"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "CLASS"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    .line 48
    const-string v3, "SORT-STRING"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "CATEGORIES"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "PRODID"

    aput-object v3, v1, v2

    .line 43
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 42
    sput-object v0, Lcom/pim/vcard/VCardParser_V30;->sKnownPropertyNameSet:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    .line 64
    const-string v2, "7BIT"

    aput-object v2, v1, v4

    .line 65
    const-string v2, "8BIT"

    aput-object v2, v1, v5

    .line 66
    const-string v2, "BASE64"

    aput-object v2, v1, v6

    .line 67
    const-string v2, "B"

    aput-object v2, v1, v7

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 62
    sput-object v0, Lcom/pim/vcard/VCardParser_V30;->sAcceptableEncoding:Ljava/util/Set;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/pim/vcard/VCardParserImpl_V30;

    invoke-direct {v0}, Lcom/pim/vcard/VCardParserImpl_V30;-><init>()V

    iput-object v0, p0, Lcom/pim/vcard/VCardParser_V30;->mVCardParserImpl:Lcom/pim/vcard/VCardParserImpl_V30;

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/pim/vcard/VCardParserImpl_V30;

    invoke-direct {v0, p1}, Lcom/pim/vcard/VCardParserImpl_V30;-><init>(I)V

    iput-object v0, p0, Lcom/pim/vcard/VCardParser_V30;->mVCardParserImpl:Lcom/pim/vcard/VCardParserImpl_V30;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/pim/vcard/VCardSourceDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pim/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/pim/vcard/VCardParser_V30;-><init>(I)V

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/pim/vcard/VCardParser_V30;->mVCardParserImpl:Lcom/pim/vcard/VCardParserImpl_V30;

    invoke-virtual {v0}, Lcom/pim/vcard/VCardParserImpl_V30;->cancel()V

    .line 94
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lcom/pim/vcard/VCardInterpreter;)V
    .locals 1
    .parameter "is"
    .parameter "interepreter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pim/vcard/VCardParser_V30;->mVCardParserImpl:Lcom/pim/vcard/VCardParserImpl_V30;

    invoke-virtual {v0, p1, p2}, Lcom/pim/vcard/VCardParserImpl_V30;->parse(Ljava/io/InputStream;Lcom/pim/vcard/VCardInterpreter;)V

    .line 90
    return-void
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/pim/vcard/VCardInterpreter;Z)V
    .locals 1
    .parameter "is"
    .parameter "charset"
    .parameter "builder"
    .parameter "canceled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pim/vcard/VCardParser_V30;->mVCardParserImpl:Lcom/pim/vcard/VCardParserImpl_V30;

    invoke-virtual {v0, p1, p3}, Lcom/pim/vcard/VCardParserImpl_V30;->parse(Ljava/io/InputStream;Lcom/pim/vcard/VCardInterpreter;)V

    .line 85
    return-void
.end method
