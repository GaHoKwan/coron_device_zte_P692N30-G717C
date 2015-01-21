.class public abstract enum Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;

.field public static final enum b:Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;

.field private static final synthetic d:[Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;


# instance fields
.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/mo/e;

    const-string v1, "SrvAddr"

    const-string v2, "./DMAcc/ZTE/AppAddr/SrvAddr/Addr"

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/zdm/mo/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;->a:Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;

    new-instance v0, Lcom/zte/zdm/mo/f;

    const-string v1, "SrvAddrType"

    const-string v2, "./DMAcc/ZTE/AppAddr/SrvAddr/AddrType"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/zdm/mo/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;->b:Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;

    sget-object v1, Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;->a:Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;->b:Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;->d:[Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/mo/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;
    .locals 1

    const-class v0, Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;

    return-object v0
.end method

.method public static values()[Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;->d:[Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;

    invoke-virtual {v0}, [Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/mo/ReadEnum$DMAccReadHandler;

    return-object v0
.end method


# virtual methods
.method public abstract a(I[B)I
.end method
