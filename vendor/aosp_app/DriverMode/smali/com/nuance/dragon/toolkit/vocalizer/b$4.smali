.class final Lcom/nuance/dragon/toolkit/vocalizer/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceLoadListener;

.field final synthetic d:Lcom/nuance/dragon/toolkit/vocalizer/b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/b;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$4;->d:Lcom/nuance/dragon/toolkit/vocalizer/b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$4;->c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$4;->d:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->a(Lcom/nuance/dragon/toolkit/vocalizer/b;)Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$4;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$4;->d:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->b(Lcom/nuance/dragon/toolkit/vocalizer/b;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/vocalizer/b$4$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/vocalizer/b$4$1;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/b$4;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
