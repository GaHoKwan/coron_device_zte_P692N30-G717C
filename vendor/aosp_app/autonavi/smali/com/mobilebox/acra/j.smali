.class final enum Lcom/mobilebox/acra/j;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mobilebox/acra/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mobilebox/acra/j;

.field public static final enum b:Lcom/mobilebox/acra/j;

.field public static final enum c:Lcom/mobilebox/acra/j;

.field private static final synthetic d:[Lcom/mobilebox/acra/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mobilebox/acra/j;

    const-string v1, "SILENT"

    invoke-direct {v0, v1, v2}, Lcom/mobilebox/acra/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobilebox/acra/j;->a:Lcom/mobilebox/acra/j;

    new-instance v0, Lcom/mobilebox/acra/j;

    const-string v1, "NOTIFICATION"

    invoke-direct {v0, v1, v3}, Lcom/mobilebox/acra/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobilebox/acra/j;->b:Lcom/mobilebox/acra/j;

    new-instance v0, Lcom/mobilebox/acra/j;

    const-string v1, "TOAST"

    invoke-direct {v0, v1, v4}, Lcom/mobilebox/acra/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobilebox/acra/j;->c:Lcom/mobilebox/acra/j;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mobilebox/acra/j;

    sget-object v1, Lcom/mobilebox/acra/j;->a:Lcom/mobilebox/acra/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mobilebox/acra/j;->b:Lcom/mobilebox/acra/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mobilebox/acra/j;->c:Lcom/mobilebox/acra/j;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mobilebox/acra/j;->d:[Lcom/mobilebox/acra/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobilebox/acra/j;
    .locals 1

    const-class v0, Lcom/mobilebox/acra/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobilebox/acra/j;

    return-object v0
.end method

.method public static values()[Lcom/mobilebox/acra/j;
    .locals 1

    sget-object v0, Lcom/mobilebox/acra/j;->d:[Lcom/mobilebox/acra/j;

    invoke-virtual {v0}, [Lcom/mobilebox/acra/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobilebox/acra/j;

    return-object v0
.end method
