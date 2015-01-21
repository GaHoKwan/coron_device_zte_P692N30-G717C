.class public abstract enum Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic cA:[Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

.field public static final enum cy:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

.field public static final enum cz:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy$1;

    const-string v1, "IN_MEMORY"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->cy:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    new-instance v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy$2;

    const-string v1, "TEMP_FILE"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->cz:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    sget-object v1, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->cy:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->cz:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->cA:[Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/commons/compress/compressors/pack200/Pack200Strategy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
    .locals 1

    const-class v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->cA:[Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    return-object v0
.end method


# virtual methods
.method abstract T()Lorg/apache/commons/compress/compressors/pack200/g;
.end method
