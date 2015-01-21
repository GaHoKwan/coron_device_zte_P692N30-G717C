.class public final Lcom/zte/zdm/application/d/g/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field private static final c:Lcom/zte/zdm/application/d/g/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/d/g/e;

    invoke-direct {v0}, Lcom/zte/zdm/application/d/g/e;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/d/g/e;->c:Lcom/zte/zdm/application/d/g/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/zte/zdm/application/d/g/e;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/d/g/e;->c:Lcom/zte/zdm/application/d/g/e;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Lcom/zte/zdm/application/d/g/d;
    .locals 2

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown mergeType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/zte/zdm/application/d/g/a;

    invoke-direct {v0, p1}, Lcom/zte/zdm/application/d/g/a;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/zte/zdm/application/d/g/b;

    invoke-direct {v0, p1}, Lcom/zte/zdm/application/d/g/b;-><init>(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
