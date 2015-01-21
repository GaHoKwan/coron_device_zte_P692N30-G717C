.class public Lmn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final a:[I


# instance fields
.field private a:I

.field private a:Landroid/net/wifi/WifiManager;

.field private a:Lbb;

.field private a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "[0-9A-Fa-f]{64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmn;->a:Ljava/util/regex/Pattern;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmn;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x98t 0x3t 0xbt 0x7ft
        0x9bt 0x3t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lbb;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lmn;->a:Lbb;

    .line 33
    iput-object p1, p0, Lmn;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    .line 34
    return-void
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 66
    iget-object v0, p0, Lmn;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    iget-object v0, p0, Lmn;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 68
    iget v0, p0, Lmn;->a:I

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lmn;->a:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lmn;->a:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 70
    iput v2, p0, Lmn;->a:I

    .line 72
    :cond_0
    return v2
.end method

.method private a(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmn;->a(Landroid/net/wifi/WifiConfiguration;Z)I

    move-result v0

    return v0
.end method

.method private a(Landroid/net/wifi/WifiConfiguration;Z)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 121
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmn;->a(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lmn;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 123
    if-nez v1, :cond_0

    .line 128
    :goto_0
    iget-object v1, p0, Lmn;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    iput v1, p0, Lmn;->a:I

    .line 129
    iget v1, p0, Lmn;->a:I

    if-gez v1, :cond_1

    .line 140
    :goto_1
    return v0

    .line 125
    :cond_0
    iget-object v2, p0, Lmn;->a:Landroid/net/wifi/WifiManager;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 126
    iget-object v1, p0, Lmn;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lmn;->a:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lmn;->a:I

    invoke-virtual {v1, v2, p2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    iput v0, p0, Lmn;->a:I

    goto :goto_1

    .line 138
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lmn;->b:I

    .line 139
    iget-object v0, p0, Lmn;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 140
    iget v0, p0, Lmn;->a:I

    goto :goto_1
.end method

.method private a(Lml;)I
    .locals 3
    .parameter

    .prologue
    .line 77
    invoke-virtual {p1}, Lml;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lml;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    const v0, 0x7f0b03b4

    invoke-direct {p0, v0}, Lmn;->a(I)I

    move-result v0

    .line 104
    :goto_0
    return v0

    .line 84
    :cond_1
    invoke-virtual {p1}, Lml;->a()Lmo;

    move-result-object v0

    sget-object v1, Lmo;->d:Lmo;

    if-ne v0, v1, :cond_2

    .line 88
    const v0, 0x7f0b03b5

    invoke-direct {p0, v0}, Lmn;->a(I)I

    move-result v0

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Lml;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lml;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lml;->a()Lmo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lml;->a()Lmo;

    move-result-object v0

    sget-object v1, Lmo;->c:Lmo;

    if-ne v0, v1, :cond_4

    .line 96
    :cond_3
    iget-object v0, p0, Lmn;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    invoke-direct {p0, p1}, Lmn;->b(Lml;)I

    move-result v0

    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {p1}, Lml;->a()Lmo;

    move-result-object v0

    sget-object v1, Lmo;->b:Lmo;

    if-ne v0, v1, :cond_5

    .line 100
    iget-object v0, p0, Lmn;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-direct {p0, p1}, Lmn;->c(Lml;)I

    move-result v0

    goto :goto_0

    .line 103
    :cond_5
    iget-object v0, p0, Lmn;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-direct {p0, p1}, Lmn;->d(Lml;)I

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lmn;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 147
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lml;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .parameter

    .prologue
    .line 155
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 156
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 157
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 158
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 159
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 160
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 163
    invoke-virtual {p1}, Lml;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 165
    return-object v0
.end method

.method private b(Lml;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-direct {p0, p1}, Lmn;->a(Lml;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 110
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    .line 111
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 112
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 113
    invoke-direct {p0, v0}, Lmn;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method private c(Lml;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    invoke-direct {p0, p1}, Lmn;->a(Lml;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 170
    invoke-virtual {p1}, Lml;->a()Ljava/lang/String;

    move-result-object v1

    .line 172
    sget-object v2, Lmn;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 177
    :goto_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 179
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 181
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 182
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 183
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 184
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 185
    invoke-direct {p0, v0}, Lmn;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0

    .line 175
    :cond_0
    invoke-static {v1}, Lmm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private d(Lml;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    invoke-direct {p0, p1}, Lmn;->a(Lml;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lml;->a()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v1}, Lmm;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v1, v2, v3

    .line 197
    :goto_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 199
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 200
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 201
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 202
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 203
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 204
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 205
    invoke-direct {p0, v0}, Lmn;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0

    .line 195
    :cond_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {v1}, Lmm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 37
    iget-object v0, p0, Lmn;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lmn;->a:Landroid/net/wifi/WifiManager;

    .line 38
    iget-object v0, p0, Lmn;->a:Lbb;

    invoke-virtual {v0}, Lbb;->a()Ljava/lang/String;

    move-result-object v2

    .line 39
    iget-object v0, p0, Lmn;->a:Lbb;

    invoke-virtual {v0}, Lbb;->c()Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v0, p0, Lmn;->a:Lbb;

    invoke-virtual {v0}, Lbb;->b()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v3, "WPA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    sget-object v0, Lmo;->b:Lmo;

    .line 55
    :goto_0
    iget-object v3, p0, Lmn;->a:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 56
    if-nez v1, :cond_0

    .line 57
    const-string v1, ""

    .line 59
    :cond_0
    new-instance v3, Lml;

    invoke-direct {v3, v2, v1, v0}, Lml;-><init>(Ljava/lang/String;Ljava/lang/String;Lmo;)V

    .line 60
    invoke-direct {p0, v3}, Lmn;->a(Lml;)I

    .line 62
    :goto_1
    return-void

    .line 44
    :cond_1
    const-string v3, "WEP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    sget-object v0, Lmo;->a:Lmo;

    goto :goto_0

    .line 46
    :cond_2
    const-string v3, "nopass"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    sget-object v0, Lmo;->c:Lmo;

    goto :goto_0

    .line 49
    :cond_3
    const v0, 0x7f0b03b5

    invoke-direct {p0, v0}, Lmn;->a(I)I

    goto :goto_1
.end method
