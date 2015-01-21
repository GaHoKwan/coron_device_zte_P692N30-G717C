.class Lcom/zte/engineer/BLightRinger$3;
.super Ljava/lang/Thread;
.source "BLightRinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/BLightRinger;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/BLightRinger;


# direct methods
.method constructor <init>(Lcom/zte/engineer/BLightRinger;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/zte/engineer/BLightRinger$3;->this$0:Lcom/zte/engineer/BLightRinger;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    const-string v1, "BLightTest"

    const-string v2, "public void run()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/zte/engineer/BLightRinger$3;->this$0:Lcom/zte/engineer/BLightRinger;

    #getter for: Lcom/zte/engineer/BLightRinger;->mMediaP:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/zte/engineer/BLightRinger;->access$100(Lcom/zte/engineer/BLightRinger;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 144
    const-string v1, "BLightTest"

    const-string v2, "mMediaP.prepare()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/zte/engineer/BLightRinger$3;->this$0:Lcom/zte/engineer/BLightRinger;

    #getter for: Lcom/zte/engineer/BLightRinger;->mMediaP:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/zte/engineer/BLightRinger;->access$100(Lcom/zte/engineer/BLightRinger;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 153
    iget-object v1, p0, Lcom/zte/engineer/BLightRinger$3;->this$0:Lcom/zte/engineer/BLightRinger;

    #getter for: Lcom/zte/engineer/BLightRinger;->mMediaP:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/zte/engineer/BLightRinger;->access$100(Lcom/zte/engineer/BLightRinger;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 154
    const-string v1, "BLightTest"

    const-string v2, "mMediaP.start()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
