.class Lcom/zte/zdm/heartyservice/ui/m;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/zte/zdm/heartyservice/ui/InflateAnimation;


# direct methods
.method private constructor <init>(Lcom/zte/zdm/heartyservice/ui/InflateAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/heartyservice/ui/m;->a:Lcom/zte/zdm/heartyservice/ui/InflateAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zdm/heartyservice/ui/InflateAnimation;Lcom/zte/zdm/heartyservice/ui/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/heartyservice/ui/m;-><init>(Lcom/zte/zdm/heartyservice/ui/InflateAnimation;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/m;->a:Lcom/zte/zdm/heartyservice/ui/InflateAnimation;

    invoke-static {v0}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->a(Lcom/zte/zdm/heartyservice/ui/InflateAnimation;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/zdm/heartyservice/ui/m;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/m;->a:Lcom/zte/zdm/heartyservice/ui/InflateAnimation;

    invoke-static {v0}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->b(Lcom/zte/zdm/heartyservice/ui/InflateAnimation;)V

    return-void
.end method
