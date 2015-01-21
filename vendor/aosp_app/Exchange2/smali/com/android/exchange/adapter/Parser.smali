.class public abstract Lcom/android/exchange/adapter/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/Parser$EasParserException;,
        Lcom/android/exchange/adapter/Parser$EodException;,
        Lcom/android/exchange/adapter/Parser$EmptyStreamException;,
        Lcom/android/exchange/adapter/Parser$EofException;
    }
.end annotation


# static fields
.field public static final DONE:I = 0x1

.field public static final END:I = 0x3

.field public static final END_DOCUMENT:I = 0x3

.field private static final EOF_BYTE:I = -0x1

.field private static final LOG_VERBOSE:Z = false

.field private static final NOT_ENDED:I = -0x80000000

.field private static final NOT_FETCHED:I = -0x80000000

.field public static final START:I = 0x2

.field public static final START_DOCUMENT:I = 0x0

.field private static final TAG_BASE:I = 0x5

.field public static final TEXT:I = 0x4

.field private static tagTables:[[Ljava/lang/String;


# instance fields
.field public bytes:[B

.field private capture:Z

.field private captureArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private depth:I

.field public endTag:I

.field private in:Ljava/io/InputStream;

.field private logTag:Ljava/lang/String;

.field private logging:Z

.field protected mAccount:Lcom/android/emailcommon/provider/Account;

.field public name:Ljava/lang/String;

.field private nameArray:[Ljava/lang/String;

.field private nextId:I

.field public noContent:Z

.field public num:I

.field public page:I

.field public startTag:I

.field private startTagArray:[I

.field public tag:I

.field private tagTable:[Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/adapter/Parser;)V
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/high16 v5, -0x8000

    const/4 v4, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 55
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    .line 56
    const-string v3, "EAS Parser"

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 70
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 79
    new-array v3, v6, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    .line 82
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    .line 86
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 158
    sget-object v2, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    .line 159
    .local v2, pages:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 160
    aget-object v1, v2, v0

    .line 161
    .local v1, page:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 162
    sget-object v3, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v1           #page:[Ljava/lang/String;
    :cond_1
    iget-object v3, p1, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/adapter/Parser;->setInput(Ljava/io/InputStream;Z)V

    .line 179
    sget-boolean v3, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    const/4 v3, 0x0

    const/high16 v4, -0x8000

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 55
    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    .line 56
    const-string v3, "EAS Parser"

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 70
    iput v4, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 79
    new-array v3, v5, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    .line 82
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    .line 86
    iput v4, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 158
    sget-object v2, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    .line 159
    .local v2, pages:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 160
    aget-object v1, v2, v0

    .line 161
    .local v1, page:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 162
    sget-object v3, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v1           #page:[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/exchange/adapter/Parser;->setInput(Ljava/io/InputStream;Z)V

    .line 169
    sget-boolean v3, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 170
    return-void
.end method

.method private final getNext(Z)I
    .locals 9
    .parameter "asInt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/high16 v5, -0x8000

    const/4 v7, 0x0

    .line 444
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-eqz v4, :cond_0

    .line 445
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aput-object v7, v4, v5

    .line 446
    iput v8, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 447
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 448
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 523
    :goto_0
    return v4

    .line 451
    :cond_0
    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 452
    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 454
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v1

    .line 455
    .local v1, id:I
    :goto_1
    if-nez v1, :cond_1

    .line 456
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 458
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v3

    .line 460
    .local v3, pg:I
    shl-int/lit8 v4, v3, 0x6

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->page:I

    .line 465
    sget-object v4, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aget-object v4, v4, v3

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 466
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v1

    .line 467
    goto :goto_1

    .line 468
    .end local v3           #pg:I
    :cond_1
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 470
    sparse-switch v1, :sswitch_data_0

    .line 518
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 519
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/Parser;->push(I)V

    .line 523
    :cond_2
    :goto_2
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_0

    .line 473
    :sswitch_0
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_2

    .line 477
    :sswitch_1
    iput v8, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 478
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->pop()V

    goto :goto_2

    .line 483
    :sswitch_2
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 484
    if-eqz p1, :cond_3

    .line 485
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineInt()I

    move-result v4

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 489
    :goto_3
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_2

    .line 490
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v5, v5, -0x5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_4

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->num:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 487
    :cond_3
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_3

    .line 491
    :cond_4
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_4

    .line 500
    :sswitch_3
    const/4 v2, 0x0

    .line 501
    .local v2, length:I
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v4, :cond_5

    const-string v4, "2.5"

    iget-object v5, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 502
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v2

    .line 507
    :goto_5
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->bytes:[B

    .line 508
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v2, :cond_6

    .line 509
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->bytes:[B

    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 504
    .end local v0           #i:I
    :cond_5
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    move-result v2

    goto :goto_5

    .line 511
    .restart local v0       #i:I
    :cond_6
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_2

    .line 512
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v5, v5, -0x5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": (opaque:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 470
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method private nextId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 549
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    return v0
.end method

.method private pop()V
    .locals 2

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 416
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 417
    return-void
.end method

.method private push(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 421
    and-int/lit8 v0, p1, 0x3f

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 423
    and-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 424
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 425
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v1, v1, -0x5

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget v2, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    aput v2, v0, v1

    .line 432
    return-void

    .line 423
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 428
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 536
    .local v0, i:I
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureArray:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_0
    return v0
.end method

.method private readByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    .line 554
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 555
    new-instance v1, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1

    .line 557
    :cond_0
    return v0
.end method

.method private readInlineInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 572
    .local v1, result:I
    :goto_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v0

    .line 574
    .local v0, i:I
    if-nez v0, :cond_0

    .line 575
    return v1

    .line 577
    :cond_0
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    .line 578
    mul-int/lit8 v2, v1, 0xa

    add-int/lit8 v3, v0, -0x30

    add-int v1, v2, v3

    goto :goto_0

    .line 580
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Non integer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readInlineString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 606
    .local v1, outputStream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    .line 607
    .local v0, i:I
    if-nez v0, :cond_0

    .line 614
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 615
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 617
    return-object v2

    .line 609
    .end local v2           #res:Ljava/lang/String;
    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 610
    new-instance v3, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v3, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v3

    .line 612
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method private readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    const/4 v1, 0x0

    .line 590
    .local v1, result:I
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v0

    .line 591
    .local v0, i:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 592
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 594
    return v1
.end method


# virtual methods
.method public captureOff(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "file"

    .prologue
    .line 220
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 221
    .local v0, out:Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 222
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0           #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v1

    goto :goto_0

    .line 223
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public captureOn()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->captureArray:Ljava/util/ArrayList;

    .line 213
    return-void
.end method

.method protected getInput()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 253
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v3, :cond_2

    .line 254
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v1, :cond_0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v3, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v3, v3, -0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 257
    :cond_0
    const-string v0, ""

    .line 267
    :cond_1
    return-object v0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 262
    .local v0, val:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 264
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_1

    .line 265
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->bytes:[B

    return-object v0
.end method

.method public getValueInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 279
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 280
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 291
    :cond_0
    return v0

    .line 284
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 286
    .local v0, val:I
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 288
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_0

    .line 289
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method log(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 393
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 394
    .local v0, cr:I
    if-lez v0, :cond_0

    .line 395
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-boolean v1, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_1
    return-void
.end method

.method public nextTag(I)I
    .locals 3
    .parameter "endingTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x3

    .line 307
    and-int/lit8 p1, p1, 0x3f

    iput p1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 308
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 310
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 311
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->page:I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 312
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 320
    :cond_1
    :goto_0
    return v0

    .line 314
    :cond_2
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iget v2, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 319
    :cond_3
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    if-eqz v1, :cond_1

    .line 325
    new-instance v0, Lcom/android/exchange/adapter/Parser$EodException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EodException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 355
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->type:I

    return v0
.end method

.method public parse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/EasException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method protected pushTag(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 404
    shr-int/lit8 v0, p1, 0x6

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->page:I

    .line 405
    sget-object v0, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->page:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 406
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;->push(I)V

    .line 407
    return-void
.end method

.method resetInput(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 387
    :try_start_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDebug(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 190
    return-void
.end method

.method public setInput(Ljava/io/InputStream;Z)V
    .locals 3
    .parameter "in"
    .parameter "initialize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 368
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 371
    :try_start_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I
    :try_end_0
    .catch Lcom/android/exchange/adapter/Parser$EofException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 376
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 377
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 379
    :cond_0
    sget-object v1, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 380
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Lcom/android/exchange/adapter/Parser$EofException;
    new-instance v1, Lcom/android/exchange/adapter/Parser$EmptyStreamException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EmptyStreamException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1
.end method

.method public setLoggingTag(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public skipTag()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 337
    .local v0, thisTag:I
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 338
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v1, v0, :cond_0

    .line 339
    return-void

    .line 344
    :cond_1
    new-instance v1, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1
.end method
