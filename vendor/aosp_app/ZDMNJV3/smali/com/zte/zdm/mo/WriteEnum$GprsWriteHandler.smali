.class public abstract enum Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

.field public static final enum b:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

.field public static final enum c:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

.field public static final enum d:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

.field public static final enum e:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

.field public static final enum f:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

.field private static final synthetic h:[Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;


# instance fields
.field g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/zte/zdm/mo/am;

    const-string v1, "APN"

    const-string v2, "./Settings/GPRS/APN"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/zdm/mo/am;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->a:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    new-instance v0, Lcom/zte/zdm/mo/an;

    const-string v1, "Proxy"

    const-string v2, "./Settings/GPRS/Proxy"

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/zdm/mo/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->b:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    new-instance v0, Lcom/zte/zdm/mo/ao;

    const-string v1, "Port"

    const-string v2, "./Settings/GPRS/Port"

    invoke-direct {v0, v1, v6, v2}, Lcom/zte/zdm/mo/ao;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->c:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    new-instance v0, Lcom/zte/zdm/mo/ap;

    const-string v1, "CMNetAPN"

    const-string v2, "./Settings/GPRS/CMNet/APN"

    invoke-direct {v0, v1, v7, v2}, Lcom/zte/zdm/mo/ap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->d:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    new-instance v0, Lcom/zte/zdm/mo/aq;

    const-string v1, "CMNetPort"

    const-string v2, "./Settings/GPRS/CMNet/Port"

    invoke-direct {v0, v1, v8, v2}, Lcom/zte/zdm/mo/aq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->e:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    new-instance v0, Lcom/zte/zdm/mo/ar;

    const-string v1, "CMNetProxy"

    const/4 v2, 0x5

    const-string v3, "./Settings/GPRS/CMNet/Proxy"

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/zdm/mo/ar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->f:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    sget-object v1, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->a:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->b:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->c:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->d:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    aput-object v1, v0, v7

    sget-object v1, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->e:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->f:Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->h:[Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/mo/ad;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;
    .locals 1

    const-class v0, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    return-object v0
.end method

.method public static values()[Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->h:[Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    invoke-virtual {v0}, [Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;

    return-object v0
.end method


# virtual methods
.method public abstract a(I[B)V
.end method
