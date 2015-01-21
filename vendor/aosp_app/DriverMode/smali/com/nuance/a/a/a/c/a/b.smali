.class public abstract Lcom/nuance/a/a/a/c/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lcom/nuance/a/a/a/a/b/a/b$a;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/nuance/a/a/a/c/a/d;

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/c/a/b;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/c/a/b;->c:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/a/a/a/c/a/b;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/a/a/a/c/a/b;->a:Landroid/content/Context;

    new-instance v0, Lcom/nuance/a/a/a/c/a/d;

    iget-object v1, p0, Lcom/nuance/a/a/a/c/a/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/c/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/a/a/a/c/a/b;->b:Lcom/nuance/a/a/a/c/a/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/nuance/a/a/a/c/a/b;
    .locals 2

    sget v0, Lcom/nuance/a/a/a/c/a/a;->a:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    sget-boolean v1, Lcom/nuance/a/a/a/c/a/a;->d:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/a/a/a/c/a/g;

    invoke-direct {v0, p0}, Lcom/nuance/a/a/a/c/a/g;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    new-instance v0, Lcom/nuance/a/a/a/c/a/h;

    invoke-direct {v0, p0}, Lcom/nuance/a/a/a/c/a/h;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nuance/a/a/a/c/a/f;

    invoke-direct {v0, p0}, Lcom/nuance/a/a/a/c/a/f;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/b;->b:Lcom/nuance/a/a/a/c/a/d;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/c/a/d;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/b;->b:Lcom/nuance/a/a/a/c/a/d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/b;->b:Lcom/nuance/a/a/a/c/a/d;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/c/a/d;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/a/a/a/c/a/b;->b:Lcom/nuance/a/a/a/c/a/d;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
