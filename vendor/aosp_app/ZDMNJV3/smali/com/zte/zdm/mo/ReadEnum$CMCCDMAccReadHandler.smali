.class public abstract enum Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;

.field public static final enum b:Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;

.field private static final synthetic d:[Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;


# instance fields
.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/mo/c;

    const-string v1, "SrvAddr"

    const-string v2, "./DMAcc/synchronica/AppAddr/SrvAddr/Addr"

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/zdm/mo/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;->a:Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;

    new-instance v0, Lcom/zte/zdm/mo/d;

    const-string v1, "SrvAddrType"

    const-string v2, "./DMAcc/synchronica/AppAddr/SrvAddr/AddrType"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/zdm/mo/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;->b:Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;

    sget-object v1, Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;->a:Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;->b:Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;->d:[Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/mo/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;
    .locals 1

    const-class v0, Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;

    return-object v0
.end method

.method public static values()[Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;->d:[Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;

    invoke-virtual {v0}, [Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/mo/ReadEnum$CMCCDMAccReadHandler;

    return-object v0
.end method


# virtual methods
.method public abstract a(I[B)I
.end method
