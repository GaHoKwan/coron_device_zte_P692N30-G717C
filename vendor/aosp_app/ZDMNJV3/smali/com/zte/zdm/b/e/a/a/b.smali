.class public abstract Lcom/zte/zdm/b/e/a/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static c:Lcom/zte/zdm/b/e/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/b/e/a/a/b;->c:Lcom/zte/zdm/b/e/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/zte/zdm/b/e/a/a/b;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v0, Lcom/zte/zdm/b/e/a/a/b;->c:Lcom/zte/zdm/b/e/a/a/b;

    return-object v0

    :pswitch_1
    invoke-static {p1}, Lcom/zte/zdm/b/e/a/a/d;->a(Ljava/lang/String;)Lcom/zte/zdm/b/e/a/a/c;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/b/e/a/a/b;->c:Lcom/zte/zdm/b/e/a/a/b;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method
