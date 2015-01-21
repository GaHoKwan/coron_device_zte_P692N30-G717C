.class Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;
.super Landroid/os/AsyncTask;
.source "AppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetWifiIpRuleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private appUid:I

.field private context:Landroid/content/Context;

.field private reject:Z

.field final synthetic this$0:Lcom/zte/heartyservice/net/AppListAdapter;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/net/AppListAdapter;Landroid/content/Context;IZ)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "appUid"
    .parameter "reject"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;->this$0:Lcom/zte/heartyservice/net/AppListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 318
    iput-object p2, p0, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;->context:Landroid/content/Context;

    .line 319
    iput p3, p0, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;->appUid:I

    .line 320
    iput-boolean p4, p0, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;->reject:Z

    .line 321
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/net/AppListAdapter;Landroid/content/Context;IZLcom/zte/heartyservice/net/AppListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;-><init>(Lcom/zte/heartyservice/net/AppListAdapter;Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetManagermentUtils;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;->appUid:I

    iget-boolean v2, p0, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;->reject:Z

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/net/NetManagermentUtils;->setWifiAppIpRule(IZ)V

    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 312
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 331
    return-void
.end method
