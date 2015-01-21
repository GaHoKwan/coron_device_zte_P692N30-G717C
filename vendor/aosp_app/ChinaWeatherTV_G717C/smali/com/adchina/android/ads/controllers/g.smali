.class final Lcom/adchina/android/ads/controllers/g;
.super Ljava/lang/Thread;


# instance fields
.field public a:Z

.field final synthetic b:Lcom/adchina/android/ads/controllers/BaseController;


# direct methods
.method public constructor <init>(Lcom/adchina/android/ads/controllers/BaseController;)V
    .locals 1

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/g;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    invoke-static {}, Lcom/adchina/android/ads/controllers/BaseController;->q()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    invoke-static {v0}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lcom/adchina/android/ads/controllers/BaseController;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/BaseController;->e()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    iget-object v0, v0, Lcom/adchina/android/ads/controllers/BaseController;->O:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    iget-object v0, v0, Lcom/adchina/android/ads/controllers/BaseController;->O:Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    new-instance v1, Lcom/adchina/android/ads/h;

    invoke-direct {v1}, Lcom/adchina/android/ads/h;-><init>()V

    iput-object v1, v0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    iget-object v0, v0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "AdChina_"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    iget-object v2, v2, Lcom/adchina/android/ads/controllers/BaseController;->Q:Ljava/lang/StringBuffer;

    aput-object v2, v1, v5

    const-string v2, ".txt"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    iget-object v0, v0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "AdChinaOutput_"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    iget-object v2, v2, Lcom/adchina/android/ads/controllers/BaseController;->Q:Ljava/lang/StringBuffer;

    aput-object v2, v1, v5

    const-string v2, ".txt"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    iget-object v0, v0, Lcom/adchina/android/ads/controllers/BaseController;->X:Lcom/adchina/android/ads/r;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    iget-object v1, v1, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/r;->a(Lcom/adchina/android/ads/h;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    sget-object v1, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lcom/adchina/android/ads/p;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/g;->b:Lcom/adchina/android/ads/controllers/BaseController;

    invoke-virtual {v0, p0}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lcom/adchina/android/ads/controllers/g;)V

    return-void
.end method
