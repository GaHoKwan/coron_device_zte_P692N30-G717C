.class Lcom/powermo/SmartBar/cu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/ct;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/cu;->a:Lcom/powermo/SmartBar/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/cu;->a:Lcom/powermo/SmartBar/ct;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powermo/SmartBar/ct;->g:Z

    return-void
.end method
