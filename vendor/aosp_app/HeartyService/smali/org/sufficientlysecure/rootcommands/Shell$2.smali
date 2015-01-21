.class Lorg/sufficientlysecure/rootcommands/Shell$2;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/rootcommands/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/rootcommands/Shell;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/rootcommands/Shell;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lorg/sufficientlysecure/rootcommands/Shell$2;->this$0:Lorg/sufficientlysecure/rootcommands/Shell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell$2;->this$0:Lorg/sufficientlysecure/rootcommands/Shell;

    #calls: Lorg/sufficientlysecure/rootcommands/Shell;->readOutput()V
    invoke-static {v1}, Lorg/sufficientlysecure/rootcommands/Shell;->access$100(Lorg/sufficientlysecure/rootcommands/Shell;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/io/IOException;
    const-string v1, "RootCommands"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lorg/sufficientlysecure/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "RootCommands"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lorg/sufficientlysecure/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
