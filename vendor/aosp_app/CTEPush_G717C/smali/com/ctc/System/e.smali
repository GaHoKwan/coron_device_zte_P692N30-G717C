.class final Lcom/ctc/System/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ctc/System/DownOrUnInstalAPPService;

.field private b:Landroid/content/Intent;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/ctc/System/DownOrUnInstalAPPService;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/e;->a:Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/ctc/System/e;->b:Landroid/content/Intent;

    iput p3, p0, Lcom/ctc/System/e;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ctc/System/DownOrUnInstalAPPService;->c:Z

    iget-object v0, p0, Lcom/ctc/System/e;->a:Lcom/ctc/System/DownOrUnInstalAPPService;

    iget-object v1, p0, Lcom/ctc/System/e;->b:Landroid/content/Intent;

    iget v2, p0, Lcom/ctc/System/e;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ctc/System/DownOrUnInstalAPPService;->c:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.ctc.epush.DownloadException_Action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/System/e;->a:Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-virtual {v1, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ctc/System/e;->a:Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-static {v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Lcom/ctc/System/DownOrUnInstalAPPService;)V

    iget-object v0, p0, Lcom/ctc/System/e;->a:Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-static {v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->b(Lcom/ctc/System/DownOrUnInstalAPPService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
