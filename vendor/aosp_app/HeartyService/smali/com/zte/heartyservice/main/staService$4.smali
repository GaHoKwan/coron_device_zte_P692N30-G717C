.class Lcom/zte/heartyservice/main/staService$4;
.super Landroid/content/BroadcastReceiver;
.source "staService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/staService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/staService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/staService;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/zte/heartyservice/main/staService$4;->this$0:Lcom/zte/heartyservice/main/staService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "mContext"
    .parameter "intent"

    .prologue
    .line 542
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 545
    iget-object v4, p0, Lcom/zte/heartyservice/main/staService$4;->this$0:Lcom/zte/heartyservice/main/staService;

    #calls: Lcom/zte/heartyservice/main/staService;->a()V
    invoke-static {v4}, Lcom/zte/heartyservice/main/staService;->access$1000(Lcom/zte/heartyservice/main/staService;)V

    .line 567
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 546
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 548
    iget-object v4, p0, Lcom/zte/heartyservice/main/staService$4;->this$0:Lcom/zte/heartyservice/main/staService;

    #calls: Lcom/zte/heartyservice/main/staService;->b()V
    invoke-static {v4}, Lcom/zte/heartyservice/main/staService;->access$1100(Lcom/zte/heartyservice/main/staService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    .end local v0           #action:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 565
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 549
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 551
    iget-object v4, p0, Lcom/zte/heartyservice/main/staService$4;->this$0:Lcom/zte/heartyservice/main/staService;

    #calls: Lcom/zte/heartyservice/main/staService;->c()V
    invoke-static {v4}, Lcom/zte/heartyservice/main/staService;->access$1200(Lcom/zte/heartyservice/main/staService;)V

    .line 552
    iget-object v4, p0, Lcom/zte/heartyservice/main/staService$4;->this$0:Lcom/zte/heartyservice/main/staService;

    #calls: Lcom/zte/heartyservice/main/staService;->a()V
    invoke-static {v4}, Lcom/zte/heartyservice/main/staService;->access$1000(Lcom/zte/heartyservice/main/staService;)V

    goto :goto_0

    .line 553
    :cond_3
    invoke-static {}, Lcom/zte/heartyservice/main/staService;->access$1300()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 554
    iget-object v4, p0, Lcom/zte/heartyservice/main/staService$4;->this$0:Lcom/zte/heartyservice/main/staService;

    #calls: Lcom/zte/heartyservice/main/staService;->a()V
    invoke-static {v4}, Lcom/zte/heartyservice/main/staService;->access$1000(Lcom/zte/heartyservice/main/staService;)V

    goto :goto_0

    .line 555
    :cond_4
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 556
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 557
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 558
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "com.zte.heartyservice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 560
    #calls: Lcom/zte/heartyservice/main/staService;->w()V
    invoke-static {}, Lcom/zte/heartyservice/main/staService;->access$1400()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
