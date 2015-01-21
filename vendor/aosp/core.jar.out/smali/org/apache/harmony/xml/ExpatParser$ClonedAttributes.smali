.class Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;
.super Lorg/apache/harmony/xml/ExpatAttributes;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClonedAttributes"
.end annotation


# static fields
.field private static final EMPTY:Lorg/xml/sax/Attributes;


# instance fields
.field private final length:I

.field private final parserPointer:I

.field private pointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 622
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    invoke-direct {v0, v1, v1, v1}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(III)V

    sput-object v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0
    .parameter "parserPointer"
    .parameter "pointer"
    .parameter "length"

    .prologue
    .line 636
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatAttributes;-><init>()V

    .line 637
    iput p1, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:I

    .line 638
    iput p2, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I

    .line 639
    iput p3, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    .line 640
    return-void
.end method

.method synthetic constructor <init>(IIILorg/apache/harmony/xml/ExpatParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 620
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(III)V

    return-void
.end method

.method static synthetic access$400()Lorg/xml/sax/Attributes;
    .locals 1

    .prologue
    .line 620
    sget-object v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 659
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I

    if-eqz v0, :cond_0

    .line 660
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->freeAttributes(I)V

    .line 661
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 666
    monitor-exit p0

    return-void

    .line 664
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 659
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    return v0
.end method

.method public getParserPointer()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:I

    return v0
.end method

.method public getPointer()I
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I

    return v0
.end method
