.class public Lafp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:F

.field public static a:I

.field private static a:Lafp;

.field public static a:Z

.field public static final a:[J

.field public static b:F

.field public static c:F


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/net/ConnectivityManager;

.field private a:Landroid/net/wifi/WifiManager;

.field private a:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 108
    sput-boolean v0, Lafp;->a:Z

    .line 145
    sput v0, Lafp;->a:I

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lafp;->a:[J

    .line 181
    const/4 v0, 0x0

    sput-object v0, Lafp;->a:Lafp;

    .line 191
    const v0, 0x3ecccccd

    sput v0, Lafp;->a:F

    .line 193
    const v0, 0x3dcccccd

    sput v0, Lafp;->b:F

    .line 194
    const/high16 v0, 0x3f00

    sput v0, Lafp;->c:F

    return-void

    .line 163
    nop

    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lafp;->a:Landroid/content/Context;

    .line 199
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lafp;->a:Landroid/telephony/TelephonyManager;

    .line 200
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lafp;->a:Landroid/net/ConnectivityManager;

    .line 201
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lafp;->a:Landroid/net/wifi/WifiManager;

    .line 202
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    .line 203
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-static {p1}, Laox;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lafp;->a:Z

    .line 205
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic A(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-static {p0}, Lafp;->B(Ljava/lang/String;)V

    return-void
.end method

.method private static B(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 3126
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lafp;
    .locals 2
    .parameter

    .prologue
    .line 208
    const-class v1, Lafp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lafp;->a:Lafp;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lafp;

    invoke-direct {v0, p0}, Lafp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lafp;->a:Lafp;

    .line 211
    :cond_0
    sget-object v0, Lafp;->a:Lafp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1485
    invoke-static {}, Lazh;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public A(Z)V
    .locals 3
    .parameter

    .prologue
    .line 938
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0118

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 939
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0119

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 940
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 941
    return-void
.end method

.method public A()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 849
    const/4 v2, 0x0

    .line 850
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 851
    iget-object v3, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lafp;->a:Landroid/content/Context;

    const v5, 0x7f0b008b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 852
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 853
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 864
    :goto_0
    return v0

    .line 856
    :cond_0
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    move v0, v1

    .line 857
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1489
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public B(Z)V
    .locals 3
    .parameter

    .prologue
    .line 952
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 953
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 954
    return-void
.end method

.method public B()Z
    .locals 3

    .prologue
    .line 920
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0119

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1541
    invoke-virtual {p0}, Lafp;->i()I

    move-result v0

    .line 1542
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1543
    const-string v0, "wifi"

    .line 1547
    :goto_0
    return-object v0

    .line 1544
    :cond_0
    if-nez v0, :cond_1

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mobile-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lafp;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1547
    :cond_1
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public C(Z)V
    .locals 3
    .parameter

    .prologue
    .line 970
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 971
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 972
    return-void
.end method

.method public C()Z
    .locals 3

    .prologue
    .line 924
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0118

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lafp;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D(Z)V
    .locals 3
    .parameter

    .prologue
    .line 979
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 981
    return-void
.end method

.method public D()Z
    .locals 3

    .prologue
    .line 948
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1569
    const/4 v0, 0x0

    .line 1571
    :try_start_0
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1575
    :goto_0
    return-object v0

    .line 1572
    :catch_0
    move-exception v1

    .line 1573
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lafp;->B(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public E(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1115
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b010c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1116
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1117
    return-void
.end method

.method public E()Z
    .locals 3

    .prologue
    .line 966
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1579
    iget-object v0, p0, Lafp;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1580
    if-eqz v0, :cond_1

    .line 1581
    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Lafp;->a(Ljava/lang/String;C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lafp;->I()Ljava/lang/String;

    move-result-object v0

    .line 1587
    :cond_0
    :goto_0
    return-object v0

    .line 1583
    :cond_1
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1585
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1586
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1587
    :cond_2
    invoke-virtual {p0}, Lafp;->I()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public F(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1124
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0110

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1125
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1126
    if-nez p1, :cond_0

    .line 1127
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    .line 1128
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->X()V

    .line 1131
    :cond_0
    return-void
.end method

.method public F()Z
    .locals 3

    .prologue
    .line 975
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Lafp;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1593
    if-eqz v0, :cond_0

    .line 1596
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public G(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1139
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0116

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1140
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1141
    return-void
.end method

.method public G()Z
    .locals 3

    .prologue
    .line 1144
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0116

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1601
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1603
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1604
    if-eqz v0, :cond_0

    .line 1605
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1607
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public H(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1271
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1272
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1273
    return-void
.end method

.method public H()Z
    .locals 3

    .prologue
    .line 1267
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1612
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1613
    return-object v0
.end method

.method public I(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1361
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1362
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1363
    return-void
.end method

.method public I()Z
    .locals 3

    .prologue
    .line 1276
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1277
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lafp;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1627
    if-nez v0, :cond_0

    .line 1628
    const-string v0, "310260000000000"

    .line 1630
    :cond_0
    return-object v0
.end method

.method public J(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1427
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0136

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1428
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1429
    return-void
.end method

.method public J()Z
    .locals 3

    .prologue
    .line 1366
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f0b013c

    const v3, 0x7f0b0107

    .line 1647
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1648
    if-nez v0, :cond_0

    .line 1649
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1650
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1651
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1653
    :cond_0
    return-object v0
.end method

.method public K(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2138
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2139
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2140
    return-void
.end method

.method public K()Z
    .locals 4

    .prologue
    .line 1397
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public L()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1659
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b013c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1660
    return-object v0
.end method

.method public L(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2169
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2170
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2171
    return-void
.end method

.method public L()Z
    .locals 3

    .prologue
    .line 1423
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0136

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public M()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0b0093

    .line 1704
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1705
    if-nez v0, :cond_0

    .line 1706
    invoke-virtual {p0}, Lafp;->e()V

    .line 1708
    :cond_0
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public M(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2179
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2180
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2181
    return-void
.end method

.method public M()Z
    .locals 3

    .prologue
    .line 2133
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public N()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1712
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2184
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2185
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2186
    return-void
.end method

.method public N()Z
    .locals 3

    .prologue
    .line 2144
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public O()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2860
    invoke-virtual {p0, v1, v1, v0}, Lafp;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2198
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0135

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2199
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2200
    return-void
.end method

.method public O()Z
    .locals 3

    .prologue
    .line 2149
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public P(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2212
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2213
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2214
    return-void
.end method

.method public P()Z
    .locals 3

    .prologue
    .line 2154
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Q(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2918
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2919
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2920
    return-void
.end method

.method public Q()Z
    .locals 3

    .prologue
    .line 2159
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b005d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 3

    .prologue
    .line 2164
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 3

    .prologue
    .line 2194
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0135

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 3

    .prologue
    .line 2217
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public U()Z
    .locals 3

    .prologue
    .line 2923
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a()F
    .locals 3

    .prologue
    .line 712
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b011c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public a()I
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 3
    .parameter

    .prologue
    .line 1393
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1013
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 1472
    const/4 v0, -0x1

    .line 1473
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return v0

    .line 1476
    :cond_1
    :try_start_0
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1477
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1479
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a()J
    .locals 5

    .prologue
    const-wide/16 v3, 0x400

    .line 298
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "500"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    mul-long/2addr v0, v3

    .line 305
    :goto_0
    return-wide v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string v0, "500"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v3

    goto :goto_0
.end method

.method public a()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 2899
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2902
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2903
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2904
    return-object v0
.end method

.method public a(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 2
    .parameter

    .prologue
    .line 2887
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Lawa;
    .locals 2
    .parameter

    .prologue
    .line 2893
    new-instance v0, Lawa;

    invoke-direct {v0, p1}, Lawa;-><init>(Landroid/content/Context;)V

    .line 2894
    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lawa;->setIcon(I)V

    .line 2895
    return-object v0
.end method

.method public a()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 826
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0113

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Laox;->a()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p0, v0}, Lafp;->a(Ljava/lang/String;)V

    .line 224
    :cond_0
    return-object v0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 997
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2864
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2865
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0085

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2868
    const-string v0, "/sdcard/sogou/keymap/"

    invoke-virtual {p0, p1, p2, p3, v0}, Lafp;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 2869
    sget-object v0, Laox;->s:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lafp;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 2871
    if-eqz p1, :cond_0

    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b01ae

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2872
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2874
    :cond_1
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2875
    const-string v0, ""

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2883
    :goto_0
    return-object v0

    .line 2877
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    .line 2879
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2880
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2881
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2877
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method public a()V
    .locals 3

    .prologue
    .line 444
    :try_start_0
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lafp;->h()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 445
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(D)V
    .locals 11
    .parameter

    .prologue
    .line 2023
    invoke-virtual {p0}, Lafp;->q()V

    .line 2024
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2025
    const-string v1, "sogou.action.autosync"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2026
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2031
    new-instance v2, Ljava/sql/Date;

    invoke-direct {v2, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 2033
    const-wide v2, 0x40ac200000000000L

    mul-double/2addr v2, p1

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v4, v2

    .line 2037
    invoke-virtual {p0}, Lafp;->b()J

    move-result-wide v2

    .line 2038
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-eqz v7, :cond_0

    sub-long v7, v0, v2

    const-wide/16 v9, 0x2710

    add-long/2addr v9, v4

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 2041
    const-wide/16 v2, 0x2710

    add-long/2addr v2, v0

    .line 2049
    :goto_0
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    .line 2050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "date trigger time:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafp;->B(Ljava/lang/String;)V

    .line 2051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafp;->B(Ljava/lang/String;)V

    .line 2052
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2053
    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2054
    return-void

    .line 2042
    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-eqz v7, :cond_1

    .line 2043
    add-long/2addr v2, v4

    goto :goto_0

    .line 2045
    :cond_1
    const-wide/16 v2, 0x2710

    add-long/2addr v2, v0

    goto :goto_0
.end method

.method public a(F)V
    .locals 3
    .parameter

    .prologue
    .line 801
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b011d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 802
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 803
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-lez p1, :cond_0

    :goto_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 355
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 356
    return-void

    .line 354
    :cond_0
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1037
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1038
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1039
    return-void
.end method

.method public a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1027
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1028
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1029
    return-void
.end method

.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0106

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 234
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 776
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 777
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 778
    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 3
    .parameter

    .prologue
    .line 796
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b011c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 797
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 798
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0113

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2839
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2840
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2841
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b01af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2842
    new-instance v0, Lafq;

    move-object v1, p0

    move-object v2, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lafq;-><init>(Lafp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 2856
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    return-void
.end method

.method public a(ZII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2418
    .line 2419
    packed-switch p3, :pswitch_data_0

    .line 2452
    :goto_0
    return-void

    .line 2421
    :pswitch_0
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v0, 0x7f0b00d4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2435
    :goto_2
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 2440
    :pswitch_1
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00a9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2446
    :goto_3
    iget-object v2, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2447
    invoke-static {p3}, Lcom/sohu/inputmethod/engine/IMEInterface;->isLatinIME(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2448
    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    if-eqz p1, :cond_3

    const v1, 0x7f0b00d3

    :goto_4
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2450
    :cond_0
    iget-object v2, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2451
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2421
    :cond_1
    const v0, 0x7f0b00d2

    goto :goto_1

    .line 2426
    :pswitch_2
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    if-eqz p1, :cond_2

    const v0, 0x7f0b00d6

    :goto_5
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const v0, 0x7f0b00d5

    goto :goto_5

    .line 2437
    :pswitch_3
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00aa

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2448
    :cond_3
    const v1, 0x7f0b00d1

    goto :goto_4

    .line 2419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 2435
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public a([I[I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1042
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 1047
    :goto_0
    return-void

    .line 1043
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1044
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aget v3, p2, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1046
    :cond_1
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;C)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1617
    if-nez p1, :cond_1

    .line 1622
    :cond_0
    :goto_0
    return v0

    .line 1618
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    .line 1619
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1620
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, p2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1619
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public b()I
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lafp;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 1167
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0050

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 833
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0079

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b00c2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b0140

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 454
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(D)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2071
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2072
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2073
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2076
    const-wide v4, 0x40ac200000000000L

    mul-double/2addr v4, p1

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    .line 2078
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v4, p0, Lafp;->a:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2079
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2080
    return-void
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-lez p1, :cond_0

    :goto_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 381
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 382
    return-void

    .line 380
    :cond_0
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public b(J)V
    .locals 3
    .parameter

    .prologue
    .line 671
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0050

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 672
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 673
    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 829
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0079

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 830
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 831
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    return-void
.end method

.method public b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 261
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    return-void
.end method

.method public b([I[I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2456
    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    .line 2457
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 2458
    aget v3, p1, v0

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2460
    :cond_0
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lafp;->a:Landroid/content/Context;

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2461
    :goto_1
    array-length v0, p2

    if-ge v1, v0, :cond_1

    .line 2462
    aget v0, p2, v1

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2461
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2464
    :cond_1
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b0084

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2466
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c()J
    .locals 4

    .prologue
    .line 1171
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 470
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.sohu.inputmethod.sogou/hotdict/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Layw;->a(Ljava/io/File;)Z

    .line 471
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->Z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Layw;->a(Ljava/io/File;)Z

    .line 472
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->I:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Layw;->a(Ljava/io/File;)Z

    .line 473
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->Q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Layw;->a(Ljava/io/File;)Z

    .line 474
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->C:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Layw;->a(Ljava/io/File;)Z

    .line 475
    return-void
.end method

.method public c(I)V
    .locals 3
    .parameter

    .prologue
    .line 676
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 677
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 678
    return-void
.end method

.method public c(J)V
    .locals 3
    .parameter

    .prologue
    .line 1203
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0123

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1204
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1205
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 327
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    return-void
.end method

.method public c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 315
    return-void
.end method

.method public c([I[I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2469
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b0083

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2470
    if-eqz v2, :cond_0

    move v0, v1

    .line 2471
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2472
    array-length v3, p1

    if-lt v0, v3, :cond_2

    .line 2476
    :cond_0
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b0084

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2477
    if-eqz v0, :cond_1

    .line 2478
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2479
    array-length v2, p2

    if-lt v1, v2, :cond_3

    .line 2483
    :cond_1
    return-void

    .line 2473
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    aput v3, p1, v0

    .line 2471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2480
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    aput v2, p2, v1

    .line 2478
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .locals 4

    .prologue
    .line 943
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0052

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b00b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d()J
    .locals 4

    .prologue
    .line 1183
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b009d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 478
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lafp;->e(Z)V

    .line 479
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0067

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 480
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0068

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 481
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 482
    return-void
.end method

.method public d(I)V
    .locals 1
    .parameter

    .prologue
    .line 989
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lafp;->n(Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method public d(J)V
    .locals 3
    .parameter

    .prologue
    .line 1207
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1208
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1209
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0067

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 429
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    return-void
.end method

.method public d(Z)V
    .locals 3
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 390
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 3

    .prologue
    .line 1175
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0125

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e()J
    .locals 4

    .prologue
    .line 1187
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b009e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0131

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 493
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 495
    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v1, v2}, Ljava/sql/Date;-><init>(J)V

    .line 496
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b0093

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 498
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 499
    return-void
.end method

.method public e(I)V
    .locals 3
    .parameter

    .prologue
    .line 1220
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0125

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1221
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1222
    return-void
.end method

.method public e(J)V
    .locals 4
    .parameter

    .prologue
    .line 1212
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    .line 1213
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b0098

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/sql/Date;->toGMTString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1214
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1215
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1217
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 434
    :try_start_0
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0068

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "6E09C97EB8798EEB"

    invoke-static {p1, v2}, Lafr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public e(Z)V
    .locals 3
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 424
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 425
    return-void
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 3

    .prologue
    .line 1407
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()J
    .locals 4

    .prologue
    .line 1191
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 836
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0067

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 4

    .prologue
    .line 502
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 504
    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v1, v2}, Ljava/sql/Date;-><init>(J)V

    .line 505
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b0099

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 507
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    return-void
.end method

.method public f(I)V
    .locals 3
    .parameter

    .prologue
    .line 1388
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1389
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1390
    return-void
.end method

.method public f(J)V
    .locals 3
    .parameter

    .prologue
    .line 1234
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b009e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1235
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1236
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 572
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 573
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 574
    return-void
.end method

.method public f(Z)V
    .locals 3
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 462
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 463
    return-void
.end method

.method public f()Z
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 3

    .prologue
    .line 1432
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public g()J
    .locals 4

    .prologue
    .line 1195
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0122

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 840
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0126

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 4

    .prologue
    const v3, 0x7f0b008b

    .line 868
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 869
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 870
    if-eqz v0, :cond_0

    .line 871
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 875
    :goto_0
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 876
    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public g(I)V
    .locals 3
    .parameter

    .prologue
    .line 1402
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1403
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1404
    return-void
.end method

.method public g(J)V
    .locals 3
    .parameter

    .prologue
    .line 1239
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b009d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1240
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1241
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 582
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 583
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 584
    return-void
.end method

.method public g(Z)V
    .locals 3
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0092

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 531
    return-void
.end method

.method public g()Z
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1449
    .line 1451
    :try_start_0
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1456
    :goto_0
    return v0

    .line 1452
    :catch_0
    move-exception v1

    .line 1454
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lafp;->B(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h()J
    .locals 4

    .prologue
    .line 1199
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0123

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 884
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 5

    .prologue
    .line 1411
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1413
    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v1, v2}, Ljava/sql/Date;-><init>(J)V

    .line 1414
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v4, 0x7f0b00f2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1415
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1416
    return-void
.end method

.method public h(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1886
    invoke-virtual {p0}, Lafp;->l()V

    .line 1887
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1888
    const-string v1, "sogou.upgrade.alive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1889
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1891
    int-to-long v0, p1

    const-wide/16 v4, 0x18

    mul-long/2addr v0, v4

    const-wide/16 v4, 0xe10

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    .line 1894
    invoke-virtual {p0}, Lafp;->i()J

    move-result-wide v0

    .line 1895
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-eqz v7, :cond_0

    .line 1896
    sub-long v7, v2, v0

    cmp-long v7, v7, v4

    if-ltz v7, :cond_1

    .line 1905
    :cond_0
    :goto_0
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1906
    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1908
    return-void

    .line 1899
    :cond_1
    add-long v2, v0, v4

    goto :goto_0
.end method

.method public h(J)V
    .locals 3
    .parameter

    .prologue
    .line 1244
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0122

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1245
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1246
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 602
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 603
    return-void
.end method

.method public h(Z)V
    .locals 3
    .parameter

    .prologue
    .line 538
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0132

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 539
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 540
    return-void
.end method

.method public h()Z
    .locals 4

    .prologue
    const v3, 0x7f0b0066

    const/4 v0, 0x0

    .line 416
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 419
    :cond_0
    return v0
.end method

.method public i()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1515
    :try_start_0
    iget-object v1, p0, Lafp;->a:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lafp;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1517
    iget-object v1, p0, Lafp;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1521
    :cond_0
    :goto_0
    return v0

    .line 1520
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public i()J
    .locals 4

    .prologue
    .line 2208
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2057
    invoke-virtual {p0}, Lafp;->q()V

    .line 2058
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2059
    const-string v1, "sogou.action.autosync"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2062
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2064
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    .line 2066
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v4, p0, Lafp;->a:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2067
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2068
    return-void
.end method

.method public i(I)V
    .locals 11
    .parameter

    .prologue
    .line 1911
    invoke-virtual {p0}, Lafp;->m()V

    .line 1913
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1914
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1916
    int-to-long v0, p1

    const-wide/16 v4, 0x18

    mul-long/2addr v0, v4

    const-wide/16 v4, 0xe10

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    .line 1919
    invoke-virtual {p0}, Lafp;->c()J

    move-result-wide v4

    .line 1920
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-eqz v7, :cond_1

    sub-long v7, v2, v4

    const-wide/16 v9, 0x2710

    add-long/2addr v9, v0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    .line 1923
    const-wide/16 v0, 0x2710

    add-long/2addr v2, v0

    .line 1936
    :cond_0
    :goto_0
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1937
    const/4 v1, 0x1

    mul-int/lit8 v4, p1, 0x18

    mul-int/lit16 v4, v4, 0xe10

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1938
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lamo;->b:Z

    .line 1939
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iput p1, v0, Lamo;->d:I

    .line 1940
    return-void

    .line 1924
    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-eqz v7, :cond_2

    .line 1925
    add-long v2, v4, v0

    goto :goto_0

    .line 1930
    :cond_2
    invoke-virtual {p0}, Lafp;->j()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1932
    add-long/2addr v2, v0

    goto :goto_0
.end method

.method public i(J)V
    .locals 3
    .parameter

    .prologue
    .line 2203
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2204
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2205
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 666
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0131

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 667
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 668
    return-void
.end method

.method public i(Z)V
    .locals 3
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 592
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 593
    return-void
.end method

.method public i()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 485
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    if-eqz v1, :cond_0

    const-string v2, "Build00000(DEV)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b0140

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lafp;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0117

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2096
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2097
    const-string v1, "sogou.action.save.pc.theme.name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2098
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2099
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2100
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2101
    return-void
.end method

.method public j(I)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1943
    invoke-virtual {p0}, Lafp;->n()V

    .line 1944
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1945
    const-string v2, "sogou.action.autoupgrade.software"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1946
    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1948
    int-to-long v4, p1

    const-wide/16 v7, 0x18

    mul-long/2addr v4, v7

    const-wide/16 v7, 0xe10

    mul-long/2addr v4, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    .line 1951
    invoke-virtual {p0}, Lafp;->e()J

    move-result-wide v7

    .line 1952
    cmp-long v0, v7, v11

    if-eqz v0, :cond_1

    sub-long v9, v2, v7

    cmp-long v0, v9, v4

    if-ltz v0, :cond_1

    .line 1964
    :cond_0
    :goto_0
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v4, p0, Lafp;->a:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1965
    mul-int/lit8 v4, p1, 0x18

    mul-int/lit16 v4, v4, 0xe10

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1968
    return-void

    .line 1955
    :cond_1
    cmp-long v0, v7, v11

    if-eqz v0, :cond_2

    .line 1956
    add-long v2, v7, v4

    goto :goto_0

    .line 1959
    :cond_2
    invoke-virtual {p0}, Lafp;->j()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1960
    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public j(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2290
    invoke-virtual {p0}, Lafp;->r()V

    .line 2291
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2292
    const-string v1, "sogou.action.autoupgrade.hotdict.nexttime.wifi"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2293
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2294
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2295
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2296
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 844
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0126

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 845
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 846
    return-void
.end method

.method public j(Z)V
    .locals 3
    .parameter

    .prologue
    .line 610
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 611
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 612
    return-void
.end method

.method public j()Z
    .locals 3

    .prologue
    .line 534
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0092

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lafp;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 916
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0129

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2104
    invoke-virtual {p0}, Lafp;->j()V

    .line 2105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2106
    const-string v1, "sogou.action.save.pc.theme.name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2107
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2109
    const-wide/32 v4, 0xf731400

    add-long/2addr v2, v4

    .line 2110
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v4, p0, Lafp;->a:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2111
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2112
    return-void
.end method

.method public k(I)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1971
    invoke-virtual {p0}, Lafp;->o()V

    .line 1972
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1973
    const-string v2, "sogou.action.check.dualistic.dict.state"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1974
    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1976
    int-to-long v4, p1

    const-wide/16 v7, 0x18

    mul-long/2addr v4, v7

    const-wide/16 v7, 0xe10

    mul-long/2addr v4, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    .line 1979
    invoke-virtual {p0}, Lafp;->g()J

    move-result-wide v7

    .line 1980
    cmp-long v0, v7, v11

    if-eqz v0, :cond_1

    sub-long v9, v2, v7

    cmp-long v0, v9, v4

    if-ltz v0, :cond_1

    .line 1992
    :cond_0
    :goto_0
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v4, p0, Lafp;->a:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1993
    mul-int/lit8 v4, p1, 0x18

    mul-int/lit16 v4, v4, 0xe10

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1994
    return-void

    .line 1983
    :cond_1
    cmp-long v0, v7, v11

    if-eqz v0, :cond_2

    .line 1984
    add-long v2, v7, v4

    goto :goto_0

    .line 1986
    :cond_2
    const-wide/16 v7, 0x7d0

    add-long/2addr v2, v7

    .line 1987
    invoke-virtual {p0}, Lafp;->j()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1988
    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public k(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2307
    invoke-virtual {p0}, Lafp;->s()V

    .line 2308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2309
    const-string v1, "sogou.action.autoupgrade.hotdict.nexttime.mobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2310
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2311
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2312
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2313
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 879
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 880
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 881
    return-void
.end method

.method public k(Z)V
    .locals 3
    .parameter

    .prologue
    .line 635
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b012c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 636
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 637
    return-void
.end method

.method public k()Z
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0132

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1065
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0081

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2222
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2223
    const-string v1, "sogou.upgrade.alive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2224
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2225
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2226
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2227
    invoke-virtual {p0, v3}, Lafp;->P(Z)V

    .line 2228
    return-void
.end method

.method public l(I)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1997
    invoke-virtual {p0}, Lafp;->p()V

    .line 1998
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1999
    const-string v2, "sogou.action.update.netswitch"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2000
    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2002
    int-to-long v4, p1

    const-wide/16 v7, 0x18

    mul-long/2addr v4, v7

    const-wide/16 v7, 0xe10

    mul-long/2addr v4, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    .line 2005
    invoke-virtual {p0}, Lafp;->f()J

    move-result-wide v7

    .line 2006
    cmp-long v0, v7, v11

    if-eqz v0, :cond_1

    sub-long v9, v2, v7

    cmp-long v0, v9, v4

    if-ltz v0, :cond_1

    .line 2018
    :cond_0
    :goto_0
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v4, p0, Lafp;->a:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2019
    mul-int/lit8 v4, p1, 0x18

    mul-int/lit16 v4, v4, 0xe10

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2020
    return-void

    .line 2009
    :cond_1
    cmp-long v0, v7, v11

    if-eqz v0, :cond_2

    .line 2010
    add-long v2, v7, v4

    goto :goto_0

    .line 2013
    :cond_2
    invoke-virtual {p0}, Lafp;->j()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2014
    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public l(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 892
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 893
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 894
    return-void
.end method

.method public l(Z)V
    .locals 3
    .parameter

    .prologue
    .line 644
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b012d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 645
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 646
    return-void
.end method

.method public l()Z
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1073
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b0068

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1074
    if-eqz v1, :cond_0

    .line 1076
    :try_start_0
    const-string v2, "6E09C97EB8798EEB"

    invoke-static {v1, v2}, Lafr;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1081
    :cond_0
    :goto_0
    return-object v0

    .line 1077
    :catch_0
    move-exception v1

    .line 1078
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2231
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2232
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2233
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2234
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2235
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iput-boolean v3, v0, Lamo;->b:Z

    .line 2237
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 911
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0129

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 912
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 913
    return-void
.end method

.method public m(Z)V
    .locals 3
    .parameter

    .prologue
    .line 657
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0130

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 658
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 659
    return-void
.end method

.method public m()Z
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1158
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2240
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2241
    const-string v1, "sogou.action.autoupgrade.software"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2242
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2243
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2244
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2245
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 984
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 985
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 986
    return-void
.end method

.method public n(Z)V
    .locals 3
    .parameter

    .prologue
    .line 691
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 692
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 693
    return-void
.end method

.method public n()Z
    .locals 3

    .prologue
    .line 619
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0121

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1225
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2248
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2249
    const-string v1, "sogou.action.check.dualistic.dict.state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2250
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2251
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2252
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2253
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1060
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0081

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1061
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1062
    return-void
.end method

.method public o(Z)V
    .locals 3
    .parameter

    .prologue
    .line 744
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 745
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 746
    return-void
.end method

.method public o()Z
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b012c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1249
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2266
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2267
    const-string v1, "sogou.action.update.netswitch"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2268
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2269
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2270
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2271
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1229
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1230
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1231
    return-void
.end method

.method public p(Z)V
    .locals 3
    .parameter

    .prologue
    .line 753
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b013a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 754
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 755
    return-void
.end method

.method public p()Z
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b012d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1258
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2274
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2275
    const-string v1, "sogou.action.autosync"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2276
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2277
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2278
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2279
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1253
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1254
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1255
    return-void
.end method

.method public q(Z)V
    .locals 3
    .parameter

    .prologue
    .line 763
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 764
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 765
    return-void
.end method

.method public q()Z
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0130

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1281
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1282
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "sogou"

    .line 1285
    :cond_0
    return-object v0
.end method

.method public r()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2299
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2300
    const-string v1, "sogou.action.autoupgrade.hotdict.nexttime.wifi"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2301
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2302
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2303
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2304
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1262
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1263
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1264
    return-void
.end method

.method public r(Z)V
    .locals 3
    .parameter

    .prologue
    .line 772
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 773
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 774
    return-void
.end method

.method public r()Z
    .locals 3

    .prologue
    .line 696
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1298
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2316
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2317
    const-string v1, "sogou.action.autoupgrade.hotdict.nexttime.mobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2318
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2319
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2320
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2321
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1302
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1303
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1304
    return-void
.end method

.method public s(Z)V
    .locals 3
    .parameter

    .prologue
    .line 781
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b011e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 782
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 783
    return-void
.end method

.method public s()Z
    .locals 3

    .prologue
    .line 700
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b007c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1307
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2344
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2345
    const-string v1, "sogou.action.upgrade.manually.tips.halfyear"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2346
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2347
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2348
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2349
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1311
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1312
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1313
    return-void
.end method

.method public t(Z)V
    .locals 3
    .parameter

    .prologue
    .line 786
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0121

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 787
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 788
    return-void
.end method

.method public t()Z
    .locals 3

    .prologue
    .line 704
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1316
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2352
    invoke-virtual {p0}, Lafp;->v()V

    .line 2353
    const-string v0, "yyyyMMdd"

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Layu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2354
    if-eqz v0, :cond_0

    .line 2355
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2356
    const-string v1, "sogou.action.upgrade.manually.tips.oneyear"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2357
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2358
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2359
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2361
    :cond_0
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1320
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1321
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1322
    return-void
.end method

.method public u(Z)V
    .locals 3
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b011f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 792
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 793
    return-void
.end method

.method public u()Z
    .locals 3

    .prologue
    .line 708
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b011f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1325
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2364
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2365
    const-string v1, "sogou.action.upgrade.manually.tips.oneyear"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2366
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2367
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2368
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2369
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1329
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1330
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1331
    return-void
.end method

.method public v(Z)V
    .locals 3
    .parameter

    .prologue
    .line 806
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0120

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 807
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 808
    return-void
.end method

.method public v()Z
    .locals 3

    .prologue
    .line 732
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b012e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1334
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()V
    .locals 4

    .prologue
    .line 2372
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    .line 2374
    invoke-virtual {p0}, Lafp;->F()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lamo;->b:Ljava/lang/String;

    .line 2375
    invoke-virtual {p0}, Lafp;->E()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lamo;->c:Ljava/lang/String;

    .line 2376
    invoke-virtual {p0}, Lafp;->A()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lamo;->d:Ljava/lang/String;

    .line 2377
    invoke-virtual {p0}, Lafp;->L()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lamo;->e:Ljava/lang/String;

    .line 2378
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v1}, Laox;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lamo;->f:Ljava/lang/String;

    .line 2379
    invoke-virtual {p0}, Lafp;->B()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lamo;->g:Ljava/lang/String;

    .line 2380
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2381
    const/4 v1, 0x1

    iput-boolean v1, v0, Lamo;->r:Z

    .line 2385
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1338
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1339
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1340
    return-void
.end method

.method public w(Z)V
    .locals 3
    .parameter

    .prologue
    .line 816
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b012e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 817
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 818
    return-void
.end method

.method public w()Z
    .locals 3

    .prologue
    .line 740
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1384
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const v7, 0x7f0b00aa

    const v4, 0x7f0b00b7

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2496
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2497
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2498
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2501
    :cond_0
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b011b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2502
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2503
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2506
    :cond_1
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2507
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2508
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2511
    :cond_2
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2512
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2513
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2516
    :cond_3
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2517
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2518
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2521
    :cond_4
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2522
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2523
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2526
    :cond_5
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0115

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2527
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2528
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2531
    :cond_6
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2532
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2533
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "2"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2536
    :cond_7
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2537
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2538
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2541
    :cond_8
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2542
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2543
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2546
    :cond_9
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2547
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2548
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2551
    :cond_a
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2552
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2553
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2556
    :cond_b
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0133

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2557
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2558
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    sget-boolean v2, Lafp;->a:Z

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2561
    :cond_c
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2562
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2563
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2566
    :cond_d
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2567
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2568
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2571
    :cond_e
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2572
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2573
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2576
    :cond_f
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2577
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2578
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2581
    :cond_10
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2583
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2584
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "500"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2587
    :cond_11
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2588
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2589
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2592
    :cond_12
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2593
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2594
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2597
    :cond_13
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2598
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2599
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2602
    :cond_14
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2603
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2604
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    sget v2, Lafp;->a:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2607
    :cond_15
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2608
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2609
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2612
    :cond_16
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2613
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2614
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2617
    :cond_17
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2618
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 2619
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b00a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2622
    :cond_18
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2623
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2624
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2627
    :cond_19
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2628
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2629
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2632
    :cond_1a
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0048

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2633
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2634
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2637
    :cond_1b
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2638
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 2639
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2642
    :cond_1c
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2643
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2644
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2647
    :cond_1d
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2648
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2649
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2652
    :cond_1e
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2653
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2654
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b00ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2657
    :cond_1f
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2658
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 2659
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2667
    :cond_20
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2668
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 2669
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2670
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lafp;->i(I)V

    .line 2673
    :cond_21
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2674
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 2675
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2676
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lafp;->j(I)V

    .line 2679
    :cond_22
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2680
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 2681
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2682
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lafp;->l(I)V

    .line 2685
    :cond_23
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2686
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 2687
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2688
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lafp;->k(I)V

    .line 2691
    :cond_24
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2692
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 2693
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2698
    :cond_25
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b007b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2699
    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2700
    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b007a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2701
    iget-object v3, p0, Lafp;->a:Landroid/content/Context;

    const v4, 0x7f0b007f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2703
    iget-object v4, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 2704
    iget-object v4, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2706
    :cond_26
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2707
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    const-string v4, "0xFFE84900"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2709
    :cond_27
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 2710
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x5

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2712
    :cond_28
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2713
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    const-wide/16 v1, 0x1f4

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2716
    :cond_29
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2717
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2718
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2719
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0074

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2720
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2722
    :cond_2a
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2724
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v8, :cond_2b

    .line 2726
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2727
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2731
    :cond_2b
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2732
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2733
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2735
    :cond_2c
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_2d

    .line 2736
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "3"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2738
    :cond_2d
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b00d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2739
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 2740
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    const v3, 0x7f0b00a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2743
    :cond_2e
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2744
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2745
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2748
    :cond_2f
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2749
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 2750
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2753
    :cond_30
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b00d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2754
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2755
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2758
    :cond_31
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2759
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 2760
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2763
    :cond_32
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2764
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 2765
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2768
    :cond_33
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b00dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2769
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 2770
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2773
    :cond_34
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2774
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 2775
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x5

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2778
    :cond_35
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    const v1, 0x7f0b00f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2779
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 2780
    iget-object v1, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2783
    :cond_36
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2793
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1347
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1348
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1349
    return-void
.end method

.method public x(Z)V
    .locals 3
    .parameter

    .prologue
    .line 897
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b002e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 898
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 899
    return-void
.end method

.method public x()Z
    .locals 3

    .prologue
    .line 749
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b013a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1419
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()V
    .locals 3

    .prologue
    .line 2814
    const/4 v1, 0x0

    .line 2816
    :try_start_0
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Laox;

    sget-object v0, Laox;->s:Ljava/lang/String;

    .line 2817
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2818
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2819
    iget-object v0, p0, Lafp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "keymap.zip"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 2820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 2823
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/sogou/keymap/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2824
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2825
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2833
    :cond_1
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 2835
    :goto_0
    return-void

    .line 2830
    :catch_0
    move-exception v0

    .line 2831
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2833
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1379
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1380
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1381
    return-void
.end method

.method public y(Z)V
    .locals 3
    .parameter

    .prologue
    .line 928
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0119

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 929
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 930
    return-void
.end method

.method public y()Z
    .locals 3

    .prologue
    .line 759
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1445
    const-string v0, "2"

    return-object v0
.end method

.method public z()V
    .locals 3

    .prologue
    .line 2952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sohupassport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lafp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2953
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2954
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2955
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    if-ge v0, v1, :cond_0

    .line 2956
    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2958
    :cond_0
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2486
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2487
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2488
    return-void
.end method

.method public z(Z)V
    .locals 3
    .parameter

    .prologue
    .line 933
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b0118

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 934
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 935
    return-void
.end method

.method public z()Z
    .locals 3

    .prologue
    .line 768
    iget-object v0, p0, Lafp;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lafp;->a:Landroid/content/Context;

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
