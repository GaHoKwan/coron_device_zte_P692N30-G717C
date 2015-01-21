.class final Lcom/ctc/System/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ctc/System/ReportClientInfoService;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/ctc/System/ReportClientInfoService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/w;->a:Lcom/ctc/System/ReportClientInfoService;

    iput-object p2, p0, Lcom/ctc/System/w;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ctc/System/w;->a:Lcom/ctc/System/ReportClientInfoService;

    iget-object v1, p0, Lcom/ctc/System/w;->a:Lcom/ctc/System/ReportClientInfoService;

    invoke-static {v1}, Lcom/ctc/System/ReportClientInfoService;->a(Lcom/ctc/System/ReportClientInfoService;)Lcom/ctc/c/n;

    move-result-object v1

    iget-object v2, p0, Lcom/ctc/System/w;->b:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/ctc/b/b;->a(Landroid/content/Context;Lcom/ctc/c/n;Landroid/os/Handler;)Ljava/lang/String;

    return-void
.end method
