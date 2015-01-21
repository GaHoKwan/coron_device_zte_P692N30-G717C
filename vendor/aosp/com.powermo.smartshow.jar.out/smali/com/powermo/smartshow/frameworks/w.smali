.class Lcom/powermo/smartshow/frameworks/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/frameworks/v;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/frameworks/v;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/w;->a:Lcom/powermo/smartshow/frameworks/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/w;->a:Lcom/powermo/smartshow/frameworks/v;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->b(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Wifidisplay is connecting "

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
