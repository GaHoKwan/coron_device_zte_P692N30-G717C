.class Lcom/autonavi/xmgd/navigator/kc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Warn;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Warn;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/kc;->a:Lcom/autonavi/xmgd/navigator/Warn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/kc;->a:Lcom/autonavi/xmgd/navigator/Warn;

    iput-boolean p2, v0, Lcom/autonavi/xmgd/navigator/Warn;->a:Z

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignore_warn"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/kc;->a:Lcom/autonavi/xmgd/navigator/Warn;

    iget-boolean v2, v2, Lcom/autonavi/xmgd/navigator/Warn;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
