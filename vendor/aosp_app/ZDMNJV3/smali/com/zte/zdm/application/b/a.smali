.class public Lcom/zte/zdm/application/b/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x0

.field public static final b:I = 0x1e

.field public static c:Z


# instance fields
.field public d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcom/zte/zdm/application/b/a;->a:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/b/a;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/application/b/b;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/b;-><init>(Lcom/zte/zdm/application/b/a;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/a;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static b()Z
    .locals 2

    sget v0, Lcom/zte/zdm/application/b/a;->a:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/zdm/application/b/a;->c:Z

    :goto_0
    sget-boolean v0, Lcom/zte/zdm/application/b/a;->c:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/b/a;->c:Z

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    sget v0, Lcom/zte/zdm/application/b/a;->a:I

    return v0
.end method
