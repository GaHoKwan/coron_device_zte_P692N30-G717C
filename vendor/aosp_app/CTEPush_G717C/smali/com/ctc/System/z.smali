.class final Lcom/ctc/System/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ctc/System/y;


# direct methods
.method constructor <init>(Lcom/ctc/System/y;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/z;->a:Lcom/ctc/System/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ctc/c/g;->i:Z

    iget-object v0, p0, Lcom/ctc/System/z;->a:Lcom/ctc/System/y;

    invoke-static {v0}, Lcom/ctc/System/y;->a(Lcom/ctc/System/y;)V

    return-void
.end method
