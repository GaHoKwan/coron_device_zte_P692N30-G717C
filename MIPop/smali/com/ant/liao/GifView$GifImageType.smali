.class public final enum Lcom/ant/liao/GifView$GifImageType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum fk:Lcom/ant/liao/GifView$GifImageType;

.field public static final enum fl:Lcom/ant/liao/GifView$GifImageType;

.field public static final enum fm:Lcom/ant/liao/GifView$GifImageType;

.field private static final synthetic fn:[Lcom/ant/liao/GifView$GifImageType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ant/liao/GifView$GifImageType;

    const-string v1, "WAIT_FINISH"

    invoke-direct {v0, v1, v2, v2}, Lcom/ant/liao/GifView$GifImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ant/liao/GifView$GifImageType;->fk:Lcom/ant/liao/GifView$GifImageType;

    new-instance v0, Lcom/ant/liao/GifView$GifImageType;

    const-string v1, "SYNC_DECODER"

    invoke-direct {v0, v1, v3, v3}, Lcom/ant/liao/GifView$GifImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ant/liao/GifView$GifImageType;->fl:Lcom/ant/liao/GifView$GifImageType;

    new-instance v0, Lcom/ant/liao/GifView$GifImageType;

    const-string v1, "COVER"

    invoke-direct {v0, v1, v4, v4}, Lcom/ant/liao/GifView$GifImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ant/liao/GifView$GifImageType;->fm:Lcom/ant/liao/GifView$GifImageType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ant/liao/GifView$GifImageType;

    sget-object v1, Lcom/ant/liao/GifView$GifImageType;->fk:Lcom/ant/liao/GifView$GifImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ant/liao/GifView$GifImageType;->fl:Lcom/ant/liao/GifView$GifImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ant/liao/GifView$GifImageType;->fm:Lcom/ant/liao/GifView$GifImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ant/liao/GifView$GifImageType;->fn:[Lcom/ant/liao/GifView$GifImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ant/liao/GifView$GifImageType;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ant/liao/GifView$GifImageType;
    .locals 1

    const-class v0, Lcom/ant/liao/GifView$GifImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ant/liao/GifView$GifImageType;

    return-object v0
.end method

.method public static values()[Lcom/ant/liao/GifView$GifImageType;
    .locals 1

    sget-object v0, Lcom/ant/liao/GifView$GifImageType;->fn:[Lcom/ant/liao/GifView$GifImageType;

    invoke-virtual {v0}, [Lcom/ant/liao/GifView$GifImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ant/liao/GifView$GifImageType;

    return-object v0
.end method
