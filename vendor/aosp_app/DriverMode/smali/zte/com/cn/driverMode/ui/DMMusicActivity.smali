.class public Lzte/com/cn/driverMode/ui/DMMusicActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Lzte/com/cn/driverMode/service/by;

.field private F:Lzte/com/cn/driverMode/ui/bo;

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Landroid/content/ServiceConnection;

.field a:Landroid/widget/ImageButton;

.field b:Landroid/widget/ImageButton;

.field c:Landroid/widget/ImageButton;

.field h:Landroid/widget/ImageButton;

.field i:Landroid/widget/ImageButton;

.field j:Landroid/widget/ImageButton;

.field k:Landroid/widget/SeekBar;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/ImageView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/TextView;

.field r:Landroid/view/View;

.field s:Landroid/view/View;

.field t:Landroid/widget/ListView;

.field u:Lzte/com/cn/driverMode/ui/eh;

.field v:Landroid/graphics/Bitmap;

.field protected w:Lzte/com/cn/driverMode/service/DMMusicService;

.field protected x:Landroid/content/BroadcastReceiver;

.field private y:Z

.field private z:Lzte/com/cn/driverMode/ui/bn;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->A:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->B:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->C:Z

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->D:Ljava/lang/String;

    iput-object v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    const/4 v0, -0x1

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->G:I

    iput-object v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->H:Ljava/lang/String;

    new-instance v0, Lzte/com/cn/driverMode/ui/bj;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/bj;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->x:Landroid/content/BroadcastReceiver;

    new-instance v0, Lzte/com/cn/driverMode/ui/bk;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/bk;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->I:Landroid/content/ServiceConnection;

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    div-int/lit16 v0, p0, 0x3e8

    div-int/lit8 v1, v0, 0x3c

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    if-nez v2, :cond_0

    const-string v2, "%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "%02d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Lzte/com/cn/driverMode/ui/bo;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->F:Lzte/com/cn/driverMode/ui/bo;

    return-object v0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMMusicActivity;Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x0

    const v4, 0x7f0200a1

    const v7, 0x7f020095

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "DMMusicActiviyt"

    const-string v1, "handleMessage : INIT_MUSIC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-nez v0, :cond_1

    const-string v0, "DMMusicActiviyt"

    const-string v1, "INIT_MUSIC : service is null, wait"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->F:Lzte/com/cn/driverMode/ui/bo;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/bo;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->F:Lzte/com/cn/driverMode/ui/bo;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lzte/com/cn/driverMode/ui/bo;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h()V

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->f()V

    goto :goto_0

    :pswitch_1
    const-string v0, "DMMusicActiviyt"

    const-string v1, "handleMessage :PREPER_MUSIC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->H:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->G:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->G:I

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMMusicService;->a(I)V

    iput v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->G:I

    :cond_2
    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->e()V

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->f()V

    iput-boolean v3, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->B:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->g()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->q()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->o()Ljava/util/ArrayList;

    move-result-object v1

    const-string v0, ""

    const-string v3, ""

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ax;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ax;->d:Ljava/lang/String;

    move-object v1, v0

    :goto_1
    const-string v0, "DMMusicActiviyt"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "albumname = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    if-eqz v1, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/av;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/av;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/av;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/av;->a:Ljava/lang/String;

    const-string v1, "DMMusicActiviyt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "albumimagepath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v0, :cond_5

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "DMMusicActiviyt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "albumBitmap = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    const-string v0, "DMMusicActiviyt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "musicService = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMMusicActiviyt"

    const-string v1, "updateImageViewBg():set drawable play_noraml"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a:Landroid/widget/ImageButton;

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_4
    const-string v0, "DMMusicActiviyt"

    const-string v1, "albumBitmap = null@@@@@@@@@@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    const-string v0, "DMMusicActiviyt"

    const-string v1, "albumimagepath = null or albumimagepath = blank@@@@@@@@@@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_4
    const-string v0, "DMMusicActiviyt"

    const-string v1, "CHANGE_MUSIC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PLAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "today"

    const-string v1, "state == play"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->e()V

    goto/16 :goto_0

    :cond_6
    const-string v1, "STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "today"

    const-string v1, "state == PAUSE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->d()V

    goto/16 :goto_0

    :cond_7
    const-string v1, "STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "today"

    const-string v1, "state == QUITE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->j()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->a()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->I:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v8, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    :cond_8
    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->finish()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "musicMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->E:Lzte/com/cn/driverMode/service/by;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->i:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    if-ne v0, v3, :cond_a

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    const v3, 0x7f020099

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->i:Landroid/widget/ImageButton;

    const v3, 0x7f0200a2

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v1, 0x7f0800dd

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_9
    :goto_5
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/DMMusicService;->b(I)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->E:Lzte/com/cn/driverMode/service/by;

    const-string v2, "music_mode"

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    if-nez v0, :cond_b

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    const v3, 0x7f02009a

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v1, 0x7f0800de

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :cond_b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    const v3, 0x7f0200a4

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v1, 0x7f0800df

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :cond_c
    move-object v0, v3

    goto/16 :goto_3

    :cond_d
    move-object v1, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMMusicActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->y:Z

    return p1
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->I:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic c(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->C:Z

    return v0
.end method

.method static synthetic d(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Lzte/com/cn/driverMode/service/by;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->E:Lzte/com/cn/driverMode/service/by;

    return-object v0
.end method

.method static synthetic e(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->y:Z

    return v0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->m()Lzte/com/cn/driverMode/service/ax;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->k:Landroid/widget/SeekBar;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/DMMusicService;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->o:Landroid/widget/TextView;

    iget-object v2, v0, Lzte/com/cn/driverMode/service/ax;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->p:Landroid/widget/TextView;

    iget-object v2, v0, Lzte/com/cn/driverMode/service/ax;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->q:Landroid/widget/TextView;

    iget-object v2, v0, Lzte/com/cn/driverMode/service/ax;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "DMMusicActiviyt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showMusicInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ax;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->F:Lzte/com/cn/driverMode/ui/bo;

    const/16 v1, 0x1006

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/driverMode/ui/bo;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method static synthetic f(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->C:Z

    return v0
.end method

.method private g()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->k()I

    move-result v1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->l()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->l:Landroid/widget/TextView;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->m:Landroid/widget/TextView;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->k:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method static synthetic g(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->A:Z

    return v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "DMMusicActiviyt"

    const-string v1, "initMusic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->o()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    const v0, 0x7f0800db

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->j()V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->u:Lzte/com/cn/driverMode/ui/eh;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/eh;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->u:Lzte/com/cn/driverMode/ui/eh;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/eh;->notifyDataSetChanged()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMMusicService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->B:Z

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->m()Lzte/com/cn/driverMode/service/ax;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->E:Lzte/com/cn/driverMode/service/by;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ax;->b:Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->E:Lzte/com/cn/driverMode/service/by;

    const-string v2, "last_music_name"

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->E:Lzte/com/cn/driverMode/service/by;

    const-string v1, "last_music_position"

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/DMMusicService;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->u:Lzte/com/cn/driverMode/ui/eh;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/DMMusicService;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/eh;->a(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/DMMusicService;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->u:Lzte/com/cn/driverMode/ui/eh;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/eh;->notifyDataSetChanged()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->r:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected final c()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method final d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMMusicActiviyt"

    const-string v1, "pause():set drawable play_noraml"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a:Landroid/widget/ImageButton;

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iput-boolean v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->y:Z

    iput-boolean v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->B:Z

    :cond_0
    return-void
.end method

.method final e()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->o()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->C:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->j()V

    :cond_1
    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->finish()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "DMMusicActiviyt"

    const-string v1, "play() .."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DMMusicActiviyt"

    const-string v1, "play():set drawable pause_noraml"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a:Landroid/widget/ImageButton;

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iput-boolean v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->C:Z

    iput-boolean v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->y:Z

    iput-boolean v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->B:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f0200a1

    const/4 v3, 0x1

    const-string v0, "DMMusicActiviyt"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->setContentView(I)V

    new-instance v0, Lzte/com/cn/driverMode/ui/bo;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/bo;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->F:Lzte/com/cn/driverMode/ui/bo;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "DMMusicActiviyt"

    const-string v1, "bindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->I:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->E:Lzte/com/cn/driverMode/service/by;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "commandslot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->D:Ljava/lang/String;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->D:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->D:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->E:Lzte/com/cn/driverMode/service/by;

    const-string v1, "last_music_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->H:Ljava/lang/String;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->E:Lzte/com/cn/driverMode/service/by;

    const-string v1, "last_music_position"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->G:I

    const-string v0, "DMMusicActiviyt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get last music:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->H:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->H:Ljava/lang/String;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->D:Ljava/lang/String;

    :cond_1
    const-string v0, "DMMusicActiviyt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "commandSlot :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lzte/com/cn/driverMode/service/ce;->e(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->v:Landroid/graphics/Bitmap;

    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->r:Landroid/view/View;

    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->s:Landroid/view/View;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->s:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->v:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->r:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->t:Landroid/widget/ListView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->t:Landroid/widget/ListView;

    new-instance v1, Lzte/com/cn/driverMode/ui/bq;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bq;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a:Landroid/widget/ImageButton;

    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->b:Landroid/widget/ImageButton;

    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->c:Landroid/widget/ImageButton;

    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->k:Landroid/widget/SeekBar;

    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->n:Landroid/widget/ImageView;

    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->i:Landroid/widget/ImageButton;

    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->j:Landroid/widget/ImageButton;

    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/bp;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bp;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/bl;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bl;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->E:Lzte/com/cn/driverMode/service/by;

    const-string v1, "music_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->i:Landroid/widget/ImageButton;

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    :goto_0
    new-instance v0, Lzte/com/cn/driverMode/ui/eh;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/eh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->u:Lzte/com/cn/driverMode/ui/eh;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->u:Lzte/com/cn/driverMode/ui/eh;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/bs;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bs;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->b:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/br;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/br;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->c:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/bt;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bt;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->k:Landroid/widget/SeekBar;

    new-instance v1, Lzte/com/cn/driverMode/ui/bv;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bv;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/bw;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bw;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->i:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/bu;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bu;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->j:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/bm;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bm;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->x:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "zte.com.cn.drivermod.musicplayererror"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->x:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "zte.com.cn.drivermode.music.prepared"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->x:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "zte.com.cn.drivermode.music.playStateChange"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->x:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "zte.com.cn.drivermode.changeMusicMode"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-nez v0, :cond_5

    const-string v0, "DMMusicActiviyt"

    const-string v1, "musicService is null,delay 300 ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->F:Lzte/com/cn/driverMode/ui/bo;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/bo;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->F:Lzte/com/cn/driverMode/ui/bo;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lzte/com/cn/driverMode/ui/bo;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h()V

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->f()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "DMMusicActiviyt"

    const-string v1, "onDestroy!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->A:Z

    iput-boolean v3, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->B:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->x:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->I:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->s:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->v:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->a(Landroid/graphics/Bitmap;)Z

    iput-object v2, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->v:Landroid/graphics/Bitmap;

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const-string v0, "DMMusicActiviyt"

    const-string v1, "onKeyDown : KEYCODE_BACK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMMusicActiviyt"

    const-string v1, "musicListView is visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->j()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->a()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->I:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    :cond_1
    invoke-super {p0, p1, p2}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "DMMusicActiviyt"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->B:Z

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "DMMusicActiviyt"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onResume()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->z:Lzte/com/cn/driverMode/ui/bn;

    new-instance v0, Lzte/com/cn/driverMode/ui/bn;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/bn;-><init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->z:Lzte/com/cn/driverMode/ui/bn;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->z:Lzte/com/cn/driverMode/ui/bn;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/bn;->start()V

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->f()V

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->B:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->g:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMApplication;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zte.com.cn.driverMode.BackMusic"

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onWindowFocusChanged(Z)V

    return-void
.end method
