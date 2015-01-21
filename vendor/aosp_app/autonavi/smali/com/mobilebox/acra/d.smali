.class Lcom/mobilebox/acra/d;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/mobilebox/acra/c;


# direct methods
.method constructor <init>(Lcom/mobilebox/acra/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mobilebox/acra/d;->a:Lcom/mobilebox/acra/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/mobilebox/acra/d;->a:Lcom/mobilebox/acra/c;

    invoke-static {v0}, Lcom/mobilebox/acra/c;->a(Lcom/mobilebox/acra/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mobilebox/acra/d;->a:Lcom/mobilebox/acra/c;

    invoke-static {v1}, Lcom/mobilebox/acra/c;->b(Lcom/mobilebox/acra/c;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RES_TOAST_TEXT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
