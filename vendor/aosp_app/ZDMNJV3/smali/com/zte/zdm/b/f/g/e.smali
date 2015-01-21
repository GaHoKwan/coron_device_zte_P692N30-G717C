.class final enum Lcom/zte/zdm/b/f/g/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zte/zdm/b/f/g/e;

.field public static final enum b:Lcom/zte/zdm/b/f/g/e;

.field public static final enum c:Lcom/zte/zdm/b/f/g/e;

.field public static final enum d:Lcom/zte/zdm/b/f/g/e;

.field public static final enum e:Lcom/zte/zdm/b/f/g/e;

.field private static final synthetic f:[Lcom/zte/zdm/b/f/g/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/zte/zdm/b/f/g/e;

    const-string v1, "e_transactionAdd"

    invoke-direct {v0, v1, v2}, Lcom/zte/zdm/b/f/g/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/b/f/g/e;->a:Lcom/zte/zdm/b/f/g/e;

    new-instance v0, Lcom/zte/zdm/b/f/g/e;

    const-string v1, "e_transactionDelete"

    invoke-direct {v0, v1, v3}, Lcom/zte/zdm/b/f/g/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/b/f/g/e;->b:Lcom/zte/zdm/b/f/g/e;

    new-instance v0, Lcom/zte/zdm/b/f/g/e;

    const-string v1, "e_transactionReplace"

    invoke-direct {v0, v1, v4}, Lcom/zte/zdm/b/f/g/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/b/f/g/e;->c:Lcom/zte/zdm/b/f/g/e;

    new-instance v0, Lcom/zte/zdm/b/f/g/e;

    const-string v1, "e_transactionReplaceProperty"

    invoke-direct {v0, v1, v5}, Lcom/zte/zdm/b/f/g/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/b/f/g/e;->d:Lcom/zte/zdm/b/f/g/e;

    new-instance v0, Lcom/zte/zdm/b/f/g/e;

    const-string v1, "e_transactionCopy"

    invoke-direct {v0, v1, v6}, Lcom/zte/zdm/b/f/g/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/b/f/g/e;->e:Lcom/zte/zdm/b/f/g/e;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zte/zdm/b/f/g/e;

    sget-object v1, Lcom/zte/zdm/b/f/g/e;->a:Lcom/zte/zdm/b/f/g/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/zdm/b/f/g/e;->b:Lcom/zte/zdm/b/f/g/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zdm/b/f/g/e;->c:Lcom/zte/zdm/b/f/g/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/zdm/b/f/g/e;->d:Lcom/zte/zdm/b/f/g/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/zdm/b/f/g/e;->e:Lcom/zte/zdm/b/f/g/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/zdm/b/f/g/e;->f:[Lcom/zte/zdm/b/f/g/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zdm/b/f/g/e;
    .locals 1

    const-class v0, Lcom/zte/zdm/b/f/g/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/g/e;

    return-object v0
.end method

.method public static values()[Lcom/zte/zdm/b/f/g/e;
    .locals 1

    sget-object v0, Lcom/zte/zdm/b/f/g/e;->f:[Lcom/zte/zdm/b/f/g/e;

    invoke-virtual {v0}, [Lcom/zte/zdm/b/f/g/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/b/f/g/e;

    return-object v0
.end method
