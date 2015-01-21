.class public Lcom/autonavi/xmgd/g/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://mlbs.autonavi.com/model"

    iput-object v0, p0, Lcom/autonavi/xmgd/g/c;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/autonavi/xmgd/g/c;->b:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/g/c;->c:Z

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/autonavi/xmgd/g/c;->d:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/g/c;->e:Landroid/os/Handler;

    return-void
.end method
