.class Lcom/autonavi/xmgd/navigator/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/GDGuide;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/GDGuide;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/as;->a:Lcom/autonavi/xmgd/navigator/GDGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/as;->a:Lcom/autonavi/xmgd/navigator/GDGuide;

    const-string v1, "autonavi"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/navigator/GDGuide;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DO_GUIDE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/as;->a:Lcom/autonavi/xmgd/navigator/GDGuide;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/GDGuide;->a(Lcom/autonavi/xmgd/navigator/GDGuide;)V

    return-void
.end method
