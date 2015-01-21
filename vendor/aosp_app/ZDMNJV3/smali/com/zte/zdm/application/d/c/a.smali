.class public Lcom/zte/zdm/application/d/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/b/c;


# static fields
.field private static final b:Ljava/lang/String; = "ZDMLog"

.field private static final c:Ljava/lang/String; = "zdm.log"

.field private static final d:I = 0x200000


# instance fields
.field a:Ljava/io/OutputStreamWriter;

.field private e:Lcom/zte/zdm/application/d/c/c;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/d/c/a;->f:Z

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/d/c/a;->e:Lcom/zte/zdm/application/d/c/c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zdm/application/d/c/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/d/c/a;->e:Lcom/zte/zdm/application/d/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/zdm/application/d/c/c;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2, v1, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/d/c/a;->e:Lcom/zte/zdm/application/d/c/c;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zdm/application/d/c/a;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/d/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/application/d/c/c;-><init>(Lcom/zte/zdm/application/d/c/a;Lcom/zte/zdm/application/d/c/b;)V

    iput-object v0, p0, Lcom/zte/zdm/application/d/c/a;->e:Lcom/zte/zdm/application/d/c/c;

    iget-object v0, p0, Lcom/zte/zdm/application/d/c/a;->e:Lcom/zte/zdm/application/d/c/c;

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/d/c/c;->a(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    const-string v1, "ZDMLog"

    invoke-direct {p0, v1, v0, p2}, Lcom/zte/zdm/application/d/c/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/d/c/a;->f:Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/d/c/a;->e:Lcom/zte/zdm/application/d/c/c;

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/c/c;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/d/c/a;->e:Lcom/zte/zdm/application/d/c/c;

    return-void
.end method
