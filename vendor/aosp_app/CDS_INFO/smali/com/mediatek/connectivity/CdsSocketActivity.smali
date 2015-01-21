.class public Lcom/mediatek/connectivity/CdsSocketActivity;
.super Landroid/app/Activity;
.source "CdsSocketActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONN_LIST:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CdsSocketActivity"


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field mConnSpinner:Landroid/widget/Spinner;

.field private mContext:Landroid/content/Context;

.field private mRefreshBtn:Landroid/widget/Button;

.field private mReportPercent:Landroid/widget/EditText;

.field private mSelectConnType:I

.field private mSocketAdapter:Landroid/widget/SimpleAdapter;

.field mSocketList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSocketListview:Landroid/widget/ListView;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Wi-Fi"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Mobile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/connectivity/CdsSocketActivity;->DEFAULT_CONN_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mConnSpinner:Landroid/widget/Spinner;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mSelectConnType:I

    .line 76
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mReportPercent:Landroid/widget/EditText;

    .line 77
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 78
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mRefreshBtn:Landroid/widget/Button;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mSocketList:Ljava/util/ArrayList;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/connectivity/CdsSocketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsSocketActivity;->listSocketPort()V

    return-void
.end method

.method private accessibleListeningPorts(Ljava/lang/String;Z)V
    .locals 13
    .parameter "procFilePath"
    .parameter "isTcp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const-string v5, ""

    .line 147
    .local v5, socketEntry:Ljava/lang/String;
    const-string v8, ""

    .line 148
    .local v8, socketName:Ljava/lang/String;
    const-string v6, ""

    .line 149
    .local v6, socketInfo:Ljava/lang/String;
    const/4 v3, 0x0

    .line 151
    .local v3, i:I
    #calls: Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->parse(Ljava/lang/String;)Ljava/util/List;
    invoke-static {p1}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->access$100(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;

    .line 153
    .local v2, entry:Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->localAddress:Ljava/net/InetAddress;
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->access$200(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    #getter for: Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->port:I
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->access$300(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, addrPort:Ljava/lang/String;
    #getter for: Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->state:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->access$400(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, p2}, Lcom/mediatek/connectivity/CdsSocketActivity;->isPortListening(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 156
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v7, socketItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v3, v3, 0x1

    .line 158
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, uidname:Ljava/lang/String;
    #getter for: Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->uid:I
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->access$500(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)I

    move-result v10

    if-eqz v10, :cond_1

    .line 161
    iget-object v10, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    #getter for: Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->uid:I
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->access$500(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .line 162
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uid("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    #getter for: Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->uid:I
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->access$500(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->localAddress:Ljava/net/InetAddress;
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->access$200(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    #getter for: Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->port:I
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->access$300(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 169
    const-string v10, "name"

    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v10, "port"

    invoke-virtual {v7, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v10, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mSocketList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v10, "CdsSocketActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mSocketList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\nFound port listening on addr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    #getter for: Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->localAddress:Ljava/net/InetAddress;
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->access$200(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", port="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    #getter for: Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->port:I
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->access$300(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", UID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    #getter for: Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->uid:I
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->access$500(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    const-string v10, "CdsSocketActivity"

    invoke-static {v10, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "System("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 184
    .end local v0           #addrPort:Ljava/lang/String;
    .end local v2           #entry:Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;
    .end local v7           #socketItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #uidname:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private isPortListening(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "state"
    .parameter "isTcp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    if-eqz p2, :cond_0

    const-string v0, "0A"

    .line 189
    .local v0, listeningState:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 188
    .end local v0           #listeningState:Ljava/lang/String;
    :cond_0
    const-string v0, "07"

    goto :goto_0
.end method

.method private listSocketPort()V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mSocketList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 134
    const-string v1, "/proc/net/tcp"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/mediatek/connectivity/CdsSocketActivity;->accessibleListeningPorts(Ljava/lang/String;Z)V

    .line 135
    const-string v1, "/proc/net/tcp6"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/mediatek/connectivity/CdsSocketActivity;->accessibleListeningPorts(Ljava/lang/String;Z)V

    .line 136
    const-string v1, "/proc/net/udp"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/mediatek/connectivity/CdsSocketActivity;->accessibleListeningPorts(Ljava/lang/String;Z)V

    .line 137
    const-string v1, "/proc/net/udp6"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/mediatek/connectivity/CdsSocketActivity;->accessibleListeningPorts(Ljava/lang/String;Z)V

    .line 138
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mSocketAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 128
    .local v0, buttonId:I
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x2

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mContext:Landroid/content/Context;

    .line 92
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mSocketListview:Landroid/widget/ListView;

    .line 93
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mSocketList:Ljava/util/ArrayList;

    const v3, 0x7f03000f

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "name"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "port"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mSocketAdapter:Landroid/widget/SimpleAdapter;

    .line 99
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mSocketListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mSocketAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mRefreshBtn:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mRefreshBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity;->mRefreshBtn:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/connectivity/CdsSocketActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/connectivity/CdsSocketActivity$1;-><init>(Lcom/mediatek/connectivity/CdsSocketActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_0
    const-string v0, "CdsSocketActivity"

    const-string v1, "CdsSocketActivity is started"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 93
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsSocketActivity;->listSocketPort()V

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 117
    return-void
.end method
