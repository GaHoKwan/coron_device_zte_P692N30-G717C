.class public Lcom/autonavi/xmgd/navigator/Warn;
.super Lcom/autonavi/xmgd/controls/GDBaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Z

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->a:Z

    return-void
.end method

.method private a()V
    .locals 3

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    const-string v1, "ignore_warn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->a:Z

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v2, 0x1

    const v0, 0x7f0c01c6

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Warn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c01c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const v0, 0x7f0c01c3

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Warn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->b:Landroid/widget/CheckBox;

    new-instance v1, Lcom/autonavi/xmgd/navigator/kc;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/kc;-><init>(Lcom/autonavi/xmgd/navigator/Warn;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    const v0, 0x7f0c01c5

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Warn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c01c4

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Warn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c01c8

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Warn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Warn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070150

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/kd;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/kd;-><init>(Lcom/autonavi/xmgd/navigator/Warn;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Warn;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignore_warn"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/navigator/Warn;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/navigator/Start;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Warn;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Warn;->finish()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignore_warn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Warn;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c01c4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Warn;->requestWindowFeature(I)Z

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "autonavi"

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/Warn;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    const-string v1, "ignore_warn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/navigator/Start;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Warn;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Warn;->finish()V

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Warn;->setContentView(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/Warn;->a()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/Warn;->b()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030063

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c0199

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Warn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const-string v2, "file:///android_asset/termOfService.html"

    new-instance v3, Lcom/autonavi/xmgd/navigator/ke;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/navigator/ke;-><init>(Lcom/autonavi/xmgd/navigator/Warn;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    const v2, 0x7f070061

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitle(I)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setPushCustomView(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
