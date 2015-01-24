.class Lcom/ant/liao/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic E:Lcom/ant/liao/GifView;


# direct methods
.method constructor <init>(Lcom/ant/liao/GifView;)V
    .locals 0

    iput-object p1, p0, Lcom/ant/liao/c;->E:Lcom/ant/liao/GifView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/ant/liao/c;->E:Lcom/ant/liao/GifView;

    invoke-virtual {v0}, Lcom/ant/liao/GifView;->invalidate()V

    return-void
.end method
