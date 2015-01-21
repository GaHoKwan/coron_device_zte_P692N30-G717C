.class public Lcom/pim/vcard/VCardParser_V40;
.super Ljava/lang/Object;
.source "VCardParser_V40.java"

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
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x2c

    new-array v1, v1, [Ljava/lang/String;

    .line 38
    const-string v2, "BEGIN"

    aput-object v2, v1, v4

    const-string v2, "END"

    aput-object v2, v1, v5

    const-string v2, "SOURCE"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "NAME"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "KIND"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "XML"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 39
    const-string v3, "FN"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "N"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "NICKNAME"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "PHOTO"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "DDAY"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 40
    const-string v3, "BIRTH"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "DEATH"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "ANNIVERSARY"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "SEX"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "ADR"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    .line 41
    const-string v3, "LABEL"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "IMPP"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "LANG"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    .line 42
    const-string v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "TITLE"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "LOGO"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "ORG"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "MEMBER"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    .line 43
    const-string v3, "RELATED"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "CATEGORIES"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "PRODID"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    .line 44
    const-string v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "SOUND"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "CLIENTPIDMAP"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    .line 45
    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "VERSION"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "CLASS"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "FBURL"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "CALENDRURI"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    .line 46
    const-string v3, "CALURI"

    aput-object v3, v1, v2

    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 36
    sput-object v0, Lcom/pim/vcard/VCardParser_V40;->sKnownPropertyNameSet:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    .line 55
    const-string v2, "8BIT"

    aput-object v2, v1, v4

    .line 56
    const-string v2, "B"

    aput-object v2, v1, v5

    .line 54
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 53
    sput-object v0, Lcom/pim/vcard/VCardParser_V40;->sAcceptableEncoding:Ljava/util/Set;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/pim/vcard/VCardParserImpl_V40;

    invoke-direct {v0}, Lcom/pim/vcard/VCardParserImpl_V40;-><init>()V

    iput-object v0, p0, Lcom/pim/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/pim/vcard/VCardParserImpl_V30;

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/pim/vcard/VCardParserImpl_V40;

    invoke-direct {v0, p1}, Lcom/pim/vcard/VCardParserImpl_V40;-><init>(I)V

    iput-object v0, p0, Lcom/pim/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/pim/vcard/VCardParserImpl_V30;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/pim/vcard/VCardSourceDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pim/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/pim/vcard/VCardParser_V40;-><init>(I)V

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pim/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/pim/vcard/VCardParserImpl_V30;

    invoke-virtual {v0}, Lcom/pim/vcard/VCardParserImpl_V30;->cancel()V

    .line 85
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
    .line 79
    iget-object v0, p0, Lcom/pim/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/pim/vcard/VCardParserImpl_V30;

    invoke-virtual {v0, p1, p2}, Lcom/pim/vcard/VCardParserImpl_V30;->parse(Ljava/io/InputStream;Lcom/pim/vcard/VCardInterpreter;)V

    .line 80
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
    .line 73
    iget-object v0, p0, Lcom/pim/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/pim/vcard/VCardParserImpl_V30;

    invoke-virtual {v0, p1, p3}, Lcom/pim/vcard/VCardParserImpl_V30;->parse(Ljava/io/InputStream;Lcom/pim/vcard/VCardInterpreter;)V

    .line 74
    return-void
.end method
