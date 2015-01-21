.class public Lcom/zte/zdm/omacp/application/b/b;
.super Landroid/os/Handler;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4


# instance fields
.field f:Ljava/lang/StringBuffer;

.field private g:Lcom/zte/zdm/omacp/b;

.field private h:Lcom/zte/zdm/omacp/c;

.field private i:Lcom/zte/zdm/omacp/c/b;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/omacp/b;Lcom/zte/zdm/omacp/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/omacp/application/b/b;->g:Lcom/zte/zdm/omacp/b;

    iput-object p2, p0, Lcom/zte/zdm/omacp/application/b/b;->h:Lcom/zte/zdm/omacp/c;

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userpin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "securityVerity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/omacp/application/b/b;->i:Lcom/zte/zdm/omacp/c/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/b/b;->h:Lcom/zte/zdm/omacp/c;

    invoke-virtual {v1}, Lcom/zte/zdm/omacp/c;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/omacp/application/b/b;->i:Lcom/zte/zdm/omacp/c/b;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v3, p0, Lcom/zte/zdm/omacp/application/b/b;->h:Lcom/zte/zdm/omacp/c;

    invoke-virtual {v3}, Lcom/zte/zdm/omacp/c;->a()[B

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/zte/zdm/omacp/c/b;->a([B[B)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compute hmac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMA CP  hmac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/omacp/application/b/b;->i:Lcom/zte/zdm/omacp/c/b;

    invoke-virtual {v2, v1, v0}, Lcom/zte/zdm/omacp/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/zte/zdm/omacp/application/b/b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Lcom/zte/zdm/omacp/c;)V
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/zte/zdm/omacp/c;->c()I

    move-result v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v2, "no securityType"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "securityVerity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/omacp/application/b/b;->i:Lcom/zte/zdm/omacp/c/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",securityType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/zte/zdm/omacp/application/b/b;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_0
    new-instance v2, Lcom/zte/zdm/omacp/c/c;

    invoke-direct {v2}, Lcom/zte/zdm/omacp/c/c;-><init>()V

    iput-object v2, p0, Lcom/zte/zdm/omacp/application/b/b;->i:Lcom/zte/zdm/omacp/c/b;

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :pswitch_1
    new-instance v2, Lcom/zte/zdm/omacp/c/a;

    invoke-direct {v2}, Lcom/zte/zdm/omacp/c/a;-><init>()V

    iput-object v2, p0, Lcom/zte/zdm/omacp/application/b/b;->i:Lcom/zte/zdm/omacp/c/b;

    iget-object v2, p0, Lcom/zte/zdm/omacp/application/b/b;->i:Lcom/zte/zdm/omacp/c/b;

    invoke-virtual {v2, p1}, Lcom/zte/zdm/omacp/c/b;->a(Lcom/zte/zdm/omacp/c;)I

    move-result v2

    iput v3, v1, Landroid/os/Message;->what:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_0

    :pswitch_2
    iput v3, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/b;->f:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknow msg"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/b;->g:Lcom/zte/zdm/omacp/b;

    invoke-interface {v0}, Lcom/zte/zdm/omacp/b;->a()I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/b;->h:Lcom/zte/zdm/omacp/c;

    invoke-direct {p0, v0}, Lcom/zte/zdm/omacp/application/b/b;->a(Lcom/zte/zdm/omacp/c;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/omacp/application/b/b;->f:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/b;->g:Lcom/zte/zdm/omacp/b;

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/b/b;->f:Ljava/lang/StringBuffer;

    invoke-interface {v0, v1}, Lcom/zte/zdm/omacp/b;->a(Ljava/lang/StringBuffer;)I

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/zte/zdm/omacp/application/b/b;->a(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ask for setup error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/b;->g:Lcom/zte/zdm/omacp/b;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/zte/zdm/omacp/b;->a(I)V

    goto :goto_0

    :cond_0
    const-string v0, "install config"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/omacp/a;->a()Lcom/zte/zdm/omacp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/b/b;->h:Lcom/zte/zdm/omacp/c;

    invoke-virtual {v1}, Lcom/zte/zdm/omacp/c;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/omacp/a;->b([B)I

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/b/b;->g:Lcom/zte/zdm/omacp/b;

    invoke-interface {v1, v0}, Lcom/zte/zdm/omacp/b;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
