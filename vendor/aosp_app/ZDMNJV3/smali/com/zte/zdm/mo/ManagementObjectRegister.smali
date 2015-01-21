.class public Lcom/zte/zdm/mo/ManagementObjectRegister;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "NodeIoHandler"

.field public static final b:Ljava/lang/String; = "NodeExecuteHandler"

.field public static c:Ljava/util/HashMap; = null

.field private static final d:I = 0x1

.field private static e:Lcom/zte/zdm/mo/ManagementObjectRegister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/mo/ManagementObjectRegister;

    invoke-direct {v0}, Lcom/zte/zdm/mo/ManagementObjectRegister;-><init>()V

    sput-object v0, Lcom/zte/zdm/mo/ManagementObjectRegister;->e:Lcom/zte/zdm/mo/ManagementObjectRegister;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/zdm/mo/ManagementObjectRegister;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mo/ManagementObjectRegister;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public static b()Lcom/zte/zdm/mo/ManagementObjectRegister;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mo/ManagementObjectRegister;->e:Lcom/zte/zdm/mo/ManagementObjectRegister;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/zte/zdm/mo/ManagementObjectRegister;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public a([[Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v0

    aget-object v3, v3, v2

    aget-object v4, p1, v0

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/zte/zdm/mo/ManagementObjectRegister;->a(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
