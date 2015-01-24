.class Lcom/powermo/SmartBar/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bz;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/cb;->a:Lcom/powermo/SmartBar/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/cb;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->a(Lcom/powermo/SmartBar/bz;)Lcom/powermo/SmartBar/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/cf;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cb;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->b(Lcom/powermo/SmartBar/bz;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cb;->a:Lcom/powermo/SmartBar/bz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/bz;->a(I)V

    :cond_0
    return-void
.end method
