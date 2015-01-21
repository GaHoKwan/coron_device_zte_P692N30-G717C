.class Lcom/android/server/wm/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/server/wm/f;


# direct methods
.method constructor <init>(Lcom/android/server/wm/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/h;->a:Lcom/android/server/wm/f;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/h;->a:Lcom/android/server/wm/f;

    invoke-static {v0}, Lcom/android/server/wm/f;->a(Lcom/android/server/wm/f;)V

    return-void
.end method
