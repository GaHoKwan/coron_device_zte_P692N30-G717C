.class public Lcom/powermo/smartshow/frameworks/i;
.super Ljava/lang/Object;


# static fields
.field public static final CMD_HEAD:Ljava/lang/String; = "powermo"

.field public static final CMD_MULTI_WIN:Ljava/lang/String; = "multi_win"

.field public static final CMD_SCREEN_SIZE:Ljava/lang/String; = "screen_size"

.field public static final CMD_SHOW_SIZE:Ljava/lang/String; = "show_size"

.field public static final CMD_UPDATE_MODE:Ljava/lang/String; = "update_mode"

.field public static final CMD_UPDATE_ROLE:Ljava/lang/String; = "update_role"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/io/OutputStreamWriter;

.field private e:Ljava/io/PrintWriter;

.field private final f:Lcom/powermo/smartshow/frameworks/k;

.field private g:Ljava/net/InetAddress;

.field private h:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/powermo/smartshow/frameworks/i;->d:Ljava/io/OutputStreamWriter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/smartshow/frameworks/i;->c:I

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->g:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/i;->g:Ljava/net/InetAddress;

    invoke-direct {v0, v1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->h:Ljava/net/Socket;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/i;->h:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->d:Ljava/io/OutputStreamWriter;

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/i;->b:Ljava/lang/String;

    new-instance v0, Lcom/powermo/smartshow/frameworks/k;

    invoke-direct {v0, p0, v2}, Lcom/powermo/smartshow/frameworks/k;-><init>(Lcom/powermo/smartshow/frameworks/i;Lcom/powermo/smartshow/frameworks/j;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->f:Lcom/powermo/smartshow/frameworks/k;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->f:Lcom/powermo/smartshow/frameworks/k;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/k;->start()V

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->f:Lcom/powermo/smartshow/frameworks/k;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/k;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/i;->d:Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->e:Ljava/io/PrintWriter;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/i;->a:Ljava/lang/String;

    const-string v0, "RemoteClient"

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->e:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "powermo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->f:Lcom/powermo/smartshow/frameworks/k;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/k;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->f:Lcom/powermo/smartshow/frameworks/k;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/k;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/i;->c:I

    return-void
.end method

.method public a(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen_size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powermo/smartshow/frameworks/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILandroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multi_win:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powermo/smartshow/frameworks/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/i;->c:I

    return v0
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update_mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powermo/smartshow/frameworks/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update_role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powermo/smartshow/frameworks/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/i;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method
