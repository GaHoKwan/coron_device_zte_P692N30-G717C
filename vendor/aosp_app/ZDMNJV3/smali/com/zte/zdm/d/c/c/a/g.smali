.class abstract enum Lcom/zte/zdm/d/c/c/a/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zte/zdm/d/c/c/a/g;

.field public static final enum b:Lcom/zte/zdm/d/c/c/a/g;

.field public static final enum c:Lcom/zte/zdm/d/c/c/a/g;

.field public static final enum d:Lcom/zte/zdm/d/c/c/a/g;

.field public static final enum e:Lcom/zte/zdm/d/c/c/a/g;

.field private static final synthetic f:[Lcom/zte/zdm/d/c/c/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/zte/zdm/d/c/c/a/h;

    const-string v1, "NodeName"

    invoke-direct {v0, v1, v2}, Lcom/zte/zdm/d/c/c/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/d/c/c/a/g;->a:Lcom/zte/zdm/d/c/c/a/g;

    new-instance v0, Lcom/zte/zdm/d/c/c/a/i;

    const-string v1, "Format"

    invoke-direct {v0, v1, v3}, Lcom/zte/zdm/d/c/c/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/d/c/c/a/g;->b:Lcom/zte/zdm/d/c/c/a/g;

    new-instance v0, Lcom/zte/zdm/d/c/c/a/j;

    const-string v1, "Value"

    invoke-direct {v0, v1, v4}, Lcom/zte/zdm/d/c/c/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/d/c/c/a/g;->c:Lcom/zte/zdm/d/c/c/a/g;

    new-instance v0, Lcom/zte/zdm/d/c/c/a/k;

    const-string v1, "Path"

    invoke-direct {v0, v1, v5}, Lcom/zte/zdm/d/c/c/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/d/c/c/a/g;->d:Lcom/zte/zdm/d/c/c/a/g;

    new-instance v0, Lcom/zte/zdm/d/c/c/a/l;

    const-string v1, "Type"

    invoke-direct {v0, v1, v6}, Lcom/zte/zdm/d/c/c/a/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zdm/d/c/c/a/g;->e:Lcom/zte/zdm/d/c/c/a/g;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zte/zdm/d/c/c/a/g;

    sget-object v1, Lcom/zte/zdm/d/c/c/a/g;->a:Lcom/zte/zdm/d/c/c/a/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/zdm/d/c/c/a/g;->b:Lcom/zte/zdm/d/c/c/a/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zdm/d/c/c/a/g;->c:Lcom/zte/zdm/d/c/c/a/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/zdm/d/c/c/a/g;->d:Lcom/zte/zdm/d/c/c/a/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/zdm/d/c/c/a/g;->e:Lcom/zte/zdm/d/c/c/a/g;

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/zdm/d/c/c/a/g;->f:[Lcom/zte/zdm/d/c/c/a/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/zte/zdm/d/c/c/a/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/d/c/c/a/g;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/d/c/c/a/g;
    .locals 1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/c/a/g;->valueOf(Ljava/lang/String;)Lcom/zte/zdm/d/c/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zdm/d/c/c/a/g;
    .locals 1

    const-class v0, Lcom/zte/zdm/d/c/c/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/c/a/g;

    return-object v0
.end method

.method public static values()[Lcom/zte/zdm/d/c/c/a/g;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/c/c/a/g;->f:[Lcom/zte/zdm/d/c/c/a/g;

    invoke-virtual {v0}, [Lcom/zte/zdm/d/c/c/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/c/a/g;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/zte/zdm/d/c/c/b;)Ljava/lang/String;
.end method

.method public abstract a(Lcom/zte/zdm/d/c/c/b;Lorg/xmlpull/v1/XmlPullParser;)V
.end method
