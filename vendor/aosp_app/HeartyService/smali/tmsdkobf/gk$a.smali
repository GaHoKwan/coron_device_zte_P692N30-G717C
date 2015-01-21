.class public final Ltmsdkobf/gk$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private jO:I

.field private ne:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic nv:Ltmsdkobf/gk;


# direct methods
.method public constructor <init>(Ltmsdkobf/gk;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 144
    const/4 v0, 0x4

    iput v0, p0, Ltmsdkobf/gk$a;->jO:I

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdkobf/gk$a;->a:Z

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .parameter "scanResList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    if-nez p1, :cond_1

    .line 209
    :cond_0
    return-void

    .line 188
    :cond_1
    iget-boolean v3, p0, Ltmsdkobf/gk$a;->a:Z

    if-eqz v3, :cond_5

    .line 189
    iget-object v3, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    if-nez v3, :cond_2

    .line 190
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    .line 191
    :cond_2
    iget-object v3, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 192
    .local v1, lastScanResNum:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 193
    .local v2, scanRes:Landroid/net/wifi/ScanResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_3

    .line 199
    :goto_2
    iget-object v3, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_3
    iget-object v3, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 195
    iget-object v3, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 193
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    .end local v0           #i:I
    .end local v1           #lastScanResNum:I
    .end local v2           #scanRes:Landroid/net/wifi/ScanResult;
    :cond_5
    iget-object v3, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    if-nez v3, :cond_6

    .line 203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    .line 206
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 207
    .restart local v2       #scanRes:Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 205
    .end local v2           #scanRes:Landroid/net/wifi/ScanResult;
    :cond_6
    iget-object v3, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_3
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter "intent"

    .prologue
    const/4 v2, 0x4

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltmsdkobf/gk$a;->jO:I

    .line 156
    iget-object v0, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    invoke-static {v0}, Ltmsdkobf/gk;->a(Ltmsdkobf/gk;)Ltmsdkobf/gk$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    invoke-static {v0}, Ltmsdkobf/gk;->a(Ltmsdkobf/gk;)Ltmsdkobf/gk$c;

    move-result-object v0

    iget v1, p0, Ltmsdkobf/gk$a;->jO:I

    invoke-interface {v0, v1}, Ltmsdkobf/gk$c;->aB(I)V

    .line 159
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 162
    if-eqz v0, :cond_3

    .line 163
    :cond_1
    const/4 v6, 0x0

    .line 164
    .local v6, curScanResList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v0, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    invoke-static {v0}, Ltmsdkobf/gk;->b(Ltmsdkobf/gk;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    invoke-static {v0}, Ltmsdkobf/gk;->b(Ltmsdkobf/gk;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 167
    :cond_2
    iget-boolean v0, p0, Ltmsdkobf/gk$a;->a:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 169
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_4

    .line 170
    invoke-direct {p0, v6}, Ltmsdkobf/gk$a;->b(Ljava/util/List;)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdkobf/gk$a;->a:Z

    .line 172
    iget-object v0, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gk;->h(J)V

    .line 183
    .end local v6           #curScanResList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_3
    :goto_0
    return-void

    .line 175
    .restart local v6       #curScanResList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_4
    invoke-direct {p0, v6}, Ltmsdkobf/gk$a;->b(Ljava/util/List;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdkobf/gk$a;->a:Z

    .line 177
    iget-object v7, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    new-instance v0, Ltmsdkobf/gk$b;

    iget-object v1, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    iget-object v2, p0, Ltmsdkobf/gk$a;->ne:Ljava/util/List;

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Ltmsdkobf/gk$a;->jO:I

    invoke-direct/range {v0 .. v5}, Ltmsdkobf/gk$b;-><init>(Ltmsdkobf/gk;Ljava/util/List;JI)V

    .line 177
    invoke-static {v7, v0}, Ltmsdkobf/gk;->a(Ltmsdkobf/gk;Ltmsdkobf/gk$b;)V

    .line 179
    iget-object v0, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    invoke-static {v0}, Ltmsdkobf/gk;->a(Ltmsdkobf/gk;)Ltmsdkobf/gk$c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 180
    iget-object v0, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    invoke-static {v0}, Ltmsdkobf/gk;->a(Ltmsdkobf/gk;)Ltmsdkobf/gk$c;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    invoke-static {v1}, Ltmsdkobf/gk;->c(Ltmsdkobf/gk;)Ltmsdkobf/gk$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ltmsdkobf/gk$c;->a(Ltmsdkobf/gk$b;)V

    .line 181
    :cond_5
    iget-object v0, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    iget-object v1, p0, Ltmsdkobf/gk$a;->nv:Ltmsdkobf/gk;

    invoke-static {v1}, Ltmsdkobf/gk;->d(Ltmsdkobf/gk;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x4e20

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gk;->h(J)V

    goto :goto_0
.end method
