.class public final Ltmsdkobf/gj$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private jP:Ljava/lang/String;

.field private jQ:Ljava/lang/String;

.field private jV:Ljava/lang/String;

.field private synthetic nz:Ltmsdkobf/gj;


# direct methods
.method public constructor <init>(Ltmsdkobf/gj;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "postContent"

    .prologue
    const/4 v0, 0x0

    .line 837
    iput-object p1, p0, Ltmsdkobf/gj$a;->nz:Ltmsdkobf/gj;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 831
    iput-object v0, p0, Ltmsdkobf/gj$a;->jP:Ljava/lang/String;

    .line 833
    iput-object v0, p0, Ltmsdkobf/gj$a;->jQ:Ljava/lang/String;

    .line 835
    iput-object v0, p0, Ltmsdkobf/gj$a;->jV:Ljava/lang/String;

    .line 838
    iput-object p2, p0, Ltmsdkobf/gj$a;->jP:Ljava/lang/String;

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ltmsdkobf/gj;->e(Ltmsdkobf/gj;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://125.39.120.62/loc?c=1"

    .line 840
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&mars="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ltmsdkobf/gj;->f(Ltmsdkobf/gj;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 839
    iput-object v0, p0, Ltmsdkobf/gj$a;->jQ:Ljava/lang/String;

    .line 841
    return-void

    .line 840
    :cond_0
    const-string v0, "http://lbs.map.soso.com/loc?c=1"

    goto :goto_0
.end method

.method private static c([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "locResBytes"
    .parameter "charSet"

    .prologue
    .line 900
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 902
    .local v0, resBuffer:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 904
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 844
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "url: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Ltmsdkobf/gj$a;->jQ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "post: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Ltmsdkobf/gj$a;->jP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 846
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 847
    .local v1, msg:Landroid/os/Message;
    const/16 v5, 0x8

    iput v5, v1, Landroid/os/Message;->what:I

    .line 850
    :try_start_0
    iget-object v5, p0, Ltmsdkobf/gj$a;->jP:Ljava/lang/String;

    .line 851
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 850
    invoke-static {v5}, Ltmsdkobf/gn;->i([B)[B

    move-result-object v0

    .line 853
    .local v0, locateRawData:[B
    iget-object v5, p0, Ltmsdkobf/gj$a;->nz:Ltmsdkobf/gj;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;Z)V

    .line 858
    iget-object v5, p0, Ltmsdkobf/gj$a;->nz:Ltmsdkobf/gj;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;Z)V

    .line 859
    iget-object v5, p0, Ltmsdkobf/gj$a;->jQ:Ljava/lang/String;

    const-string v6, "SOSO MAP LBS SDK"

    invoke-static {v5, v6, v0}, Ltmsdkobf/gf;->a(Ljava/lang/String;Ljava/lang/String;[B)Ltmsdkobf/dx;

    move-result-object v4

    .line 860
    .local v4, result:Ltmsdkobf/dx;
    iget-object v5, p0, Ltmsdkobf/gj$a;->nz:Ltmsdkobf/gj;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;Z)V

    .line 861
    iget-object v5, v4, Ltmsdkobf/dx;->jR:[B

    invoke-static {v5}, Ltmsdkobf/gn;->j([B)[B

    move-result-object v2

    .line 862
    .local v2, netResult:[B
    iget-object v5, v4, Ltmsdkobf/dx;->jP:Ljava/lang/String;

    invoke-static {v2, v5}, Ltmsdkobf/gj$a;->c([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltmsdkobf/gj$a;->jV:Ljava/lang/String;

    .line 863
    iget-object v5, p0, Ltmsdkobf/gj$a;->jV:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 864
    const/4 v5, 0x0

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 865
    iget-object v5, p0, Ltmsdkobf/gj$a;->jV:Ljava/lang/String;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    .end local v0           #locateRawData:[B
    .end local v2           #netResult:[B
    .end local v4           #result:Ltmsdkobf/dx;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rece: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Ltmsdkobf/gj$a;->jV:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 896
    iget-object v5, p0, Ltmsdkobf/gj$a;->nz:Ltmsdkobf/gj;

    invoke-static {v5}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;)Ltmsdkobf/gj$b;

    move-result-object v5

    invoke-virtual {v5, v1}, Ltmsdkobf/gj$b;->sendMessage(Landroid/os/Message;)Z

    .line 897
    return-void

    .line 868
    .restart local v0       #locateRawData:[B
    .restart local v2       #netResult:[B
    .restart local v4       #result:Ltmsdkobf/dx;
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    iput v5, v1, Landroid/os/Message;->arg1:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 871
    .end local v0           #locateRawData:[B
    .end local v2           #netResult:[B
    .end local v4           #result:Ltmsdkobf/dx;
    :catch_0
    move-exception v5

    const/4 v3, 0x0

    .line 872
    .local v3, netTryTimes:I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x3

    if-le v3, v5, :cond_1

    .line 892
    iget-object v5, p0, Ltmsdkobf/gj$a;->nz:Ltmsdkobf/gj;

    invoke-static {v5, v8}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;Z)V

    .line 893
    iput v7, v1, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 874
    :cond_1
    const-wide/16 v5, 0x3e8

    :try_start_2
    invoke-static {v5, v6}, Ltmsdkobf/gj$a;->sleep(J)V

    .line 876
    iget-object v5, p0, Ltmsdkobf/gj$a;->jP:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Ltmsdkobf/gn;->i([B)[B

    move-result-object v0

    .line 877
    .restart local v0       #locateRawData:[B
    iget-object v5, p0, Ltmsdkobf/gj$a;->nz:Ltmsdkobf/gj;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;Z)V

    .line 878
    iget-object v5, p0, Ltmsdkobf/gj$a;->jQ:Ljava/lang/String;

    const-string v6, "SOSO MAP LBS SDK"

    invoke-static {v5, v6, v0}, Ltmsdkobf/gf;->a(Ljava/lang/String;Ljava/lang/String;[B)Ltmsdkobf/dx;

    move-result-object v4

    .line 879
    .restart local v4       #result:Ltmsdkobf/dx;
    iget-object v5, p0, Ltmsdkobf/gj$a;->nz:Ltmsdkobf/gj;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;Z)V

    .line 880
    iget-object v5, v4, Ltmsdkobf/dx;->jR:[B

    invoke-static {v5}, Ltmsdkobf/gn;->j([B)[B

    move-result-object v2

    .line 881
    .restart local v2       #netResult:[B
    iget-object v5, v4, Ltmsdkobf/dx;->jP:Ljava/lang/String;

    invoke-static {v2, v5}, Ltmsdkobf/gj$a;->c([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltmsdkobf/gj$a;->jV:Ljava/lang/String;

    .line 882
    iget-object v5, p0, Ltmsdkobf/gj$a;->jV:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 883
    const/4 v5, 0x0

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 884
    iget-object v5, p0, Ltmsdkobf/gj$a;->jV:Ljava/lang/String;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .end local v0           #locateRawData:[B
    .end local v2           #netResult:[B
    .end local v4           #result:Ltmsdkobf/dx;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 887
    .restart local v0       #locateRawData:[B
    .restart local v2       #netResult:[B
    .restart local v4       #result:Ltmsdkobf/dx;
    :cond_2
    const/4 v5, 0x1

    iput v5, v1, Landroid/os/Message;->arg1:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
