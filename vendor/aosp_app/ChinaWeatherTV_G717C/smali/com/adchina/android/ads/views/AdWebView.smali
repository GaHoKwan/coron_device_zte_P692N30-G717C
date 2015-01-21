.class public Lcom/adchina/android/ads/views/AdWebView;
.super Landroid/webkit/WebView;


# static fields
.field protected static d:Lcom/adchina/android/ads/controllers/BaseController;

.field public static y:Lcom/adchina/android/ads/views/AdBrowserView;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Z

.field protected c:Landroid/hardware/SensorManager;

.field protected e:Landroid/view/View;

.field protected f:Z

.field protected g:I

.field protected h:I

.field protected i:Z

.field protected j:Z

.field protected k:[F

.field protected l:[F

.field protected m:[F

.field protected n:[F

.field protected o:[F

.field protected p:[F

.field protected q:Landroid/hardware/Sensor;

.field protected r:Landroid/hardware/Sensor;

.field protected s:Landroid/hardware/Sensor;

.field protected t:Landroid/hardware/Sensor;

.field u:Landroid/hardware/SensorEventListener;

.field v:Landroid/hardware/SensorEventListener;

.field w:Landroid/hardware/SensorEventListener;

.field x:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->b:Z

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->f:Z

    iput v0, p0, Lcom/adchina/android/ads/views/AdWebView;->g:I

    iput v0, p0, Lcom/adchina/android/ads/views/AdWebView;->h:I

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->i:Z

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->j:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->l:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->m:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->n:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->o:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->p:[F

    new-instance v0, Lcom/adchina/android/ads/views/t;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/t;-><init>(Lcom/adchina/android/ads/views/AdWebView;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->u:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/adchina/android/ads/views/u;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/u;-><init>(Lcom/adchina/android/ads/views/AdWebView;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->v:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/adchina/android/ads/views/v;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/v;-><init>(Lcom/adchina/android/ads/views/AdWebView;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->w:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/adchina/android/ads/views/w;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/w;-><init>(Lcom/adchina/android/ads/views/AdWebView;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->x:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lcom/adchina/android/ads/views/AdWebView;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->initSetting()V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->b:Z

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->f:Z

    iput v0, p0, Lcom/adchina/android/ads/views/AdWebView;->g:I

    iput v0, p0, Lcom/adchina/android/ads/views/AdWebView;->h:I

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->i:Z

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->j:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->l:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->m:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->n:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->o:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->p:[F

    new-instance v0, Lcom/adchina/android/ads/views/t;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/t;-><init>(Lcom/adchina/android/ads/views/AdWebView;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->u:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/adchina/android/ads/views/u;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/u;-><init>(Lcom/adchina/android/ads/views/AdWebView;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->v:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/adchina/android/ads/views/v;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/v;-><init>(Lcom/adchina/android/ads/views/AdWebView;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->w:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/adchina/android/ads/views/w;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/w;-><init>(Lcom/adchina/android/ads/views/AdWebView;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->x:Landroid/hardware/SensorEventListener;

    iput p2, p0, Lcom/adchina/android/ads/views/AdWebView;->h:I

    iput-object p1, p0, Lcom/adchina/android/ads/views/AdWebView;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->initSetting()V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->init()V

    return-void
.end method

.method public static setOpenWebPage(Lcom/adchina/android/ads/views/AdBrowserView;)V
    .locals 2

    sput-object p0, Lcom/adchina/android/ads/views/AdWebView;->y:Lcom/adchina/android/ads/views/AdBrowserView;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/adchina/android/ads/views/AdWebView;->y:Lcom/adchina/android/ads/views/AdBrowserView;

    sget-object v1, Lcom/adchina/android/ads/views/AdWebView;->d:Lcom/adchina/android/ads/controllers/BaseController;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdBrowserView;->a(Lcom/adchina/android/ads/controllers/BaseController;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public actbtnclick(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\u7f51\u9875\u4e0a  actbtnclick"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    sget-object v0, Lcom/adchina/android/ads/views/AdWebView;->d:Lcom/adchina/android/ads/controllers/BaseController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adchina/android/ads/views/AdWebView;->d:Lcom/adchina/android/ads/controllers/BaseController;

    invoke-virtual {v0, p0}, Lcom/adchina/android/ads/controllers/BaseController;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public actevt(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\u7f51\u9875\u4e0a  actevt"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    sget-object v0, Lcom/adchina/android/ads/views/AdWebView;->d:Lcom/adchina/android/ads/controllers/BaseController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adchina/android/ads/views/AdWebView;->d:Lcom/adchina/android/ads/controllers/BaseController;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/BaseController;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public adclick(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\u7f51\u9875\u4e0a  adclick"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    sget-object v0, Lcom/adchina/android/ads/views/AdWebView;->d:Lcom/adchina/android/ads/controllers/BaseController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adchina/android/ads/views/AdWebView;->d:Lcom/adchina/android/ads/controllers/BaseController;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/BaseController;->h()V

    :cond_0
    return-void
.end method

.method public closesensor(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->j:Z

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->unregisterSensor()V

    return-void
.end method

.method public closeweb(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\u7f51\u9875\u4e0a  closeweb"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    sget-object v0, Lcom/adchina/android/ads/views/AdWebView;->y:Lcom/adchina/android/ads/views/AdBrowserView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adchina/android/ads/views/AdWebView;->y:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->finish()V

    :cond_0
    return-void
.end method

.method protected excuteReflectMethod(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getActionButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->e:Landroid/view/View;

    return-object v0
.end method

.method public getController()Lcom/adchina/android/ads/controllers/BaseController;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/views/AdWebView;->d:Lcom/adchina/android/ads/controllers/BaseController;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/adchina/android/ads/views/AdWebView;->h:I

    return v0
.end method

.method protected init()V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Lcom/adchina/android/ads/views/x;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/x;-><init>(Lcom/adchina/android/ads/views/AdWebView;)V

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/AdWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->isDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->a:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    iget v0, p0, Lcom/adchina/android/ads/views/AdWebView;->g:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDefaultSensor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Landroid/hardware/Sensor;

    const-string v5, "TYPE_LINEAR_ACCELERATION"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const-class v5, Landroid/hardware/Sensor;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->q:Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->r:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->s:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->t:Landroid/hardware/Sensor;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected initSetting()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdWebView;->g:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0, v3}, Lcom/adchina/android/ads/views/AdWebView;->setScrollBarStyle(I)V

    invoke-virtual {p0, v3}, Lcom/adchina/android/ads/views/AdWebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/adchina/android/ads/views/AdWebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/adchina/android/ads/views/AdWebView;->setScrollbarFadingEnabled(Z)V

    const-string v0, "adchinasdk"

    invoke-virtual {p0, p0, v0}, Lcom/adchina/android/ads/views/AdWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/adchina/android/ads/views/AdWebView;->g:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.webkit.WebSettings$PluginState"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setPluginState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ON"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isDevice()Z
    .locals 2

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "generic"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->f:Z

    return v0
.end method

.method public isRegister()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->i:Z

    return v0
.end method

.method public isUseSensor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->b:Z

    return v0
.end method

.method protected loadJs()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "javascript: if (typeof sdkDeviceInfo != \'undefined\') {sdkDeviceInfo.fireEvent(\'devicemotion\', { type:\'devicemotion\', acceleration: { x: %f, y: %f, z: %f }, accelerationIncludingGravity: { x: %f, y: %f, z: %f }, rotationRate: { beta: %f, gamma: %f, alpha: %f } });}void(0);"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->o:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->o:[F

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->o:[F

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->l:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdWebView;->l:[F

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdWebView;->l:[F

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdWebView;->n:[F

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdWebView;->n:[F

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdWebView;->n:[F

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/AdWebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript: if (typeof sdkDeviceInfo != \'undefined\') {sdkDeviceInfo.fireEvent(\'deviceorientation\', { type:\'deviceorientation\',beta: %f, gamma: %f, alpha: %f})}void(0);"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/AdWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    return-void
.end method

.method public opensensor(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->j:Z

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdWebView;->registerSensor()V

    return-void
.end method

.method public openvideo(Ljava/lang/String;)V
    .locals 3

    const-string v0, "\u7f51\u9875\u4e0a  openvideo"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->ismVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "utf-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->a:Landroid/content/Context;

    const-class v2, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "video_url"

    const-string v2, "utf-8"

    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public openweb(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "\u7f51\u9875\u4e0a  openweb"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "isopenweb"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "browserurl"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->a:Landroid/content/Context;

    const-class v2, Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerSensor()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->i:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->u:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->q:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->u:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->q:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->v:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->r:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->v:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->r:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->w:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->s:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->w:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->s:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->x:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->t:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->x:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->t:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    iput-boolean v3, p0, Lcom/adchina/android/ads/views/AdWebView;->i:Z

    :cond_4
    return-void
.end method

.method public setActionButtonView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/AdWebView;->e:Landroid/view/View;

    return-void
.end method

.method public setController(Lcom/adchina/android/ads/controllers/BaseController;)V
    .locals 0

    sput-object p1, Lcom/adchina/android/ads/views/AdWebView;->d:Lcom/adchina/android/ads/controllers/BaseController;

    return-void
.end method

.method public setLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adchina/android/ads/views/AdWebView;->f:Z

    return-void
.end method

.method public setRegister(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adchina/android/ads/views/AdWebView;->i:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/adchina/android/ads/views/AdWebView;->h:I

    return-void
.end method

.method public setUseSensor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adchina/android/ads/views/AdWebView;->b:Z

    return-void
.end method

.method public unregisterSensor()V
    .locals 3

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->i:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->u:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->q:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->u:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->q:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->v:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->r:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->v:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->r:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->w:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->s:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->w:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->s:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->x:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->t:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdWebView;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdWebView;->x:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdWebView;->t:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdWebView;->i:Z

    :cond_4
    return-void
.end method
