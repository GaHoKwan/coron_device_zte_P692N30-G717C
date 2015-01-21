.class public abstract enum Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

.field public static final enum b:Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

.field public static final enum c:Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

.field private static final synthetic e:[Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;


# instance fields
.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/mo/af;

    const-string v1, "APN"

    const-string v2, "./Settings/DM/APN"

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/zdm/mo/af;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;->a:Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

    new-instance v0, Lcom/zte/zdm/mo/ag;

    const-string v1, "Proxy"

    const-string v2, "./Settings/DM/Proxy"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/zdm/mo/ag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;->b:Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

    new-instance v0, Lcom/zte/zdm/mo/ah;

    const-string v1, "Port"

    const-string v2, "./Settings/DM/Port"

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/zdm/mo/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;->c:Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

    sget-object v1, Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;->a:Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;->b:Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;->c:Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

    aput-object v1, v0, v5

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;->e:[Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/mo/ad;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;
    .locals 1

    const-class v0, Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

    return-object v0
.end method

.method public static values()[Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;->e:[Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

    invoke-virtual {v0}, [Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/mo/WriteEnum$DMWriteHandler;

    return-object v0
.end method


# virtual methods
.method public abstract a(I[B)V
.end method
