.class Ltmsdkobf/iu$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/iu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic sg:Ltmsdkobf/iu;


# direct methods
.method public constructor <init>(Ltmsdkobf/iu;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 64
    iput-object p1, p0, Ltmsdkobf/iu$a;->sg:Ltmsdkobf/iu;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 70
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v1, p0, Ltmsdkobf/iu$a;->sg:Ltmsdkobf/iu;

    iget-object v2, p0, Ltmsdkobf/iu$a;->sg:Ltmsdkobf/iu;

    invoke-static {v2}, Ltmsdkobf/iu;->a(Ltmsdkobf/iu;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltmsdkobf/iu$a;->sg:Ltmsdkobf/iu;

    invoke-static {v3}, Ltmsdkobf/iu;->b(Ltmsdkobf/iu;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ltmsdkobf/iu;->beginMmsConnectivity(Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, rst:I
    if-nez v0, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ltmsdkobf/iu$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Ltmsdkobf/iu$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 80
    .end local v0           #rst:I
    :pswitch_1
    iget-object v1, p0, Ltmsdkobf/iu$a;->sg:Ltmsdkobf/iu;

    invoke-static {v1}, Ltmsdkobf/iu;->c(Ltmsdkobf/iu;)I

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Ltmsdkobf/iu$a;->sg:Ltmsdkobf/iu;

    invoke-static {v1}, Ltmsdkobf/iu;->d(Ltmsdkobf/iu;)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
