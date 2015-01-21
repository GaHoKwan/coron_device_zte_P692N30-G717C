.class public abstract enum Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;

.field private static final synthetic c:[Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;


# instance fields
.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/mo/ai;

    const-string v1, "FotaM"

    const-string v2, "./FOTA/Mandatory"

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/zdm/mo/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;->a:Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;

    sget-object v1, Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;->a:Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;->c:[Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/mo/ad;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;
    .locals 1

    const-class v0, Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;

    return-object v0
.end method

.method public static values()[Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;->c:[Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;

    invoke-virtual {v0}, [Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/mo/WriteEnum$FOTAMandatoryWriteHandler;

    return-object v0
.end method


# virtual methods
.method public abstract a(I[B)V
.end method
