.class public abstract enum Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

.field public static final enum b:Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

.field public static final enum c:Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

.field private static final synthetic e:[Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;


# instance fields
.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/mo/at;

    const-string v1, "MaxUdpPort"

    const-string v2, "./Settings/Streaming/MAX-UDP-PORT"

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/zdm/mo/at;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;->a:Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

    new-instance v0, Lcom/zte/zdm/mo/au;

    const-string v1, "MinUdpPort"

    const-string v2, "./Settings/Streaming/MIN-UDP-PORT"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/zdm/mo/au;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;->b:Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

    new-instance v0, Lcom/zte/zdm/mo/av;

    const-string v1, "ToNapId"

    const-string v2, "./Settings/Streaming/To-NapID"

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/zdm/mo/av;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;->c:Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

    sget-object v1, Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;->a:Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;->b:Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;->c:Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

    aput-object v1, v0, v5

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;->e:[Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/mo/ad;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;
    .locals 1

    const-class v0, Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

    return-object v0
.end method

.method public static values()[Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;->e:[Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

    invoke-virtual {v0}, [Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/mo/WriteEnum$StreamWriteHandler;

    return-object v0
.end method


# virtual methods
.method public abstract a(I[B)V
.end method
