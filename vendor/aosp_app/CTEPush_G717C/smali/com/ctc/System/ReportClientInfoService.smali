.class public Lcom/ctc/System/ReportClientInfoService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/ctc/c/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ctc/System/ReportClientInfoService;)Lcom/ctc/c/n;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/ReportClientInfoService;->a:Lcom/ctc/c/n;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ctc/System/ReportClientInfoService;->a:Lcom/ctc/c/n;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    new-instance v0, Lcom/ctc/System/u;

    invoke-direct {v0, p0}, Lcom/ctc/System/u;-><init>(Lcom/ctc/System/ReportClientInfoService;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ctc/System/w;

    invoke-direct {v2, p0, v0}, Lcom/ctc/System/w;-><init>(Lcom/ctc/System/ReportClientInfoService;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
