.class Lcom/pim/vcard/VCardParserImpl_V21;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;,
        Lcom/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "8BIT"

.field private static final LOG_TAG:Ljava/lang/String; = "VCardParserImpl_V21"

.field private static final STATE_ESACAPE_CHAR:I = 0x3

.field private static final STATE_GROUP_OR_PROPERTY_NAME:I = 0x0

.field private static final STATE_PARAMS:I = 0x1

.field private static final STATE_PARAMS_IN_DQUOTE:I = 0x2


# instance fields
.field protected mCanceled:Z

.field protected mCurrentEncoding:Ljava/lang/String;

.field protected final mIntermediateCharset:Ljava/lang/String;

.field protected mInterpreter:Lcom/pim/vcard/VCardInterpreter;

.field private mNestCount:I

.field private mPreviousLine:Ljava/lang/String;

.field protected mReader:Lcom/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

.field private mTimeEndProperty:J

.field private mTimeHandleBase64:J

.field private mTimeHandleMiscPropertyValue:J

.field private mTimeHandleQuotedPrintable:J

.field private mTimeParseAdrOrgN:J

.field private mTimeParseItems:J

.field private mTimeParseLineAndHandleGroup:J

.field private mTimeParsePropertyValues:J

.field private mTimeReadEndRecord:J

.field private mTimeReadStartRecord:J

.field private mTimeStartProperty:J

.field private mTimeTotal:J

.field protected final mUnknownTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUnknownValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 205
    sget v0, Lcom/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v0}, Lcom/pim/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 206
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    .line 209
    const/high16 v0, 0x100

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x1

    iput v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    .line 213
    :cond_0
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    .line 214
    return-void
.end method

.method private getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    const/4 v5, 0x0

    .line 957
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 959
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 960
    .local v2, pos:I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    .local v0, builder:Ljava/lang/StringBuilder;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    :goto_0
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 969
    new-instance v3, Lcom/pim/vcard/exception/VCardException;

    const-string v4, "File ended during parsing a Quoted-Printable String"

    invoke-direct {v3, v4}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 971
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 973
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 974
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_2

    .line 976
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 979
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 985
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #pos:I
    .end local p1
    :cond_4
    return-object p1
.end method

.method private isAsciiLetter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 825
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 826
    :cond_1
    const/4 v0, 0x1

    .line 828
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseOneVCard(Z)Z
    .locals 14
    .parameter "firstRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, allowGarbage:Z
    if-eqz p1, :cond_0

    .line 293
    iget v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v10, :cond_0

    .line 294
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lt v7, v10, :cond_2

    .line 303
    .end local v7           #i:I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/pim/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v10

    if-nez v10, :cond_3

    .line 319
    :cond_1
    :goto_1
    return v8

    .line 295
    .restart local v7       #i:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/pim/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 298
    const/4 v0, 0x1

    .line 294
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 306
    .end local v7           #i:I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 307
    .local v5, beforeStartEntry:J
    iget-object v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v10}, Lcom/pim/vcard/VCardInterpreter;->startEntry()V

    .line 308
    iget-wide v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v5

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 311
    .local v3, beforeParseItems:J
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->parseItems()V

    .line 312
    iget-wide v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeParseItems:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v3

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeParseItems:J

    .line 314
    invoke-virtual {p0, v9, v8}, Lcom/pim/vcard/VCardParserImpl_V21;->readEndVCard(ZZ)V

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 317
    .local v1, beforeEndEntry:J
    iget-object v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Lcom/pim/vcard/VCardInterpreter;->endEntry()V

    .line 318
    iget-wide v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    move v8, v9

    .line 319
    goto :goto_1
.end method

.method private showPerformanceInfo()V
    .locals 4

    .prologue
    .line 1106
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total parsing time:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeTotal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total readLine time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mReader:Lcom/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v2}, Lcom/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->getTotalmillisecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time for handling the beggining of the record: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1109
    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1108
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time for handling the end of the record: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time for parsing line, and handling group: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1112
    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1111
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time for parsing ADR, ORG, and N fields:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time for parsing property values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time for handling normal property values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1116
    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time for handling Quoted-Printable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time for handling Base64: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return-void
.end method

.method static unescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 1098
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_1

    .line 1099
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1101
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "text"

    .prologue
    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1066
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 1081
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1067
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1068
    .local v1, ch:C
    const/16 v6, 0x5c

    if-ne v1, v6, :cond_2

    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_2

    .line 1069
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1070
    .local v4, next_ch:C
    invoke-static {v4}, Lcom/pim/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v5

    .line 1071
    .local v5, unescapedString:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1073
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .end local v4           #next_ch:C
    .end local v5           #unescapedString:Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1075
    .restart local v4       #next_ch:C
    .restart local v5       #unescapedString:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1078
    .end local v4           #next_ch:C
    .end local v5           #unescapedString:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 1183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mCanceled:Z

    .line 1184
    return-void
.end method

.method protected getAvailableEncodingSet()Ljava/util/Set;
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
    .line 1148
    sget-object v0, Lcom/pim/vcard/VCardParser_V21;->sAvailableEncoding:Ljava/util/Set;

    return-object v0
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    :goto_0
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 996
    new-instance v2, Lcom/pim/vcard/exception/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 998
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1004
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1001
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1152
    const-string v0, "8BIT"

    return-object v0
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
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
    .line 1136
    sget-object v0, Lcom/pim/vcard/VCardParser_V21;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownTypeSet()Ljava/util/Set;
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
    .line 1140
    sget-object v0, Lcom/pim/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownValueSet()Ljava/util/Set;
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
    .line 1144
    sget-object v0, Lcom/pim/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mReader:Lcom/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 278
    new-instance v1, Lcom/pim/vcard/exception/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 280
    return-object v0
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    .line 1125
    const/4 v0, 0x0

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1132
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Ljava/lang/String;)V
    .locals 2
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1045
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    return-void

    .line 1049
    :cond_0
    new-instance v0, Lcom/pim/vcard/exception/VCardAgentNotSupportedException;

    const-string v1, "AGENT Property is not supported now."

    invoke-direct {v0, v1}, Lcom/pim/vcard/exception/VCardAgentNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p2}, Lcom/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method protected handleCharset(Ljava/lang/String;)V
    .locals 2
    .parameter "charsetval"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    const-string v1, "CHARSET"

    invoke-interface {v0, v1}, Lcom/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method protected handleEncoding(Ljava/lang/String;)V
    .locals 3
    .parameter "pencodingval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getAvailableEncodingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    const-string v1, "ENCODING"

    invoke-interface {v0, v1}, Lcom/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 780
    iput-object p1, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 784
    return-void

    .line 782
    :cond_1
    new-instance v0, Lcom/pim/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Ljava/lang/String;)V
    .locals 7
    .parameter "langval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 802
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, strArray:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 804
    new-instance v4, Lcom/pim/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid Language: \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 806
    :cond_0
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 807
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 808
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 813
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 814
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 815
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_3

    .line 820
    iget-object v4, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    const-string v5, "LANGUAGE"

    invoke-interface {v4, v5}, Lcom/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 821
    iget-object v4, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v4, p1}, Lcom/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 822
    return-void

    .line 809
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/pim/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 810
    new-instance v4, Lcom/pim/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid Language: \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 808
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/pim/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_4

    .line 817
    new-instance v4, Lcom/pim/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid Language: \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 815
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    invoke-direct {p0, p2}, Lcom/pim/vcard/VCardParserImpl_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    .line 1033
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v1

    .line 1032
    invoke-static {p2, v1}, Lcom/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 1034
    return-void
.end method

.method protected handleParamWithoutName(Ljava/lang/String;)V
    .locals 0
    .parameter "paramValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lcom/pim/vcard/VCardParserImpl_V21;->handleType(Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method protected handleParams(Ljava/lang/String;)V
    .locals 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 709
    const-string v3, "="

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v5, :cond_6

    .line 711
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, paramName:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, paramValue:Ljava/lang/String;
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 714
    invoke-virtual {p0, v1}, Lcom/pim/vcard/VCardParserImpl_V21;->handleType(Ljava/lang/String;)V

    .line 731
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :goto_0
    return-void

    .line 715
    .restart local v0       #paramName:Ljava/lang/String;
    .restart local v1       #paramValue:Ljava/lang/String;
    :cond_0
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 716
    invoke-virtual {p0, v1}, Lcom/pim/vcard/VCardParserImpl_V21;->handleValue(Ljava/lang/String;)V

    goto :goto_0

    .line 717
    :cond_1
    const-string v3, "ENCODING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 718
    invoke-virtual {p0, v1}, Lcom/pim/vcard/VCardParserImpl_V21;->handleEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_2
    const-string v3, "CHARSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 720
    invoke-virtual {p0, v1}, Lcom/pim/vcard/VCardParserImpl_V21;->handleCharset(Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_3
    const-string v3, "LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 722
    invoke-virtual {p0, v1}, Lcom/pim/vcard/VCardParserImpl_V21;->handleLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_4
    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 724
    invoke-virtual {p0, v0, v1}, Lcom/pim/vcard/VCardParserImpl_V21;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 726
    :cond_5
    new-instance v3, Lcom/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown type \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 729
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :cond_6
    aget-object v3, v2, v4

    invoke-virtual {p0, v3}, Lcom/pim/vcard/VCardParserImpl_V21;->handleParamWithoutName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 841
    iget-object v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 842
    .local v8, upperEncoding:Ljava/lang/String;
    const-string v10, "QUOTED-PRINTABLE"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 844
    .local v6, start:J
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/pim/vcard/VCardParserImpl_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 845
    .local v5, result:Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v9, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    iget-object v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v10, v9}, Lcom/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 848
    iget-wide v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    .line 928
    .end local v5           #result:Ljava/lang/String;
    .end local v9           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 849
    .end local v6           #start:J
    :cond_0
    const-string v10, "BASE64"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 850
    const-string v10, "B"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 851
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 855
    .restart local v6       #start:J
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/pim/vcard/VCardParserImpl_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v10, v1}, Lcom/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local v1           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget-wide v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    goto :goto_0

    .line 858
    :catch_0
    move-exception v3

    .line 859
    .local v3, error:Ljava/lang/OutOfMemoryError;
    const-string v10, "VCardParserImpl_V21"

    const-string v11, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    goto :goto_1

    .line 864
    .end local v3           #error:Ljava/lang/OutOfMemoryError;
    .end local v6           #start:J
    :cond_2
    const-string v10, "7BIT"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "8BIT"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 865
    const-string v10, "X-"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 866
    const-string v10, "VCardParserImpl_V21"

    .line 867
    const-string v11, "The encoding \"%s\" is unsupported by vCard %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 868
    iget-object v14, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 867
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 866
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_3
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v10

    if-nez v10, :cond_6

    .line 894
    const/4 v2, 0x0

    .line 896
    .local v2, builder:Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v4

    .line 903
    .local v4, nextLine:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 904
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_5

    .line 905
    const-string v10, "END:VCARD"

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 906
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 908
    if-nez v2, :cond_4

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 910
    .restart local v2       #builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    :cond_4
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 917
    :cond_5
    if-eqz v2, :cond_6

    .line 918
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 922
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v4           #nextLine:Ljava/lang/String;
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 923
    .restart local v6       #start:J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .restart local v9       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/pim/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    iget-object v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v10, v9}, Lcom/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 926
    iget-wide v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    goto/16 :goto_0
.end method

.method protected handleType(Ljava/lang/String;)V
    .locals 5
    .parameter "ptypeval"

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getKnownTypeSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 749
    const-string v0, "VCardParserImpl_V21"

    const-string v1, "TYPE unsupported by %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    const-string v1, "TYPE"

    invoke-interface {v0, v1}, Lcom/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method protected handleValue(Ljava/lang/String;)V
    .locals 5
    .parameter "pvalueval"

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getKnownValueSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 763
    const-string v0, "VCardParserImpl_V21"

    .line 764
    const-string v1, "The value unsupported by TYPE of %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 763
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    const-string v1, "VALUE"

    invoke-interface {v0, v1}, Lcom/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 3
    .parameter "propertyName"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Property name unsupported by vCard 2.1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 1090
    invoke-static {p1}, Lcom/pim/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 1058
    invoke-static {p1}, Lcom/pim/vcard/VCardParserImpl_V21;->unescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Lcom/pim/vcard/VCardInterpreter;)V
    .locals 7
    .parameter "is"
    .parameter "interpreter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1158
    if-nez p1, :cond_0

    .line 1159
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "InputStream must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1162
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1163
    .local v2, tmpReader:Ljava/io/InputStreamReader;
    new-instance v3, Lcom/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {v3, v2}, Lcom/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mReader:Lcom/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 1165
    if-eqz p2, :cond_4

    .end local p2
    :goto_0
    iput-object p2, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    .line 1167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1168
    .local v0, start:J
    iget-object v3, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    if-eqz v3, :cond_1

    .line 1169
    iget-object v3, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v3}, Lcom/pim/vcard/VCardInterpreter;->start()V

    .line 1171
    :cond_1
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->parseVCardFile()V

    .line 1172
    iget-object v3, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    if-eqz v3, :cond_2

    .line 1173
    iget-object v3, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v3}, Lcom/pim/vcard/VCardInterpreter;->end()V

    .line 1175
    :cond_2
    iget-wide v3, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeTotal:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeTotal:J

    .line 1177
    invoke-static {}, Lcom/pim/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1178
    invoke-direct {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->showPerformanceInfo()V

    .line 1180
    :cond_3
    return-void

    .line 1165
    .end local v0           #start:J
    .restart local p2
    :cond_4
    new-instance p2, Lcom/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;

    .end local p2
    const/4 v3, 0x0

    invoke-direct {p2, v3}, Lcom/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;-><init>(Lcom/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;)V

    goto :goto_0
.end method

.method protected parseItem()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 453
    const-string v8, "8BIT"

    iput-object v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 455
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, line:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 458
    .local v4, start:J
    invoke-virtual {p0, v0}, Lcom/pim/vcard/VCardParserImpl_V21;->separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, propertyNameAndValue:[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 495
    :goto_0
    return v6

    .line 462
    :cond_0
    array-length v8, v2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 463
    new-instance v6, Lcom/pim/vcard/exception/VCardInvalidLineException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid line \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/pim/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 465
    :cond_1
    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, propertyName:Ljava/lang/String;
    aget-object v3, v2, v6

    .line 468
    .local v3, propertyValue:Ljava/lang/String;
    iget-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    .line 470
    const-string v6, "ADR"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ORG"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "N"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "SOUND"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 471
    const-string v6, "X-CONTACT-GROUPS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 474
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 475
    invoke-virtual {p0, v1, v3}, Lcom/pim/vcard/VCardParserImpl_V21;->handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    move v6, v7

    .line 477
    goto :goto_0

    .line 478
    :cond_3
    const-string v6, "AGENT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 479
    invoke-virtual {p0, v3}, Lcom/pim/vcard/VCardParserImpl_V21;->handleAgent(Ljava/lang/String;)V

    move v6, v7

    .line 480
    goto :goto_0

    .line 481
    :cond_4
    invoke-virtual {p0, v1}, Lcom/pim/vcard/VCardParserImpl_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 482
    const-string v6, "BEGIN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 483
    const-string v6, "VCARD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 484
    new-instance v6, Lcom/pim/vcard/exception/VCardNestedException;

    const-string v7, "This vCard has nested vCard data in it."

    invoke-direct {v6, v7}, Lcom/pim/vcard/exception/VCardNestedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 486
    :cond_5
    new-instance v6, Lcom/pim/vcard/exception/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unknown BEGIN type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 488
    :cond_6
    const-string v6, "VERSION"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 489
    new-instance v6, Lcom/pim/vcard/exception/VCardVersionException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Incompatible version: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 490
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 489
    invoke-direct {v6, v7}, Lcom/pim/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 492
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 493
    invoke-virtual {p0, v1, v3}, Lcom/pim/vcard/VCardParserImpl_V21;->handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    move v6, v7

    .line 495
    goto/16 :goto_0

    .line 498
    :cond_8
    new-instance v6, Lcom/pim/vcard/exception/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unknown property name: \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected parseItems()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v7, 0x0

    .line 412
    .local v7, ended:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 413
    .local v0, beforeBeginProperty:J
    iget-object v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Lcom/pim/vcard/VCardInterpreter;->startProperty()V

    .line 414
    iget-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    .line 415
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->parseItem()Z

    move-result v7

    .line 416
    if-nez v7, :cond_0

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 418
    .local v2, beforeEndProperty:J
    iget-object v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Lcom/pim/vcard/VCardInterpreter;->endProperty()V

    .line 419
    iget-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    .line 422
    .end local v2           #beforeEndProperty:J
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 444
    return-void

    .line 423
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 424
    .local v4, beforeStartProperty:J
    iget-object v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Lcom/pim/vcard/VCardInterpreter;->startProperty()V

    .line 425
    iget-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->parseItem()Z
    :try_end_0
    .catch Lcom/pim/vcard/exception/VCardInvalidCommentLineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pim/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 438
    :goto_1
    if-nez v7, :cond_0

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 440
    .restart local v2       #beforeEndProperty:J
    iget-object v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Lcom/pim/vcard/VCardInterpreter;->endProperty()V

    .line 441
    iget-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    goto :goto_0

    .line 428
    .end local v2           #beforeEndProperty:J
    :catch_0
    move-exception v6

    .line 429
    .local v6, e:Lcom/pim/vcard/exception/VCardInvalidCommentLineException;
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v7, 0x0

    goto :goto_1

    .line 432
    .end local v6           #e:Lcom/pim/vcard/exception/VCardInvalidCommentLineException;
    :catch_1
    move-exception v6

    .line 433
    .local v6, e:Lcom/pim/vcard/exception/VCardException;
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Invalid line which looks like some improper line ignored"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v7, 0x0

    .line 435
    goto :goto_0
.end method

.method protected parseVCardFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v1, 0x1

    .line 225
    .local v1, readingFirstFile:Z
    :goto_0
    iget-boolean v3, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mCanceled:Z

    if-eqz v3, :cond_2

    .line 234
    :cond_0
    iget v3, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v3, :cond_1

    .line 235
    const/4 v2, 0x1

    .line 236
    .local v2, useCache:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lt v0, v3, :cond_3

    .line 241
    .end local v0           #i:I
    .end local v2           #useCache:Z
    :cond_1
    return-void

    .line 228
    :cond_2
    invoke-direct {p0, v1}, Lcom/pim/vcard/VCardParserImpl_V21;->parseOneVCard(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    const/4 v1, 0x0

    .line 224
    goto :goto_0

    .line 237
    .restart local v0       #i:I
    .restart local v2       #useCache:Z
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/pim/vcard/VCardParserImpl_V21;->readEndVCard(ZZ)V

    .line 238
    const/4 v2, 0x0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected peekLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mReader:Lcom/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->peekLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .locals 8
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 353
    :goto_0
    return v3

    .line 334
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 338
    const-string v5, ":"

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, strArray:[Ljava/lang/String;
    array-length v0, v2

    .line 347
    .local v0, length:I
    if-ne v0, v7, :cond_2

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BEGIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 348
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VCARD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 349
    goto :goto_0

    .line 350
    :cond_2
    if-nez p1, :cond_4

    .line 351
    iget v4, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v4, :cond_3

    .line 352
    iput-object v1, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    goto :goto_0

    .line 355
    :cond_3
    new-instance v3, Lcom/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" came)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-direct {v3, v4}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 329
    :cond_4
    if-nez p1, :cond_0

    .line 361
    new-instance v3, Lcom/pim/vcard/exception/VCardException;

    const-string v4, "Reached where must not be reached."

    invoke-direct {v3, v4}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readEndVCard(ZZ)V
    .locals 5
    .parameter "useCache"
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 380
    :cond_0
    if-eqz p1, :cond_1

    .line 383
    iget-object v0, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 395
    .local v0, line:Ljava/lang/String;
    :goto_0
    const-string v2, ":"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, strArray:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "END"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 404
    :goto_1
    return-void

    .line 386
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #strArray:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 387
    .restart local v0       #line:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 388
    new-instance v2, Lcom/pim/vcard/exception/VCardException;

    const-string v3, "Expected END:VCARD was not found."

    invoke-direct {v2, v3}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 389
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    .line 399
    .restart local v1       #strArray:[Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_4

    .line 400
    new-instance v2, Lcom/pim/vcard/exception/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "END:VCARD != \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :cond_4
    const/4 p1, 0x0

    .line 379
    if-nez p2, :cond_0

    goto :goto_1
.end method

.method protected separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 598
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    .line 599
    .local v7, propertyNameAndValue:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 600
    .local v3, length:I
    if-lez v3, :cond_0

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-ne v9, v10, :cond_0

    .line 601
    new-instance v9, Lcom/pim/vcard/exception/VCardInvalidCommentLineException;

    invoke-direct {v9}, Lcom/pim/vcard/exception/VCardInvalidCommentLineException;-><init>()V

    throw v9

    .line 604
    :cond_0
    const/4 v8, 0x0

    .line 605
    .local v8, state:I
    const/4 v5, 0x0

    .line 606
    .local v5, preState:I
    const/4 v4, 0x0

    .line 610
    .local v4, nameIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 698
    new-instance v9, Lcom/pim/vcard/exception/VCardInvalidLineException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid line: \""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/pim/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 611
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 612
    .local v0, ch:C
    packed-switch v8, :pswitch_data_0

    .line 610
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    :pswitch_0
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_5

    .line 615
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/pim/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 616
    .local v6, propertyName:Ljava/lang/String;
    const-string v9, "END"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 617
    iput-object p1, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 618
    const/4 v7, 0x0

    .line 670
    .end local v6           #propertyName:Ljava/lang/String;
    .end local v7           #propertyNameAndValue:[Ljava/lang/String;
    :goto_2
    return-object v7

    .line 620
    .restart local v6       #propertyName:Ljava/lang/String;
    .restart local v7       #propertyNameAndValue:[Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v9, v6}, Lcom/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    .line 621
    const/4 v9, 0x0

    aput-object v6, v7, v9

    .line 622
    add-int/lit8 v9, v3, -0x1

    if-ge v2, v9, :cond_4

    .line 623
    const/4 v9, 0x1

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    goto :goto_2

    .line 625
    :cond_4
    const/4 v9, 0x1

    const-string v10, ""

    aput-object v10, v7, v9

    goto :goto_2

    .line 628
    .end local v6           #propertyName:Ljava/lang/String;
    :cond_5
    const/16 v9, 0x2e

    if-ne v0, v9, :cond_7

    .line 629
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, groupName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    .line 631
    const-string v9, "VCardParserImpl_V21"

    const-string v10, "Empty group found. Ignoring."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_3
    add-int/lit8 v4, v2, 0x1

    goto :goto_1

    .line 633
    :cond_6
    iget-object v9, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v9, v1}, Lcom/pim/vcard/VCardInterpreter;->propertyGroup(Ljava/lang/String;)V

    goto :goto_3

    .line 636
    .end local v1           #groupName:Ljava/lang/String;
    :cond_7
    const/16 v9, 0x3b

    if-ne v0, v9, :cond_9

    .line 637
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/pim/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 638
    .restart local v6       #propertyName:Ljava/lang/String;
    const-string v9, "END"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 639
    iput-object p1, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 640
    const/4 v7, 0x0

    goto :goto_2

    .line 642
    :cond_8
    iget-object v9, p0, Lcom/pim/vcard/VCardParserImpl_V21;->mInterpreter:Lcom/pim/vcard/VCardInterpreter;

    invoke-interface {v9, v6}, Lcom/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    .line 643
    const/4 v9, 0x0

    aput-object v6, v7, v9

    .line 644
    add-int/lit8 v4, v2, 0x1

    .line 645
    const/4 v8, 0x1

    goto :goto_1

    .line 646
    .end local v6           #propertyName:Ljava/lang/String;
    :cond_9
    const/16 v9, 0x5c

    if-ne v0, v9, :cond_2

    .line 647
    move v5, v8

    .line 648
    const/4 v8, 0x3

    .line 651
    goto :goto_1

    .line 654
    :pswitch_1
    const/16 v9, 0x22

    if-ne v0, v9, :cond_b

    .line 655
    const-string v9, "2.1"

    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 656
    const-string v9, "VCardParserImpl_V21"

    const-string v10, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_a
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 660
    :cond_b
    const/16 v9, 0x3b

    if-ne v0, v9, :cond_c

    .line 661
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/pim/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/pim/vcard/VCardParserImpl_V21;->handleParams(Ljava/lang/String;)V

    .line 662
    add-int/lit8 v4, v2, 0x1

    goto/16 :goto_1

    .line 663
    :cond_c
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_e

    .line 664
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/pim/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/pim/vcard/VCardParserImpl_V21;->handleParams(Ljava/lang/String;)V

    .line 665
    add-int/lit8 v9, v3, -0x1

    if-ge v2, v9, :cond_d

    .line 666
    const/4 v9, 0x1

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    goto/16 :goto_2

    .line 668
    :cond_d
    const/4 v9, 0x1

    const-string v10, ""

    aput-object v10, v7, v9

    goto/16 :goto_2

    .line 671
    :cond_e
    const/16 v9, 0x5c

    if-ne v0, v9, :cond_2

    .line 672
    move v5, v8

    .line 673
    const/4 v8, 0x3

    .line 675
    goto/16 :goto_1

    .line 678
    :pswitch_2
    const/16 v9, 0x22

    if-ne v0, v9, :cond_2

    .line 679
    const-string v9, "2.1"

    invoke-virtual {p0}, Lcom/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 680
    const-string v9, "VCardParserImpl_V21"

    const-string v10, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_f
    const/4 v8, 0x1

    .line 685
    goto/16 :goto_1

    .line 689
    :pswitch_3
    const/16 v9, 0x5c

    if-eq v0, v9, :cond_10

    const/16 v9, 0x3b

    if-eq v0, v9, :cond_10

    const/16 v9, 0x3a

    if-eq v0, v9, :cond_10

    const/16 v9, 0x2e

    if-ne v0, v9, :cond_2

    .line 690
    :cond_10
    move v8, v5

    goto/16 :goto_1

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
