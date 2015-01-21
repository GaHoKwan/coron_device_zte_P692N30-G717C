.class Ltt;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ltm;


# direct methods
.method private constructor <init>(Ltm;)V
    .locals 0
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Ltt;->a:Ltm;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltm;Ltn;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 713
    invoke-direct {p0, p1}, Ltt;-><init>(Ltm;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 716
    iget-object v0, p0, Ltt;->a:Ltm;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltm;->a(Ltm;J)J

    .line 718
    :try_start_0
    iget-object v0, p0, Ltt;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    iget-object v0, p0, Ltt;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Lcom/sohu/inputmethod/multimedia/TimerRecView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->b()V

    .line 732
    :goto_0
    iget-object v0, p0, Ltt;->a:Ltm;

    invoke-static {v0}, Ltm;->b(Ltm;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 733
    iget-object v0, p0, Ltt;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Ltt;->a:Ltm;

    invoke-static {v1}, Ltm;->a(Ltm;)[B

    move-result-object v1

    iget-object v2, p0, Ltt;->a:Ltm;

    invoke-static {v2}, Ltm;->d(Ltm;)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 734
    if-gtz v0, :cond_1

    .line 745
    :cond_0
    iget-object v0, p0, Ltt;->a:Ltm;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltm;->b(Ltm;J)J

    .line 746
    iget-object v0, p0, Ltt;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Lcom/sohu/inputmethod/multimedia/TimerRecView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->c()V

    .line 749
    :try_start_1
    iget-object v0, p0, Ltt;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 750
    iget-object v0, p0, Ltt;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 754
    :goto_1
    iget-object v0, p0, Ltt;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 755
    iget-object v0, p0, Ltt;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 756
    iget-object v0, p0, Ltt;->a:Ltm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltm;->a(Ltm;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 757
    iget-object v0, p0, Ltt;->a:Ltm;

    iget-object v0, v0, Ltm;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 759
    :goto_2
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 722
    :try_start_2
    iget-object v1, p0, Ltt;->a:Ltm;

    invoke-static {v1}, Ltm;->a(Ltm;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 726
    :goto_3
    iget-object v0, p0, Ltt;->a:Ltm;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ltm;->a(Ltm;I)I

    .line 727
    iget-object v0, p0, Ltt;->a:Ltm;

    iget-object v0, v0, Ltm;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 723
    :catch_1
    move-exception v1

    .line 724
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    .line 738
    :cond_1
    :try_start_3
    iget-object v1, p0, Ltt;->a:Ltm;

    invoke-static {v1}, Ltm;->a(Ltm;)Ljava/io/FileOutputStream;

    move-result-object v1

    iget-object v2, p0, Ltt;->a:Ltm;

    invoke-static {v2}, Ltm;->a(Ltm;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 741
    :catch_2
    move-exception v0

    .line 742
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 751
    :catch_3
    move-exception v0

    .line 752
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
