.class public final enum Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
.super Ljava/lang/Enum;


# static fields
.field public static final enum hn:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum ho:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum hp:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum hq:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum hr:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum hs:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum ht:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum hu:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum hv:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field private static final synthetic hw:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v1, "WHITEOUT"

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hn:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v1, "SOCKET"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->ho:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v1, "LINK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hp:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v1, "FILE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v8}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hq:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v1, "BLKDEV"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hr:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v1, "DIRECTORY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hs:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v1, "CHRDEV"

    invoke-direct {v0, v1, v7, v5}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->ht:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v1, "FIFO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hu:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hv:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hn:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->ho:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hp:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hq:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hr:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hs:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->ht:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hu:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hv:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    aput-object v1, v0, v8

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hw:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->code:I

    return-void
.end method

.method public static E(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
    .locals 6

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hv:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    invoke-static {}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->values()[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    iget v5, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->code:I

    if-ne p0, v5, :cond_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
    .locals 1

    const-class v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->hw:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-object v0
.end method
