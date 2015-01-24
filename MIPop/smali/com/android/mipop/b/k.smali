.class Lcom/android/mipop/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fP:Lcom/android/mipop/b/l;


# direct methods
.method constructor <init>(Lcom/android/mipop/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/b/k;->fP:Lcom/android/mipop/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mipop/b/k;->fP:Lcom/android/mipop/b/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mipop/b/l;->hl:Z

    iget-object v0, p0, Lcom/android/mipop/b/k;->fP:Lcom/android/mipop/b/l;

    invoke-virtual {v0}, Lcom/android/mipop/b/l;->q()V

    return-void
.end method
