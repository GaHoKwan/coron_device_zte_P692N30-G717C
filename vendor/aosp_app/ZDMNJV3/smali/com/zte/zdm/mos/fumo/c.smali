.class public final enum Lcom/zte/zdm/mos/fumo/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zte/zdm/mos/fumo/c;

.field public static final enum b:Lcom/zte/zdm/mos/fumo/c;

.field public static final enum c:Lcom/zte/zdm/mos/fumo/c;

.field public static final enum d:Lcom/zte/zdm/mos/fumo/c;

.field private static final synthetic e:[Lcom/zte/zdm/mos/fumo/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/zte/zdm/mos/fumo/c;

    const-string v1, "FUMO_OPERATION_UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/zte/zdm/mos/fumo/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/mos/fumo/c;->a:Lcom/zte/zdm/mos/fumo/c;

    new-instance v0, Lcom/zte/zdm/mos/fumo/c;

    const-string v1, "FUMO_OPERATION_DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/zte/zdm/mos/fumo/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/mos/fumo/c;->b:Lcom/zte/zdm/mos/fumo/c;

    new-instance v0, Lcom/zte/zdm/mos/fumo/c;

    const-string v1, "FUMO_OPERATION_DOWNLOAD_AND_UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/zte/zdm/mos/fumo/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/mos/fumo/c;->c:Lcom/zte/zdm/mos/fumo/c;

    new-instance v0, Lcom/zte/zdm/mos/fumo/c;

    const-string v1, "FUMO_OPERATION_UPDATE"

    invoke-direct {v0, v1, v5}, Lcom/zte/zdm/mos/fumo/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/mos/fumo/c;->d:Lcom/zte/zdm/mos/fumo/c;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/zte/zdm/mos/fumo/c;

    sget-object v1, Lcom/zte/zdm/mos/fumo/c;->a:Lcom/zte/zdm/mos/fumo/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/zdm/mos/fumo/c;->b:Lcom/zte/zdm/mos/fumo/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zdm/mos/fumo/c;->c:Lcom/zte/zdm/mos/fumo/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/zdm/mos/fumo/c;->d:Lcom/zte/zdm/mos/fumo/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/zte/zdm/mos/fumo/c;->e:[Lcom/zte/zdm/mos/fumo/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zdm/mos/fumo/c;
    .locals 1

    const-class v0, Lcom/zte/zdm/mos/fumo/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mos/fumo/c;

    return-object v0
.end method

.method public static values()[Lcom/zte/zdm/mos/fumo/c;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mos/fumo/c;->e:[Lcom/zte/zdm/mos/fumo/c;

    invoke-virtual {v0}, [Lcom/zte/zdm/mos/fumo/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/mos/fumo/c;

    return-object v0
.end method
