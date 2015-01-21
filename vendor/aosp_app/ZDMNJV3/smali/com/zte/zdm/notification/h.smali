.class public Lcom/zte/zdm/notification/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static e:Lcom/zte/zdm/application/a/a;

.field private static f:I

.field private static g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/zte/zdm/notification/g;
    .locals 3

    invoke-static {}, Lcom/zte/zdm/notification/h;->a()V

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown Notification Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/zte/zdm/notification/b;

    sget v1, Lcom/zte/zdm/notification/h;->g:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zte/zdm/notification/b;-><init>(IZ)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/zte/zdm/notification/i;

    sget v1, Lcom/zte/zdm/notification/h;->f:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/zdm/notification/i;-><init>(IZ)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/zte/zdm/notification/a;

    invoke-direct {v0}, Lcom/zte/zdm/notification/a;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/zte/zdm/notification/f;

    invoke-direct {v0}, Lcom/zte/zdm/notification/f;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a()V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/notification/h;->e:Lcom/zte/zdm/application/a/a;

    sget-object v0, Lcom/zte/zdm/notification/h;->e:Lcom/zte/zdm/application/a/a;

    const-string v1, "notif_interactive_timeout"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/zte/zdm/notification/h;->f:I

    sget-object v0, Lcom/zte/zdm/notification/h;->e:Lcom/zte/zdm/application/a/a;

    const-string v1, "notif_informative_timeout"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/zte/zdm/notification/h;->g:I

    return-void
.end method
