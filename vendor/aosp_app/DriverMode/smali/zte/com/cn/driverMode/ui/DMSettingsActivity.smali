.class public Lzte/com/cn/driverMode/ui/DMSettingsActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# static fields
.field private static i:I

.field private static k:Lzte/com/cn/driverMode/ui/dq;


# instance fields
.field protected a:Lzte/com/cn/driverMode/ui/dr;

.field protected b:Lzte/com/cn/driverMode/service/cm;

.field protected c:Landroid/content/Context;

.field h:Lzte/com/cn/driverMode/service/by;

.field private j:Lzte/com/cn/driverMode/ui/dn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    sput v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    new-instance v0, Lzte/com/cn/driverMode/ui/dn;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/dn;-><init>(Lzte/com/cn/driverMode/ui/DMSettingsActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->j:Lzte/com/cn/driverMode/ui/dn;

    return-void
.end method

.method static synthetic c()Lzte/com/cn/driverMode/ui/dq;
    .locals 1

    sget-object v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->k:Lzte/com/cn/driverMode/ui/dq;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->i:I

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->b:Lzte/com/cn/driverMode/service/cm;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/cm;->a()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMNoticeDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "STATE"

    const-string v2, "NoNet"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMNoticeDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "STATE"

    const-string v2, "UpdateView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2001

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    new-instance v0, Lzte/com/cn/driverMode/ui/dr;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/dr;-><init>(Lzte/com/cn/driverMode/ui/DMSettingsActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->a:Lzte/com/cn/driverMode/ui/dr;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->a:Lzte/com/cn/driverMode/ui/dr;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final a(Landroid/os/Message;)V
    .locals 4

    const/16 v3, 0x2001

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->finishActivity(I)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "UpdateState"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lzte/com/cn/driverMode/ui/DMVersion;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->finishActivity(I)V

    const-string v0, "UpdateState"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const-string v0, "UpdateState"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMNoticeDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "STATE"

    const-string v2, "NetError"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMNoticeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "STATE"

    const-string v2, "NoUpdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected final b()V
    .locals 3

    const-string v0, "DMSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doDownloadPoiGrammar ...checkNetworkConnection()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->b:Lzte/com/cn/driverMode/service/cm;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/cm;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x2001

    if-ne p1, v0, :cond_1

    const/16 v0, 0x3001

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->a:Lzte/com/cn/driverMode/ui/dr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->a:Lzte/com/cn/driverMode/ui/dr;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lzte/com/cn/driverMode/ui/dr;->a:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    const/16 v0, 0x4001

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5001

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6001

    if-ne p1, v0, :cond_0

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->j:Lzte/com/cn/driverMode/ui/dn;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/dn;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->c:Landroid/content/Context;

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->h:Lzte/com/cn/driverMode/service/by;

    const-string v0, "version"

    invoke-static {p0, v0}, Lzte/com/cn/driverMode/service/ce;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f080297

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    sput v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->i:I

    :cond_0
    const v0, 0x7f0b00d9

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/dl;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/dl;-><init>(Lzte/com/cn/driverMode/ui/DMSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lzte/com/cn/driverMode/ui/dq;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/dq;-><init>(Lzte/com/cn/driverMode/ui/DMSettingsActivity;)V

    sput-object v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->k:Lzte/com/cn/driverMode/ui/dq;

    const v0, 0x7f0b00da

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->j:Lzte/com/cn/driverMode/ui/dn;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lzte/com/cn/driverMode/ui/dm;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/dm;-><init>(Lzte/com/cn/driverMode/ui/DMSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lzte/com/cn/driverMode/service/cm;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->g:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/cm;-><init>(Lzte/com/cn/driverMode/service/DMApplication;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->b:Lzte/com/cn/driverMode/service/cm;

    return-void
.end method
