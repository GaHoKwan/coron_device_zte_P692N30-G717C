.class public abstract enum Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;

.field public static final enum b:Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;

.field private static final synthetic d:[Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;


# instance fields
.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/mo/j;

    const-string v1, "DevId"

    const-string v2, "./DevInfo/DevId"

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/zdm/mo/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;->a:Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;

    new-instance v0, Lcom/zte/zdm/mo/k;

    const-string v1, "Mod"

    const-string v2, "./DevInfo/Mod"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/zdm/mo/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;->b:Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;

    sget-object v1, Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;->a:Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;->b:Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;->d:[Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/mo/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;
    .locals 1

    const-class v0, Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;

    return-object v0
.end method

.method public static values()[Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;->d:[Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;

    invoke-virtual {v0}, [Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/mo/ReadEnum$DevInfoReadHandler;

    return-object v0
.end method


# virtual methods
.method public abstract a(I[B)I
.end method
