.class public Lcom/zte/ZTESecurity/ZTESecurity;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "ZTESecurity"

.field private static cd:Lcom/zte/privacy/S;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/ZTESecurity/ZTESecurity;->cd:Lcom/zte/privacy/S;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static R()Lcom/zte/privacy/S;
    .locals 1

    sget-object v0, Lcom/zte/ZTESecurity/ZTESecurity;->cd:Lcom/zte/privacy/S;

    if-nez v0, :cond_0

    const-string v0, "privacy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/privacy/X;->asInterface(Landroid/os/IBinder;)Lcom/zte/privacy/S;

    move-result-object v0

    sput-object v0, Lcom/zte/ZTESecurity/ZTESecurity;->cd:Lcom/zte/privacy/S;

    :cond_0
    sget-object v0, Lcom/zte/ZTESecurity/ZTESecurity;->cd:Lcom/zte/privacy/S;

    return-object v0
.end method

.method private static a(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/zte/ZTESecurity/ZTESms;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTESms;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTESms;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/zte/ZTESecurity/ZTEPackageManager;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTEPackageManager;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTEPackageManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static checkCallingPermission(Ljava/lang/String;I)I
    .locals 1

    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecurity;->R()Lcom/zte/privacy/S;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/zte/privacy/S;->checkCallingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static checkChangeNetworkPermission(Z)Z
    .locals 1

    invoke-static {}, Lcom/zte/ZTESecurity/b;->aG()Lcom/zte/ZTESecurity/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/ZTESecurity/b;->g(Z)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/zte/ZTESecurity/ZTELocationManager;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTELocationManager;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTELocationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/zte/ZTESecurity/ZTETelephony;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTETelephony;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTETelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/zte/ZTESecurity/ZTEWifiService;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTEWifiService;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTEWifiService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/zte/ZTESecurity/ZTEBluetoothService;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTEBluetoothService;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTEBluetoothService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "iphonesubinfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->a(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "isms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->b(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "isms2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->b(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->c(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->d(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->e(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->f(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->g(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v0, "bluetooth_manager"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->h(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_8
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->i(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOrigTransport(Landroid/content/IContentProvider;)Landroid/content/IContentProvider;
    .locals 1

    check-cast p0, Lcom/zte/ZTESecurity/ZTETransport;

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETransport;->qd:Landroid/content/IContentProvider;

    return-object v0
.end method

.method public static getTransport(Landroid/content/ContentProvider;Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 1

    new-instance v0, Lcom/zte/ZTESecurity/ZTETransport;

    invoke-direct {v0, p0, p1}, Lcom/zte/ZTESecurity/ZTETransport;-><init>(Landroid/content/ContentProvider;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static h(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/zte/ZTESecurity/c;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/c;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/zte/ZTESecurity/ZTEConnectivityService;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTEConnectivityService;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTEConnectivityService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
