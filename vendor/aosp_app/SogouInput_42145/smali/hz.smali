.class Lhz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lhr;


# direct methods
.method constructor <init>(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 972
    iput-object p1, p0, Lhz;->a:Lhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 974
    iget-object v0, p0, Lhz;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lhz;->a:Lhr;

    invoke-static {v1}, Lhr;->c(Lhr;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lhz;->a:Lhr;

    invoke-static {v0}, Lhr;->c(Lhr;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhz;->a:Lhr;

    invoke-static {v0}, Lhr;->c(Lhr;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lhz;->a:Lhr;

    invoke-static {v1}, Lhr;->c(Lhr;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 979
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 980
    iget-object v1, p0, Lhz;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 985
    :cond_0
    return-void
.end method
