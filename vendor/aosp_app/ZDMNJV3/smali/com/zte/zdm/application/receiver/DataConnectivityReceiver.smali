.class public Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:Ljava/lang/String; = "current_connection_type"

.field static final f:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static g:Z

.field private static h:Z

.field private static i:J


# instance fields
.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->g:Z

    sput-boolean v0, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->h:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->i:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean v0, p0, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->j:Z

    iput-boolean v0, p0, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->k:Z

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/net/NetworkInfo;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "there is no connectivity"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->e()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gprs state changed, but wifi is connected"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sput-boolean v3, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->g:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "The current active link is gprs"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    sput-boolean v3, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->h:Z

    sput-boolean v2, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->g:Z

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/zte/zdm/application/autoupdate/d;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v0, "gprs is closed"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    sput-boolean v2, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->h:Z

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->e()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "The current active link is wifi"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    sput-boolean v3, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->g:Z

    sput-boolean v2, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->h:Z

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->c(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/zte/zdm/application/autoupdate/d;->a(Landroid/content/Context;)V

    :cond_3
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Feedback"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/zte/zdm/application/b;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "feedback_status"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/c/a;->b()V

    goto/16 :goto_0

    :cond_4
    const-string v0, "wifi is closed"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    sput-boolean v2, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->g:Z

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->e()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/net/NetworkInfo;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->e()V

    const-string v0, "netinfo empty, no connect"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "netinfo empty, no connect"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    const-string v5, "useChooseConnectionType"

    const-string v6, "wifi"

    invoke-virtual {v1, v5, v6}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zte/zdm/application/ui/g;->c:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/d/f;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lcom/zte/zdm/application/b/k;->b(I)I

    move-result v6

    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zte/zdm/application/d/d/a;->b()Z

    move-result v8

    const-string v9, "0"

    invoke-static {p1, v9}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "useChooseConnectionType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",isWifiOnly="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",pausedByWho = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",needToReport = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v10

    if-eqz v10, :cond_2

    new-array v10, v3, [Ljava/lang/String;

    const-string v11, "CMCC"

    aput-object v11, v10, v2

    invoke-static {v10}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v4, v2}, Lcom/zte/zdm/application/b/g;->b(Z)V

    invoke-virtual {v0, v3}, Lcom/zte/zdm/application/b/k;->a(I)V

    :cond_2
    invoke-static {}, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->a()Lcom/zte/zdm/application/receiver/GreenNetReceiver;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->b()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0, v4}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->a(Lcom/zte/zdm/application/b/g;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zte/zdm/a/d;->e()Z

    move-result v10

    if-nez v10, :cond_8

    if-eqz v1, :cond_6

    const-string v0, "is wifi only, not to restart dl session"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v1, "mobile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    const-string v1, "notify user mobile connect"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->c()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Lcom/zte/zdm/application/d/e;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "current_connection_type"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Lcom/zte/zdm/application/b/k;->a(Z)V

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_3

    const-string v1, "mobile Connection Is allowed"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/zte/zdm/application/b/k;->a(Z)V

    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->p()V

    invoke-static {}, Lcom/zte/zdm/application/b/m;->a()Lcom/zte/zdm/application/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/m;->c()V

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_9

    const-string v0, "is wifi only, not to restart dl session"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->s()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/zdm/application/a;->a(Z)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->s()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v4}, Lcom/zte/zdm/application/b/g;->t()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    if-eqz v6, :cond_d

    const-string v0, "mobile"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/zdm/application/a;->a(Z)V

    goto/16 :goto_1

    :cond_d
    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/zte/zdm/application/d/d/a;->d()V

    goto/16 :goto_1
.end method

.method private c(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/zte/zdm/application/b/k;->b(I)I

    move-result v2

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/application/d/d/a;->b()Z

    move-result v4

    invoke-static {p1}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pausedByWho = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",needToReport = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",autoupdate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v5, Lcom/zte/zdm/application/ui/g;->b:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/zte/zdm/application/b/k;->a(Z)V

    invoke-static {}, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->a()Lcom/zte/zdm/application/receiver/GreenNetReceiver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->a(Lcom/zte/zdm/application/b/g;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/zdm/a/d;->e()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v5, Lcom/zte/zdm/application/ui/g;->d:Z

    if-nez v0, :cond_2

    const-string v0, "handleWifiConnected isCmcc wifi and user not allowed to download"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->b(Lcom/zte/zdm/application/b/g;)V

    goto :goto_0

    :cond_2
    const-string v0, "handleWifiConnected resume session"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->p()V

    invoke-static {}, Lcom/zte/zdm/application/b/m;->a()Lcom/zte/zdm/application/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/m;->c()V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->s()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->t()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/zte/zdm/application/a;->a(Z)V

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/zte/zdm/application/d/d/a;->d()V

    goto :goto_1

    :cond_6
    iget-boolean v2, v5, Lcom/zte/zdm/application/ui/g;->b:Z

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->z()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->d(Landroid/content/Context;)V

    goto :goto_1

    :cond_7
    iget-boolean v2, v5, Lcom/zte/zdm/application/ui/g;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->z()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Australia"

    aput-object v2, v0, v8

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->d(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static declared-synchronized d()V
    .locals 3

    const-class v0, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    sput-wide v1, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    const-string v0, "autoupdate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->l()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wifi autoupdate in, but it\'s not time to, so return"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private e()V
    .locals 5

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CMCC"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    const-string v0, "handleNotConnected pause session"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->J()V

    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.action.autoupdate.wifiopen"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private f()V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/zte/zdm/application/d/h;->f(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private g()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "auto_update_when_wifi_open"

    invoke-virtual {v2, v3, v1}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->j()Z

    move-result v4

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->h()Z

    move-result v5

    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zte/zdm/application/App;->a(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is cmcc wifi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->i()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->i()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/application/App;->e()V

    :cond_0
    :goto_0
    const-string v3, "report"

    invoke-virtual {v2, v3, v1}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    :goto_1
    return v0

    :cond_1
    iget-boolean v3, p0, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->j:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/application/App;->c()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private i()Z
    .locals 7

    const/4 v1, 0x0

    const-string v2, "CMCC"

    const-string v3, "CMCC-EDU"

    const-string v4, "CMCC-AUTO"

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "wifi"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The connected wifi name is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private k()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->i:J

    sub-long v1, v0, v2

    const/4 v0, 0x0

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->i:J

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private l()Z
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v0, 0x1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "next_wifi_update_time"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifi update: current ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; nexttime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v9, v8}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-gez v3, :cond_0

    const-string v3, "next_wifi_update_time"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;J)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v9, v8}, Ljava/util/Calendar;->add(II)V

    const-string v3, "next_wifi_update_time"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/b/gc;->c(Landroid/content/Context;)V

    return-void
.end method

.method a(Lcom/zte/zdm/application/b/g;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/zte/zdm/application/b/cq;->b()Lcom/zte/zdm/application/b/cq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/cq;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->a()Lcom/zte/zdm/application/receiver/GreenNetReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/application/b/g;->s()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/zte/zdm/application/b/g;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/zte/zdm/application/b/g;->d(Z)V

    invoke-static {}, Lcom/zte/zdm/application/b/cq;->b()Lcom/zte/zdm/application/b/cq;

    move-result-object v1

    const-string v2, "401"

    invoke-virtual {v1, v2}, Lcom/zte/zdm/application/b/cq;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/zte/zdm/application/d/d/a;->b(Z)V

    invoke-virtual {v0, v3}, Lcom/zte/zdm/application/d/d/a;->a(Z)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->d()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->d()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->j:Z

    return-void
.end method

.method public a()Z
    .locals 1

    sget-boolean v0, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->g:Z

    return v0
.end method

.method b(Lcom/zte/zdm/application/b/g;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/application/b/g;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/b/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->R()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    sget-boolean v0, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->h:Z

    return v0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-direct {p0, p1, v1}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->a(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/net/NetworkInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isGPRSConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->f(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->a(Landroid/content/Context;)V

    return-void
.end method
