.class final Lcom/ctc/System/o;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/ctc/System/PushAPPService;


# direct methods
.method private constructor <init>(Lcom/ctc/System/PushAPPService;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/o;->a:Lcom/ctc/System/PushAPPService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ctc/System/PushAPPService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ctc/System/o;-><init>(Lcom/ctc/System/PushAPPService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ctc/c/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/System/o;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->a(Lcom/ctc/System/PushAPPService;)V

    goto :goto_0
.end method
