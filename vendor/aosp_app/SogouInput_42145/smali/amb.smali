.class public Lamb;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:J

.field private a:Landroid/os/Message;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lamb;->a:Ljava/util/List;

    .line 26
    new-instance v0, Lrr;

    iget-object v1, p0, Lamb;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamb;->a:Lrr;

    .line 28
    iput-object p4, p0, Lamb;->a:Landroid/os/Message;

    .line 29
    iput-object p5, p0, Lamb;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lamb;->a:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v1, "MMS_PART_SIZE"

    iget-wide v2, p0, Lamb;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 50
    iget-object v1, p0, Lamb;->a:Landroid/os/Message;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lamb;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 52
    return-void
.end method


# virtual methods
.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lamb;->a:Lrr;

    iget-object v1, p0, Lamb;->a:Ljava/util/List;

    iget-object v2, p0, Lamb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lrr;->a(Ljava/util/List;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lamb;->a:J

    .line 34
    return-void
.end method

.method public c(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lamb;->a()V

    .line 44
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lamb;->a:J

    .line 56
    invoke-direct {p0}, Lamb;->a()V

    .line 57
    return-void
.end method
