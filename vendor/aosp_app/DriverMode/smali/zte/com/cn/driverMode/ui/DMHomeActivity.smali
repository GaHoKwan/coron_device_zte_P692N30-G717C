.class public Lzte/com/cn/driverMode/ui/DMHomeActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected A:Lzte/com/cn/driverMode/ui/DMHomeActivity$StartTtsReceiver;

.field protected B:Lzte/com/cn/driverMode/ui/DMHomeActivity$EndTtsReceiver;

.field protected C:Z

.field protected D:Lzte/com/cn/driverMode/service/by;

.field protected E:Ljava/lang/String;

.field protected F:I

.field protected G:Lzte/com/cn/driverMode/ui/DMHomeActivity$volumeChangedReceiver;

.field protected H:Z

.field protected I:Lzte/com/cn/driverMode/ui/aw;

.field protected J:Landroid/app/ProgressDialog;

.field private K:Lzte/com/cn/driverMode/ui/DMHomeActivity$LoadGrammarOkReceiver;

.field private L:Landroid/widget/RelativeLayout;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/content/BroadcastReceiver;

.field protected final a:I

.field protected final b:I

.field protected final c:I

.field protected h:Landroid/content/Context;

.field protected i:Lzte/com/cn/driverMode/service/DMApplication;

.field protected j:Landroid/widget/ImageView;

.field protected k:Landroid/widget/ImageView;

.field protected l:Landroid/widget/ImageButton;

.field protected m:Landroid/widget/ImageButton;

.field protected n:Landroid/widget/ImageButton;

.field protected o:Landroid/widget/ImageButton;

.field protected p:Landroid/widget/ImageButton;

.field protected q:Landroid/widget/ImageButton;

.field protected r:Landroid/widget/ImageButton;

.field protected s:Landroid/view/View;

.field protected t:Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;

.field protected u:Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecReceiver;

.field protected v:Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecordReceiver;

.field protected w:Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecordReceiver;

.field protected x:Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;

.field protected y:Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;

.field protected z:Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    iput v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->c:I

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->E:Ljava/lang/String;

    iput v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->F:I

    iput-boolean v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->H:Z

    new-instance v0, Lzte/com/cn/driverMode/ui/av;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/av;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->O:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMHomeActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->N:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMHomeActivity;Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4501

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4051

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->f()V

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->l:Landroid/widget/ImageButton;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->l:Landroid/widget/ImageButton;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(IZ)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->w:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->J:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->J:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x3e99999a

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const v2, 0x3dcccccd

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->J:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->J:Landroid/app/ProgressDialog;

    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->J:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->J:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->J:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->J:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const-string v1, "main_tips_state"

    const-string v2, "tips_wakeup"

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tips_normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->N:Landroid/widget/TextView;

    const-string v1, "<html><body>\u8bf7\u5728 \"<font color=#eb6307>\u53ee\u549a</font>\"\u540e\uff0c\u518d\u8bf4\u8bed\u97f3\u6307\u4ee4 </body></html>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "tips_recognition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->N:Landroid/widget/TextView;

    const-string v1, "<html><body>\u60a8\u53ef\u4ee5\u8bf4 \"<font color=#eb6307>\u5f00\u542f/\u5173\u95ed\u514d\u6253\u6270\"\"\u547c\u53eb \u5c0f\u5f20\"\"\u5bfc\u822a\"\"\u64ad\u653e\u97f3\u4e50\"\"\u53d6\u6d88\"</font></body></html>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v1, "tips_waiting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->N:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u7a0d\u5019....."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v1, "tips_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->N:Landroid/widget/TextView;

    const-string v1, "<html><body>\u60a8\u53ef\u4ee5\u8bf4 \"<font color=#eb6307>\u6717\u8bfb\"\"\u5ffd\u7565\"</font></body></html>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v1, "tips_sms_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->N:Landroid/widget/TextView;

    const-string v1, "<html><body>\u60a8\u53ef\u4ee5\u8bf4 \"<font color=#eb6307>\u56de\u62e8</font>\"\u6216\u8005 \"<font color=#eb6307>\u53d6\u6d88</font>\"</font></body></html>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->N:Landroid/widget/TextView;

    const-string v1, "<html><body>\u8bf7\u8bf4 \"<font color=#eb6307>\u9a7e\u9a76\u52a9\u624b</font>\" \u5524\u9192\u8bed\u97f3    </body></html>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->c()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->b(Z)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(IZ)V

    return-void
.end method

.method protected final a(F)V
    .locals 4

    const/high16 v3, 0x4208

    const/high16 v2, 0x41a0

    iget v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->F:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    cmpg-float v0, p1, v3

    if-gtz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    cmpl-float v0, p1, v3

    if-lez v0, :cond_3

    const/high16 v0, 0x4214

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected final a(IZ)V
    .locals 2

    if-ltz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.driverMode.Jump"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "UI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "WaitTts"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected final a(Z)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const v1, 0x7f0800ca

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(ZZ)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    invoke-static {v0, p1}, Lzte/com/cn/driverMode/service/ce;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method protected final b()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x1002

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(IZ)V

    return-void
.end method

.method protected final b(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.startActivityFromeHome"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "bStartMusicActivity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected final c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->H:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected final d()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->stopService(Landroid/content/Intent;)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->stopService(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, -0x1

    const v5, 0x7f0800ca

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "DMHomeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult----requestCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1001

    if-ne p1, v2, :cond_1

    if-ne p2, v6, :cond_1

    const-string v0, "DMHomeActivity"

    const-string v1, "onActivityResult----stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->d()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    const/16 v2, 0x1002

    if-ne p1, v2, :cond_4

    if-ne p2, v6, :cond_2

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    invoke-virtual {p0, v5}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const-string v2, "call_refuse"

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const-string v2, "sms_refuse"

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    invoke-direct {p0, v0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(ZZ)V

    :goto_1
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/service/ce;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    invoke-virtual {p0, v5}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const-string v3, "call_refuse"

    invoke-virtual {v2, v3, v1}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const-string v3, "sms_refuse"

    invoke-virtual {v2, v3, v1}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(IZ)V

    const-string v0, "DMHomeActivity"

    const-string v2, "onActivityResult:cancel"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    invoke-virtual {p0, v5}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const-string v2, "call_refuse"

    invoke-virtual {v0, v2, v1}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const-string v2, "sms_refuse"

    invoke-virtual {v0, v2, v1}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_1

    :cond_4
    const/16 v0, 0x1003

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->e()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v0, "DMHomeActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->setContentView(I)V

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/drivemode_res/config/configuration.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v2, "DMHomeActivity"

    const-string v3, "----------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DMHomeActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "\\|"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "DMHomeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "str1:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|num ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    const-string v3, "MusicBargeIn_absoluteThreshold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iput v0, v2, Lzte/com/cn/driverMode/service/DMApplication;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_2
    :goto_2
    new-instance v0, Lzte/com/cn/driverMode/ui/aw;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/aw;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->I:Lzte/com/cn/driverMode/ui/aw;

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->N:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u7a0d\u5019....."

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    const-string v2, "version"

    invoke-static {v1, v2}, Lzte/com/cn/driverMode/service/ce;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->f:Ljava/lang/String;

    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->l:Landroid/widget/ImageButton;

    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->m:Landroid/widget/ImageButton;

    const v0, 0x7f0b0065

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->q:Landroid/widget/ImageButton;

    const v0, 0x7f0b006f

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->n:Landroid/widget/ImageButton;

    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->o:Landroid/widget/ImageButton;

    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->r:Landroid/widget/ImageButton;

    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->p:Landroid/widget/ImageButton;

    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->L:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->M:Landroid/widget/TextView;

    const-string v0, "DMHomeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "application.isCarTrackerOn"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->v:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->v:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->s:Landroid/view/View;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    new-instance v1, Lzte/com/cn/driverMode/ui/be;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/be;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->l:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/az;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/az;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->m:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/bd;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bd;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->q:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/ba;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ba;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->n:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/bc;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bc;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->o:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/ay;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ay;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->r:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/ax;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ax;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->p:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/bb;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bb;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->t:Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.startRecognition"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->t:Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->u:Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.endRecognition"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->u:Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecordReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecordReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->v:Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecordReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.startRecord"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->v:Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecordReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecordReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecordReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->w:Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecordReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.endRecord"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->w:Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecordReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->x:Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.hasWakedUp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->x:Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->z:Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.drivermod.appeardisturbdialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "zte.com.cn.drivermod.enableDistrubBtn"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->z:Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/DMHomeActivity$volumeChangedReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity$volumeChangedReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->G:Lzte/com/cn/driverMode/ui/DMHomeActivity$volumeChangedReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.VolumeChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->G:Lzte/com/cn/driverMode/ui/DMHomeActivity$volumeChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->y:Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.DOCK_DISCONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->y:Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->y:Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.drivermod.quitcarmode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->y:Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/DMHomeActivity$StartTtsReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity$StartTtsReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->A:Lzte/com/cn/driverMode/ui/DMHomeActivity$StartTtsReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.StartTts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->A:Lzte/com/cn/driverMode/ui/DMHomeActivity$StartTtsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/DMHomeActivity$EndTtsReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity$EndTtsReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->B:Lzte/com/cn/driverMode/ui/DMHomeActivity$EndTtsReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.EndTts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->B:Lzte/com/cn/driverMode/ui/DMHomeActivity$EndTtsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/DMHomeActivity$LoadGrammarOkReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity$LoadGrammarOkReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->K:Lzte/com/cn/driverMode/ui/DMHomeActivity$LoadGrammarOkReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.loadGrammarOk"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->K:Lzte/com/cn/driverMode/ui/DMHomeActivity$LoadGrammarOkReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const v1, 0x7f0800ca

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->C:Z

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->C:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const-string v1, "show_help"

    invoke-virtual {v0, v1, v6}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x1003

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_3
    return-void

    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/drivemode_res/config/configuration.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_6

    :try_start_3
    const-string v3, "MusicBargeIn_Penalty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iput v0, v2, Lzte/com/cn/driverMode/service/DMApplication;->o:I

    goto/16 :goto_1

    :cond_6
    if-eqz v2, :cond_7

    const-string v3, "SystemApp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v0, :cond_7

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lzte/com/cn/driverMode/service/DMApplication;->p:Z

    goto/16 :goto_1

    :cond_7
    if-eqz v2, :cond_8

    const-string v3, "OpenLog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lzte/com/cn/driverMode/service/DMApplication;->q:Z

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzte/com/cn/driverMode/utils/i;->a(Landroid/content/Context;)Lzte/com/cn/driverMode/utils/i;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/utils/i;->a()V

    const-string v0, "DMHomeActivity"

    const-string v2, "open Log print"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    if-eqz v2, :cond_9

    const-string v3, "paramFx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iput v0, v2, Lzte/com/cn/driverMode/service/DMApplication;->r:I

    goto/16 :goto_1

    :cond_9
    if-eqz v2, :cond_a

    const-string v3, "dropLength"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iput v0, v2, Lzte/com/cn/driverMode/service/DMApplication;->s:I

    goto/16 :goto_1

    :cond_a
    if-eqz v2, :cond_b

    const-string v3, "isCarTrackerOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-ne v0, v6, :cond_b

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lzte/com/cn/driverMode/service/DMApplication;->v:Z

    goto/16 :goto_1

    :cond_b
    if-eqz v2, :cond_c

    const-string v3, "DownloadThreadNums"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iput v0, v2, Lzte/com/cn/driverMode/service/DMApplication;->t:I

    goto/16 :goto_1

    :cond_c
    if-eqz v2, :cond_1

    const-string v3, "DownloadBufferSizes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iput v0, v2, Lzte/com/cn/driverMode/service/DMApplication;->u:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_d
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->e()V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "DMHomeActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->x:Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->x:Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->t:Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->t:Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->u:Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->u:Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->v:Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecordReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->v:Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecordReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->w:Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecordReceiver;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->w:Lzte/com/cn/driverMode/ui/DMHomeActivity$endRecordReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->z:Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->z:Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_5
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->G:Lzte/com/cn/driverMode/ui/DMHomeActivity$volumeChangedReceiver;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->G:Lzte/com/cn/driverMode/ui/DMHomeActivity$volumeChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_6
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->y:Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->y:Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_7
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->A:Lzte/com/cn/driverMode/ui/DMHomeActivity$StartTtsReceiver;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->A:Lzte/com/cn/driverMode/ui/DMHomeActivity$StartTtsReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_8
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->B:Lzte/com/cn/driverMode/ui/DMHomeActivity$EndTtsReceiver;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->B:Lzte/com/cn/driverMode/ui/DMHomeActivity$EndTtsReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_9
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->K:Lzte/com/cn/driverMode/ui/DMHomeActivity$LoadGrammarOkReceiver;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->K:Lzte/com/cn/driverMode/ui/DMHomeActivity$LoadGrammarOkReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_a
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->J:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->J:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->J:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->J:Landroid/app/ProgressDialog;

    :cond_c
    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lzte/com/cn/driverMode/ui/DMConfirmActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "hasPoiDownloading"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const/16 v2, 0x1001

    invoke-virtual {p0, v1, v2}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return v0

    :cond_0
    const-string v2, "hasPoiDownloading"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onPause()V

    const-string v0, "zte.com.cn.driverMode.HomeActivityOnPause"

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->O:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "DMHomeActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onResume()V

    const-string v0, "DMHomeActivity"

    const-string v1, "enableButtons()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->m:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->p:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->o:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->q:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->q:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->n:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->l:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    const-string v0, "DMHomeActivity"

    const-string v1, "enableButtons--setdisturbButton-True"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const v1, 0x7f0800ca

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->l:Landroid/widget/ImageButton;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->c()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iget v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->y:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->L:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->f()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->O:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "zte.com.cn.driverMode.MainChangeTips"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "zte.com.cn.driverMode.HomeActivityOnResume"

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->l:Landroid/widget/ImageButton;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->L:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->M:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->i:Lzte/com/cn/driverMode/service/DMApplication;

    iget v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "DMHomeActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onStart()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "zte.com.cn.driverMode.Backhome"

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onWindowFocusChanged(Z)V

    return-void
.end method
