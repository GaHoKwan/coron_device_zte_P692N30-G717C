.class abstract Lcom/powermo/SmartBar/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/powermo/SmartBar/bz;


# direct methods
.method private constructor <init>(Lcom/powermo/SmartBar/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/ch;->d:Lcom/powermo/SmartBar/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/SmartBar/bz;Lcom/powermo/SmartBar/ch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/ch;-><init>(Lcom/powermo/SmartBar/bz;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/ch;->d:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->c(Lcom/powermo/SmartBar/bz;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ch;->d:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->c(Lcom/powermo/SmartBar/bz;)Landroid/os/Handler;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
