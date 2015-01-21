.class Lrh;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lqy;

.field a:Lsg;


# direct methods
.method public constructor <init>(Lqy;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lrh;->a:Lqy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1146
    iput-object p2, p0, Lrh;->a:Lsg;

    .line 1147
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1151
    iget-object v0, p0, Lrh;->a:Lsg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrh;->a:Lsg;

    iget-object v0, v0, Lsg;->a:Lsl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrh;->a:Lsg;

    iget v0, v0, Lsg;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-object v0, p0, Lrh;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1153
    const-string v1, "UploadMultiMediaThread"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 1154
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1158
    const/4 v2, 0x0

    .line 1159
    iget-object v0, p0, Lrh;->a:Lsg;

    iget v3, v0, Lsg;->b:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lsg;->b:I

    .line 1163
    :try_start_0
    iget-object v0, p0, Lrh;->a:Lsg;

    iget-object v0, v0, Lsg;->a:Lsl;

    iget-object v3, p0, Lrh;->a:Lsg;

    invoke-interface {v0, v2, v3}, Lsl;->a(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 1167
    iget-object v0, p0, Lrh;->a:Lsg;

    iget v0, v0, Lsg;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 1168
    iget-object v0, p0, Lrh;->a:Lsg;

    iget-object v0, v0, Lsg;->a:Lsl;

    iget-object v3, p0, Lrh;->a:Lsg;

    invoke-interface {v0, v2, v3}, Lsl;->b(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 1176
    iget-object v0, p0, Lrh;->a:Lsg;

    iget-object v0, v0, Lsg;->a:Lsl;

    iget-object v3, p0, Lrh;->a:Lsg;

    invoke-interface {v0, v2, v3}, Lsl;->c(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 1183
    iget-object v0, p0, Lrh;->a:Lsg;

    iget-boolean v0, v0, Lsg;->a:Z

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lrh;->a:Lsg;

    iget-object v0, v0, Lsg;->a:Lsl;

    invoke-interface {v0}, Lsl;->a()Z

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lrh;->a:Lsg;

    iget-boolean v0, v0, Lsg;->b:Z

    if-ne v0, v4, :cond_2

    .line 1189
    invoke-static {}, Lrf;->a()Lrf;

    move-result-object v0

    iget-object v3, p0, Lrh;->a:Lsg;

    invoke-virtual {v0, v3}, Lrf;->a(Lsg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :cond_2
    iget-object v0, p0, Lrh;->a:Lsg;

    iget v2, v0, Lsg;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lsg;->b:I

    .line 1199
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1201
    :goto_1
    iget-object v0, p0, Lrh;->a:Lsg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrh;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Z

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lrh;->a:Lsg;

    iget-object v0, v0, Lsg;->a:Lsl;

    invoke-interface {v0}, Lsl;->a()Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1202
    iget-object v0, p0, Lrh;->a:Lsg;

    iget-object v0, v0, Lsg;->a:Lsk;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lrh;->a:Lsg;

    iget-object v0, v0, Lsg;->a:Lsk;

    iget-object v1, p0, Lrh;->a:Lsg;

    invoke-interface {v0, v1}, Lsk;->a(Lsg;)V

    goto/16 :goto_0

    .line 1170
    :cond_3
    :try_start_1
    iget-object v0, p0, Lrh;->a:Lsg;

    iget-object v0, v0, Lsg;->a:Lsl;

    iget-object v3, p0, Lrh;->a:Lsg;

    invoke-interface {v0, v2, v3}, Lsl;->d(Lorg/apache/http/client/HttpClient;Lsg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1198
    iget-object v0, p0, Lrh;->a:Lsg;

    iget v2, v0, Lsg;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lsg;->b:I

    .line 1199
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1192
    :catch_0
    move-exception v0

    .line 1195
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1196
    iget-object v0, p0, Lrh;->a:Lsg;

    iget-object v0, v0, Lsg;->a:Lsl;

    iget-object v3, p0, Lrh;->a:Lsg;

    invoke-interface {v0, v2, v3}, Lsl;->e(Lorg/apache/http/client/HttpClient;Lsg;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1198
    iget-object v0, p0, Lrh;->a:Lsg;

    iget v2, v0, Lsg;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lsg;->b:I

    .line 1199
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 1198
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lrh;->a:Lsg;

    iget v3, v2, Lsg;->b:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lsg;->b:I

    .line 1199
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
