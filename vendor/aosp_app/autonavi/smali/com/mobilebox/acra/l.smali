.class Lcom/mobilebox/acra/l;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/mobilebox/acra/k;


# direct methods
.method constructor <init>(Lcom/mobilebox/acra/k;)V
    .locals 0

    iput-object p1, p0, Lcom/mobilebox/acra/l;->a:Lcom/mobilebox/acra/k;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/mobilebox/acra/l;->a:Lcom/mobilebox/acra/k;

    invoke-static {v0}, Lcom/mobilebox/acra/k;->a(Lcom/mobilebox/acra/k;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u62b1\u6b49\uff0c\u5bfc\u822a\u8f6f\u4ef6\u51fa\u73b0\u5f02\u5e38\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
